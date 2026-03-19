-------------------------------------------------------------------------------
-- SL Testbench (Parallel Control)
-- F-14A Central Air Data Computer - FPGA Implementation
--
-- Verifies serial data routing/steering with parallel control inputs.
-- Tests source selection for ACC, RAS, and I/O outputs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY sl_tb IS
END ENTITY sl_tb;

ARCHITECTURE bench OF sl_tb IS

  CONSTANT CLK_PERIOD : TIME := 667 ns;  -- 1.5 MHz

  -- Signals
  SIGNAL clk           : STD_LOGIC := '0';
  SIGNAL rst           : STD_LOGIC := '0';
  SIGNAL phi2          : STD_LOGIC := '0';
  SIGNAL word_type     : STD_LOGIC := '0';
  SIGNAL t0            : STD_LOGIC := '0';
  SIGNAL t19           : STD_LOGIC := '0';
  
  -- Source inputs (generate test patterns)
  SIGNAL src_ras_bit   : STD_LOGIC := '0';
  SIGNAL src_acc_bit   : STD_LOGIC := '0';
  SIGNAL src_tmp_bit   : STD_LOGIC := '0';
  SIGNAL src_pmu_bit   : STD_LOGIC := '0';
  SIGNAL src_pduq_bit  : STD_LOGIC := '0';
  SIGNAL src_pdur_bit  : STD_LOGIC := '0';
  SIGNAL src_io_bit    : STD_LOGIC := '0';
  SIGNAL src_const_bit : STD_LOGIC := '0';
  
  -- Parallel control inputs
  SIGNAL sel_acc       : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL sel_ras       : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL sel_io        : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
  
  -- Outputs
  SIGNAL acc_in_bit    : STD_LOGIC;
  SIGNAL ras_wr_bit    : STD_LOGIC;
  SIGNAL io_out_bit    : STD_LOGIC;

  -- Phase counter
  SIGNAL phase : UNSIGNED(1 DOWNTO 0) := "00";

  -- Shift registers for source data (all 8 sources)
  SIGNAL ras_sr   : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL acc_sr   : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL tmp_sr   : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL pmu_sr   : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL pduq_sr  : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL pdur_sr  : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL io_sr    : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL const_sr : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');

  -- Captured outputs
  SIGNAL acc_out_sr  : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL ras_out_sr  : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');
  SIGNAL io_out_sr   : STD_LOGIC_VECTOR(19 DOWNTO 0) := (OTHERS => '0');

  SIGNAL test_count : INTEGER := 0;
  SIGNAL fail_count : INTEGER := 0;

