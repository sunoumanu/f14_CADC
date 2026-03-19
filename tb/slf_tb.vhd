-------------------------------------------------------------------------------
-- SLF Testbench (Bit-Serial)
-- F-14A Central Air Data Computer - FPGA Implementation
--
-- Verifies ALU operations with bit-serial I/O: ADD, SUB, AND, OR, XOR, NOT,
-- SHL, SHR, NEG, ABS, Gray/Binary conversion, LOAD, STORE_TMP, PASS.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY slf_tb IS
END ENTITY slf_tb;

ARCHITECTURE bench OF slf_tb IS

  CONSTANT CLK_PERIOD : TIME := 667 ns;  -- 1.5 MHz

  -- ALU opcodes
  CONSTANT c_op_nop       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  CONSTANT c_op_add       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
  CONSTANT c_op_sub       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
  CONSTANT c_op_and       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011";
  CONSTANT c_op_or        : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100";
  CONSTANT c_op_xor       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101";
  CONSTANT c_op_not       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110";
  CONSTANT c_op_shl       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111";
  CONSTANT c_op_shr       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000";
  CONSTANT c_op_neg       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
  CONSTANT c_op_abs       : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010";
  CONSTANT c_op_gray2bin  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011";
  CONSTANT c_op_bin2gray  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100";
  CONSTANT c_op_load      : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1101";
  CONSTANT c_op_store_tmp : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1110";
  CONSTANT c_op_pass      : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";

  -- Signals
  SIGNAL clk            : STD_LOGIC := '0';
  SIGNAL rst            : STD_LOGIC := '0';
  SIGNAL phi2           : STD_LOGIC := '0';
  SIGNAL word_type      : STD_LOGIC := '0';
  SIGNAL t0             : STD_LOGIC := '0';
  SIGNAL t18            : STD_LOGIC := '0';
  SIGNAL t19            : STD_LOGIC := '0';
  SIGNAL cw_bit         : STD_LOGIC := '0';
  SIGNAL data_bit       : STD_LOGIC := '0';
  SIGNAL result_bit     : STD_LOGIC;
  SIGNAL acc_bit        : STD_LOGIC;
  SIGNAL tmp_bit        : STD_LOGIC;
  SIGNAL flag_z         : STD_LOGIC;
  SIGNAL flag_n         : STD_LOGIC;
  SIGNAL flag_c         : STD_LOGIC;

  -- Phase counter for phi2 generation
  SIGNAL phase : UNSIGNED(1 DOWNTO 0) := "00";

  -- Captured results
  SIGNAL result_sr  : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL acc_cap_sr : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL tmp_cap_sr : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');

  SIGNAL test_count : INTEGER := 0;
  SIGNAL fail_count : INTEGER := 0;

