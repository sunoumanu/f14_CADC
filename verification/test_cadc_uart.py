#!/usr/bin/env python3
"""
CADC FPGA Test Script via UART
Tests the F-14A CADC implementation through the AXI GPIO interface.

Protocol: ip_axi_protocol_lite
  Write: 0x09 ADDR[4] LEN[1] DATA[4]
  Read:  0x05 ADDR[4] LEN[1] -> DATA[4]

Usage:
  python test_cadc_uart.py [--port COM3] [--baud 115200]
"""

import serial
import time
import argparse
import struct
from dataclasses import dataclass
from typing import Optional, Tuple

# ============================================================================
# GPIO Address Map
# ============================================================================
GPIO_ANALOG     = 0x40000000  # i_sensor_analog[19:0]
GPIO_DIGITAL    = 0x40010000  # CH1: i_sensor_digital[19:0], CH2: i_channel_active
GPIO_OUT_0      = 0x40020000  # CH1: o_out_mach[19:0], CH2: o_out_alt[19:0]
GPIO_OUT_1      = 0x40030000  # CH1: o_out_airspd[19:0], CH2: o_out_vspd[19:0]
GPIO_OUT_2      = 0x40040000  # CH1: o_out_wing[19:0], CH2: o_out_flap[19:0]
GPIO_OUT_3      = 0x40050000  # CH1: o_out_glove[19:0], CH2: {fail_detect, bit_status}
GPIO_PS         = 0x40060000  # i_sensor_ps[19:0]
GPIO_QC         = 0x40070000  # i_sensor_qc[19:0]
GPIO_TAT        = 0x40080000  # i_sensor_tat[19:0]

# Channel 2 offset for dual-channel GPIOs
CH2_OFFSET      = 0x08

# Protocol commands
CMD_WRITE       = 0x09
CMD_READ        = 0x05

# Q1.19 fixed-point constants
SCALE = 2**19
Q119_MAX = (1 << 20) - 1


# ============================================================================
# Q1.19 Fixed-Point Helpers
# ============================================================================
def float_to_q119(f: float) -> int:
    """Convert float to Q1.19 fixed-point (20-bit)."""
    val = int(round(f * SCALE))
    if val < 0:
        val = val + (1 << 20)
    return val & Q119_MAX


def q119_to_float(h: int) -> float:
    """Convert Q1.19 fixed-point to float."""
    h = h & Q119_MAX
    if h >= (1 << 19):
        return (h - (1 << 20)) / SCALE
    return h / SCALE


def bin_to_gray(n: int) -> int:
    """Convert binary to Gray code."""
    return n ^ (n >> 1)


def gray_to_bin(g: int) -> int:
    """Convert Gray code to binary (20-bit)."""
    b = g
    mask = g >> 1
    while mask:
        b ^= mask
        mask >>= 1
    return b & Q119_MAX


# ============================================================================
# Q1.19 Arithmetic (matches CADC PMU/PDU)
# ============================================================================
def q_mul(a: float, b: float) -> float:
    """Q1.19 signed fractional multiply (matching PMU: round on bit 18)."""
    a_int = int(round(a * SCALE))
    b_int = int(round(b * SCALE))
    if a_int >= (1 << 19): a_int -= (1 << 20)
    if b_int >= (1 << 19): b_int -= (1 << 20)
    prod40 = a_int * b_int
    result = prod40 >> 19
    if (prod40 >> 18) & 1:
        result += 1
    result = result & Q119_MAX
    if result >= (1 << 19):
        return (result - (1 << 20)) / SCALE
    return result / SCALE


def q_div(a: float, b: float) -> float:
    """Q1.19 fractional divide (matching PDU)."""
    a_int = int(round(a * SCALE))
    b_int = int(round(b * SCALE))
    if a_int >= (1 << 19): a_int -= (1 << 20)
    if b_int >= (1 << 19): b_int -= (1 << 20)
    if b_int == 0:
        return 0.0
    a_abs = abs(a_int)
    b_abs = abs(b_int)
    q = (a_abs << 19) // b_abs
    q = q & Q119_MAX
    if (a_int < 0) != (b_int < 0):
        q = (-q) & Q119_MAX
    if q >= (1 << 19):
        return (q - (1 << 20)) / SCALE
    return q / SCALE


def q_add(a: float, b: float) -> float:
    """Q1.19 addition with 20-bit wrap."""
    a_int = int(round(a * SCALE))
    b_int = int(round(b * SCALE))
    if a_int >= (1 << 19): a_int -= (1 << 20)
    if b_int >= (1 << 19): b_int -= (1 << 20)
    s = (a_int + b_int) & Q119_MAX
    if s >= (1 << 19):
        return (s - (1 << 20)) / SCALE
    return s / SCALE


