#!/usr/bin/env python3
"""
CADC Interactive Visualization Tool

Interactive GUI to explore F-14A CADC behavior with real-time visualization
of outputs including wing sweep position.

Displays actual physical units:
  - Mach number (0 - 2.5)
  - Altitude (0 - 60,000 ft)
  - Airspeed (0 - 800 kts)
  - Wing sweep (20° - 68°)
  - Flap position (0 - 35°)
  - Glove vane (-15° to +15°)
  - Vertical speed (±20,000 ft/min)

Usage:
  python cadc_interactive.py                    # Simulation mode
  python cadc_interactive.py --live             # Connect to real FPGA
  python cadc_interactive.py --port /dev/ttyAMA2 --live

Controls:
  - Ps slider: Static pressure (lower = higher altitude)
  - Qc slider: Impact pressure (higher = faster speed)
  - TAT slider: Total air temperature
  
The wing sweep display shows the F-14's variable-sweep wing position
based on flight conditions (Mach number primarily).
"""

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider, Button, RadioButtons
from matplotlib.patches import Polygon, FancyBboxPatch, Circle, Arc
from matplotlib.collections import PatchCollection
import matplotlib.patches as mpatches
import argparse
import sys
import time
import struct

# Try to import serial for live mode
try:
    import serial
    HAS_SERIAL = True
except ImportError:
    HAS_SERIAL = False


# ============================================================================
# Constants and Protocol (from test_cadc_uart.py)
# ============================================================================
GPIO_OUT_0      = 0x40020000  # CH1: mach, CH2: alt
GPIO_OUT_1      = 0x40030000  # CH1: airspd, CH2: vspd
GPIO_OUT_2      = 0x40040000  # CH1: wing, CH2: flap
GPIO_OUT_3      = 0x40050000  # CH1: glove, CH2: status
GPIO_PS         = 0x40060000
GPIO_QC         = 0x40070000
GPIO_TAT        = 0x40080000
CH2_OFFSET      = 0x08
CMD_WRITE       = 0x09
CMD_READ        = 0x05

SCALE = 2**19
Q119_MAX = (1 << 20) - 1

# Physical scaling factors (normalized Q1.19 -> real units)
# Based on F-14 flight envelope
SCALE_MACH = 2.5           # Output 1.0 = Mach 2.5
SCALE_ALT_FT = 60000       # Output 1.0 = 60,000 ft
SCALE_AIRSPD_KTS = 800     # Output 1.0 = 800 knots
SCALE_VSPD_FPM = 20000     # Output 1.0 = 20,000 ft/min
SCALE_FLAP_DEG = 35        # Output 1.0 = 35deg flap
SCALE_GLOVE_DEG = 15       # Output 1.0 = 15deg glove vane


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


def q_mul(a: float, b: float) -> float:
    """Q1.19 signed fractional multiply."""
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
    """Q1.19 fractional divide."""
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
# CADC Calculation (Simulation Mode)
# ============================================================================
def calculate_outputs(ps: float, qc: float, tat: float, prev_wing: float = 0.0) -> dict:
    """Calculate all CADC outputs from inputs."""
    
    # Ratio = Qc/Ps
    ratio = q_div(qc, ps) if ps > 0.001 else 0.0
    
    # Mach = Horner(a, ratio)
    a_coeffs = [0.2, -0.2, 0.05, 0.74, 0.0]
    mach = horner_q(a_coeffs, ratio)
    
    # Altitude = Horner(b, Ps)
    b_coeffs = [0.1, -0.05, 0.2, -0.8, 0.75]
    alt = horner_q(b_coeffs, ps)
    
    # Airspeed
    ratio2 = q_div(tat, 0.5) if abs(tat) > 0.001 else 0.0
    sqrt_est = q_add(q_mul(0.25, ratio2), 0.75)
    factor = q_mul(mach, sqrt_est)
    airspd = q_mul(0.64, factor)
    
    # Wing sweep with rate limiting
    d_coeffs = [-0.25, 0.4, 0.5, -0.25]
    wing_cmd = horner_q(d_coeffs, mach)
    rate = 0.003
    delta = q_add(wing_cmd, -prev_wing)
    if delta > rate:
        wing = q_add(prev_wing, rate)
    elif delta < -rate:
        wing = q_add(prev_wing, -rate)
    else:
        wing = wing_cmd
    
    # Flap = -0.5*M + 0.75
    flap = q_add(q_mul(-0.5, mach), 0.75)
    
    # Glove
    e_coeffs = [0.25, -0.25, 0.03125]
    glove = horner_q(e_coeffs, mach)
    
    # Vertical speed (simplified - would need delta from previous)
    vspd = 0.0
    
    return {
        'mach': mach,
        'alt': alt,
        'airspd': airspd,
        'vspd': vspd,
        'wing': wing,
        'wing_cmd': wing_cmd,  # Commanded position (before rate limit)
        'flap': flap,
        'glove': glove
    }


