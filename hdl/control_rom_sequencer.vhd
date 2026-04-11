-------------------------------------------------------------------------------
-- Control ROM + Sequencer
-- F-14A Central Air Data Computer - FPGA Implementation (Bit-Serial)
--
-- Micro-programmed sequencer with 1024-deep control ROM.
-- Outputs serial control word during WA phase for all modules.
-- PC advances at start of each operation (WA T0).
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY control_rom_sequencer IS
  GENERIC (
    g_ctrl_rom_depth : NATURAL := 1024;
    g_data_rom_depth : NATURAL := 512;
    g_uword_width    : NATURAL := 48
  );
  PORT (
    i_clk            : IN  STD_LOGIC;
    i_rst            : IN  STD_LOGIC;
    -- Timing inputs
    i_phi2           : IN  STD_LOGIC;
    i_word_type      : IN  STD_LOGIC;  -- '0'=WA, '1'=WO
    i_t0             : IN  STD_LOGIC;
    i_t19            : IN  STD_LOGIC;
    -- Flag inputs
    i_flag_z         : IN  STD_LOGIC;
    i_flag_n         : IN  STD_LOGIC;
    i_flag_c         : IN  STD_LOGIC;
    i_pmu_busy       : IN  STD_LOGIC;
    i_pdu_busy       : IN  STD_LOGIC;
    i_frame_mark     : IN  STD_LOGIC;
    -- Serial control word output (during WA)
    o_cw_bit         : OUT STD_LOGIC;   -- Serial control word 
    -- Data ROM interface
    o_const_bit      : OUT STD_LOGIC;   -- Serial constant output (during WO)
    -- Debug outputs
    o_micro_addr     : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    o_micro_word     : OUT STD_LOGIC_VECTOR(g_uword_width-1 DOWNTO 0)
  );
END ENTITY control_rom_sequencer;