def horner_q(coeffs: list, x: float) -> float:
    """Horner method using Q1.19 arithmetic."""
    acc = coeffs[0]
    for c in coeffs[1:]:
        acc = q_add(q_mul(acc, x), c)
    return acc


# ============================================================================
# UART Protocol Interface
# ============================================================================
class CADCInterface:
    """Interface to CADC FPGA via UART."""
    
    def __init__(self, port: str, baudrate: int = 115200, timeout: float = 1.0):
        self.ser = serial.Serial(port, baudrate, timeout=timeout, 
                                  stopbits=serial.STOPBITS_TWO, parity=serial.PARITY_ODD)
        self.ser.reset_input_buffer()
        self.ser.reset_output_buffer()
        time.sleep(0.1)  # Allow UART to stabilize
        
    def close(self):
        self.ser.close()
        
    def write_reg(self, addr: int, data: int) -> bool:
        """Write 32-bit value to address. Returns True on success."""
        cmd = bytes([CMD_WRITE])
        addr_bytes = struct.pack('>I', addr)  # Big-endian address
        length = bytes([0x01])
        data_bytes = struct.pack('>I', data)  # Big-endian data
        
        packet = cmd + addr_bytes + length + data_bytes
        self.ser.write(packet)
        self.ser.flush()
        return True
    
    def read_reg(self, addr: int) -> Optional[int]:
        """Read 32-bit value from address. Returns None on timeout."""
        cmd = bytes([CMD_READ])
        addr_bytes = struct.pack('>I', addr)
        length = bytes([0x01])
        
        packet = cmd + addr_bytes + length
        self.ser.reset_input_buffer()
        self.ser.write(packet)
        self.ser.flush()
        
        # Read 4 bytes response (LSB first)
        resp = self.ser.read(4)
        if len(resp) != 4:
            return None
        return struct.unpack('<I', resp)[0]
    
    # GPIO convenience methods
    def write_sensor_ps(self, value: int):
        """Write i_sensor_ps (Gray-coded expected)."""
        self.write_reg(GPIO_PS, value & Q119_MAX)
        
    def write_sensor_qc(self, value: int):
        """Write i_sensor_qc (Gray-coded expected)."""
        self.write_reg(GPIO_QC, value & Q119_MAX)
        
    def write_sensor_tat(self, value: int):
        """Write i_sensor_tat (binary)."""
        self.write_reg(GPIO_TAT, value & Q119_MAX)
        
    def write_sensor_analog(self, value: int):
        """Write i_sensor_analog."""
        self.write_reg(GPIO_ANALOG, value & Q119_MAX)
        
    def write_sensor_digital(self, value: int):
        """Write i_sensor_digital."""
        self.write_reg(GPIO_DIGITAL, value & Q119_MAX)
        
    def write_channel_active(self, active: bool):
        """Write i_channel_active."""
        self.write_reg(GPIO_DIGITAL + CH2_OFFSET, 1 if active else 0)
        
    def read_mach(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_0)
        
    def read_alt(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_0 + CH2_OFFSET)
        
    def read_airspd(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_1)
        
    def read_vspd(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_1 + CH2_OFFSET)
        
    def read_wing(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_2)
        
    def read_flap(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_2 + CH2_OFFSET)
        
    def read_glove(self) -> Optional[int]:
        return self.read_reg(GPIO_OUT_3)
        
    def read_status(self) -> Optional[Tuple[bool, bool]]:
        """Read {fail_detect, bit_status}. Returns (fail_detect, bit_status)."""
        val = self.read_reg(GPIO_OUT_3 + CH2_OFFSET)
        if val is None:
            return None
        return (bool(val & 0x02), bool(val & 0x01))
    
    def read_all_outputs(self) -> dict:
        """Read all CADC outputs."""
        return {
            'mach': self.read_mach(),
            'alt': self.read_alt(),
            'airspd': self.read_airspd(),
            'vspd': self.read_vspd(),
            'wing': self.read_wing(),
            'flap': self.read_flap(),
            'glove': self.read_glove(),
            'status': self.read_status()
        }


# ============================================================================
# Expected Value Calculation
# ============================================================================
@dataclass
class CADCInputs:
    """CADC sensor inputs."""
    ps_binary: float      # Static pressure (0 to 1)
    qc_binary: float      # Impact pressure (0 to 1)
    tat: float            # Total air temperature (-1 to 1)
    analog: int = 0       # Analog sensor data
    digital: int = 0      # Digital sensor data
    channel_active: bool = True