# ============================================================================
# Live Hardware Interface
# ============================================================================
class LiveInterface:
    """Interface to real FPGA via UART with logging."""
    
    # Address name mapping for readable logs
    ADDR_NAMES = {
        GPIO_PS: 'PS', GPIO_QC: 'QC', GPIO_TAT: 'TAT',
        GPIO_OUT_0: 'MACH', GPIO_OUT_0 + CH2_OFFSET: 'ALT',
        GPIO_OUT_1: 'AIRSPD', GPIO_OUT_1 + CH2_OFFSET: 'VSPD',
        GPIO_OUT_2: 'WING', GPIO_OUT_2 + CH2_OFFSET: 'FLAP',
        GPIO_OUT_3: 'GLOVE', GPIO_OUT_3 + CH2_OFFSET: 'STATUS',
    }
    
    def __init__(self, port: str, baudrate: int = 115200, log_callback=None):
        if not HAS_SERIAL:
            raise RuntimeError("pyserial not installed. Run: pip install pyserial")
        self.ser = serial.Serial(port, baudrate, timeout=0.5,
                                  stopbits=serial.STOPBITS_TWO, 
                                  parity=serial.PARITY_ODD)
        self.ser.reset_input_buffer()
        self.log_callback = log_callback
        self.port = port
        time.sleep(0.1)
        self._log(f"Connected to {port} @ {baudrate} 8O2")
        
    def _log(self, msg: str):
        """Log a message to the callback if set."""
        if self.log_callback:
            self.log_callback(msg)
    
    def _addr_name(self, addr: int) -> str:
        """Get readable name for address."""
        return self.ADDR_NAMES.get(addr, f'0x{addr:08X}')
        
    def close(self):
        self._log("Connection closed")
        self.ser.close()
        
    def write_reg(self, addr: int, data: int):
        cmd = bytes([CMD_WRITE])
        addr_bytes = struct.pack('>I', addr)
        length = bytes([0x01])
        data_bytes = struct.pack('>I', data)
        packet = cmd + addr_bytes + length + data_bytes
        self.ser.write(packet)
        self.ser.flush()
        self._log(f"WR {self._addr_name(addr)}: 0x{data:05X}")
    
    def read_reg(self, addr: int) -> int:
        cmd = bytes([CMD_READ])
        addr_bytes = struct.pack('>I', addr)
        length = bytes([0x01])
        packet = cmd + addr_bytes + length
        self.ser.reset_input_buffer()
        self.ser.write(packet)
        self.ser.flush()
        resp = self.ser.read(4)
        if len(resp) != 4:
            self._log(f"RD {self._addr_name(addr)}: TIMEOUT ({len(resp)} bytes)")
            return 0
        value = struct.unpack('<I', resp)[0]
        self._log(f"RD {self._addr_name(addr)}: 0x{value:05X} ({q119_to_float(value):+.4f})")
        return value
    
    def set_inputs(self, ps: float, qc: float, tat: float):
        """Set sensor inputs on FPGA."""
        self._log(f"--- Set Inputs: PS={ps:.3f} QC={qc:.3f} TAT={tat:+.3f} ---")
        ps_gray = bin_to_gray(float_to_q119(ps))
        qc_gray = bin_to_gray(float_to_q119(qc))
        tat_bin = float_to_q119(tat)
        self.write_reg(GPIO_PS, ps_gray & Q119_MAX)
        self.write_reg(GPIO_QC, qc_gray & Q119_MAX)
        self.write_reg(GPIO_TAT, tat_bin & Q119_MAX)
        time.sleep(0.05)  # Wait for processing
    
    def get_outputs(self) -> dict:
        """Read all outputs from FPGA."""
        self._log("--- Read Outputs ---")
        return {
            'mach': q119_to_float(self.read_reg(GPIO_OUT_0)),
            'alt': q119_to_float(self.read_reg(GPIO_OUT_0 + CH2_OFFSET)),
            'airspd': q119_to_float(self.read_reg(GPIO_OUT_1)),
            'vspd': q119_to_float(self.read_reg(GPIO_OUT_1 + CH2_OFFSET)),
            'wing': q119_to_float(self.read_reg(GPIO_OUT_2)),
            'flap': q119_to_float(self.read_reg(GPIO_OUT_2 + CH2_OFFSET)),
            'glove': q119_to_float(self.read_reg(GPIO_OUT_3)),
            'wing_cmd': 0.0  # Not available from hardware
        }