ARCHITECTURE rtl OF control_rom_sequencer IS

  CONSTANT c_nc_seq      : UNSIGNED(7 DOWNTO 0) := x"00";
  CONSTANT c_nc_jump     : UNSIGNED(7 DOWNTO 0) := x"01";
  CONSTANT c_nc_brz      : UNSIGNED(7 DOWNTO 0) := x"02";
  CONSTANT c_nc_brn      : UNSIGNED(7 DOWNTO 0) := x"03";
  CONSTANT c_nc_brc      : UNSIGNED(7 DOWNTO 0) := x"04";
  CONSTANT c_nc_br_pmub  : UNSIGNED(7 DOWNTO 0) := x"05";
  CONSTANT c_nc_br_pdub  : UNSIGNED(7 DOWNTO 0) := x"06";
  CONSTANT c_nc_wait_pmu : UNSIGNED(7 DOWNTO 0) := x"07";
  CONSTANT c_nc_wait_pdu : UNSIGNED(7 DOWNTO 0) := x"08";
  CONSTANT c_nc_call     : UNSIGNED(7 DOWNTO 0) := x"09";
  CONSTANT c_nc_ret      : UNSIGNED(7 DOWNTO 0) := x"0A";

  TYPE t_ctrl_rom IS ARRAY(0 TO g_ctrl_rom_depth-1)
    OF STD_LOGIC_VECTOR(g_uword_width-1 DOWNTO 0);

  ---------------------------------------------------------------------------
  -- F-14A CADC Air Data Computation Microprogram
  -- Computes: Mach, Altitude, Airspeed, Vertical Speed,
  --           Wing Sweep (rate-limited), Maneuver Flaps, Glove Vane
  -- From: Ps (static pressure), Qc (impact pressure), TAT (temperature)
  -- Method: Horner polynomial evaluation via PMU multiply + SLF add
  -- Total instructions: 147
  --
  -- Microword Bit Layout:
  --   bits 0-3:   SLF ALU_OP (serial) / IO control (parallel) - SHARED!
  --   bit 4:      acc_we (serial)
  --   bit 5:      tmp_we (serial)
  --   bit 6:      flags_we (serial)
  --   bits 7-10:  SL ACC source (parallel)
  --   bits 11-14: SL RAS source (parallel)
  --   bits 15-17: SL IO source (parallel)
  --   bits 18-23: RAS read address (parallel)
  --   bits 24-29: RAS write address (parallel)
  --   bit 30:     RAS write enable (parallel)
  --   bits 32-37: Data ROM address (parallel, 6 bits = 64 constants)
  --   bits 38-39: reserved
  --   bits 40-47: Sequencer nextctl (parallel)
  --
  -- ALU_OP: 0=NOP,1=ADD,2=SUB,0xD=LOAD,0xE=STORE_TMP,0xF=PASS
  -- ACC_SRC (bits 10-7): 0=RAS,1=PMU,2=PDUQ,3=PDUR,4=IO,5=CONST,6=TMP,7=ACC
  -- IO_CTRL: 0=NOP,1=read_ps,2=read_qc,6=write_mach,...
  --
  -- CRITICAL: ALU_OP and IO_CTRL share bits 3:0. They cannot coexist.
  -- IO commands occupy their own instruction (no ALU operation).
  --
  -- PIPELINE NOTE: ACC_SRC routes data during WO_N, ALU uses it during WA_(N+1)
  -- So to "LOAD source to ACC": inst N sets ACC_SRC=source, inst N+1 does LOAD+acc_we
  --
  -- RAS Memory Map:
  --   2=TAT, 3=Ps_bin, 4=Qc_bin, 5=ratio, 6=Mach, 7=Altitude
  --   8=Airspeed, 9=Vspd, 10=Wing_cmd, 11=Wing_out, 12=Flap, 13=Glove
  --   14=Alt_prev, 15=Wing_prev
  ---------------------------------------------------------------------------
  SIGNAL s_ctrl_rom : t_ctrl_rom := (
    -- Phase 1: Sensor input (Gray-to-binary conversion)
    -- GRAY2BIN operates on s_input_lat, NOT s_acc_reg.
    -- After IO READ, sensor data arrives on input during WO.
    -- So: READ -> GRAY2BIN (skip intermediate LOAD).
    -- Bit 31 = is_io flag: set on IO instructions, clear on ALU instructions
      0 => x"000080000201",  -- IO READ_PS, route IO to ACC input
      1 => x"00000000001B",  -- GRAY2BIN(input_lat=Ps_gray) => Ps_bin in ACC
      2 => x"000043000000",  -- Store Ps_bin to RAS[3]
      3 => x"000080000202",  -- IO READ_QC, route IO to ACC input
      4 => x"00000000001B",  -- GRAY2BIN(input_lat=Qc_gray) => Qc_bin in ACC
      5 => x"000044000000",  -- Store Qc_bin to RAS[4]
      6 => x"000080000203",  -- IO READ_TAT, route IO to ACC input
      7 => x"00000000001D",  -- LOAD TAT to ACC
      8 => x"000042000000",  -- Store TAT to RAS[2]
    -- Phase 2: Pressure ratio r = Qc/Ps via PDU
      9 => x"0000000C0000",  -- Route RAS[3] (Ps) to ACC input
     10 => x"00000000001D",  -- LOAD Ps to ACC
     11 => x"000000100020",  -- TMP=Ps, route RAS[4] (Qc)
     12 => x"00000000001D",  -- LOAD Qc to ACC => PDU auto-starts Qc/Ps
     13 => x"080000000100",  -- WAIT_PDU, route PDU quotient
     14 => x"00004500001D",  -- LOAD ratio = Qc/Ps to ACC, store RAS[5]
    -- Phase 3: Mach = 4th-order Horner of ratio r
     15 => x"0000000002A0",  -- TMP=r for multiplies, route CONST[0]=a4
     16 => x"00000000001D",  -- LOAD a4 => PMU starts a4*r
     17 => x"070000000080",  -- WAIT_PMU, route PMU result
     18 => x"00010000029D",  -- LOAD a4*r, route CONST[1]=a3
     19 => x"000000000051",  -- ADD a3 => (a4*r+a3), PMU starts *r
     20 => x"070000000080",  -- WAIT_PMU
     21 => x"00020000029D",  -- LOAD PMU, route CONST[2]=a2
     22 => x"000000000051",  -- ADD a2, PMU starts *r
     23 => x"070000000080",  -- WAIT_PMU
     24 => x"00030000029D",  -- LOAD PMU, route CONST[3]=a1
     25 => x"000000000051",  -- ADD a1, PMU starts *r
     26 => x"070000000080",  -- WAIT_PMU
     27 => x"00040000029D",  -- LOAD PMU, route CONST[4]=a0
     28 => x"000046000051",  -- ADD a0 => Mach, store RAS[6], route ACC to IO
     29 => x"000080000006",  -- IO WRITE_MACH
    -- Phase 4: Altitude = 4th-order Horner of Ps
     30 => x"0000000C0000",  -- Route RAS[3] (Ps)
     31 => x"00000000001D",  -- LOAD Ps to ACC
     32 => x"0005000002A0",  -- TMP=Ps, route CONST[5]=b4
     33 => x"00000000001D",  -- LOAD b4 => PMU starts b4*Ps
     34 => x"070000000080",  -- WAIT_PMU
     35 => x"00060000029D",  -- LOAD PMU, route CONST[6]=b3
     36 => x"000000000051",  -- ADD b3, PMU starts *Ps
     37 => x"070000000080",  -- WAIT_PMU
     38 => x"00070000029D",  -- LOAD PMU, route CONST[7]=b2
     39 => x"000000000051",  -- ADD b2, PMU starts *Ps
     40 => x"070000000080",  -- WAIT_PMU
     41 => x"00080000029D",  -- LOAD PMU, route CONST[8]=b1
     42 => x"000000000051",  -- ADD b1, PMU starts *Ps
     43 => x"070000000080",  -- WAIT_PMU
     44 => x"00090000029D",  -- LOAD PMU, route CONST[9]=b0
     45 => x"000047000051",  -- ADD b0 => Altitude, store RAS[7], route ACC to IO
     46 => x"000080000007",  -- IO WRITE_ALT
    -- Phase 5: Airspeed = f(Mach, TAT) with linearized sqrt
     47 => x"000C00000280",  -- Route CONST[12]=tat_ref
     48 => x"00000000001D",  -- LOAD tat_ref to ACC
     49 => x"000000080020",  -- TMP=tat_ref, route RAS[2] (TAT)
     50 => x"00000000001D",  -- LOAD TAT => PDU starts TAT/tat_ref
     51 => x"080000000100",  -- WAIT_PDU, route quotient
     52 => x"00000000001D",  -- LOAD ratio2 = TAT/tat_ref
     53 => x"000D000002A0",  -- TMP=ratio2, route CONST[13]=sqrt_c1
     54 => x"00000000001D",  -- LOAD sqrt_c1 => PMU starts sqrt_c1*ratio2
     55 => x"070000000080",  -- WAIT_PMU
     56 => x"000E0000029D",  -- LOAD PMU, route CONST[14]=sqrt_c0
     57 => x"000000000051",  -- ADD sqrt_c0 => sqrt_est
     58 => x"000000180020",  -- TMP=sqrt_est, route RAS[6] (Mach)
     59 => x"00000000001D",  -- LOAD Mach => PMU starts Mach*sqrt_est
     60 => x"070000000080",  -- WAIT_PMU
     61 => x"00000000001D",  -- LOAD PMU = Mach*sqrt_est
     62 => x"000A000002A0",  -- TMP=factor, route CONST[10]=tas_c1
     63 => x"00000000001D",  -- LOAD tas_c1 => PMU starts tas_c1*factor
     64 => x"070000000080",  -- WAIT_PMU
     65 => x"000B0000029D",  -- LOAD PMU, route CONST[11]=tas_c0
     66 => x"000048000051",  -- ADD tas_c0 => Airspeed, store RAS[8], route ACC to IO
     67 => x"000080000008",  -- IO WRITE_AIRSPD
    -- Phase 6: Vertical Speed = (Alt - Alt_prev) * vspd_scale
     68 => x"000000380000",  -- Route RAS[14] (Alt_prev)
     69 => x"00000000001D",  -- LOAD Alt_prev to ACC
     70 => x"0000001C0000",  -- Route RAS[7] (Alt) for subtract
     71 => x"000000000052",  -- SUB: ACC = Alt_prev - Alt
     72 => x"000000000059",  -- NEG: ACC = Alt - Alt_prev = delta_alt
     73 => x"0000001C0020",  -- TMP=delta_alt, route RAS[7] (Alt)
     74 => x"00004E00001D",  -- LOAD Alt, store to RAS[14] = new Alt_prev
     75 => x"001600000280",  -- Route CONST[22]=vspd_scale
     76 => x"00000000001D",  -- LOAD vspd_scale => PMU starts vspd_scale*delta_alt
     77 => x"070000000080",  -- WAIT_PMU
     78 => x"00004900001D",  -- LOAD Vspd, store RAS[9], route ACC to IO
     79 => x"000080000009",  -- IO WRITE_VSPD
    -- Phase 7: Wing Sweep = 3rd-order Horner of Mach + rate limit
     80 => x"000000180000",  -- Route RAS[6] (Mach)
     81 => x"00000000001D",  -- LOAD Mach
     82 => x"000F000002A0",  -- TMP=Mach, route CONST[15]=d3
     83 => x"00000000001D",  -- LOAD d3 => PMU starts d3*M
     84 => x"070000000080",  -- WAIT_PMU
     85 => x"00100000029D",  -- LOAD PMU, route CONST[16]=d2
     86 => x"000000000051",  -- ADD d2, PMU starts *M
     87 => x"070000000080",  -- WAIT_PMU
     88 => x"00110000029D",  -- LOAD PMU, route CONST[17]=d1
     89 => x"000000000051",  -- ADD d1, PMU starts *M
     90 => x"070000000080",  -- WAIT_PMU
     91 => x"00120000029D",  -- LOAD PMU, route CONST[18]=d0
     92 => x"00004A000051",  -- ADD d0 => ws_cmd, store RAS[10]
    -- Rate limiting: delta = ws_cmd - Wing_prev
     93 => x"0000003C0000",  -- Route RAS[15] (Wing_prev)
     94 => x"00000000001D",  -- LOAD Wing_prev
     95 => x"000000280000",  -- Route RAS[10] (ws_cmd)
     96 => x"000000000052",  -- SUB: ACC = Wing_prev - ws_cmd
     97 => x"000000000059",  -- NEG: ACC = ws_cmd - Wing_prev = delta
     98 => x"0015000002A0",  -- TMP=delta, route CONST[21]=rate_limit
     99 => x"00000000001D",  -- LOAD rate_limit
    100 => x"000000000300",  -- Route TMP (delta) for subtract
    101 => x"000000000052",  -- SUB: ACC = rate - delta
    102 => x"036B00000000",  -- BRN clamp_pos (107) if delta > rate
    103 => x"000000000300",  -- Route TMP (delta)
    104 => x"00000000005D",  -- LOAD delta, set flags
    105 => x"036E00000000",  -- BRN check_neg_bound (110) if delta < 0
    106 => x"017300000000",  -- JMP apply_delta (115)
    107 => x"001500000280",  -- Route CONST[21]=rate_limit
    108 => x"00000000001D",  -- LOAD +rate_limit (clamped)
    109 => x"017300000000",  -- JMP apply_delta (115)
    110 => x"001500000280",  -- Route CONST[21]=rate_limit
    111 => x"000000000051",  -- ADD rate: ACC = delta + rate
    112 => x"037B00000000",  -- BRN clamp_neg (123) if delta+rate < 0
    113 => x"000000000300",  -- Route TMP (delta)
    114 => x"00000000001D",  -- LOAD delta (unclamped)
    -- Apply delta: Wing_out = Wing_prev + clamped delta
    115 => x"0000003C0020",  -- TMP=clamped_delta, route RAS[15] (Wing_prev)
    116 => x"00000000001D",  -- LOAD Wing_prev
    117 => x"000000000300",  -- Route TMP (clamped_delta)
    118 => x"000000000051",  -- ADD clamped_delta => Wing_out
    119 => x"00004B000000",  -- Store Wing_out to RAS[11]
    120 => x"00004F000000",  -- Store Wing_out to RAS[15] (new prev), route ACC to IO
    121 => x"00008000000A",  -- IO WRITE_WING
    122 => x"017F00000000",  -- JMP to flap calculation (127)
    -- Clamp to -rate_limit
    123 => x"001500000280",  -- Route CONST[21]=rate_limit
    124 => x"00000000001D",  -- LOAD rate_limit
    125 => x"000000000019",  -- NEG => ACC = -rate_limit
    126 => x"017300000000",  -- JMP apply_delta (115)
    -- Phase 8: Maneuver Flap = flap_c1 * Mach + flap_c0
    127 => x"000000180000",  -- Route RAS[6] (Mach)
    128 => x"00000000001D",  -- LOAD Mach
    129 => x"0019000002A0",  -- TMP=Mach, route CONST[25]=flap_c1
    130 => x"00000000001D",  -- LOAD flap_c1 => PMU starts flap_c1*M
    131 => x"070000000080",  -- WAIT_PMU
    132 => x"001A0000029D",  -- LOAD PMU, route CONST[26]=flap_c0
    133 => x"00004C000051",  -- ADD flap_c0 => Flap, store RAS[12], route ACC to IO
    134 => x"00008000000B",  -- IO WRITE_FLAP
    -- Phase 9: Glove Vane = (e2*M + e1)*M + e0
    135 => x"000000180000",  -- Route RAS[6] (Mach)
    136 => x"00000000001D",  -- LOAD Mach
    137 => x"001B000002A0",  -- TMP=Mach, route CONST[27]=e2
    138 => x"00000000001D",  -- LOAD e2 => PMU starts e2*M
    139 => x"070000000080",  -- WAIT_PMU
    140 => x"001C0000029D",  -- LOAD PMU, route CONST[28]=e1
    141 => x"000000000051",  -- ADD e1, PMU starts *M
    142 => x"070000000080",  -- WAIT_PMU
    143 => x"001D0000029D",  -- LOAD PMU, route CONST[29]=e0
    144 => x"00004D000051",  -- ADD e0 => Glove Vane, store RAS[13], route ACC to IO
    145 => x"00008000000C",  -- IO WRITE_GLOVE
    -- Halt: Jump to self, frame_mark resets PC to 0
    146 => x"019200000000",  -- HALT: JMP self, await frame_mark

    OTHERS => (OTHERS => '0')
  );

  -- Data ROM for constants (20-bit values, 64 entries)
  TYPE t_data_rom IS ARRAY(0 TO 63) OF STD_LOGIC_VECTOR(19 DOWNTO 0);
  SIGNAL s_data_rom : t_data_rom := (
    ---------------------------------------------------------------------------
    -- Mach polynomial: M = f(Qc/Ps) using Horner form, 4th order
    -- Subsonic approximation: M ≈ a4*r^4 + a3*r^3 + a2*r^2 + a1*r + a0
    -- where r = Qc/Ps (impact pressure ratio), scaled to Q1.19
    --
    -- Derived from isentropic flow: Pt/Ps = (1 + 0.2*M^2)^3.5
    -- so Qc/Ps = Pt/Ps - 1 = (1 + 0.2*M^2)^3.5 - 1
    -- Inverted polynomial fit for M = f(Qc/Ps), valid 0 < M < 1.0
    -- Coefficients fitted to Q1.19 full-range [-1,+1)
    ---------------------------------------------------------------------------
    0  => x"1999A",  -- mach_a4 =  0.2     (high-order correction)
    1  => x"E6667",  -- mach_a3 = -0.2     (negative cubic term)
    2  => x"06666",  -- mach_a2 =  0.05    (quadratic correction)
    3  => x"5EB85",  -- mach_a1 =  0.74    (dominant linear term)
    4  => x"00000",  -- mach_a0 =  0.0     (zero offset)

    ---------------------------------------------------------------------------
    -- Altitude polynomial: Alt = f(Ps) using Horner form, 4th order
    -- Standard atmosphere: Ps decreases ~exponentially with altitude
    -- Polynomial approximation of altitude from static pressure
    -- Alt_scaled = b4*Ps^4 + b3*Ps^3 + b2*Ps^2 + b1*Ps + b0
    -- Ps=0x40000(0.5) → ~18,000ft; Ps=0x20000(0.25) → ~34,000ft
    -- All scaled to Q1.19 where ±1.0 maps to ±100,000 ft
    ---------------------------------------------------------------------------
    5  => x"0CCCD",  -- alt_b4  =  0.1
    6  => x"F999A",  -- alt_b3  = -0.05    (cubic correction)
    7  => x"1999A",  -- alt_b2  =  0.2     (quadratic term)
    8  => x"9999A",  -- alt_b1  = -0.8     (dominant: lower Ps = higher alt)
    9  => x"60000",  -- alt_b0  =  0.75    (offset for sea-level baseline)

    ---------------------------------------------------------------------------
    -- Airspeed: TAS = f(M, TAT)
    -- True Airspeed = M * a * sqrt(TAT/T_std)
    -- Simplified: TAS ≈ M * K_tas * sqrt_tat_approx
    -- For subsonic: TAS_scaled ≈ M * c1_tas + c0_tas  (linear in M)
    -- Temperature correction applied as separate multiply
    ---------------------------------------------------------------------------
    10 => x"51EB8",  -- tas_c1  =  0.64    (speed of sound scale factor)
    11 => x"00000",  -- tas_c0  =  0.0     (offset)
    12 => x"40000",  -- tat_ref =  0.5     (reference temperature ratio T/T_std)
    13 => x"20000",  -- sqrt_approx_c1 = 0.25 (linear term of sqrt approx)
    14 => x"60000",  -- sqrt_approx_c0 = 0.75 (constant term of sqrt approx)

    ---------------------------------------------------------------------------
    -- Wing sweep schedule: WS = f(M)
    -- F-14 variable geometry: wings sweep aft as Mach increases
    -- Schedule is piecewise but approximated by 3rd-order polynomial
    -- Wings at 20° (forward) for M<0.4, 68° (aft) at M>1.0
    -- ws_out = d3*M^3 + d2*M^2 + d1*M + d0
    -- Scaled: 0x00000 = full forward (20°), 0x7FFFF = full aft (68°)
    ---------------------------------------------------------------------------
    15 => x"E0000",  -- ws_d3   = -0.25    (cubic rolloff)
    16 => x"33333",  -- ws_d2   =  0.4     (quadratic acceleration)
    17 => x"40000",  -- ws_d1   =  0.5     (linear sweep rate)
    18 => x"E0000",  -- ws_d0   = -0.25    (offset: negative at low Mach)

    ---------------------------------------------------------------------------
    -- Wing sweep limits and rate constants
    ---------------------------------------------------------------------------
    19 => x"00000",  -- ws_lower_limit = 0.0  (full forward = 20°)
    20 => x"7FFFF",  -- ws_upper_limit = max positive (~1.0 = 68°)
    21 => x"00625",  -- ws_rate_limit  = 0.003 (max change per frame ~1°/sec)

    ---------------------------------------------------------------------------
    -- Vertical speed: Vspd = delta(Alt) / delta(t)
    -- Approximated as: (Alt_new - Alt_prev) * frame_rate_scale
    ---------------------------------------------------------------------------
    22 => x"12400",  -- vspd_scale = 0.14258 (≈18.3 Hz frame rate scale)

    ---------------------------------------------------------------------------
    -- Mach threshold for wing sweep enable (M > 0.4 transitions)
    ---------------------------------------------------------------------------
    23 => x"33333",  -- mach_threshold_low  = 0.4  (sweep enable)
    24 => x"66666",  -- mach_threshold_high = 0.8  (supersonic regime)

    ---------------------------------------------------------------------------
    -- Maneuver flap schedule: Flap = f(M)
    -- Simplified as linear: full down at low speed, retracted at high speed
    ---------------------------------------------------------------------------
    25 => x"C0000",  -- flap_c1 = -0.5   (retract with increasing Mach)
    26 => x"60000",  -- flap_c0 =  0.75  (mostly deployed at low speed)

    ---------------------------------------------------------------------------
    -- Glove vane schedule: GV = f(M), 2nd order
    ---------------------------------------------------------------------------
    27 => x"20000",  -- gv_e2  =  0.25
    28 => x"E0000",  -- gv_e1  = -0.25
    29 => x"04000",  -- gv_e0  =  0.03125

    ---------------------------------------------------------------------------
    -- Miscellaneous constants
    ---------------------------------------------------------------------------
    30 => x"00000",  -- zero constant
    31 => x"7FFFF",  -- max positive (saturation limit)

    OTHERS => (OTHERS => '0')
  );

  SIGNAL s_micro_pc : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_next_pc  : UNSIGNED(9 DOWNTO 0);

  TYPE t_stack IS ARRAY(0 TO 3) OF UNSIGNED(9 DOWNTO 0);
  SIGNAL s_ret_stack : t_stack := (OTHERS => (OTHERS => '0'));
  SIGNAL s_stack_ptr : UNSIGNED(1 DOWNTO 0) := (OTHERS => '0');

  SIGNAL s_current_uword : STD_LOGIC_VECTOR(g_uword_width-1 DOWNTO 0);
  SIGNAL s_nextctl_field : UNSIGNED(7 DOWNTO 0);
  SIGNAL s_nextadr_field : UNSIGNED(7 DOWNTO 0);

  -- Shift registers for serial output
  SIGNAL s_cw_sr    : STD_LOGIC_VECTOR(g_uword_width-1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_const_sr : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_data_addr: UNSIGNED(5 DOWNTO 0) := (OTHERS => '0');

BEGIN

  s_current_uword <= s_ctrl_rom(TO_INTEGER(s_micro_pc));
  o_micro_word    <= s_current_uword;
  o_micro_addr    <= STD_LOGIC_VECTOR(s_micro_pc);

  s_nextctl_field <= UNSIGNED(s_current_uword(47 DOWNTO 40));
  s_nextadr_field <= UNSIGNED(s_current_uword(39 DOWNTO 32));

  -- CW output: T0 outputs bit 0, T1+ outputs bit 1 for same-edge timing
  o_cw_bit    <= s_cw_sr(0) WHEN i_t0 = '1' ELSE s_cw_sr(1);
  -- Constant output: same timing compensation
  o_const_bit <= s_const_sr(0) WHEN i_t0 = '1' ELSE s_const_sr(1);

  -----------------------------------------------------------------------------
  -- Control word shift process
  -- Pre-load CW at end of WO (T19) so it's ready for next WA T0
  -- This avoids timing race where SLF samples before CW is loaded
  -----------------------------------------------------------------------------
  cw_shift_proc: PROCESS(i_clk)
  BEGIN
    IF RISING_EDGE(i_clk) THEN
      IF i_rst = '1' THEN
        s_cw_sr    <= s_ctrl_rom(0);  -- Pre-load first instruction
        s_const_sr <= (OTHERS => '0');
        s_data_addr<= (OTHERS => '0');
      ELSIF i_phi2 = '1' THEN
        IF i_word_type = '0' THEN
          -- WA phase: shift out (CW was pre-loaded at previous WO T19)
          IF i_t0 = '1' THEN
            -- Latch data address for constant output
            s_data_addr <= UNSIGNED(s_current_uword(37 DOWNTO 32));
          ELSIF i_t19 = '1' THEN
            -- Pre-load constant at end of WA (ready for WO T0)
            s_const_sr <= s_data_rom(TO_INTEGER(UNSIGNED(s_current_uword(37 DOWNTO 32))));
          ELSE
            -- Shift out during WA
            s_cw_sr <= '0' & s_cw_sr(g_uword_width-1 DOWNTO 1);
          END IF;
        ELSE
          -- WO phase
          IF i_t0 = '0' AND i_t19 = '0' THEN
            -- Shift out constant during WO T1-T18
            s_const_sr <= '0' & s_const_sr(19 DOWNTO 1);
          ELSIF i_t19 = '1' THEN
            -- Pre-load NEXT instruction's CW at end of WO
            -- (PC will update to s_next_pc on this same edge)
            s_cw_sr <= s_ctrl_rom(TO_INTEGER(s_next_pc));
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS cw_shift_proc;

  -----------------------------------------------------------------------------
  -- Next PC computation
  -----------------------------------------------------------------------------
  next_pc_proc: PROCESS(s_micro_pc, s_nextctl_field, s_nextadr_field,
                        i_flag_z, i_flag_n, i_flag_c, i_pmu_busy, i_pdu_busy,
                        i_frame_mark, s_ret_stack, s_stack_ptr)
  BEGIN
    s_next_pc <= s_micro_pc + 1;
    IF i_frame_mark = '1' THEN
      s_next_pc <= (OTHERS => '0');
    ELSE
      CASE s_nextctl_field IS
        WHEN c_nc_seq =>
          s_next_pc <= s_micro_pc + 1;
        WHEN c_nc_jump =>
          s_next_pc <= RESIZE(s_nextadr_field, 10);
        WHEN c_nc_brz =>
          IF i_flag_z = '1' THEN
            s_next_pc <= RESIZE(s_nextadr_field, 10);
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_brn =>
          IF i_flag_n = '1' THEN
            s_next_pc <= RESIZE(s_nextadr_field, 10);
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_brc =>
          IF i_flag_c = '1' THEN
            s_next_pc <= RESIZE(s_nextadr_field, 10);
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_br_pmub =>
          IF i_pmu_busy = '1' THEN
            s_next_pc <= RESIZE(s_nextadr_field, 10);
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_br_pdub =>
          IF i_pdu_busy = '1' THEN
            s_next_pc <= RESIZE(s_nextadr_field, 10);
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_wait_pmu =>
          IF i_pmu_busy = '1' THEN
            s_next_pc <= s_micro_pc;
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_wait_pdu =>
          IF i_pdu_busy = '1' THEN
            s_next_pc <= s_micro_pc;
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN c_nc_call =>
          s_next_pc <= RESIZE(s_nextadr_field, 10);
        WHEN c_nc_ret =>
          IF s_stack_ptr > 0 THEN
            s_next_pc <= s_ret_stack(TO_INTEGER(s_stack_ptr - 1));
          ELSE
            s_next_pc <= s_micro_pc + 1;
          END IF;
        WHEN OTHERS =>
          s_next_pc <= s_micro_pc + 1;
      END CASE;
    END IF;
  END PROCESS next_pc_proc;

  -----------------------------------------------------------------------------
  -- PC update process - advance at end of WO (completion of operation)
  -----------------------------------------------------------------------------
  pc_proc: PROCESS(i_clk)
  BEGIN
    IF RISING_EDGE(i_clk) THEN
      IF i_rst = '1' THEN
        s_micro_pc  <= (OTHERS => '0');
        s_stack_ptr <= (OTHERS => '0');
        s_ret_stack <= (OTHERS => (OTHERS => '0'));
      ELSIF i_phi2 = '1' AND i_word_type = '1' AND i_t19 = '1' THEN
        -- Advance PC at end of WO
        s_micro_pc <= s_next_pc;
        IF i_frame_mark = '0' THEN
          IF s_nextctl_field = c_nc_call THEN
            s_ret_stack(TO_INTEGER(s_stack_ptr)) <= s_micro_pc + 1;
            s_stack_ptr <= s_stack_ptr + 1;
          ELSIF s_nextctl_field = c_nc_ret THEN
            IF s_stack_ptr > 0 THEN
              s_stack_ptr <= s_stack_ptr - 1;
            END IF;
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS pc_proc;

END ARCHITECTURE rtl;