@dataclass 
class CADCOutputs:
    """Expected CADC outputs."""
    mach: float
    alt: float
    airspd: float
    vspd: float
    wing: float
    flap: float
    glove: float


def calculate_expected(inputs: CADCInputs, prev_alt: float = 0.0, prev_wing: float = 0.0) -> CADCOutputs:
    """Calculate expected CADC outputs given inputs (matches microprogram)."""
    
    # Phase 2: ratio = Qc/Ps
    ratio = q_div(inputs.qc_binary, inputs.ps_binary)
    
    # Phase 3: Mach = Horner(a, ratio)
    a_coeffs = [0.2, -0.2, 0.05, 0.74, 0.0]
    mach = horner_q(a_coeffs, ratio)
    
    # Phase 4: Altitude = Horner(b, Ps)
    b_coeffs = [0.1, -0.05, 0.2, -0.8, 0.75]
    alt = horner_q(b_coeffs, inputs.ps_binary)
    
    # Phase 5: Airspeed
    ratio2 = q_div(inputs.tat, 0.5)  # TAT / tat_ref
    sqrt_est = q_add(q_mul(0.25, ratio2), 0.75)
    factor = q_mul(mach, sqrt_est)
    airspd = q_mul(0.64, factor)
    
    # Phase 6: Vertical speed (delta_alt * scale)
    delta_alt = q_add(alt, -prev_alt) if prev_alt != 0 else alt
    vspd = q_mul(delta_alt, 0.14258)
    
    # Phase 7: Wing sweep with rate limiting
    d_coeffs = [-0.25, 0.4, 0.5, -0.25]
    wing_cmd = horner_q(d_coeffs, mach)
    rate = 0.003
    delta = q_add(wing_cmd, -prev_wing) if prev_wing != 0 else wing_cmd
    if delta > rate:
        wing = q_add(prev_wing, rate)
    elif delta < -rate:
        wing = q_add(prev_wing, -rate)
    else:
        wing = wing_cmd
    
    # Phase 8: Flap = -0.5*M + 0.75
    flap = q_add(q_mul(-0.5, mach), 0.75)
    
    # Phase 9: Glove
    e_coeffs = [0.25, -0.25, 0.03125]
    glove = horner_q(e_coeffs, mach)
    
    return CADCOutputs(mach=mach, alt=alt, airspd=airspd, vspd=vspd, 
                       wing=wing, flap=flap, glove=glove)


# ============================================================================
# Test Cases
# ============================================================================
def run_test(cadc: CADCInterface, inputs: CADCInputs, test_name: str, 
             tolerance: float = 0.001, frames_to_wait: int = 3) -> bool:
    """
    Run a single test case.
    Returns True if all outputs match expected within tolerance.
    """
    print(f"\n{'='*60}")
    print(f"Test: {test_name}")
    print(f"{'='*60}")
    
    # Convert inputs to GPIO values
    ps_gray = bin_to_gray(float_to_q119(inputs.ps_binary))
    qc_gray = bin_to_gray(float_to_q119(inputs.qc_binary))
    tat_bin = float_to_q119(inputs.tat)
    
    print(f"Inputs:")
    print(f"  PS  = {inputs.ps_binary:.6f} -> Gray 0x{ps_gray:05X}")
    print(f"  QC  = {inputs.qc_binary:.6f} -> Gray 0x{qc_gray:05X}")
    print(f"  TAT = {inputs.tat:.6f} -> Bin  0x{tat_bin:05X}")
    
    # Write sensor values
    cadc.write_sensor_ps(ps_gray)
    cadc.write_sensor_qc(qc_gray)
    cadc.write_sensor_tat(tat_bin)
    cadc.write_sensor_analog(inputs.analog)
    cadc.write_sensor_digital(inputs.digital)
    cadc.write_channel_active(inputs.channel_active)
    
    # Wait for CADC to process (multiple frames)
    # Each frame is ~680 word periods at 1.5MHz = ~0.45ms
    # Wait longer to ensure stable outputs
    time.sleep(0.1 * frames_to_wait)
    
    # Calculate expected values
    expected = calculate_expected(inputs)
    
    # Read actual outputs
    outputs = cadc.read_all_outputs()
    
    # Compare results
    print(f"\nResults:")
    print(f"{'Output':<12} {'Expected':>12} {'Actual':>12} {'Hex':>10} {'Status':>8}")
    print("-" * 60)
    
    all_pass = True
    
    # Stateless outputs - can be verified deterministically
    stateless_checks = [
        ('Mach', expected.mach, outputs['mach']),
        ('Altitude', expected.alt, outputs['alt']),
        ('Airspeed', expected.airspd, outputs['airspd']),
        ('Flap', expected.flap, outputs['flap']),
        ('Glove', expected.glove, outputs['glove']),
    ]
    
    # Stateful outputs - depend on prev_alt/prev_wing history, shown as INFO
    stateful_checks = [
        ('Vspd', expected.vspd, outputs['vspd']),
        ('Wing', expected.wing, outputs['wing']),
    ]
    
    for name, exp_val, act_raw in stateless_checks:
        if act_raw is None:
            print(f"{name:<12} {exp_val:>12.6f} {'TIMEOUT':>12} {'---':>10} {'FAIL':>8}")
            all_pass = False
        else:
            act_val = q119_to_float(act_raw)
            error = abs(act_val - exp_val)
            status = "PASS" if error <= tolerance else "FAIL"
            if status == "FAIL":
                all_pass = False
            print(f"{name:<12} {exp_val:>12.6f} {act_val:>12.6f} 0x{act_raw:05X}   {status:>8}")
    
    # Stateful outputs - shown but not used for pass/fail (depend on frame history)
    for name, exp_val, act_raw in stateful_checks:
        if act_raw is None:
            print(f"{name:<12} {exp_val:>12.6f} {'TIMEOUT':>12} {'---':>10} {'INFO':>8}")
        else:
            act_val = q119_to_float(act_raw)
            print(f"{name:<12} {exp_val:>12.6f} {act_val:>12.6f} 0x{act_raw:05X}   {'INFO':>8}")
    print("  (Vspd/Wing are stateful - depend on prev frame history)")
    
    # Status bits
    status = outputs['status']
    if status:
        fail_det, bit_stat = status
        print(f"{'Status':<12} {'---':>12} fail={int(fail_det)}, bit={int(bit_stat)}")
    
    print("-" * 60)
    print(f"Test Result: {'PASS' if all_pass else 'FAIL'}")
    
    return all_pass


