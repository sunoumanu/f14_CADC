-------------------------------------------------------------------------------
-- Control ROM + Sequencer Testbench
-- F-14A Central Air Data Computer -- FPGA Implementation
--
-- Verifies all sequencer instruction types:
--   - Sequential execution (SEQ)
--   - Unconditional jump (JUMP)
--   - Conditional branches taken/not-taken (BRZ, BRN, BRC, BR_PMUB, BR_PDUB)
--   - Wait-for-busy hold and release (WAIT_PMU, WAIT_PDU)
--   - Subroutine call and return (CALL, RET)
--   - Reset and frame mark
--
-- Uses the timing_generator for proper WA/WO phasing.
-- Test instructions are in the ROM at addresses 20-60.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY control_rom_sequencer_tb IS
END ENTITY control_rom_sequencer_tb;

ARCHITECTURE bench OF control_rom_sequencer_tb IS

    CONSTANT CLK_PERIOD  : TIME    := 667 ns;  -- 1.5 MHz master clock
    CONSTANT UWORD_WIDTH : NATURAL := 48;
    CONSTANT OP_CLOCKS   : NATURAL := 160;     -- Master clocks per operation

    -- Clock and reset
    SIGNAL clk           : STD_LOGIC := '0';
    SIGNAL rst           : STD_LOGIC := '0';

    -- Timing signals from timing_generator
    SIGNAL phi1          : STD_LOGIC;
    SIGNAL phi2          : STD_LOGIC;
    SIGNAL bit_clk       : STD_LOGIC;
    SIGNAL bit_count     : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL t0            : STD_LOGIC;
    SIGNAL t18           : STD_LOGIC;
    SIGNAL t19           : STD_LOGIC;
    SIGNAL word_type     : STD_LOGIC;
    SIGNAL word_mark     : STD_LOGIC;
    SIGNAL op_count      : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL tg_frame_mark : STD_LOGIC;

    -- Testbench-driven frame mark (OR'd with timing generator)
    SIGNAL tb_frame_mark  : STD_LOGIC := '0';
    SIGNAL seq_frame_mark : STD_LOGIC;

    -- Sequencer control inputs
    SIGNAL flag_z        : STD_LOGIC := '0';
    SIGNAL flag_n        : STD_LOGIC := '0';
    SIGNAL flag_c        : STD_LOGIC := '0';
    SIGNAL pmu_busy      : STD_LOGIC := '0';
    SIGNAL pdu_busy      : STD_LOGIC := '0';

    -- Sequencer outputs
    SIGNAL cw_bit        : STD_LOGIC;
    SIGNAL const_bit     : STD_LOGIC;
    SIGNAL micro_addr    : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL micro_word    : STD_LOGIC_VECTOR(UWORD_WIDTH-1 DOWNTO 0);

BEGIN

    clk <= NOT clk AFTER CLK_PERIOD / 2;

    seq_frame_mark <= tg_frame_mark OR tb_frame_mark;

    ---------------------------------------------------------------------------
    -- Timing Generator (provides phi2, t0, t19, word_type, etc.)
    ---------------------------------------------------------------------------
    u_timing: ENTITY work.timing_generator
        PORT MAP (
            i_clk_master => clk,
            i_rst        => rst,
            o_phi1       => phi1,
            o_phi2       => phi2,
            o_bit_clk    => bit_clk,
            o_bit_count  => bit_count,
            o_t0         => t0,
            o_t18        => t18,
            o_t19        => t19,
            o_word_type  => word_type,
            o_word_mark  => word_mark,
            o_op_count   => op_count,
            o_frame_mark => tg_frame_mark
        );

    ---------------------------------------------------------------------------
    -- Unit Under Test
    ---------------------------------------------------------------------------
    uut: ENTITY work.control_rom_sequencer
        GENERIC MAP (
            g_ctrl_rom_depth => 1024,
            g_data_rom_depth => 512,
            g_uword_width    => UWORD_WIDTH
        )
        PORT MAP (
            i_clk        => clk,
            i_rst        => rst,
            i_phi2       => phi2,
            i_word_type  => word_type,
            i_t0         => t0,
            i_t19        => t19,
            i_flag_z     => flag_z,
            i_flag_n     => flag_n,
            i_flag_c     => flag_c,
            i_pmu_busy   => pmu_busy,
            i_pdu_busy   => pdu_busy,
            i_frame_mark => seq_frame_mark,
            o_cw_bit     => cw_bit,
            o_const_bit  => const_bit,
            o_micro_addr => micro_addr,
            o_micro_word => micro_word
        );

    ---------------------------------------------------------------------------
    -- Stimulus Process
    ---------------------------------------------------------------------------
    stim: PROCESS
        VARIABLE v_test_count : NATURAL := 0;
        VARIABLE v_fail_count : NATURAL := 0;
        VARIABLE v_addr       : NATURAL;

        -- Wait until micro_addr reaches target (with timeout)
        PROCEDURE wait_for_addr(target : NATURAL; max_clks : NATURAL := 50000) IS
            VARIABLE timeout : NATURAL := max_clks;
        BEGIN
            WHILE TO_INTEGER(UNSIGNED(micro_addr)) /= target LOOP
                WAIT UNTIL RISING_EDGE(clk);
                timeout := timeout - 1;
                IF timeout = 0 THEN
                    REPORT "TIMEOUT waiting for addr " & INTEGER'IMAGE(target) &
                           " (stuck at " & INTEGER'IMAGE(TO_INTEGER(UNSIGNED(micro_addr))) & ")"
                        SEVERITY ERROR;
                    v_fail_count := v_fail_count + 1;
                    RETURN;
                END IF;
            END LOOP;
            WAIT FOR 1 ns;
        END PROCEDURE;

        -- Check current address matches expected
        PROCEDURE check_addr(expected : NATURAL; test_id : STRING) IS
        BEGIN
            v_test_count := v_test_count + 1;
            v_addr := TO_INTEGER(UNSIGNED(micro_addr));
            IF v_addr = expected THEN
                REPORT test_id & " PASSED (PC=" & INTEGER'IMAGE(v_addr) & ")" SEVERITY NOTE;
            ELSE
                REPORT test_id & " FAILED: expected PC=" & INTEGER'IMAGE(expected) &
                       " got PC=" & INTEGER'IMAGE(v_addr) SEVERITY ERROR;
                v_fail_count := v_fail_count + 1;
            END IF;
        END PROCEDURE;

        -- Wait for N operation cycles
        PROCEDURE wait_ops(n : NATURAL) IS
        BEGIN
            FOR i IN 0 TO (n * OP_CLOCKS) - 1 LOOP
                WAIT UNTIL RISING_EDGE(clk);
            END LOOP;
            WAIT FOR 1 ns;
        END PROCEDURE;

    BEGIN
        REPORT "======================================" SEVERITY NOTE;
        REPORT "Control ROM/Sequencer Instruction Test" SEVERITY NOTE;
        REPORT "Tests all 11 NEXTCTL instruction types" SEVERITY NOTE;
        REPORT "======================================" SEVERITY NOTE;

        -----------------------------------------------------------------------
        -- ROM-T-001: Power-on reset
        -----------------------------------------------------------------------
        rst <= '1';
        WAIT FOR 10 * CLK_PERIOD;
        rst <= '0';
        wait_for_addr(0);
        check_addr(0, "ROM-T-001: Power-on reset");

        -----------------------------------------------------------------------
        -- ROM-T-002/003: Sequential advance through polynomial
        -----------------------------------------------------------------------
        wait_for_addr(1);
        check_addr(1, "ROM-T-002: Sequential advance");

        wait_for_addr(3);
        check_addr(3, "ROM-T-003: Multiple sequential");

        -----------------------------------------------------------------------
        -- ROM-T-010: Unconditional jump (addr 17 -> addr 20)
        -----------------------------------------------------------------------
        wait_for_addr(17);
        REPORT "  At addr 17 (JUMP to 20)" SEVERITY NOTE;
        wait_for_addr(20);
        check_addr(20, "ROM-T-010: Unconditional jump");

        -----------------------------------------------------------------------
        -- Set flags for "branch taken" tests
        -----------------------------------------------------------------------
        flag_z <= '1';
        flag_n <= '1';
        flag_c <= '1';

        -----------------------------------------------------------------------
        -- ROM-T-011: Branch on Zero taken (addr 21 -> 24)
        -----------------------------------------------------------------------
        wait_for_addr(21);
        REPORT "  At addr 21 (BRZ to 24, Z=1)" SEVERITY NOTE;
        wait_for_addr(24);
        check_addr(24, "ROM-T-011: BRZ taken");

        -----------------------------------------------------------------------
        -- ROM-T-013: Branch on Negative taken (addr 24 -> 27)
        -----------------------------------------------------------------------
        wait_for_addr(27);
        check_addr(27, "ROM-T-013: BRN taken");

        -----------------------------------------------------------------------
        -- ROM-T-015: Branch on Carry taken (addr 27 -> 30)
        -----------------------------------------------------------------------
        wait_for_addr(30);
        check_addr(30, "ROM-T-015: BRC taken");

        -- Clear condition flags, set busy signals for next tests
        flag_z <= '0';
        flag_n <= '0';
        flag_c <= '0';
        pmu_busy <= '1';

        -----------------------------------------------------------------------
        -- ROM-T-024: Branch on PMU busy taken (addr 30 -> 33)
        -----------------------------------------------------------------------
        wait_for_addr(33);
        check_addr(33, "ROM-T-024: BR_PMUB taken");

        pdu_busy <= '1';

        -----------------------------------------------------------------------
        -- ROM-T-026: Branch on PDU busy taken (addr 33 -> 36)
        -----------------------------------------------------------------------
        wait_for_addr(36);
        check_addr(36, "ROM-T-026: BR_PDUB taken");

        -----------------------------------------------------------------------
        -- ROM-T-022: Wait PDU while busy (addr 36 holds)
        -----------------------------------------------------------------------
        wait_ops(3);
        check_addr(36, "ROM-T-022: WAIT_PDU holds while busy");

        -- Release PDU busy
        pdu_busy <= '0';
        wait_for_addr(37);
        v_test_count := v_test_count + 1;
        REPORT "ROM-T-023: WAIT_PDU advances when done PASSED" SEVERITY NOTE;

        -----------------------------------------------------------------------
        -- ROM-T-020: Wait PMU while busy (addr 37 holds)
        -----------------------------------------------------------------------
        wait_ops(3);
        check_addr(37, "ROM-T-020: WAIT_PMU holds while busy");

        -- Release PMU busy
        pmu_busy <= '0';
        wait_for_addr(38);
        v_test_count := v_test_count + 1;
        REPORT "ROM-T-021: WAIT_PMU advances when done PASSED" SEVERITY NOTE;

        -----------------------------------------------------------------------
        -- ROM-T-050: Subroutine call (addr 38 -> 42)
        -----------------------------------------------------------------------
        wait_for_addr(42);
        check_addr(42, "ROM-T-050: CALL reaches subroutine");

        -----------------------------------------------------------------------
        -- ROM-T-050b: Subroutine return (addr 42 -> 39)
        -----------------------------------------------------------------------
        wait_for_addr(39);
        check_addr(39, "ROM-T-050b: RET returns correctly");

        -----------------------------------------------------------------------
        -- ROM-T-050c: Jump after return (addr 39 -> 50)
        -----------------------------------------------------------------------
        wait_for_addr(50);
        check_addr(50, "ROM-T-050c: JUMP after return");

        -----------------------------------------------------------------------
        -- Branch not-taken tests (all flags and busy are 0)
        -----------------------------------------------------------------------
        -- ROM-T-012: BRZ not taken (Z=0, addr 50 -> 51)
        wait_for_addr(51);
        check_addr(51, "ROM-T-012: BRZ not taken");

        -- ROM-T-014: BRN not taken (N=0, addr 51 -> 52)
        wait_for_addr(52);
        check_addr(52, "ROM-T-014: BRN not taken");

        -- ROM-T-016: BRC not taken (C=0, addr 52 -> 53)
        wait_for_addr(53);
        check_addr(53, "ROM-T-016: BRC not taken");

        -- ROM-T-025: BR_PMUB not taken (pmu_busy=0, addr 53 -> 54)
        wait_for_addr(54);
        check_addr(54, "ROM-T-025: BR_PMUB not taken");

        -- ROM-T-027: BR_PDUB not taken (pdu_busy=0, addr 54 -> 55)
        wait_for_addr(55);
        check_addr(55, "ROM-T-027: BR_PDUB not taken");

        -----------------------------------------------------------------------
        -- ROM-T-051: Nested subroutine calls (2 deep)
        -- Path: 55->70(CALL 80)->80(CALL 85)->85(RET->81)->81(RET->71)->71(JMP 90)
        -----------------------------------------------------------------------
        wait_for_addr(70);
        check_addr(70, "ROM-T-051a: Reached nested call entry");

        wait_for_addr(80);
        check_addr(80, "ROM-T-051b: First CALL reaches 80");

        wait_for_addr(85);
        check_addr(85, "ROM-T-051c: Nested CALL reaches 85");

        wait_for_addr(81);
        check_addr(81, "ROM-T-051d: Inner RET returns to 81");

        wait_for_addr(71);
        check_addr(71, "ROM-T-051e: Outer RET returns to 71");

        wait_for_addr(90);
        check_addr(90, "ROM-T-051f: JUMP to 90 after nested test");

        -----------------------------------------------------------------------
        -- ROM-T-055: Verify halt at addr 90 (JUMP to self)
        -----------------------------------------------------------------------
        wait_ops(3);
        check_addr(90, "ROM-T-055: Halt loop at 90");

        -----------------------------------------------------------------------
        -- ROM-T-030..036: Decode tests (verify micro_word fields)
        -- Check micro_word at known addresses during polynomial execution
        -----------------------------------------------------------------------

        -- Reset to re-run polynomial section
        tb_frame_mark <= '1';
        WAIT FOR 2 * OP_CLOCKS * CLK_PERIOD;
        tb_frame_mark <= '0';
        wait_for_addr(0);

        -- ROM-T-033: SL ACC source decode at addr 0 (ACC_SRC=IO=4, bits 10:7)
        v_test_count := v_test_count + 1;
        IF micro_word(10 DOWNTO 7) = "0100" THEN
            REPORT "ROM-T-033: SL ACC source decode PASSED (IO)" SEVERITY NOTE;
        ELSE
            REPORT "ROM-T-033: SL ACC source decode FAILED: got " &
                   to_hstring(UNSIGNED(micro_word(10 DOWNTO 7))) SEVERITY ERROR;
            v_fail_count := v_fail_count + 1;
        END IF;

        -- ROM-T-030: Verify ALU_OP field at addr 1 (LOAD = 0xD in bits 3:0)
        wait_for_addr(1);
        v_test_count := v_test_count + 1;
        IF micro_word(3 DOWNTO 0) = x"D" THEN
            REPORT "ROM-T-030: ALU_OP decode PASSED (LOAD)" SEVERITY NOTE;
        ELSE
            REPORT "ROM-T-030: ALU_OP decode FAILED: got " &
                   to_hstring(UNSIGNED(micro_word(3 DOWNTO 0))) SEVERITY ERROR;
            v_fail_count := v_fail_count + 1;
        END IF;

        -- ROM-T-031: ACC control decode at addr 1 (acc_we=1 is bit 4)
        v_test_count := v_test_count + 1;
        IF micro_word(4) = '1' THEN
            REPORT "ROM-T-031: ACC write enable decode PASSED" SEVERITY NOTE;
        ELSE
            REPORT "ROM-T-031: ACC write enable decode FAILED" SEVERITY ERROR;
            v_fail_count := v_fail_count + 1;
        END IF;

        -- ROM-T-032: RAS control decode at addr 3 (no RAS activity, write_en=bit30=0)
        wait_for_addr(3);
        v_test_count := v_test_count + 1;
        IF micro_word(30) = '0' THEN
            REPORT "ROM-T-032: RAS write_en decode PASSED" SEVERITY NOTE;
        ELSE
            REPORT "ROM-T-032: RAS write_en decode FAILED" SEVERITY ERROR;
            v_fail_count := v_fail_count + 1;
        END IF;

        -- ROM-T-034: PMU/PDU control decode
        -- Verify at addr 5: WAIT_PMU (nextctl=0x07 in bits 47:40)
        wait_for_addr(5);
        v_test_count := v_test_count + 1;
        IF micro_word(47 DOWNTO 40) = x"07" THEN
            REPORT "ROM-T-034: PMU wait decode PASSED" SEVERITY NOTE;
        ELSE
            REPORT "ROM-T-034: PMU wait decode FAILED" SEVERITY ERROR;
            v_fail_count := v_fail_count + 1;
        END IF;

        -- ROM-T-036: IO control decode at addr 16 (io_ctrl=write_mach=6, bits 3:0)
        wait_for_addr(16);
        v_test_count := v_test_count + 1;
        IF micro_word(3 DOWNTO 0) = x"6" THEN
            REPORT "ROM-T-036: IO control decode PASSED (write_mach)" SEVERITY NOTE;
        ELSE
            REPORT "ROM-T-036: IO control decode FAILED: got " &
                   to_hstring(UNSIGNED(micro_word(3 DOWNTO 0))) SEVERITY ERROR;
            v_fail_count := v_fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- ROM-T-040: Frame mark resets PC
        -----------------------------------------------------------------------
        -- Let polynomial run a bit
        wait_for_addr(5, 80000);
        tb_frame_mark <= '1';
        WAIT FOR 2 * OP_CLOCKS * CLK_PERIOD;
        tb_frame_mark <= '0';
        wait_for_addr(0);
        check_addr(0, "ROM-T-040: Frame mark resets PC");

        -----------------------------------------------------------------------
        -- ROM-T-042: Word mark timing
        -- Verify word_type alternates correctly (WA=0, WO=1)
        -----------------------------------------------------------------------
        v_test_count := v_test_count + 1;
        -- Wait for a WA->WO transition
        WAIT UNTIL word_type = '0' AND rising_edge(clk);
        WAIT UNTIL word_type = '1' AND rising_edge(clk);
        WAIT UNTIL word_type = '0' AND rising_edge(clk);
        REPORT "ROM-T-042: Word type alternation PASSED" SEVERITY NOTE;

        -----------------------------------------------------------------------
        -- ROM-T-RST: Reset during operation
        -----------------------------------------------------------------------
        wait_for_addr(3, 80000);
        rst <= '1';
        WAIT FOR 10 * CLK_PERIOD;
        rst <= '0';
        wait_for_addr(0);
        check_addr(0, "ROM-T-RST: Reset clears PC");

        -----------------------------------------------------------------------
        -- Summary
        -----------------------------------------------------------------------
        WAIT FOR 10 * CLK_PERIOD;
        REPORT "" SEVERITY NOTE;
        REPORT "======================================" SEVERITY NOTE;
        REPORT "Control ROM/Sequencer Testbench Complete" SEVERITY NOTE;
        REPORT "======================================" SEVERITY NOTE;
        REPORT "Tests run: " & INTEGER'IMAGE(v_test_count) SEVERITY NOTE;
        REPORT "Failures:  " & INTEGER'IMAGE(v_fail_count) SEVERITY NOTE;
        IF v_fail_count = 0 THEN
            REPORT "RESULT: ALL TESTS PASSED" SEVERITY NOTE;
        ELSE
            REPORT "RESULT: SOME TESTS FAILED" SEVERITY ERROR;
        END IF;
        REPORT "======================================" SEVERITY NOTE;

        REPORT "sim complete" SEVERITY FAILURE;
    END PROCESS;

END ARCHITECTURE bench;