# ============================================================================
# Wing Sweep Visualization
# ============================================================================
def draw_f14_planform(ax, wing_sweep: float, wing_cmd: float = None):
    """
    Draw F-14 Tomcat planform view with variable sweep wings.
    Based on reference 3-view diagram.
    
    wing_sweep: Current wing position (-0.25 to 0.25 mapped to 20 deg to 68 deg)
    """
    ax.clear()
    
    # Map wing value to sweep angle
    sweep_deg = 44 - wing_sweep * 96
    sweep_deg = np.clip(sweep_deg, 20, 68)
    sweep_rad = np.radians(sweep_deg)
    
    # Colors
    body_color = '#c0c0c0'       # Light gray aircraft
    body_edge = '#404040'        # Dark edge
    canopy_color = '#87ceeb'     # Blue canopy
    detail_color = '#808080'     # Medium gray for details
    
    # === MAIN FUSELAGE ===
    fuselage = plt.Polygon([
        # Nose (pointed)
        [-1.15, 0],
        # Forward fuselage widens
        [-1.0, 0.03], [-0.8, 0.06], [-0.5, 0.09], [-0.2, 0.11],
        # Center body at wing root
        [0.0, 0.12], [0.3, 0.12],
        # Aft fuselage narrows between engines
        [0.5, 0.10], [0.7, 0.06], [0.85, 0.03],
        # Tail point
        [0.92, 0],
        # Right side (mirror)
        [0.85, -0.03], [0.7, -0.06], [0.5, -0.10],
        [0.3, -0.12], [0.0, -0.12],
        [-0.2, -0.11], [-0.5, -0.09], [-0.8, -0.06], [-1.0, -0.03],
    ], color=body_color, ec=body_edge, lw=1.5, zorder=10)
    ax.add_patch(fuselage)
    
    # === COCKPIT CANOPY ===
    canopy = plt.Polygon([
        [-0.72, 0.04], [-0.6, 0.055], [-0.42, 0.055], [-0.38, 0.04],
        [-0.38, -0.04], [-0.42, -0.055], [-0.6, -0.055], [-0.72, -0.04],
    ], color=canopy_color, ec='#2b6cb0', lw=1.2, zorder=11)
    ax.add_patch(canopy)
    ax.plot([-0.52, -0.52], [-0.05, 0.05], color='#2b6cb0', lw=1.2, zorder=12)
    
    # === WING GLOVES (fixed inner wing section) ===
    for side in [1, -1]:
        glove = plt.Polygon([
            [-0.18, side * 0.11],    # Inboard LE
            [-0.30, side * 0.32],    # Outboard LE (swept)
            [0.18, side * 0.32],     # Outboard TE
            [0.12, side * 0.11],     # Inboard TE
        ], color=body_color, ec=body_edge, lw=1.2, zorder=5)
        ax.add_patch(glove)
    
    # === VARIABLE SWEEP WINGS ===
    pivot_x = 0.0
    pivot_y = 0.32
    wing_span = 0.58
    chord_root = 0.26
    chord_tip = 0.08
    
    for side in [1, -1]:
        # Wing tip position based on sweep
        tip_x = pivot_x + wing_span * np.sin(sweep_rad)
        tip_y = side * (pivot_y + wing_span * np.cos(sweep_rad))
        
        wing = plt.Polygon([
            [pivot_x - 0.06, side * pivot_y],           # LE root
            [tip_x, tip_y],                              # LE tip
            [tip_x + chord_tip, tip_y],                  # TE tip
            [pivot_x + chord_root, side * pivot_y],      # TE root
        ], color=body_color, ec=body_edge, lw=1.5, zorder=4)
        ax.add_patch(wing)
    
    # === ENGINE NACELLES (under wings, extend to rear) ===
    nacelle_inner = 0.16
    nacelle_outer = 0.26
    
    for side in [1, -1]:
        # Main nacelle body
        nacelle = plt.Polygon([
            [-0.05, side * nacelle_inner],
            [-0.05, side * nacelle_outer],
            [0.95, side * nacelle_outer * 0.85],
            [0.95, side * nacelle_inner * 0.9],
        ], color=detail_color, ec=body_edge, lw=1, zorder=7)
        ax.add_patch(nacelle)
        
        # Exhaust nozzle (darker)
        nozzle = plt.Polygon([
            [0.95, side * nacelle_inner * 0.9],
            [0.95, side * nacelle_outer * 0.85],
            [1.08, side * nacelle_outer * 0.7],
            [1.08, side * nacelle_inner * 0.95],
        ], color='#303030', ec='#202020', lw=1, zorder=7)
        ax.add_patch(nozzle)
    
    # === HORIZONTAL STABILIZERS (tailerons) ===
    for side in [1, -1]:
        stab = plt.Polygon([
            [0.62, side * 0.06],      # Root LE
            [0.72, side * 0.40],      # Tip LE
            [0.92, side * 0.35],      # Tip TE
            [0.88, side * 0.06],      # Root TE
        ], color=body_color, ec=body_edge, lw=1.2, zorder=6)
        ax.add_patch(stab)
    
    # === TWIN VERTICAL STABILIZERS (canted outward - key F-14 feature) ===
    # These are shown as trapezoids rotated to show cant angle
    vstab_root_x = 0.52
    vstab_tip_x = 0.82
    cant_angle = 0.12  # Outward cant
    
    for side in [1, -1]:
        # Vertical stabilizer as a parallelogram (showing cant)
        vstab = plt.Polygon([
            [vstab_root_x, side * 0.08],                           # Root LE (bottom)
            [vstab_root_x + 0.06, side * (0.08 + cant_angle)],     # Tip LE (top, canted out)
            [vstab_tip_x + 0.06, side * (0.08 + cant_angle)],      # Tip TE
            [vstab_tip_x, side * 0.08],                            # Root TE
        ], color=body_color, ec=body_edge, lw=1.2, zorder=15)
        ax.add_patch(vstab)
        
        # Rudder line
        rudder_x = vstab_root_x + 0.22
        ax.plot([rudder_x, rudder_x + 0.04], 
                [side * 0.08, side * (0.08 + cant_angle)],
                color=body_edge, lw=0.8, zorder=16)
    
    # === SPEED BRAKE (between vertical stabs) ===
    speed_brake = plt.Polygon([
        [0.55, 0.06], [0.55, -0.06],
        [0.82, -0.05], [0.82, 0.05],
    ], color=detail_color, ec=body_edge, lw=0.8, zorder=14)
    ax.add_patch(speed_brake)
    
    # === PANEL LINES (detail) ===
    # Wing fold lines
    for side in [1, -1]:
        fold_y = side * (pivot_y + 0.15)
        ax.plot([pivot_x + 0.05, pivot_x + 0.12], [fold_y, fold_y], 
                color=body_edge, lw=0.5, ls='--', zorder=5)
    
    # === DISPLAY ===
    ax.set_xlim(-1.35, 1.25)
    ax.set_ylim(-1.05, 1.05)
    ax.set_aspect('equal')
    ax.axis('off')
    ax.set_facecolor('#f8f8f8')
    
    # Sweep indicator
    ax.text(0, -0.92, f'Wing Sweep: {sweep_deg:.1f} deg', fontsize=12, 
            ha='center', fontweight='bold', color='#2d3748')
    
    # Only show commanded position in simulation mode
    if wing_cmd is not None and wing_cmd != 0.0 and abs(wing_cmd - wing_sweep) > 0.001:
        cmd_deg = 44 - wing_cmd * 96
        cmd_deg = np.clip(cmd_deg, 20, 68)
        ax.text(0, -0.80, f'(Cmd: {cmd_deg:.1f} deg)', fontsize=9, 
                ha='center', style='italic', color='#718096')
    
    ax.set_title('F-14A Tomcat', fontsize=14, fontweight='bold', pad=8, color='#2d3748')