def run_all_tests(port: str, baudrate: int):
    """Run all CADC test cases."""
    
    print("="*60)
    print("CADC FPGA Verification Test Suite")
    print("="*60)
    print(f"Port: {port}, Baudrate: {baudrate}")
    
    try:
        cadc = CADCInterface(port, baudrate)
    except serial.SerialException as e:
        print(f"ERROR: Could not open serial port: {e}")
        return False
    
    tests_passed = 0
    tests_failed = 0
    
    # Test Case 1: Nominal conditions
    test1 = CADCInputs(
        ps_binary=0.5,
        qc_binary=0.25,
        tat=0.375,
        channel_active=True
    )
    if run_test(cadc, test1, "Nominal Flight Conditions"):
        tests_passed += 1
    else:
        tests_failed += 1
    
    # Test Case 2: Low altitude (high pressure)
    test2 = CADCInputs(
        ps_binary=0.8,
        qc_binary=0.3,
        tat=0.5,
        channel_active=True
    )
    if run_test(cadc, test2, "Low Altitude"):
        tests_passed += 1
    else:
        tests_failed += 1
    
    # Test Case 3: High altitude (low pressure)
    test3 = CADCInputs(
        ps_binary=0.2,
        qc_binary=0.1,
        tat=0.25,
        channel_active=True
    )
    if run_test(cadc, test3, "High Altitude"):
        tests_passed += 1
    else:
        tests_failed += 1
    
    # Test Case 4: High Mach
    test4 = CADCInputs(
        ps_binary=0.4,
        qc_binary=0.35,
        tat=0.4,
        channel_active=True
    )
    if run_test(cadc, test4, "High Mach Number"):
        tests_passed += 1
    else:
        tests_failed += 1
    
    # Test Case 5: Cold temperature
    test5 = CADCInputs(
        ps_binary=0.5,
        qc_binary=0.25,
        tat=-0.25,
        channel_active=True
    )
    if run_test(cadc, test5, "Cold Temperature"):
        tests_passed += 1
    else:
        tests_failed += 1
    
    # Test Case 6: Zero Qc (on ground)
    test6 = CADCInputs(
        ps_binary=0.9,
        qc_binary=0.001,
        tat=0.5,
        channel_active=True
    )
    if run_test(cadc, test6, "Ground (Near-Zero Qc)", tolerance=0.01):
        tests_passed += 1
    else:
        tests_failed += 1
    
    cadc.close()
    
    # Summary
    print("\n" + "="*60)
    print("TEST SUMMARY")
    print("="*60)
    print(f"Tests Passed: {tests_passed}")
    print(f"Tests Failed: {tests_failed}")
    print(f"Total:        {tests_passed + tests_failed}")
    print("="*60)
    
    return tests_failed == 0


