#!/usr/bin/env python3
"""
AXI Network Loopback Test
Simple write/read test to verify UART-to-AXI connectivity.

Writes test patterns to GPIO registers and reads them back.
"""

import serial
import struct
import time
import argparse

# GPIO Addresses (input GPIOs - these support read/write)
GPIO_PS         = 0x40060000
GPIO_QC         = 0x40070000
GPIO_TAT        = 0x40080000
GPIO_ANALOG     = 0x40000000
GPIO_DIGITAL    = 0x40010000

# Protocol commands
CMD_WRITE = 0x09
CMD_READ  = 0x05


def write_reg(ser, addr, data):
    """Write 32-bit value to address."""
    packet = bytes([CMD_WRITE])
    packet += struct.pack('>I', addr)
    packet += bytes([0x01])
    packet += struct.pack('>I', data)
    ser.write(packet)
    ser.flush()


def read_reg(ser, addr, timeout=1.0):
    """Read 32-bit value from address."""
    packet = bytes([CMD_READ])
    packet += struct.pack('>I', addr)
    packet += bytes([0x01])
    
    ser.reset_input_buffer()
    ser.write(packet)
    ser.flush()
    
    resp = ser.read(4)
    if len(resp) != 4:
        return None
    # Response comes back LSB first (little-endian)
    return struct.unpack('<I', resp)[0]


def test_gpio(ser, name, addr, test_patterns, width=20):
    """Test a single GPIO with multiple patterns."""
    print(f"\nTesting {name} at 0x{addr:08X} ({width}-bit):")
    all_pass = True
    mask = (1 << width) - 1  # 20-bit mask = 0x000FFFFF
    
    for pattern in test_patterns:
        # Mask pattern to GPIO width
        masked_pattern = pattern & mask
        
        # Write pattern
        write_reg(ser, addr, masked_pattern)
        time.sleep(0.01)  # Small delay for AXI transaction
        
        # Read back
        readback = read_reg(ser, addr)
        
        if readback is None:
            print(f"  Write 0x{masked_pattern:05X} -> TIMEOUT")
            all_pass = False
        elif readback == masked_pattern:
            print(f"  Write 0x{masked_pattern:05X} -> Read 0x{readback:05X} [PASS]")
        else:
            print(f"  Write 0x{masked_pattern:05X} -> Read 0x{readback:05X} [FAIL]")
            all_pass = False
    
    return all_pass


def main():
    parser = argparse.ArgumentParser(description='AXI Network Loopback Test')
    parser.add_argument('--port', '-p', default='/dev/ttyAMA2', 
                        help='Serial port (default: /dev/ttyAMA2)')
    parser.add_argument('--baud', '-b', type=int, default=115200,
                        help='Baud rate (default: 115200)')
    args = parser.parse_args()
    
    print("=" * 50)
    print("AXI Network Loopback Test")
    print("=" * 50)
    print(f"Port: {args.port}")
    print(f"Baud: {args.baud} 8O2 (odd parity, 2 stop bits)")
    
    try:
        ser = serial.Serial(args.port, args.baud, timeout=1.0, 
                            stopbits=serial.STOPBITS_TWO, parity=serial.PARITY_ODD)
        ser.reset_input_buffer()
        ser.reset_output_buffer()
        time.sleep(0.1)
    except serial.SerialException as e:
        print(f"ERROR: Could not open serial port: {e}")
        return 1
    
    # Test patterns - include walking ones, all ones, all zeros
    test_patterns = [
        0x00000000,  # All zeros
        0xFFFFFFFF,  # All ones
        0x55555555,  # Alternating 01
        0xAAAAAAAA,  # Alternating 10
        0x00000001,  # Walking one
        0x00080000,  # Bit 19 (MSB of 20-bit value)
        0x000FFFFF,  # 20-bit max
        0x12345678,  # Random pattern
    ]
    
    # Test each GPIO
    gpios = [
        ("GPIO_PS", GPIO_PS),
        ("GPIO_QC", GPIO_QC),
        ("GPIO_TAT", GPIO_TAT),
        ("GPIO_ANALOG", GPIO_ANALOG),
        ("GPIO_DIGITAL", GPIO_DIGITAL),
    ]
    
    results = {}
    for name, addr in gpios:
        results[name] = test_gpio(ser, name, addr, test_patterns)
    
    ser.close()
    
    # Summary
    print("\n" + "=" * 50)
    print("SUMMARY")
    print("=" * 50)
    
    all_pass = True
    for name, passed in results.items():
        status = "PASS" if passed else "FAIL"
        print(f"  {name}: {status}")
        if not passed:
            all_pass = False
    
    print("=" * 50)
    if all_pass:
        print("All tests PASSED - AXI network is working!")
        return 0
    else:
        print("Some tests FAILED - check connections")
        return 1


if __name__ == '__main__':
    exit(main())
