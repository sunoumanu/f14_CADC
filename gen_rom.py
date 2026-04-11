#!/usr/bin/env python3
"""Generate CADC microprogram ROM contents for air data computation.

ARCHITECTURE NOTES:
  - ALU_OP and IO_CTRL share bits 3:0 of the microword.
  - io_ctrl is gated to io_bridge only during WA phase.
  - SLF also reads bits 0-6 serially during WA as its control word.
  - Therefore an IO command and ALU operation CANNOT coexist in one instruction.
  - IO reads:  inst N sets io_ctrl=READ_XX, sl_acc=SRC_IO (no acc_we).
               During WA_N io_bridge latches sensor data.
               During WO_N SL routes IO serial data to SLF input.
               inst N+1 sets alu_op=LOAD, acc_we=1 to capture the data.
  - IO writes: inst N-1 sets sl_io to route desired source to IO output.
               During WO_{N-1} io serializer collects routed data.
               inst N sets io_ctrl=WRITE_XX (no acc_we) to write it.
  - RAS write to sl_ras=0 (ACC) stores from ACC output SR already loaded.
  - PMU auto-starts when it sees ACC and TMP shift out during WO.
  - PDU similarly auto-starts division of ACC / TMP during WO.
"""

# NEXTCTL codes
SEQ=0x00; JMP=0x01; BRZ=0x02; BRN=0x03; BRC=0x04
WAIT_PMU=0x07; WAIT_PDU=0x08; CALL=0x09; RET=0x0A

# ALU_OP codes (bits 3:0 during WA, received by SLF)
NOP=0; ADD=1; SUB=2; AND=3; OR=4; XOR=5; NOT=6
SHL=7; SHR=8; NEG=9; ABS_=0xA; GRAY2BIN=0xB; BIN2GRAY=0xC
LOAD=0xD; STORE_TMP=0xE; PASS=0xF

# IO_CTRL codes (bits 3:0 during WA, received by io_bridge)
# IMPORTANT: These SHARE the same bits as ALU_OP. Never combine both.
IO_NOP=0; READ_PS=1; READ_QC=2; READ_TAT=3; READ_ANA=4; READ_DIG=5
WRITE_MACH=6; WRITE_ALT=7; WRITE_AIRSPD=8; WRITE_VSPD=9
WRITE_WING=0xA; WRITE_FLAP=0xB; WRITE_GLOVE=0xC; WRITE_BIT=0xD

# ACC source select (SL, parallel bits 10:7)
SRC_RAS=0; SRC_PMU=1; SRC_PDUQ=2; SRC_PDUR=3
SRC_IO=4; SRC_CONST=5; SRC_TMP=6; SRC_ACC=7

# IO output source select (SL, parallel bits 17:15)
IO_SRC_ACC=0; IO_SRC_RAS=1; IO_SRC_PMU=2; IO_SRC_PDUQ=3

def mw(nextctl=0, nextadr=0, data_addr=0, ras_we=0, ras_wr=0, ras_rd=0,
       sl_io=0, sl_ras=0, sl_acc=0, flags_we=0, tmp_we=0, acc_we=0,
       alu_op=0, io_ctrl=0):
    """Encode a 48-bit microword. alu_op and io_ctrl share bits 3:0."""
    # Safety: if both are set, that's a programming error
    if alu_op != 0 and io_ctrl != 0:
        raise ValueError(f"Cannot set both alu_op={alu_op:#x} and io_ctrl={io_ctrl:#x} -- they share bits 3:0!")
    opcode = alu_op | io_ctrl
    w = 0
    w |= (opcode & 0xF)
    w |= (acc_we & 1) << 4
    w |= (tmp_we & 1) << 5
    w |= (flags_we & 1) << 6
    w |= (sl_acc & 0xF) << 7
    w |= (sl_ras & 0xF) << 11
    w |= (sl_io & 0x7) << 15
    w |= (ras_rd & 0x3F) << 18
    w |= (ras_wr & 0x3F) << 24
    w |= (ras_we & 1) << 30
    # bit 31: is_io flag — distinguishes IO instructions from ALU instructions
    if io_ctrl != 0:
        w |= 1 << 31
    # bits 37-32: data_addr or nextadr (shared field)
    adr = nextadr if nextctl != 0 else data_addr
    w |= (adr & 0xFF) << 32
    w |= (nextctl & 0xFF) << 40
    return w