# ============================================================================
# Interactive Mode
# ============================================================================
def interactive_mode(port: str, baudrate: int):
    """Interactive mode for manual testing."""
    
    print("CADC Interactive Test Mode")
    print("Commands: read <addr>, write <addr> <data>, inputs, outputs, calc, quit")
    
    try:
        cadc = CADCInterface(port, baudrate)
    except serial.SerialException as e:
        print(f"ERROR: Could not open serial port: {e}")
        return
    
    while True:
        try:
            cmd = input("\n> ").strip().lower().split()
            if not cmd:
                continue
                
            if cmd[0] == 'quit' or cmd[0] == 'q':
                break
                
            elif cmd[0] == 'read' and len(cmd) >= 2:
                addr = int(cmd[1], 0)
                val = cadc.read_reg(addr)
                if val is not None:
                    print(f"0x{addr:08X} = 0x{val:08X} ({val}) = {q119_to_float(val):.6f}")
                else:
                    print("TIMEOUT")
                    
            elif cmd[0] == 'write' and len(cmd) >= 3:
                addr = int(cmd[1], 0)
                data = int(cmd[2], 0)
                cadc.write_reg(addr, data)
                print(f"Wrote 0x{data:08X} to 0x{addr:08X}")
                
            elif cmd[0] == 'outputs':
                outputs = cadc.read_all_outputs()
                print("CADC Outputs:")
                for name, val in outputs.items():
                    if name == 'status':
                        if val:
                            print(f"  {name}: fail={val[0]}, bit={val[1]}")
                    elif val is not None:
                        print(f"  {name}: 0x{val:05X} = {q119_to_float(val):.6f}")
                    else:
                        print(f"  {name}: TIMEOUT")
                        
            elif cmd[0] == 'inputs':
                print("GPIO Input Addresses:")
                print(f"  PS:      0x{GPIO_PS:08X}")
                print(f"  QC:      0x{GPIO_QC:08X}")
                print(f"  TAT:     0x{GPIO_TAT:08X}")
                print(f"  ANALOG:  0x{GPIO_ANALOG:08X}")
                print(f"  DIGITAL: 0x{GPIO_DIGITAL:08X}")
                print(f"  CH_ACT:  0x{GPIO_DIGITAL + CH2_OFFSET:08X}")
                
            elif cmd[0] == 'calc' and len(cmd) >= 4:
                ps = float(cmd[1])
                qc = float(cmd[2])
                tat = float(cmd[3])
                inputs = CADCInputs(ps_binary=ps, qc_binary=qc, tat=tat)
                expected = calculate_expected(inputs)
                print(f"Expected outputs for PS={ps}, QC={qc}, TAT={tat}:")
                print(f"  Mach:    {expected.mach:.6f} (0x{float_to_q119(expected.mach):05X})")
                print(f"  Alt:     {expected.alt:.6f} (0x{float_to_q119(expected.alt):05X})")
                print(f"  Airspd:  {expected.airspd:.6f} (0x{float_to_q119(expected.airspd):05X})")
                print(f"  Vspd:    {expected.vspd:.6f} (0x{float_to_q119(expected.vspd):05X})")
                print(f"  Wing:    {expected.wing:.6f} (0x{float_to_q119(expected.wing):05X})")
                print(f"  Flap:    {expected.flap:.6f} (0x{float_to_q119(expected.flap):05X})")
                print(f"  Glove:   {expected.glove:.6f} (0x{float_to_q119(expected.glove):05X})")
                
            else:
                print("Unknown command. Use: read, write, inputs, outputs, calc, quit")
                
        except (ValueError, IndexError) as e:
            print(f"Error: {e}")
        except KeyboardInterrupt:
            break
    
    cadc.close()
    print("Goodbye!")


# ============================================================================
# Main
# ============================================================================
def main():
    parser = argparse.ArgumentParser(description='CADC FPGA Test via UART')
    parser.add_argument('--port', '-p', default='/dev/ttyAMA2', help='Serial port (default: /dev/ttyAMA2)')
    parser.add_argument('--baud', '-b', type=int, default=115200, help='Baud rate (default: 115200)')
    parser.add_argument('--interactive', '-i', action='store_true', help='Interactive mode')
    parser.add_argument('--test', '-t', type=str, help='Run specific test (1-6)')
    
    args = parser.parse_args()
    
    if args.interactive:
        interactive_mode(args.port, args.baud)
    else:
        success = run_all_tests(args.port, args.baud)
        exit(0 if success else 1)


if __name__ == '__main__':
    main()