BEGIN

  clk <= NOT clk AFTER CLK_PERIOD / 2;

  -- Generate phi2
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

  -- Drive source bits from shift registers
  src_ras_bit  <= ras_sr(0);
  src_acc_bit  <= acc_sr(0);
  src_tmp_bit  <= tmp_sr(0);
  src_pmu_bit  <= pmu_sr(0);
  src_pduq_bit <= pduq_sr(0);
  src_pdur_bit <= pdur_sr(0);
  src_io_bit   <= io_sr(0);
  src_const_bit<= const_sr(0);

  uut: ENTITY work.sl
    PORT MAP (
      i_clk          => clk,
      i_rst          => rst,
      i_phi2         => phi2,
      i_word_type    => word_type,
      i_t0           => t0,
      i_t19          => t19,
      i_src_ras_bit  => src_ras_bit,
      i_src_acc_bit  => src_acc_bit,
      i_src_tmp_bit  => src_tmp_bit,
      i_src_pmu_bit  => src_pmu_bit,
      i_src_pduq_bit => src_pduq_bit,
      i_src_pdur_bit => src_pdur_bit,
      i_src_io_bit   => src_io_bit,
      i_src_const_bit=> src_const_bit,
      i_sel_acc      => sel_acc,
      i_sel_ras      => sel_ras,
      i_sel_io       => sel_io,
      o_acc_in_bit   => acc_in_bit,
      o_ras_wr_bit   => ras_wr_bit,
      o_io_out_bit   => io_out_bit
    );

  stim_proc: PROCESS

    PROCEDURE wait_bit_time IS
    BEGIN
      FOR i IN 0 TO 3 LOOP
        WAIT UNTIL rising_edge(clk);
      END LOOP;
    END PROCEDURE;

    -- Run WA phase with parallel control (latched at WA T0)
    PROCEDURE run_wa_phase(
      acc_sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ras_sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      io_sel  : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
    ) IS
    BEGIN
      sel_acc <= acc_sel;
      sel_ras <= ras_sel;
      sel_io  <= io_sel;
      word_type <= '0';
      FOR bit IN 0 TO 19 LOOP
        t0 <= '1' WHEN bit = 0 ELSE '0';
        t19 <= '1' WHEN bit = 19 ELSE '0';
        wait_bit_time;
      END LOOP;
      t0 <= '0'; t19 <= '0';
    END PROCEDURE;

    -- Run WO phase with all 8 source data values, capture 3 outputs
    PROCEDURE run_wo_phase_all(
      d_ras   : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_acc   : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_tmp   : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_pmu   : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_pduq  : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_pdur  : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_io    : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      d_const : IN STD_LOGIC_VECTOR(19 DOWNTO 0)
    ) IS
    BEGIN
      ras_sr   <= d_ras;
      acc_sr   <= d_acc;
      tmp_sr   <= d_tmp;
      pmu_sr   <= d_pmu;
      pduq_sr  <= d_pduq;
      pdur_sr  <= d_pdur;
      io_sr    <= d_io;
      const_sr <= d_const;
      acc_out_sr <= (OTHERS => '0');
      ras_out_sr <= (OTHERS => '0');
      io_out_sr  <= (OTHERS => '0');
      word_type <= '1';
      FOR bit IN 0 TO 19 LOOP
        t0 <= '1' WHEN bit = 0 ELSE '0';
        t19 <= '1' WHEN bit = 19 ELSE '0';
        wait_bit_time;
        acc_out_sr <= acc_in_bit & acc_out_sr(19 DOWNTO 1);
        ras_out_sr <= ras_wr_bit & ras_out_sr(19 DOWNTO 1);
        io_out_sr  <= io_out_bit & io_out_sr(19 DOWNTO 1);
        ras_sr   <= '0' & ras_sr(19 DOWNTO 1);
        acc_sr   <= '0' & acc_sr(19 DOWNTO 1);
        tmp_sr   <= '0' & tmp_sr(19 DOWNTO 1);
        pmu_sr   <= '0' & pmu_sr(19 DOWNTO 1);
        pduq_sr  <= '0' & pduq_sr(19 DOWNTO 1);
        pdur_sr  <= '0' & pdur_sr(19 DOWNTO 1);
        io_sr    <= '0' & io_sr(19 DOWNTO 1);
        const_sr <= '0' & const_sr(19 DOWNTO 1);
      END LOOP;
      t0 <= '0'; t19 <= '0';
    END PROCEDURE;

    -- Check a single output channel
    PROCEDURE check_output(
      actual   : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      expected : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      name     : IN STRING
    ) IS
    BEGIN
      test_count <= test_count + 1;
      WAIT FOR 1 ns;
      IF actual /= expected THEN
        REPORT name & " FAILED: got 0x" & to_hstring(UNSIGNED(actual)) &
               " expected 0x" & to_hstring(UNSIGNED(expected)) SEVERITY ERROR;
        fail_count <= fail_count + 1;
      ELSE
        REPORT name & " PASSED" SEVERITY NOTE;
      END IF;
    END PROCEDURE;

    -- Unique per-source patterns
    CONSTANT D_RAS   : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"11111";
    CONSTANT D_PMU   : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"22222";
    CONSTANT D_PDUQ  : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"33333";
    CONSTANT D_PDUR  : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"44444";
    CONSTANT D_IO    : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"55555";
    CONSTANT D_CONST : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"66666";
    CONSTANT D_TMP   : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"77777";
    CONSTANT D_ACC   : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"88888";

    -- Helper: do WA + WO with unique sources, check ACC output
    PROCEDURE test_acc_route(
      sel  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      exp  : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      name : IN STRING
    ) IS
    BEGIN
      run_wa_phase(sel, "0000", "000");
      run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
      check_output(acc_out_sr, exp, name);
    END PROCEDURE;

    -- Helper: do WA + WO with unique sources, check RAS output
    PROCEDURE test_ras_route(
      sel  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      exp  : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      name : IN STRING
    ) IS
    BEGIN
      run_wa_phase("0000", sel, "000");
      run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
      check_output(ras_out_sr, exp, name);
    END PROCEDURE;

    -- Helper: do WA + WO with unique sources, check IO output
    PROCEDURE test_io_route(
      sel  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      exp  : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      name : IN STRING
    ) IS
    BEGIN
      run_wa_phase("0000", "0000", sel);
      run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
      check_output(io_out_sr, exp, name);
    END PROCEDURE;

  BEGIN
    rst <= '1';
    WAIT FOR 5 * CLK_PERIOD;
    rst <= '0';
    WAIT UNTIL phase = "00" AND rising_edge(clk);

    ---------------------------------------------------------------------------
    -- 5.1 ACC Source Select Tests (sel_acc[2:0])
    ---------------------------------------------------------------------------
    test_acc_route("0000", D_RAS,  "SL-T-001: RAS->ACC");
    test_acc_route("0001", D_PMU,  "SL-T-002: PMU->ACC");
    test_acc_route("0010", D_PDUQ, "SL-T-003: PDUQ->ACC");
    test_acc_route("0011", D_PDUR, "SL-T-004: PDUR->ACC");
    test_acc_route("0100", D_IO,   "SL-T-005: IO->ACC");
    test_acc_route("0101", D_CONST,"SL-T-006: CONST->ACC");
    test_acc_route("0110", D_TMP,  "SL-T-007: TMP->ACC");
    test_acc_route("0111", D_ACC,  "SL-T-008: ACC loopback");

    ---------------------------------------------------------------------------
    -- 5.2 RAS Write Source Select Tests (sel_ras[1:0])
    ---------------------------------------------------------------------------
    test_ras_route("0000", D_ACC,  "SL-T-010: ACC->RAS");
    test_ras_route("0001", D_PMU,  "SL-T-011: PMU->RAS");
    test_ras_route("0010", D_PDUQ, "SL-T-012: PDUQ->RAS");
    test_ras_route("0011", D_IO,   "SL-T-013: IO->RAS");

    ---------------------------------------------------------------------------
    -- 5.3 I/O Output Source Select Tests (sel_io[1:0])
    ---------------------------------------------------------------------------
    test_io_route("000", D_ACC,  "SL-T-020: ACC->IO");
    test_io_route("001", D_RAS,  "SL-T-021: RAS->IO");
    test_io_route("010", D_PMU,  "SL-T-022: PMU->IO");
    test_io_route("011", D_PDUQ, "SL-T-023: PDUQ->IO");

    ---------------------------------------------------------------------------
    -- 5.4 Independence Tests
    ---------------------------------------------------------------------------

    -- SL-T-030: All three muxes select different sources simultaneously
    run_wa_phase("0001", "0010", "001");  -- ACC=PMU, RAS=PDUQ, IO=RAS
    run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
    check_output(acc_out_sr, D_PMU,  "SL-T-030a: ACC=PMU");
    check_output(ras_out_sr, D_PDUQ, "SL-T-030b: RAS=PDUQ");
    check_output(io_out_sr,  D_RAS,  "SL-T-030c: IO=RAS");

    -- SL-T-031: All three muxes select same source (PMU)
    run_wa_phase("0001", "0001", "010");  -- ACC=PMU, RAS=PMU, IO=PMU
    run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
    check_output(acc_out_sr, D_PMU, "SL-T-031a: ACC=PMU");
    check_output(ras_out_sr, D_PMU, "SL-T-031b: RAS=PMU");
    check_output(io_out_sr,  D_PMU, "SL-T-031c: IO=PMU");

    -- SL-T-032: Change one select, others stable
    -- First: set ACC=RAS, RAS=ACC, IO=ACC
    run_wa_phase("0000", "0000", "000");
    run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
    check_output(acc_out_sr, D_RAS, "SL-T-032a: ACC=RAS before");
    check_output(ras_out_sr, D_ACC, "SL-T-032b: RAS=ACC before");
    check_output(io_out_sr,  D_ACC, "SL-T-032c: IO=ACC before");
    -- Now change only ACC select to PMU, keep RAS/IO same
    run_wa_phase("0001", "0000", "000");
    run_wo_phase_all(D_RAS, D_ACC, D_TMP, D_PMU, D_PDUQ, D_PDUR, D_IO, D_CONST);
    check_output(acc_out_sr, D_PMU, "SL-T-032d: ACC=PMU after");
    check_output(ras_out_sr, D_ACC, "SL-T-032e: RAS=ACC unchanged");
    check_output(io_out_sr,  D_ACC, "SL-T-032f: IO=ACC unchanged");

    ---------------------------------------------------------------------------
    -- 5.5 Data Integrity Tests
    ---------------------------------------------------------------------------

    -- SL-T-040: All zeros through each path
    run_wa_phase("0000", "0000", "000");  -- ACC=RAS, RAS=ACC, IO=ACC
    run_wo_phase_all(x"00000", x"00000", x"00000", x"00000",
                     x"00000", x"00000", x"00000", x"00000");
    check_output(acc_out_sr, x"00000", "SL-T-040a: Zeros ACC path");
    check_output(ras_out_sr, x"00000", "SL-T-040b: Zeros RAS path");
    check_output(io_out_sr,  x"00000", "SL-T-040c: Zeros IO path");

    -- SL-T-041: All ones through each path
    run_wa_phase("0000", "0000", "000");
    run_wo_phase_all(x"FFFFF", x"FFFFF", x"FFFFF", x"FFFFF",
                     x"FFFFF", x"FFFFF", x"FFFFF", x"FFFFF");
    check_output(acc_out_sr, x"FFFFF", "SL-T-041a: Ones ACC path");
    check_output(ras_out_sr, x"FFFFF", "SL-T-041b: Ones RAS path");
    check_output(io_out_sr,  x"FFFFF", "SL-T-041c: Ones IO path");

    -- SL-T-042: Unique pattern through each path
    run_wa_phase("0100", "0010", "001");  -- ACC=IO, RAS=PDUQ, IO=RAS
    run_wo_phase_all(x"A5A5A", x"00000", x"00000", x"00000",
                     x"3C3C3", x"00000", x"5A5A5", x"00000");
    check_output(acc_out_sr, x"5A5A5", "SL-T-042a: Unique ACC path");
    check_output(ras_out_sr, x"3C3C3", "SL-T-042b: Unique RAS path");
    check_output(io_out_sr,  x"A5A5A", "SL-T-042c: Unique IO path");

    -- SL-T-043: Walking ones - verify each bit independently
    FOR b IN 0 TO 19 LOOP
      run_wa_phase("0000", "0000", "001");  -- ACC=RAS, RAS=ACC, IO=RAS
      run_wo_phase_all(
        STD_LOGIC_VECTOR(SHIFT_LEFT(TO_UNSIGNED(1, 20), b)),   -- RAS
        x"00000", x"00000", x"00000", x"00000", x"00000", x"00000", x"00000");
      check_output(acc_out_sr,
        STD_LOGIC_VECTOR(SHIFT_LEFT(TO_UNSIGNED(1, 20), b)),
        "SL-T-043: Walking bit " & INTEGER'image(b));
    END LOOP;

    ---------------------------------------------------------------------------
    -- Summary
    ---------------------------------------------------------------------------
    REPORT "======================================" SEVERITY NOTE;
    REPORT "SL Testbench Complete" SEVERITY NOTE;
    REPORT "Tests run: " & INTEGER'image(test_count) SEVERITY NOTE;
    REPORT "Failures:  " & INTEGER'image(fail_count) SEVERITY NOTE;
    REPORT "======================================" SEVERITY NOTE;

    ASSERT FALSE REPORT "sim complete" SEVERITY FAILURE;
    WAIT;
  END PROCESS stim_proc;

END ARCHITECTURE bench;