def fmt(w):
    return 'x"' + format(w, '012X') + '"'

# --- Validate encoder ---
assert fmt(mw(sl_acc=SRC_IO, io_ctrl=READ_PS)) == 'x"000080000201"'  # bit 31 set for IO
assert fmt(mw(alu_op=LOAD, acc_we=1)) == 'x"00000000001D"'           # no bit 31 for ALU
assert fmt(mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)) == 'x"070000000080"'
# Verify the safety check works
try:
    mw(alu_op=LOAD, io_ctrl=READ_QC)
    assert False, "Should have raised ValueError"
except ValueError:
    pass
print("Encoder validation PASSED")

# ===========================================================================
# RAS Memory Map:
#   0: scratch      8: Airspeed
#   1: scratch      9: Vspd
#   2: TAT         10: Wing_cmd (raw polynomial)
#   3: Ps_bin      11: Wing_out (rate limited)
#   4: Qc_bin      12: Flap
#   5: ratio       13: Glove
#   6: Mach        14: Alt_prev (frame-to-frame)
#   7: Altitude    15: Wing_prev (frame-to-frame)
#
# Data ROM Constants (Q1.19 fixed-point):
#   0-4:   Mach polynomial   (a4=0.2, a3=-0.2, a2=0.05, a1=0.74, a0=0.0)
#   5-9:   Altitude polynomial (b4=0.1, b3=-0.05, b2=0.2, b1=-0.8, b0=0.75)
#   10-14: Airspeed (tas_c1=0.64, tas_c0=0, tat_ref=0.5, sqrt_c1=0.25, sqrt_c0=0.75)
#   15-18: Wing sweep (d3=-0.25, d2=0.4, d1=0.5, d0=-0.25)
#   19-21: Wing limits (lower=0, upper=max, rate=0.003)
#   22:    Vspd scale (0.14258)
#   23-24: Mach thresholds (0.4, 0.8) — reserved
#   25-26: Flap (c1=-0.5, c0=0.75)
#   27-29: Glove vane (e2=0.25, e1=-0.25, e0=0.03125)
#   30-31: Zero (0.0), max (0x7FFFF = +max)
# ===========================================================================

instrs = {}
a = 0  # address counter

# =========================================================================
# Phase 1: Read sensors, Gray-to-Binary convert, store in RAS
# =========================================================================

# --- Read Ps (Gray-coded from quartz pressure sensor) ---
# GRAY2BIN operates on s_input_lat in the SLF, NOT s_acc_reg.
# So the Gray-coded value must be on the input bus when GRAY2BIN executes.
# After IO READ, the sensor data is on input_lat at the end of WO.
# Therefore: READ -> GRAY2BIN (not READ -> LOAD -> GRAY2BIN).
instrs[a] = ('IO READ_PS, route IO to ACC input',
             mw(io_ctrl=READ_PS, sl_acc=SRC_IO)); a+=1                    # 0
instrs[a] = ('GRAY2BIN(input_lat=Ps_gray) => Ps_bin in ACC',
             mw(alu_op=GRAY2BIN, acc_we=1)); a+=1                         # 1
instrs[a] = ('Store Ps_bin to RAS[3]',
             mw(ras_we=1, ras_wr=3, sl_ras=0)); a+=1                     # 2

# --- Read Qc (Gray-coded from impact pressure sensor) ---
instrs[a] = ('IO READ_QC, route IO to ACC input',
             mw(io_ctrl=READ_QC, sl_acc=SRC_IO)); a+=1                    # 3