# ============================================================================
# Main Interactive Application
# ============================================================================
class CADCInteractive:
    MAX_LOG_LINES = 15  # Max lines in terminal display
    
    def __init__(self, live_interface=None):
        self.live = live_interface
        self.prev_wing = 0.0  # For rate limiting in simulation
        self.log_lines = []  # Terminal log buffer
        
        # Set up log callback if live
        if self.live:
            self.live.log_callback = self.add_log
        
        # Create figure with subplots
        self.fig = plt.figure(figsize=(16, 10))
        self.fig.patch.set_facecolor('#f0f0f0')
        
        # Main axes for wing display (top left)
        self.ax_wing = self.fig.add_axes([0.02, 0.38, 0.38, 0.58])
        
        # Output displays (top right)
        self.ax_outputs = self.fig.add_axes([0.42, 0.38, 0.35, 0.58])
        
        # Terminal display (right side)
        self.ax_terminal = self.fig.add_axes([0.78, 0.08, 0.21, 0.88])
        self._setup_terminal()
        
        # Slider axes
        slider_left = 0.18
        slider_width = 0.47
        slider_height = 0.03
        
        ax_ps = self.fig.add_axes([slider_left, 0.25, slider_width, slider_height])
        ax_qc = self.fig.add_axes([slider_left, 0.18, slider_width, slider_height])
        ax_tat = self.fig.add_axes([slider_left, 0.11, slider_width, slider_height])
        
        # Create sliders with physical context
        self.slider_ps = Slider(ax_ps, 'Ps (Static Pressure)', 0.05, 0.95, 
                                 valinit=0.5, valstep=0.01, color='#3498db')
        self.slider_qc = Slider(ax_qc, 'Qc (Impact Pressure)', 0.001, 0.5, 
                                 valinit=0.25, valstep=0.005, color='#e74c3c')
        self.slider_tat = Slider(ax_tat, 'TAT (Temperature)', -0.5, 0.5, 
                                  valinit=0.375, valstep=0.025, color='#2ecc71')
        
        # Mode indicator
        mode_text = "LIVE FPGA" if self.live else "SIMULATION"
        self.fig.text(0.5, 0.97, mode_text, fontsize=12, ha='center', 
                      fontweight='bold', color='#c0392b' if self.live else '#2980b9')
        
        # Connect events
        self.slider_ps.on_changed(self.update)
        self.slider_qc.on_changed(self.update)
        self.slider_tat.on_changed(self.update)
        
        # Preset buttons
        ax_preset1 = self.fig.add_axes([0.02, 0.02, 0.10, 0.04])
        ax_preset2 = self.fig.add_axes([0.13, 0.02, 0.10, 0.04])
        ax_preset3 = self.fig.add_axes([0.24, 0.02, 0.10, 0.04])
        ax_preset4 = self.fig.add_axes([0.35, 0.02, 0.10, 0.04])
        ax_reset = self.fig.add_axes([0.55, 0.02, 0.10, 0.04])
        ax_clear = self.fig.add_axes([0.66, 0.02, 0.10, 0.04])
        
        self.btn_preset1 = Button(ax_preset1, 'Cruise', color='#ecf0f1', hovercolor='#bdc3c7')
        self.btn_preset2 = Button(ax_preset2, 'High Speed', color='#ecf0f1', hovercolor='#bdc3c7')
        self.btn_preset3 = Button(ax_preset3, 'Low Alt', color='#ecf0f1', hovercolor='#bdc3c7')
        self.btn_preset4 = Button(ax_preset4, 'Ground', color='#ecf0f1', hovercolor='#bdc3c7')
        self.btn_reset = Button(ax_reset, 'Reset Wing', color='#f39c12', hovercolor='#e67e22')
        self.btn_clear = Button(ax_clear, 'Clear Log', color='#95a5a6', hovercolor='#7f8c8d')
        
        self.btn_preset1.on_clicked(self.preset_cruise)
        self.btn_preset2.on_clicked(self.preset_high_speed)
        self.btn_preset3.on_clicked(self.preset_low_alt)
        self.btn_preset4.on_clicked(self.preset_ground)
        self.btn_reset.on_clicked(self.reset_wing)
        self.btn_clear.on_clicked(self.clear_log)
        
        # Initial log message
        if self.live:
            self.add_log("Ready - adjust sliders to send commands")
        else:
            self.add_log("SIMULATION MODE")
            self.add_log("Use --live flag to connect to FPGA")
        
        # Initial update
        self.update(None)
    
    def _setup_terminal(self):
        """Set up the terminal display area."""
        ax = self.ax_terminal
        ax.set_facecolor('#1e1e1e')  # Dark background
        ax.set_xlim(0, 1)
        ax.set_ylim(0, 1)
        ax.set_xticks([])
        ax.set_yticks([])
        for spine in ax.spines.values():
            spine.set_color('#444444')
            spine.set_linewidth(2)
        ax.set_title('UART Terminal', fontsize=10, color='#2c3e50', 
                     fontweight='bold', pad=5)
    
    def add_log(self, msg: str):
        """Add a message to the terminal log."""
        timestamp = time.strftime('%H:%M:%S')
        self.log_lines.append(f"{timestamp} {msg}")
        # Keep only last N lines
        if len(self.log_lines) > self.MAX_LOG_LINES:
            self.log_lines = self.log_lines[-self.MAX_LOG_LINES:]
        self._update_terminal()
    
    def _update_terminal(self):
        """Refresh the terminal display."""
        ax = self.ax_terminal
        ax.clear()
        ax.set_facecolor('#1e1e1e')
        ax.set_xlim(0, 1)
        ax.set_ylim(0, 1)
        ax.set_xticks([])
        ax.set_yticks([])
        for spine in ax.spines.values():
            spine.set_color('#444444')
            spine.set_linewidth(2)
        ax.set_title('UART Terminal', fontsize=10, color='#2c3e50',
                     fontweight='bold', pad=5)
        
        # Draw log lines (bottom to top, newest at bottom)
        line_height = 0.055
        y_start = 0.95
        
        for i, line in enumerate(self.log_lines):
            y = y_start - i * line_height
            if y < 0.02:
                break
            
            # Color based on content
            if 'WR ' in line:
                color = '#4fc3f7'  # Light blue for writes
            elif 'RD ' in line:
                color = '#81c784'  # Green for reads
            elif 'TIMEOUT' in line or 'ERROR' in line:
                color = '#ef5350'  # Red for errors
            elif '---' in line:
                color = '#ffb74d'  # Orange for section headers
            else:
                color = '#e0e0e0'  # Light gray for other
            
            ax.text(0.02, y, line, fontsize=7, color=color,
                    fontfamily='monospace', va='top',
                    transform=ax.transAxes)
    
    def clear_log(self, event):
        """Clear the terminal log."""
        self.log_lines = []
        self.add_log("Log cleared")
        self.fig.canvas.draw_idle()
        
    def get_outputs(self, ps, qc, tat):
        """Get outputs from simulation or live hardware."""
        if self.live:
            self.live.set_inputs(ps, qc, tat)
            return self.live.get_outputs()
        else:
            outputs = calculate_outputs(ps, qc, tat, self.prev_wing)
            self.prev_wing = outputs['wing']
            return outputs
    
    def update(self, val):
        """Update visualization when sliders change."""
        ps = self.slider_ps.val
        qc = self.slider_qc.val
        tat = self.slider_tat.val
        
        outputs = self.get_outputs(ps, qc, tat)
        
        # Update wing display
        draw_f14_planform(self.ax_wing, outputs['wing'], outputs.get('wing_cmd'))
        
        # Update output displays
        self.draw_outputs(outputs, ps, qc, tat)
        
        self.fig.canvas.draw_idle()
    
    def draw_outputs(self, outputs, ps, qc, tat):
        """Draw output gauges and values."""
        ax = self.ax_outputs
        ax.clear()
        ax.set_xlim(0, 10)
        ax.set_ylim(0, 10)
        ax.axis('off')
        
        # Convert normalized outputs to physical units
        # Note: Mach and Airspeed are always positive physical quantities
        mach_real = abs(outputs['mach']) * SCALE_MACH
        alt_real = outputs['alt'] * SCALE_ALT_FT
        airspd_real = abs(outputs['airspd']) * SCALE_AIRSPD_KTS
        vspd_real = outputs['vspd'] * SCALE_VSPD_FPM
        flap_real = outputs['flap'] * SCALE_FLAP_DEG
        glove_real = outputs['glove'] * SCALE_GLOVE_DEG
        
        # Clamp to realistic F-14 ranges
        mach_real = min(mach_real, 2.5)  # Max Mach 2.5
        alt_real = max(0, min(alt_real, 60000))  # 0-60,000 ft
        airspd_real = max(0, min(airspd_real, 800))  # 0-800 kts
        flap_real = max(0, min(flap_real, 35))  # 0-35°
        
        # Title
        ax.text(5, 9.5, 'CADC Outputs (Physical Units)', fontsize=14, ha='center', 
                fontweight='bold', color='#2c3e50')
        
        # Output bars with physical values
        bar_names = ['Mach', 'Altitude', 'Airspeed', 'Flap', 'Glove', 'Vspd']
        bar_values_norm = [outputs['mach'], outputs['alt'], outputs['airspd'], 
                           outputs['flap'], outputs['glove'], outputs['vspd']]
        bar_values_real = [mach_real, alt_real, airspd_real, flap_real, glove_real, vspd_real]
        bar_units = ['', 'ft', 'kts', 'deg', 'deg', 'ft/min']
        bar_formats = ['{:.2f}', '{:.0f}', '{:.0f}', '{:.1f}', '{:.1f}', '{:+.0f}']
        bar_colors = ['#e74c3c', '#3498db', '#2ecc71', '#9b59b6', '#f39c12', '#1abc9c']
        bar_ranges = [(0, 1), (0, 1), (0, 0.5), (0, 1), (-0.1, 0.1), (-0.2, 0.2)]
        
        y_positions = [8, 6.8, 5.6, 4.4, 3.2, 2.0]
        
        for i, (name, val_norm, val_real, unit, fmt, color, (vmin, vmax), y) in enumerate(
                zip(bar_names, bar_values_norm, bar_values_real, bar_units, 
                    bar_formats, bar_colors, bar_ranges, y_positions)):
            
            # Background bar
            bar_bg = FancyBboxPatch((1.5, y - 0.25), 6, 0.5, 
                                     boxstyle="round,pad=0.02",
                                     facecolor='#ecf0f1', edgecolor='#bdc3c7', lw=1)
            ax.add_patch(bar_bg)
            
            # Value bar (normalized)
            if vmax != vmin:
                norm_val = np.clip((val_norm - vmin) / (vmax - vmin), 0, 1)
            else:
                norm_val = 0.5
            bar_width = 6 * norm_val
            
            bar = FancyBboxPatch((1.5, y - 0.2), bar_width, 0.4,
                                  boxstyle="round,pad=0.02",
                                  facecolor=color, edgecolor='none', alpha=0.8)
            ax.add_patch(bar)
            
            # Label
            ax.text(0.5, y, name, fontsize=11, va='center', ha='left', 
                    fontweight='bold', color='#2c3e50')
            
            # Value text with real units
            value_str = fmt.format(val_real) + ' ' + unit
            ax.text(8.0, y, value_str, fontsize=10, va='center', ha='left',
                    fontfamily='monospace', color='#2c3e50', fontweight='bold')
        
        # Input values display (normalized sensor values)
        # Show approximate physical interpretation
        alt_approx = (1.0 - ps) * 60000  # Higher Ps = lower alt
        ax.text(5, 0.8, f'Sensors: Ps={ps:.2f} (~{alt_approx/1000:.0f}kft)  Qc={qc:.3f}  TAT={tat:+.2f}', 
                fontsize=9, ha='center', color='#7f8c8d', fontfamily='monospace')
        
        # Wing status box
        wing = outputs['wing']
        wing_cmd = outputs.get('wing_cmd', wing)
        sweep_deg = 44 - wing * 96
        sweep_deg = np.clip(sweep_deg, 20, 68)
        
        wing_box = FancyBboxPatch((0.2, 0.2), 9.6, 0.4,
                                   boxstyle="round,pad=0.02", 
                                   facecolor='#2c3e50', edgecolor='none')
        ax.add_patch(wing_box)
        ax.text(5, 0.4, f'Wing Sweep: {sweep_deg:.1f} deg  (20=forward, 68=swept)', 
                fontsize=10, ha='center', va='center', color='white',
                fontfamily='monospace', fontweight='bold')
    
    def preset_cruise(self, event):
        """Set cruise flight conditions."""
        self.slider_ps.set_val(0.5)
        self.slider_qc.set_val(0.25)
        self.slider_tat.set_val(0.375)
    
    def preset_high_speed(self, event):
        """Set high Mach conditions (wings swept back)."""
        self.slider_ps.set_val(0.4)
        self.slider_qc.set_val(0.35)
        self.slider_tat.set_val(0.4)
    
    def preset_low_alt(self, event):
        """Set low altitude conditions."""
        self.slider_ps.set_val(0.8)
        self.slider_qc.set_val(0.3)
        self.slider_tat.set_val(0.5)
    
    def preset_ground(self, event):
        """Set ground/takeoff conditions (wings forward)."""
        self.slider_ps.set_val(0.9)
        self.slider_qc.set_val(0.001)
        self.slider_tat.set_val(0.5)
    
    def reset_wing(self, event):
        """Reset wing position memory (for simulation mode)."""
        self.prev_wing = 0.0
        self.update(None)
    
    def run(self):
        """Show the interactive display."""
        plt.show()