BEGIN

  clk <= NOT clk AFTER CLK_PERIOD / 2;

  -- Generate phi2 (every 4th clock, at phase 2)
  phi_proc: PROCESS(clk)
  BEGIN
    IF RISING_EDGE(clk) THEN
      IF rst = '1' THEN
        phase <= "00";
        phi2 <= '0';
      ELSE
        phase <= phase + 1;
        IF phase = "10" THEN
          phi2 <= '1';
        ELSE
          phi2 <= '0';
        END IF;
      END IF;
    END IF;
  END PROCESS phi_proc;

  uut: ENTITY work.slf
    PORT MAP (
      i_clk        => clk,
      i_rst        => rst,
      i_phi2       => phi2,
      i_word_type  => word_type,
      i_t0         => t0,
      i_t18        => t18,
      i_t19        => t19,
      i_cw_bit     => cw_bit,
      i_data_bit   => data_bit,
      o_result_bit => result_bit,
      o_acc_bit    => acc_bit,
      o_tmp_bit    => tmp_bit,
      o_flag_z     => flag_z,
      o_flag_n     => flag_n,
      o_flag_c     => flag_c
    );

  stim_proc: PROCESS

    PROCEDURE wait_bit_time IS
    BEGIN
      FOR i IN 0 TO 3 LOOP
        WAIT UNTIL rising_edge(clk);
      END LOOP;
    END PROCEDURE;

    PROCEDURE run_wa_phase(
      op          : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      write_acc   : IN STD_LOGIC := '0';
      write_tmp   : IN STD_LOGIC := '0';
      write_flags : IN STD_LOGIC := '0'
    ) IS
      VARIABLE cw : STD_LOGIC_VECTOR(6 DOWNTO 0);
    BEGIN
      cw := write_flags & write_tmp & write_acc & op;
      word_type <= '0';
      FOR bit IN 0 TO 19 LOOP
        t0  <= '1' WHEN bit = 0 ELSE '0';
        t18 <= '1' WHEN bit = 18 ELSE '0';
        t19 <= '1' WHEN bit = 19 ELSE '0';
        IF bit < 7 THEN
          cw_bit <= cw(bit);
        ELSE
          cw_bit <= '0';
        END IF;
        wait_bit_time;
      END LOOP;
      t0 <= '0'; t18 <= '0'; t19 <= '0';
      cw_bit <= '0';
    END PROCEDURE;

    PROCEDURE run_wo_phase(
      data_val : IN STD_LOGIC_VECTOR(19 DOWNTO 0)
    ) IS
      VARIABLE v_data : STD_LOGIC_VECTOR(19 DOWNTO 0);
    BEGIN
      v_data := data_val;
      word_type <= '1';
      result_sr  <= (OTHERS => '0');
      acc_cap_sr <= (OTHERS => '0');
      tmp_cap_sr <= (OTHERS => '0');
      FOR bit IN 0 TO 19 LOOP
        t0  <= '1' WHEN bit = 0 ELSE '0';
        t18 <= '1' WHEN bit = 18 ELSE '0';
        t19 <= '1' WHEN bit = 19 ELSE '0';
        data_bit <= v_data(0);
        WAIT UNTIL rising_edge(clk) AND phase = "01";
        result_sr  <= result_bit & result_sr(19 DOWNTO 1);
        acc_cap_sr <= acc_bit & acc_cap_sr(19 DOWNTO 1);
        tmp_cap_sr <= tmp_bit & tmp_cap_sr(19 DOWNTO 1);
        WAIT UNTIL rising_edge(clk);
        WAIT UNTIL rising_edge(clk);
        WAIT UNTIL rising_edge(clk);
        v_data := '0' & v_data(19 DOWNTO 1);
      END LOOP;
      t0 <= '0'; t18 <= '0'; t19 <= '0';
    END PROCEDURE;

    -- Load ACC with a value (2 WA/WO cycles)
    PROCEDURE load_acc(
      val : IN STD_LOGIC_VECTOR(19 DOWNTO 0)
    ) IS
    BEGIN
      run_wa_phase(c_op_nop, '0', '0', '0');
      run_wo_phase(val);
      run_wa_phase(c_op_load, '1', '0', '0');
      run_wo_phase(x"00000");
    END PROCEDURE;

    -- Execute op with input data, check result
    PROCEDURE do_op(
      op       : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      input    : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      expected : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      name     : IN STRING;
      acc_we   : IN STD_LOGIC := '1';
      tmp_we   : IN STD_LOGIC := '0';
      flags_we : IN STD_LOGIC := '1'
    ) IS
    BEGIN
      run_wa_phase(c_op_nop, '0', '0', '0');
      run_wo_phase(input);
      run_wa_phase(op, acc_we, tmp_we, flags_we);
      run_wo_phase(x"00000");
      test_count <= test_count + 1;
      WAIT FOR 1 ns;
      IF result_sr /= expected THEN
        REPORT name & " FAILED: got 0x" & to_hstring(UNSIGNED(result_sr)) &
               " expected 0x" & to_hstring(UNSIGNED(expected)) SEVERITY ERROR;
        fail_count <= fail_count + 1;
      ELSE
        REPORT name & " PASSED (0x" & to_hstring(UNSIGNED(result_sr)) & ")" SEVERITY NOTE;
      END IF;
    END PROCEDURE;

    -- Check flags
    PROCEDURE check_flags(
      exp_z : IN STD_LOGIC;
      exp_n : IN STD_LOGIC;
      exp_c : IN STD_LOGIC;
      name  : IN STRING
    ) IS
    BEGIN
      test_count <= test_count + 1;
      WAIT FOR 1 ns;
      IF flag_z /= exp_z OR flag_n /= exp_n OR flag_c /= exp_c THEN
        REPORT name & " FLAGS FAILED: Z=" & STD_LOGIC'image(flag_z) &
               " N=" & STD_LOGIC'image(flag_n) & " C=" & STD_LOGIC'image(flag_c) SEVERITY ERROR;
        fail_count <= fail_count + 1;
      ELSE
        REPORT name & " FLAGS PASSED" SEVERITY NOTE;
      END IF;
    END PROCEDURE;

    -- Check TMP register (captured during last WO)
    PROCEDURE check_tmp(
      expected : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      name     : IN STRING
    ) IS
    BEGIN
      test_count <= test_count + 1;
      WAIT FOR 1 ns;
      IF tmp_cap_sr /= expected THEN
        REPORT name & " TMP FAILED: got 0x" & to_hstring(UNSIGNED(tmp_cap_sr)) &
               " expected 0x" & to_hstring(UNSIGNED(expected)) SEVERITY ERROR;
        fail_count <= fail_count + 1;
      ELSE
        REPORT name & " TMP PASSED" SEVERITY NOTE;
      END IF;
    END PROCEDURE;

  BEGIN
    rst <= '1';
    WAIT FOR 5 * CLK_PERIOD;
    rst <= '0';
    WAIT UNTIL phase = "00" AND rising_edge(clk);

    ---------------------------------------------------------------------------
    -- 5.1 ADD Tests
    ---------------------------------------------------------------------------
    -- SLF-T-001: 0 + 0
    load_acc(x"00000");
    do_op(c_op_add, x"00000", x"00000", "SLF-T-001: 0+0");
    check_flags('1', '0', '0', "SLF-T-001");

    -- SLF-T-002: 0.5 + 0.25 = 0.75
    load_acc(x"40000");
    do_op(c_op_add, x"20000", x"60000", "SLF-T-002: 0.5+0.25");
    check_flags('0', '0', '0', "SLF-T-002");

    -- SLF-T-003: 0.5 + 0.5 = overflow negative
    load_acc(x"40000");
    do_op(c_op_add, x"40000", x"80000", "SLF-T-003: 0.5+0.5 overflow");
    check_flags('0', '1', '0', "SLF-T-003");

    -- SLF-T-004: -0.5 + (-0.5) = -1.0 with carry
    load_acc(x"C0000");
    do_op(c_op_add, x"C0000", x"80000", "SLF-T-004: -0.5+(-0.5)");
    check_flags('0', '1', '1', "SLF-T-004");

    -- SLF-T-005: 0.5 + (-0.25) = 0.25 with carry
    load_acc(x"40000");
    do_op(c_op_add, x"E0000", x"20000", "SLF-T-005: 0.5+(-0.25)");
    check_flags('0', '0', '1', "SLF-T-005");

    ---------------------------------------------------------------------------
    -- 5.2 SUB Tests
    ---------------------------------------------------------------------------
    -- SLF-T-010: 0 - 0
    load_acc(x"00000");
    do_op(c_op_sub, x"00000", x"00000", "SLF-T-010: 0-0");
    check_flags('1', '0', '0', "SLF-T-010");

    -- SLF-T-011: 0.5 - 0.25 = 0.25
    load_acc(x"40000");
    do_op(c_op_sub, x"20000", x"20000", "SLF-T-011: 0.5-0.25");
    check_flags('0', '0', '0', "SLF-T-011");

    -- SLF-T-012: 0.25 - 0.5 = -0.25 with borrow
    load_acc(x"20000");
    do_op(c_op_sub, x"40000", x"E0000", "SLF-T-012: 0.25-0.5");
    check_flags('0', '1', '1', "SLF-T-012");

    ---------------------------------------------------------------------------
    -- 5.3 Logic Tests
    ---------------------------------------------------------------------------
    -- SLF-T-020: AND all ones
    load_acc(x"FFFFF");
    do_op(c_op_and, x"FFFFF", x"FFFFF", "SLF-T-020: AND all ones");

    -- SLF-T-021: AND with zero
    load_acc(x"FFFFF");
    do_op(c_op_and, x"00000", x"00000", "SLF-T-021: AND with zero");

    -- SLF-T-022: OR all zeros
    load_acc(x"00000");
    do_op(c_op_or, x"00000", x"00000", "SLF-T-022: OR all zeros");

    -- SLF-T-023: OR complementary
    load_acc(x"AAAAA");
    do_op(c_op_or, x"55555", x"FFFFF", "SLF-T-023: OR complementary");

    -- SLF-T-024: XOR same = 0
    load_acc(x"12345");
    do_op(c_op_xor, x"12345", x"00000", "SLF-T-024: XOR same");

    -- SLF-T-025: NOT zero = all ones
    load_acc(x"00000");
    do_op(c_op_not, x"00000", x"FFFFF", "SLF-T-025: NOT zero");

    ---------------------------------------------------------------------------
    -- 5.4 Shift Tests
    ---------------------------------------------------------------------------
    -- SLF-T-030: SHL positive (sign-preserving): 0.25 -> 0.5
    load_acc(x"20000");
    do_op(c_op_shl, x"00000", x"40000", "SLF-T-030: SHL positive");

    -- SLF-T-031: SHL negative (sign-preserving): -0.25 -> -0.5
    load_acc(x"E0000");
    do_op(c_op_shl, x"00000", x"C0000", "SLF-T-031: SHL negative");

    -- SLF-T-032: SHR positive: 0.5 -> 0.25
    load_acc(x"40000");
    do_op(c_op_shr, x"00000", x"20000", "SLF-T-032: SHR positive");

    -- SLF-T-033: SHR negative (sign extend): most-neg -> sign-extended
    load_acc(x"80000");
    do_op(c_op_shr, x"00000", x"C0000", "SLF-T-033: SHR negative");

    ---------------------------------------------------------------------------
    -- 5.5 Gray/Binary Conversion Tests
    ---------------------------------------------------------------------------
    -- SLF-T-040: Gray->Bin: 0x00000 -> 0x00000
    do_op(c_op_gray2bin, x"00000", x"00000", "SLF-T-040: Gray2Bin 0");

    -- SLF-T-041: Gray->Bin: 0x00001 -> 0x00001
    do_op(c_op_gray2bin, x"00001", x"00001", "SLF-T-041: Gray2Bin 1");

    -- SLF-T-042: Gray->Bin: 0x00003 -> 0x00002
    do_op(c_op_gray2bin, x"00003", x"00002", "SLF-T-042: Gray2Bin 3->2");

    -- SLF-T-043: Gray->Bin with larger pattern (0x00005 -> gray2bin check)
    -- Gray 0x00005 = 0b...0101: bin(19)=0, then XOR cascade
    -- b19=0, b18=0^0=0, b17=0^0=0, ..., b2=0^1=1, b1=1^0=1, b0=1^1=0
    -- So gray 0x00005 -> binary 0x00006
    do_op(c_op_gray2bin, x"00005", x"00006", "SLF-T-043: Gray2Bin pattern");

    -- SLF-T-044: Bin->Gray->Bin roundtrip
    load_acc(x"A5A5A");
    -- BIN2GRAY
    do_op(c_op_bin2gray, x"00000", x"F7777", "SLF-T-044a: Bin2Gray");
    -- result_sr now has gray value (0xF7F7F), feed it to GRAY2BIN
    do_op(c_op_gray2bin, result_sr, x"A5A5A", "SLF-T-044b: roundtrip");

    -- SLF-T-045: Gray->Bin->Gray roundtrip
    -- Start with gray value 0x55555
    do_op(c_op_gray2bin, x"55555", x"66666", "SLF-T-045a: Gray2Bin");
    -- result_sr has binary value, load to ACC for BIN2GRAY
    load_acc(result_sr);
    do_op(c_op_bin2gray, x"00000", x"55555", "SLF-T-045b: roundtrip");

    ---------------------------------------------------------------------------
    -- 5.6 Unary/Other Tests
    ---------------------------------------------------------------------------
    -- SLF-T-050: NEG of +0.5
    load_acc(x"40000");
    do_op(c_op_neg, x"00000", x"C0000", "SLF-T-050: NEG +0.5");

    -- SLF-T-051: NEG of -0.5
    load_acc(x"C0000");
    do_op(c_op_neg, x"00000", x"40000", "SLF-T-051: NEG -0.5");

    -- SLF-T-052: NEG of 0
    load_acc(x"00000");
    do_op(c_op_neg, x"00000", x"00000", "SLF-T-052: NEG 0");

    -- SLF-T-053: ABS of +0.5
    load_acc(x"40000");
    do_op(c_op_abs, x"00000", x"40000", "SLF-T-053: ABS +0.5");

    -- SLF-T-054: ABS of -0.5
    load_acc(x"C0000");
    do_op(c_op_abs, x"00000", x"40000", "SLF-T-054: ABS -0.5");

    -- SLF-T-055: LOAD value
    do_op(c_op_load, x"ABCDE", x"ABCDE", "SLF-T-055: LOAD");

    -- SLF-T-056: STORE_TMP
    load_acc(x"12345");
    -- Execute STORE_TMP with tmp_we=1; result = ACC
    do_op(c_op_store_tmp, x"00000", x"12345", "SLF-T-056: STORE_TMP result", '1', '1', '0');
    -- Verify TMP was captured during that WO phase
    check_tmp(x"12345", "SLF-T-056: TMP value");

    ---------------------------------------------------------------------------
    -- 5.7 Register Enable Tests
    ---------------------------------------------------------------------------
    -- SLF-T-060: ACC hold when write disabled
    load_acc(x"55555");
    -- Do ADD with acc_we=0, flags_we=0
    do_op(c_op_add, x"11111", x"66666", "SLF-T-060a: ADD result computed", '0', '0', '0');
    -- ACC should still be 0x55555 - read it via NOP
    do_op(c_op_nop, x"00000", x"55555", "SLF-T-060b: ACC unchanged");

    -- SLF-T-061: TMP hold when write disabled
    -- First set TMP via STORE_TMP with tmp_we=1
    load_acc(x"AAAAA");
    do_op(c_op_store_tmp, x"00000", x"AAAAA", "SLF-T-061a: Set TMP", '1', '1', '0');
    -- Now do operation with tmp_we=0
    load_acc(x"11111");
    do_op(c_op_store_tmp, x"00000", x"11111", "SLF-T-061b: STORE no write", '1', '0', '0');
    -- Read TMP - should still be 0xAAAAA
    -- Need to do a WO cycle to capture TMP output
    run_wa_phase(c_op_nop, '0', '0', '0');
    run_wo_phase(x"00000");
    run_wa_phase(c_op_nop, '0', '0', '0');
    run_wo_phase(x"00000");
    check_tmp(x"AAAAA", "SLF-T-061c: TMP unchanged");

    -- SLF-T-062: Flags hold when write disabled
    -- Set flags via an ADD that produces known flags
    load_acc(x"00000");
    do_op(c_op_add, x"00000", x"00000", "SLF-T-062a: Set Z flag", '1', '0', '1');
    check_flags('1', '0', '0', "SLF-T-062b: Z=1 set");
    -- Now do op with flags_we=0 that would change flags
    do_op(c_op_add, x"40000", x"40000", "SLF-T-062c: ADD no flag write", '1', '0', '0');
    check_flags('1', '0', '0', "SLF-T-062d: Flags unchanged");

    ---------------------------------------------------------------------------
    -- Summary
    ---------------------------------------------------------------------------
    REPORT "======================================" SEVERITY NOTE;
    REPORT "SLF Testbench Complete" SEVERITY NOTE;
    REPORT "Tests run: " & INTEGER'image(test_count) SEVERITY NOTE;
    REPORT "Failures:  " & INTEGER'image(fail_count) SEVERITY NOTE;
    REPORT "======================================" SEVERITY NOTE;

    ASSERT FALSE REPORT "sim complete" SEVERITY FAILURE;
    WAIT;
  END PROCESS stim_proc;

END ARCHITECTURE bench;