instrs[a] = ('GRAY2BIN(input_lat=Qc_gray) => Qc_bin in ACC',
             mw(alu_op=GRAY2BIN, acc_we=1)); a+=1                         # 4
instrs[a] = ('Store Qc_bin to RAS[4]',
             mw(ras_we=1, ras_wr=4, sl_ras=0)); a+=1                     # 5

# --- Read TAT (already binary from sensor) ---
instrs[a] = ('IO READ_TAT, route IO to ACC input',
             mw(io_ctrl=READ_TAT, sl_acc=SRC_IO)); a+=1                   # 8
instrs[a] = ('LOAD TAT to ACC',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 9
instrs[a] = ('Store TAT to RAS[2]',
             mw(ras_we=1, ras_wr=2, sl_ras=0)); a+=1                     # 10

# =========================================================================
# Phase 2: Compute pressure ratio r = Qc / Ps using PDU
# PDU divides ACC / TMP shifted out during WO
# Need: ACC=Qc, TMP=Ps at start of WO
# =========================================================================

instrs[a] = ('Route RAS[3] (Ps) to ACC input',
             mw(sl_acc=SRC_RAS, ras_rd=3)); a+=1                          # 11
instrs[a] = ('LOAD Ps to ACC',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 12
instrs[a] = ('TMP=Ps, route RAS[4] (Qc)',
             mw(tmp_we=1, sl_acc=SRC_RAS, ras_rd=4)); a+=1               # 13
instrs[a] = ('LOAD Qc to ACC => PDU auto-starts Qc/Ps',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 14
instrs[a] = ('WAIT_PDU, route PDU quotient',
             mw(nextctl=WAIT_PDU, sl_acc=SRC_PDUQ)); a+=1                # 15
instrs[a] = ('LOAD ratio = Qc/Ps to ACC, store RAS[5]',
             mw(alu_op=LOAD, acc_we=1, ras_we=1, ras_wr=5, sl_ras=0)); a+=1  # 16

# =========================================================================
# Phase 3: Mach = 4th-order Horner polynomial of ratio r
# M = ((((a4*r + a3)*r + a2)*r + a1)*r + a0)
# Data ROM: 0=a4, 1=a3, 2=a2, 3=a1, 4=a0
# ACC=r after inst 16. TMP <- r for PMU multiplies.
# Pattern per Horner term:
#   TMP=current, route CONST[coef] -> LOAD coef -> auto-multiply ->
#   WAIT_PMU, route PMU -> LOAD product -> route CONST[next] -> ADD coef
# =========================================================================

instrs[a] = ('TMP=r for multiplies, route CONST[0]=a4',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=0)); a+=1          # 17
instrs[a] = ('LOAD a4 => PMU starts a4*r',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 18
instrs[a] = ('WAIT_PMU, route PMU result',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 19
instrs[a] = ('LOAD a4*r, route CONST[1]=a3',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=1)); a+=1  # 20
instrs[a] = ('ADD a3 => (a4*r+a3), PMU starts *r',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 21
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 22
instrs[a] = ('LOAD PMU, route CONST[2]=a2',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=2)); a+=1  # 23
instrs[a] = ('ADD a2, PMU starts *r',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 24
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 25
instrs[a] = ('LOAD PMU, route CONST[3]=a1',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=3)); a+=1  # 26
instrs[a] = ('ADD a1, PMU starts *r',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 27
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 28
instrs[a] = ('LOAD PMU, route CONST[4]=a0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=4)); a+=1  # 29
instrs[a] = ('ADD a0 => Mach, store RAS[6], route ACC to IO',
             mw(alu_op=ADD, acc_we=1, flags_we=1, ras_we=1, ras_wr=6, sl_ras=0,
                sl_io=IO_SRC_ACC)); a+=1                                   # 30
instrs[a] = ('IO WRITE_MACH',
             mw(io_ctrl=WRITE_MACH)); a+=1                                # 31

# =========================================================================
# Phase 4: Altitude = 4th-order Horner polynomial of Ps
# Alt = ((((b4*Ps + b3)*Ps + b2)*Ps + b1)*Ps + b0)
# Data ROM: 5=b4, 6=b3, 7=b2, 8=b1, 9=b0
# =========================================================================

instrs[a] = ('Route RAS[3] (Ps)',
             mw(sl_acc=SRC_RAS, ras_rd=3)); a+=1                          # 32
instrs[a] = ('LOAD Ps to ACC',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 33
instrs[a] = ('TMP=Ps, route CONST[5]=b4',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=5)); a+=1          # 34
instrs[a] = ('LOAD b4 => PMU starts b4*Ps',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 35
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 36
instrs[a] = ('LOAD PMU, route CONST[6]=b3',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=6)); a+=1  # 37
instrs[a] = ('ADD b3, PMU starts *Ps',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 38
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 39
instrs[a] = ('LOAD PMU, route CONST[7]=b2',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=7)); a+=1  # 40
instrs[a] = ('ADD b2, PMU starts *Ps',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 41
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 42
instrs[a] = ('LOAD PMU, route CONST[8]=b1',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=8)); a+=1  # 43
instrs[a] = ('ADD b1, PMU starts *Ps',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 44
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 45
instrs[a] = ('LOAD PMU, route CONST[9]=b0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=9)); a+=1  # 46
instrs[a] = ('ADD b0 => Altitude, store RAS[7], route ACC to IO',
             mw(alu_op=ADD, acc_we=1, flags_we=1, ras_we=1, ras_wr=7, sl_ras=0,
                sl_io=IO_SRC_ACC)); a+=1                                   # 47
instrs[a] = ('IO WRITE_ALT',
             mw(io_ctrl=WRITE_ALT)); a+=1                                 # 48

# =========================================================================
# Phase 5: Airspeed = f(Mach, TAT)
# TAS = tas_c1 * Mach * sqrt_approx(TAT / tat_ref) + tas_c0
# sqrt_approx(x) ~ sqrt_c1 * x + sqrt_c0  (linear approx near x=1)
# Step 1: ratio2 = TAT / tat_ref
# Step 2: sqrt_est = sqrt_c1 * ratio2 + sqrt_c0
# Step 3: factor = Mach * sqrt_est
# Step 4: TAS = tas_c1 * factor + tas_c0
# Data ROM: 10=tas_c1, 11=tas_c0, 12=tat_ref, 13=sqrt_c1, 14=sqrt_c0
# =========================================================================

# Step 5.1: ratio2 = TAT / tat_ref
instrs[a] = ('Route CONST[12]=tat_ref',
             mw(sl_acc=SRC_CONST, data_addr=12)); a+=1                    # 49
instrs[a] = ('LOAD tat_ref to ACC',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 50
instrs[a] = ('TMP=tat_ref, route RAS[2] (TAT)',
             mw(tmp_we=1, sl_acc=SRC_RAS, ras_rd=2)); a+=1               # 51
instrs[a] = ('LOAD TAT => PDU starts TAT/tat_ref',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 52
instrs[a] = ('WAIT_PDU, route quotient',
             mw(nextctl=WAIT_PDU, sl_acc=SRC_PDUQ)); a+=1                # 53
instrs[a] = ('LOAD ratio2 = TAT/tat_ref',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 54

# Step 5.2: sqrt_est = sqrt_c1 * ratio2 + sqrt_c0
instrs[a] = ('TMP=ratio2, route CONST[13]=sqrt_c1',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=13)); a+=1         # 55
instrs[a] = ('LOAD sqrt_c1 => PMU starts sqrt_c1*ratio2',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 56
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 57
instrs[a] = ('LOAD PMU, route CONST[14]=sqrt_c0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=14)); a+=1  # 58
instrs[a] = ('ADD sqrt_c0 => sqrt_est',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 59

# Step 5.3: factor = Mach * sqrt_est
instrs[a] = ('TMP=sqrt_est, route RAS[6] (Mach)',
             mw(tmp_we=1, sl_acc=SRC_RAS, ras_rd=6)); a+=1               # 60
instrs[a] = ('LOAD Mach => PMU starts Mach*sqrt_est',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 61
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 62
instrs[a] = ('LOAD PMU = Mach*sqrt_est',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 63

# Step 5.4: TAS = tas_c1 * factor + tas_c0
instrs[a] = ('TMP=factor, route CONST[10]=tas_c1',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=10)); a+=1         # 64
instrs[a] = ('LOAD tas_c1 => PMU starts tas_c1*factor',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 65
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 66
instrs[a] = ('LOAD PMU, route CONST[11]=tas_c0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=11)); a+=1  # 67
instrs[a] = ('ADD tas_c0 => Airspeed, store RAS[8], route ACC to IO',
             mw(alu_op=ADD, acc_we=1, flags_we=1, ras_we=1, ras_wr=8, sl_ras=0,
                sl_io=IO_SRC_ACC)); a+=1                                   # 68
instrs[a] = ('IO WRITE_AIRSPD',
             mw(io_ctrl=WRITE_AIRSPD)); a+=1                              # 69

# =========================================================================
# Phase 6: Vertical Speed = (Alt - Alt_prev) * vspd_scale
# Data ROM: 22=vspd_scale
# RAS: 7=Alt, 14=Alt_prev
# =========================================================================

instrs[a] = ('Route RAS[14] (Alt_prev)',
             mw(sl_acc=SRC_RAS, ras_rd=14)); a+=1                         # 70
instrs[a] = ('LOAD Alt_prev to ACC',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 71
# Now route Alt; during WO_71, ACC=Alt_prev shifts out, and RAS[7] routes in
instrs[a] = ('Route RAS[7] (Alt) for subtract',
             mw(sl_acc=SRC_RAS, ras_rd=7)); a+=1                          # 72
instrs[a] = ('SUB: ACC = Alt_prev - Alt',
             mw(alu_op=SUB, acc_we=1, flags_we=1)); a+=1                  # 73
instrs[a] = ('NEG: ACC = Alt - Alt_prev = delta_alt',
             mw(alu_op=NEG, acc_we=1, flags_we=1)); a+=1                  # 74

# Save delta_alt to TMP for multiply, update Alt_prev
instrs[a] = ('TMP=delta_alt, route RAS[7] (Alt)',
             mw(tmp_we=1, sl_acc=SRC_RAS, ras_rd=7)); a+=1               # 75
instrs[a] = ('LOAD Alt, store to RAS[14] = new Alt_prev',
             mw(alu_op=LOAD, acc_we=1, ras_we=1, ras_wr=14, sl_ras=0)); a+=1  # 76

# Multiply delta_alt * vspd_scale (TMP=delta_alt)
instrs[a] = ('Route CONST[22]=vspd_scale',
             mw(sl_acc=SRC_CONST, data_addr=22)); a+=1                    # 77
instrs[a] = ('LOAD vspd_scale => PMU starts vspd_scale*delta_alt',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 78
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 79
instrs[a] = ('LOAD Vspd, store RAS[9], route ACC to IO',
             mw(alu_op=LOAD, acc_we=1, ras_we=1, ras_wr=9, sl_ras=0,
                sl_io=IO_SRC_ACC)); a+=1                                   # 80
instrs[a] = ('IO WRITE_VSPD',
             mw(io_ctrl=WRITE_VSPD)); a+=1                                # 81

# =========================================================================
# Phase 7: Wing Sweep = 3rd-order Horner polynomial of Mach + rate limit
# ws_cmd = ((d3*M + d2)*M + d1)*M + d0
# Data ROM: 15=d3, 16=d2, 17=d1, 18=d0, 21=rate_lim
# =========================================================================

instrs[a] = ('Route RAS[6] (Mach)',
             mw(sl_acc=SRC_RAS, ras_rd=6)); a+=1                          # 82
instrs[a] = ('LOAD Mach',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 83
instrs[a] = ('TMP=Mach, route CONST[15]=d3',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=15)); a+=1         # 84
instrs[a] = ('LOAD d3 => PMU starts d3*M',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 85
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 86
instrs[a] = ('LOAD PMU, route CONST[16]=d2',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=16)); a+=1  # 87
instrs[a] = ('ADD d2, PMU starts *M',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 88
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 89
instrs[a] = ('LOAD PMU, route CONST[17]=d1',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=17)); a+=1  # 90
instrs[a] = ('ADD d1, PMU starts *M',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 91
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 92
instrs[a] = ('LOAD PMU, route CONST[18]=d0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=18)); a+=1  # 93
instrs[a] = ('ADD d0 => ws_cmd, store RAS[10]',
             mw(alu_op=ADD, acc_we=1, flags_we=1, ras_we=1, ras_wr=10, sl_ras=0)); a+=1  # 94

# --- Rate limiting: delta = ws_cmd - Wing_prev ---
instrs[a] = ('Route RAS[15] (Wing_prev)',
             mw(sl_acc=SRC_RAS, ras_rd=15)); a+=1                         # 95
instrs[a] = ('LOAD Wing_prev',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 96
instrs[a] = ('Route RAS[10] (ws_cmd)',
             mw(sl_acc=SRC_RAS, ras_rd=10)); a+=1                         # 97
instrs[a] = ('SUB: ACC = Wing_prev - ws_cmd',
             mw(alu_op=SUB, acc_we=1, flags_we=1)); a+=1                  # 98
instrs[a] = ('NEG: ACC = ws_cmd - Wing_prev = delta',
             mw(alu_op=NEG, acc_we=1, flags_we=1)); a+=1                  # 99

# Check if delta > +rate_limit: TMP=delta, ACC=rate, SUB delta
instrs[a] = ('TMP=delta, route CONST[21]=rate_limit',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=21)); a+=1         # 100
P_CLAMP_POS = a + 3  # address of clamp_pos block
instrs[a] = ('LOAD rate_limit',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 101
instrs[a] = ('Route TMP (delta) for subtract',
             mw(sl_acc=SRC_TMP)); a+=1                                    # 102
P_CHECK_NEG = a + 2  # computed later
instrs[a] = ('SUB: ACC = rate - delta',
             mw(alu_op=SUB, acc_we=1, flags_we=1)); a+=1                  # 103
# If N=1 (rate - delta < 0), delta > rate => clamp to +rate
P_CLAMP_POS = a + 1  # will be filled below

instrs[a] = ('BRN clamp_pos if delta > rate',
             mw(nextctl=BRN, nextadr=0)); a+=1                            # 104  (placeholder)
clamp_pos_brn_addr = a - 1  # save for fixup

# delta <= rate. Check if delta < -rate
instrs[a] = ('Route TMP (delta)',
             mw(sl_acc=SRC_TMP)); a+=1                                    # 105
instrs[a] = ('LOAD delta, set flags',
             mw(alu_op=LOAD, acc_we=1, flags_we=1)); a+=1                 # 106

instrs[a] = ('BRN check_neg_bound if delta < 0',
             mw(nextctl=BRN, nextadr=0)); a+=1                            # 107  (placeholder)
check_neg_brn_addr = a - 1

# delta >= 0 and <= rate: use delta as-is, jump to apply
instrs[a] = ('JMP apply_delta',
             mw(nextctl=JMP, nextadr=0)); a+=1                            # 108  (placeholder)
apply_jmp_addr = a - 1

# --- Clamp to +rate_limit ---
clamp_pos_target = a
instrs[a] = ('Route CONST[21]=rate_limit',
             mw(sl_acc=SRC_CONST, data_addr=21)); a+=1                    # 109
instrs[a] = ('LOAD +rate_limit (clamped)',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 110
instrs[a] = ('JMP apply_delta',
             mw(nextctl=JMP, nextadr=0)); a+=1                            # 111  (placeholder)
clamp_pos_jmp_addr = a - 1

# --- Check if delta < -rate_limit ---
check_neg_target = a
instrs[a] = ('Route CONST[21]=rate_limit',
             mw(sl_acc=SRC_CONST, data_addr=21)); a+=1                    # 112
instrs[a] = ('ADD rate: ACC = delta + rate',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 113
instrs[a] = ('BRN clamp_neg if delta + rate < 0',
             mw(nextctl=BRN, nextadr=0)); a+=1                            # 114  (placeholder)
clamp_neg_brn_addr = a - 1

# Not clamped: reload delta from TMP
instrs[a] = ('Route TMP (delta)',
             mw(sl_acc=SRC_TMP)); a+=1                                    # 115
instrs[a] = ('LOAD delta (unclamped)',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 116
# Falls through to apply_delta

# --- Apply delta: Wing_out = Wing_prev + clamped_delta ---
apply_delta_target = a
instrs[a] = ('TMP=clamped_delta, route RAS[15] (Wing_prev)',
             mw(tmp_we=1, sl_acc=SRC_RAS, ras_rd=15)); a+=1              # 117
instrs[a] = ('LOAD Wing_prev',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 118
instrs[a] = ('Route TMP (clamped_delta)',
             mw(sl_acc=SRC_TMP)); a+=1                                    # 119
instrs[a] = ('ADD clamped_delta => Wing_out',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 120
instrs[a] = ('Store Wing_out to RAS[11] and RAS[15]',
             mw(ras_we=1, ras_wr=11, sl_ras=0)); a+=1                    # 121
instrs[a] = ('Store Wing_out to RAS[15] (new prev), route ACC to IO',
             mw(ras_we=1, ras_wr=15, sl_ras=0, sl_io=IO_SRC_ACC)); a+=1  # 122
instrs[a] = ('IO WRITE_WING',
             mw(io_ctrl=WRITE_WING)); a+=1                                # 123
flap_target = a + 1  # jump over clamp_neg
instrs[a] = ('JMP to flap calculation',
             mw(nextctl=JMP, nextadr=0)); a+=1                            # 124  (placeholder)
flap_jmp_addr = a - 1

# --- Clamp to -rate_limit ---
clamp_neg_target = a
instrs[a] = ('Route CONST[21]=rate_limit',
             mw(sl_acc=SRC_CONST, data_addr=21)); a+=1                    # 125
instrs[a] = ('LOAD rate_limit',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 126
instrs[a] = ('NEG => ACC = -rate_limit',
             mw(alu_op=NEG, acc_we=1)); a+=1                              # 127
instrs[a] = ('JMP apply_delta',
             mw(nextctl=JMP, nextadr=apply_delta_target)); a+=1           # 128

# =========================================================================
# Phase 8: Maneuver Flap = linear(Mach) = flap_c1 * M + flap_c0
# Data ROM: 25=flap_c1, 26=flap_c0
# =========================================================================

flap_start = a
instrs[a] = ('Route RAS[6] (Mach)',
             mw(sl_acc=SRC_RAS, ras_rd=6)); a+=1                          # 129
instrs[a] = ('LOAD Mach',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 130
instrs[a] = ('TMP=Mach, route CONST[25]=flap_c1',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=25)); a+=1         # 131
instrs[a] = ('LOAD flap_c1 => PMU starts flap_c1*M',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 132
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 133
instrs[a] = ('LOAD PMU, route CONST[26]=flap_c0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=26)); a+=1  # 134
instrs[a] = ('ADD flap_c0 => Flap, store RAS[12], route ACC to IO',
             mw(alu_op=ADD, acc_we=1, flags_we=1, ras_we=1, ras_wr=12, sl_ras=0,
                sl_io=IO_SRC_ACC)); a+=1                                   # 135
instrs[a] = ('IO WRITE_FLAP',
             mw(io_ctrl=WRITE_FLAP)); a+=1                                # 136

# =========================================================================
# Phase 9: Glove Vane = 2nd-order Horner polynomial of Mach
# GV = (e2*M + e1)*M + e0
# Data ROM: 27=e2, 28=e1, 29=e0
# =========================================================================

instrs[a] = ('Route RAS[6] (Mach)',
             mw(sl_acc=SRC_RAS, ras_rd=6)); a+=1                          # 137
instrs[a] = ('LOAD Mach',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 138
instrs[a] = ('TMP=Mach, route CONST[27]=e2',
             mw(tmp_we=1, sl_acc=SRC_CONST, data_addr=27)); a+=1         # 139
instrs[a] = ('LOAD e2 => PMU starts e2*M',
             mw(alu_op=LOAD, acc_we=1)); a+=1                             # 140
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 141
instrs[a] = ('LOAD PMU, route CONST[28]=e1',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=28)); a+=1  # 142
instrs[a] = ('ADD e1, PMU starts *M',
             mw(alu_op=ADD, acc_we=1, flags_we=1)); a+=1                  # 143
instrs[a] = ('WAIT_PMU',
             mw(nextctl=WAIT_PMU, sl_acc=SRC_PMU)); a+=1                  # 144
instrs[a] = ('LOAD PMU, route CONST[29]=e0',
             mw(alu_op=LOAD, acc_we=1, sl_acc=SRC_CONST, data_addr=29)); a+=1  # 145
instrs[a] = ('ADD e0 => Glove Vane, store RAS[13], route ACC to IO',
             mw(alu_op=ADD, acc_we=1, flags_we=1, ras_we=1, ras_wr=13, sl_ras=0,
                sl_io=IO_SRC_ACC)); a+=1                                   # 146
instrs[a] = ('IO WRITE_GLOVE',
             mw(io_ctrl=WRITE_GLOVE)); a+=1                               # 147

# =========================================================================
# Halt: Jump to self, frame_mark resets PC to 0 for next computation frame
# =========================================================================
halt_addr = a
instrs[a] = ('HALT: JMP self, await frame_mark',
             mw(nextctl=JMP, nextadr=a)); a+=1                            # 148

# =========================================================================
# Fix up branch targets now that all addresses are known
# =========================================================================
instrs[clamp_pos_brn_addr] = (instrs[clamp_pos_brn_addr][0],
    mw(nextctl=BRN, nextadr=clamp_pos_target))
instrs[check_neg_brn_addr] = (instrs[check_neg_brn_addr][0],
    mw(nextctl=BRN, nextadr=check_neg_target))
instrs[apply_jmp_addr]     = (instrs[apply_jmp_addr][0],
    mw(nextctl=JMP, nextadr=apply_delta_target))
instrs[clamp_pos_jmp_addr] = (instrs[clamp_pos_jmp_addr][0],
    mw(nextctl=JMP, nextadr=apply_delta_target))
instrs[clamp_neg_brn_addr] = (instrs[clamp_neg_brn_addr][0],
    mw(nextctl=BRN, nextadr=clamp_neg_target))
instrs[flap_jmp_addr]      = (instrs[flap_jmp_addr][0],
    mw(nextctl=JMP, nextadr=flap_start))

# =========================================================================
# Print VHDL ROM contents
# =========================================================================
print()
print(f"Total instructions: {len(instrs)} (addresses 0-{max(instrs.keys())})")
print()
print("    ---------------------------------------------------------------------------")
print("    -- F-14A CADC Air Data Computation Microprogram")
print("    -- Computes: Mach, Altitude, Airspeed, Vertical Speed,")
print("    --           Wing Sweep (rate-limited), Maneuver Flaps, Glove Vane")
print("    -- From: Ps (static pressure), Qc (impact pressure), TAT (temperature)")
print("    -- Method: Horner polynomial evaluation via PMU multiply + SLF add")
print("    -- Total instructions: %d" % len(instrs))
print("    ---------------------------------------------------------------------------")

for addr in sorted(instrs.keys()):
    desc, hw = instrs[addr]
    print(f"    {addr:3d} => {fmt(hw)},  -- {desc}")

print()
print("    OTHERS => (OTHERS => '0')")