# ============================================================================
# Main Entry Point
# ============================================================================
def main():
    parser = argparse.ArgumentParser(
        description='F-14A CADC Interactive Visualization',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python cadc_interactive.py                     # Simulation mode
  python cadc_interactive.py --live              # Live FPGA on default port
  python cadc_interactive.py --live --port COM3  # Live FPGA on COM3
        """)
    
    parser.add_argument('--live', action='store_true',
                        help='Connect to real FPGA hardware')
    parser.add_argument('--port', default='/dev/ttyAMA2',
                        help='Serial port (default: /dev/ttyAMA2)')
    parser.add_argument('--baud', type=int, default=115200,
                        help='Baud rate (default: 115200)')
    
    args = parser.parse_args()
    
    live_interface = None
    
    if args.live:
        if not HAS_SERIAL:
            print("ERROR: pyserial not installed. Run: pip install pyserial")
            sys.exit(1)
        try:
            print(f"Connecting to FPGA on {args.port}...")
            live_interface = LiveInterface(args.port, args.baud)
            print("Connected!")
        except Exception as e:
            print(f"ERROR: Could not connect to FPGA: {e}")
            print("Running in simulation mode instead.")
            live_interface = None
    
    print("Starting CADC Interactive Visualization...")
    print("Use sliders to adjust flight conditions.")
    print("Watch the wing sweep change with Mach number!")
    
    app = CADCInteractive(live_interface)
    app.run()
    
    if live_interface:
        live_interface.close()


if __name__ == '__main__':
    main()
