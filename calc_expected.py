#!/usr/bin/env python3
"""Calculate expected Q1.19 results for the air data microprogram testbench."""

SCALE = 2**19  # Q1.19

def q119(f):
    val = int(round(f * SCALE))
    if val < 0:
        val = val + (1 << 20)
    return val & 0xFFFFF

def to_float(h):
    if h >= (1 << 19):
        return (h - (1 << 20)) / SCALE
    return h / SCALE

def bin_to_gray(n):
    return n ^ (n >> 1)

def q_mul(a, b):
    """Q1.19 signed fractional multiply (matching PMU: round on bit 18)"""
    a_int = int(round(a * SCALE))
    b_int = int(round(b * SCALE))
    if a_int >= (1 << 19): a_int -= (1 << 20)
    if b_int >= (1 << 19): b_int -= (1 << 20)
    prod40 = a_int * b_int
    result = prod40 >> 19
    if (prod40 >> 18) & 1:
        result += 1
    result = result & 0xFFFFF
    if result >= (1 << 19):
        return (result - (1 << 20)) / SCALE
    return result / SCALE

def q_div(a, b):
    """Q1.19 fractional divide (matching PDU)"""
    a_int = int(round(a * SCALE))
    b_int = int(round(b * SCALE))
    if a_int >= (1 << 19): a_int -= (1 << 20)
    if b_int >= (1 << 19): b_int -= (1 << 20)
    if b_int == 0:
        return 0.0
    a_abs = abs(a_int)
    b_abs = abs(b_int)
    q = (a_abs << 19) // b_abs
    q = q & 0xFFFFF
    if (a_int < 0) != (b_int < 0):
        q = (-q) & 0xFFFFF
    if q >= (1 << 19):
        return (q - (1 << 20)) / SCALE
    return q / SCALE

def q_add(a, b):
    """Q1.19 addition with 20-bit wrap"""
    a_int = int(round(a * SCALE))
    b_int = int(round(b * SCALE))
    if a_int >= (1 << 19): a_int -= (1 << 20)
    if b_int >= (1 << 19): b_int -= (1 << 20)
    s = (a_int + b_int) & 0xFFFFF
    if s >= (1 << 19):
        return (s - (1 << 20)) / SCALE
    return s / SCALE

def horner_q(coeffs, x):
    """Horner method using Q1.19 arithmetic"""
    acc = coeffs[0]
    for c in coeffs[1:]:
        acc = q_add(q_mul(acc, x), c)
    return acc

# Sensor inputs
Ps_bin = 0.5    # desired binary value after Gray2Bin
Qc_bin = 0.25
TAT = 0.375

Ps_gray_val = bin_to_gray(q119(Ps_bin))
Qc_gray_val = bin_to_gray(q119(Qc_bin))
print(f'Ps_bin  = {Ps_bin}, hex = {q119(Ps_bin):05X}, gray = {Ps_gray_val:05X}')
print(f'Qc_bin  = {Qc_bin}, hex = {q119(Qc_bin):05X}, gray = {Qc_gray_val:05X}')
print(f'TAT     = {TAT},   hex = {q119(TAT):05X} (not gray-coded)')

# Phase 2: ratio = Qc/Ps
ratio = q_div(Qc_bin, Ps_bin)
print(f'\nratio = Qc/Ps = {ratio:.6f}, hex = {q119(ratio):05X}')

# Phase 3: Mach = Horner(a, ratio)  a4=0.2, a3=-0.2, a2=0.05, a1=0.74, a0=0.0
a = [0.2, -0.2, 0.05, 0.74, 0.0]
mach = horner_q(a, ratio)
print(f'Mach = {mach:.6f}, hex = {q119(mach):05X}')

# Phase 4: Altitude = Horner(b, Ps_bin)  b4=0.1, b3=-0.05, b2=0.2, b1=-0.8, b0=0.75
b_coef = [0.1, -0.05, 0.2, -0.8, 0.75]
alt = horner_q(b_coef, Ps_bin)
print(f'Altitude = {alt:.6f}, hex = {q119(alt):05X}')

# Phase 5: Airspeed
ratio2 = q_div(TAT, 0.5)  # TAT/tat_ref
print(f'ratio2 = TAT/tat_ref = {ratio2:.6f}, hex = {q119(ratio2):05X}')
sqrt_est = q_add(q_mul(0.25, ratio2), 0.75)
print(f'sqrt_est = {sqrt_est:.6f}')
factor = q_mul(mach, sqrt_est)
print(f'factor (Mach*sqrt_est) = {factor:.6f}')
airspd = q_add(q_mul(0.64, factor), 0.0)
print(f'Airspeed = {airspd:.6f}, hex = {q119(airspd):05X}')

# Phase 6: Vspd (first frame, Alt_prev=0)
delta_alt = alt
vspd = q_mul(delta_alt, 0.14258)
print(f'Vspd (first frame) = {vspd:.6f}, hex = {q119(vspd):05X}')

# Phase 7: Wing sweep
d = [-0.25, 0.4, 0.5, -0.25]
wing_cmd = horner_q(d, mach)
print(f'Wing_cmd = {wing_cmd:.6f}, hex = {q119(wing_cmd):05X}')
rate = 0.003
if wing_cmd > rate:
    wing_out = rate
elif wing_cmd < -rate:
    wing_out = -rate
else:
    wing_out = wing_cmd
# But rate limiting uses Q1.19 comparison, so compute with Q1.19 rate
rate_q = to_float(q119(rate))
wing_cmd_q = wing_cmd
delta = wing_cmd_q  # wing_prev = 0 first frame
if delta > rate_q:
    wing_out = rate_q
elif delta < -rate_q:
    wing_out = -rate_q
else:
    wing_out = delta
print(f'Wing_out (rate limited) = {wing_out:.6f}, hex = {q119(wing_out):05X}')

# Phase 8: Flap = -0.5*M + 0.75
flap = q_add(q_mul(-0.5, mach), 0.75)
print(f'Flap = {flap:.6f}, hex = {q119(flap):05X}')

# Phase 9: Glove = (0.25*M + (-0.25))*M + 0.03125
e = [0.25, -0.25, 0.03125]
glove = horner_q(e, mach)
print(f'Glove = {glove:.6f}, hex = {q119(glove):05X}')

print()
print('=== VHDL Test Constants ===')
print(f'sensor_ps  = x"{Ps_gray_val:05X}"  -- Gray({Ps_bin})')
print(f'sensor_qc  = x"{Qc_gray_val:05X}"  -- Gray({Qc_bin})')
print(f'sensor_tat = x"{q119(TAT):05X}"  -- {TAT} (binary)')
print()
for name, val in [('Mach', mach), ('Alt', alt), ('Airspd', airspd),
                   ('Vspd', vspd), ('Wing', wing_out), ('Flap', flap), ('Glove', glove)]:
    print(f'expected_{name.lower():8s} = x"{q119(val):05X}"  -- {val:.6f}')
