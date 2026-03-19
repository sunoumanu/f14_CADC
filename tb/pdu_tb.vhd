-------------------------------------------------------------------------------
-- PDU Testbench
-- F-14A Central Air Data Computer -- FPGA Implementation (Bit-Serial)
--
-- Verifies 20-bit signed fractional non-restoring division with bit-serial I/O.
-- Implements all verification tests from PDU_Module_Spec.md:
--   PDU-T-001..007  Basic functionality (sign combos, edge cases)
--   PDU-T-010       Division by zero
--   PDU-T-020..021  Remainder verification (integrated into do_divide)
--   PDU-T-030..032  Non-restoring algorithm specific
--   PDU-T-040..044  Timing (busy, back-to-back, reset)
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY pdu_tb IS
END ENTITY pdu_tb;

ARCHITECTURE bench OF pdu_tb IS

    CONSTANT CLK_PERIOD : TIME := 667 ns;  -- 1.5 MHz (original CADC)

    SIGNAL clk          : std_logic := '0';
    SIGNAL rst          : std_logic := '0';
    SIGNAL phi2         : std_logic := '0';
    SIGNAL word_type    : std_logic := '0';
    SIGNAL t0           : std_logic := '0';
    SIGNAL t19          : std_logic := '0';
    SIGNAL dividend_bit : std_logic := '0';
    SIGNAL divisor_bit  : std_logic := '0';
    SIGNAL quotient_bit : std_logic;
    SIGNAL remainder_bit: std_logic;
    SIGNAL busy         : std_logic;
    SIGNAL div_by_zero  : std_logic;

    -- Captured serial results
    SIGNAL quotient_sr  : std_logic_vector(19 DOWNTO 0) := (OTHERS => '0');
    SIGNAL remainder_sr : std_logic_vector(19 DOWNTO 0) := (OTHERS => '0');

    SIGNAL test_count : INTEGER := 0;
    SIGNAL fail_count : INTEGER := 0;
    SIGNAL phase      : UNSIGNED(1 DOWNTO 0) := "00";

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

    uut: ENTITY work.pdu
        PORT MAP (
            i_clk          => clk,
            i_rst          => rst,
            i_phi2         => phi2,
            i_word_type    => word_type,
            i_t0           => t0,
            i_t19          => t19,
            i_dividend_bit => dividend_bit,
            i_divisor_bit  => divisor_bit,
            o_quotient_bit => quotient_bit,
            o_remainder_bit=> remainder_bit,
            o_busy         => busy,
            o_div_by_zero  => div_by_zero
        );

    stim: PROCESS

        PROCEDURE wait_bit_time IS
        BEGIN
          FOR i IN 0 TO 3 LOOP
            WAIT UNTIL rising_edge(clk);
          END LOOP;
        END PROCEDURE;

        PROCEDURE run_wa_phase IS
        BEGIN
          word_type <= '0';
          FOR bit IN 0 TO 19 LOOP
            t0 <= '1' WHEN bit = 0 ELSE '0';
            t19 <= '1' WHEN bit = 19 ELSE '0';
            wait_bit_time;
          END LOOP;
          t0 <= '0'; t19 <= '0';
        END PROCEDURE;

        PROCEDURE run_wo_phase(
            dividend_val : IN std_logic_vector(19 DOWNTO 0);
            divisor_val  : IN std_logic_vector(19 DOWNTO 0)
        ) IS
            VARIABLE v_dividend : std_logic_vector(19 DOWNTO 0);
            VARIABLE v_divisor  : std_logic_vector(19 DOWNTO 0);
        BEGIN
          v_dividend := dividend_val;
          v_divisor  := divisor_val;
          word_type <= '1';
          
          FOR bit IN 0 TO 19 LOOP
            t0 <= '1' WHEN bit = 0 ELSE '0';
            t19 <= '1' WHEN bit = 19 ELSE '0';
            
            IF bit = 0 THEN
              quotient_sr <= (OTHERS => '0');
              remainder_sr <= (OTHERS => '0');
            END IF;
            
            dividend_bit <= v_dividend(0);
            divisor_bit  <= v_divisor(0);
            
            wait_bit_time;
            
            quotient_sr  <= quotient_bit & quotient_sr(19 DOWNTO 1);
            remainder_sr <= remainder_bit & remainder_sr(19 DOWNTO 1);
            
            v_dividend := '0' & v_dividend(19 DOWNTO 1);
            v_divisor  := '0' & v_divisor(19 DOWNTO 1);
          END LOOP;
          t0 <= '0'; t19 <= '0';
        END PROCEDURE;

        -- Division test with integrated PDU-T-020/021 remainder verification
        PROCEDURE do_divide(
            a         : IN std_logic_vector(19 DOWNTO 0);
            b         : IN std_logic_vector(19 DOWNTO 0);
            exp_q     : IN std_logic_vector(19 DOWNTO 0);
            name      : IN STRING;
            tolerance : IN INTEGER := 2;
            check_q   : IN BOOLEAN := TRUE
        ) IS
            VARIABLE diff          : INTEGER;
            VARIABLE rem_abs       : INTEGER;
            VARIABLE div_abs       : INTEGER;
            VARIABLE v_prod40      : SIGNED(39 DOWNTO 0);
            VARIABLE v_recon       : SIGNED(20 DOWNTO 0);
            VARIABLE v_a_ext       : SIGNED(20 DOWNTO 0);
            VARIABLE v_recon_diff  : INTEGER;
        BEGIN
            run_wa_phase;
            run_wo_phase(a, b);
            -- Compute + shift out results
            run_wa_phase;
            run_wo_phase(x"00000", x"00000");
            
            test_count <= test_count + 1;
            WAIT FOR 1 ns;

            -- Quotient check
            IF check_q THEN
                diff := ABS(to_integer(signed(quotient_sr)) - to_integer(signed(exp_q)));
                IF diff > tolerance THEN
                    REPORT name & " FAILED: got Q=0x" &
                        to_hstring(unsigned(quotient_sr)) &
                        " expected 0x" & to_hstring(unsigned(exp_q)) &
                        " diff=" & INTEGER'image(diff)
                        SEVERITY ERROR;
                    fail_count <= fail_count + 1;
                ELSE
                    REPORT name & " PASSED (Q=0x" &
                        to_hstring(unsigned(quotient_sr)) & ")"
                        SEVERITY NOTE;
                END IF;
            ELSE
                REPORT name & " OBSERVED: Q=0x" &
                    to_hstring(unsigned(quotient_sr)) &
                    " R=0x" & to_hstring(unsigned(remainder_sr)) &
                    " [overflow/undefined - no assertion]"
                    SEVERITY NOTE;
            END IF;

            -- PDU-T-020: Remainder relationship
            -- Verify: dividend ~ quotient*divisor/2^19 + remainder
            IF check_q AND signed(b) /= 0 THEN
                test_count <= test_count + 1;
                WAIT FOR 1 ns;
                v_prod40 := SIGNED(quotient_sr) * SIGNED(b);
                v_recon := RESIZE(SHIFT_RIGHT(v_prod40, 19), 21)
                           + RESIZE(SIGNED(remainder_sr), 21);
                v_a_ext := RESIZE(SIGNED(a), 21);
                v_recon_diff := ABS(to_integer(v_recon - v_a_ext));
                IF v_recon_diff <= tolerance + 1 THEN
                    REPORT "  [PDU-T-020] PASSED: Q*B>>19+R ~ A (diff=" &
                        INTEGER'image(v_recon_diff) & ")"
                        SEVERITY NOTE;
                ELSE
                    REPORT "  [PDU-T-020] FAILED: Q*B>>19+R != A (diff=" &
                        INTEGER'image(v_recon_diff) & ")"
                        SEVERITY ERROR;
                    fail_count <= fail_count + 1;
                END IF;
            END IF;

            -- PDU-T-021: |remainder| < |divisor|
            IF signed(b) /= 0 THEN
                test_count <= test_count + 1;
                WAIT FOR 1 ns;
                rem_abs := ABS(to_integer(signed(remainder_sr)));
                div_abs := ABS(to_integer(signed(b)));
                IF rem_abs < div_abs THEN
                    REPORT "  [PDU-T-021] PASSED: |R|=" &
                        INTEGER'image(rem_abs) & " < |B|=" &
                        INTEGER'image(div_abs)
                        SEVERITY NOTE;
                ELSE
                    REPORT "  [PDU-T-021] FAILED: |R|=" &
                        INTEGER'image(rem_abs) & " >= |B|=" &
                        INTEGER'image(div_abs)
                        SEVERITY ERROR;
                    fail_count <= fail_count + 1;
                END IF;
            END IF;
        END PROCEDURE;

        VARIABLE v_diff : INTEGER;

    BEGIN
        rst <= '1';
        WAIT FOR 5 * CLK_PERIOD;
        rst <= '0';
        WAIT UNTIL phase = "00" AND rising_edge(clk);

        -----------------------------------------------------------------------
        -- 5.1 Basic Functionality Tests (PDU-T-001 .. PDU-T-007)
        -----------------------------------------------------------------------

        -- PDU-T-001: Zero / positive = 0
        do_divide(x"00000", x"40000", x"00000", "PDU-T-001: 0/0.5");

        -- PDU-T-002: 0.25 / 0.5 = 0.5
        do_divide(x"20000", x"40000", x"40000", "PDU-T-002: 0.25/0.5");

        -- PDU-T-003: 0.5 / (-0.5) -- overflow (|A| = |B|, undefined)
        do_divide(x"40000", x"C0000", x"00000",
                  "PDU-T-003: 0.5/(-0.5) overflow", 0, FALSE);

        -- PDU-T-004: 0.25 / (-0.5) = -0.5
        do_divide(x"20000", x"C0000", x"C0000",
                  "PDU-T-004: 0.25/(-0.5)");

        -- PDU-T-005: (-0.25) / (-0.5) = +0.5
        do_divide(x"E0000", x"C0000", x"40000",
                  "PDU-T-005: (-0.25)/(-0.5)");

        -- PDU-T-006: (-0.25) / 0.5 = -0.5
        do_divide(x"E0000", x"40000", x"C0000",
                  "PDU-T-006: (-0.25)/0.5");

        -- PDU-T-007: Small / Large ~ very small
        do_divide(x"00001", x"7FFFF", x"00001",
                  "PDU-T-007: tiny/large", 3);

        -----------------------------------------------------------------------
        -- 5.2 Division by Zero (PDU-T-010)
        -----------------------------------------------------------------------

        -- PDU-T-010: Divide by zero -- div_by_zero must assert
        REPORT "PDU-T-010: Divide by zero..." SEVERITY NOTE;
        run_wa_phase;
        run_wo_phase(x"12345", x"00000");
        run_wa_phase;
        run_wo_phase(x"00000", x"00000");
        test_count <= test_count + 1;
        WAIT FOR 1 ns;
        IF div_by_zero = '1' THEN
            REPORT "PDU-T-010 PASSED: div_by_zero asserted" SEVERITY NOTE;
        ELSE
            REPORT "PDU-T-010 FAILED: div_by_zero not asserted" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- 5.3 Remainder Verification (PDU-T-020, PDU-T-021)
        -- Checked automatically within every do_divide call above.
        -----------------------------------------------------------------------

        -----------------------------------------------------------------------
        -- 5.4 Non-Restoring Algorithm Specific Tests (PDU-T-030 .. PDU-T-032)
        -----------------------------------------------------------------------

        -- PDU-T-030: Alternating partial remainder signs
        -- 0.2 / 0.5 ~ 0.4  (exercises both add and subtract paths)
        do_divide(x"19999", x"40000", x"33333",
                  "PDU-T-030: alternating rem signs", 4);

        -- PDU-T-031: All positive shifts (dividend much smaller than divisor)
        do_divide(x"00010", x"7FFFF", x"00010",
                  "PDU-T-031: all positive shifts", 4);

        -- PDU-T-032: Maximum iterations / worst-case timing
        -- (0.5 - eps) / 0.5 ~ 1.0 - eps
        do_divide(x"3FFFF", x"40000", x"7FFFE",
                  "PDU-T-032: worst-case timing", 4);

        -----------------------------------------------------------------------
        -- 5.5 Timing Tests (PDU-T-040 .. PDU-T-044)
        -----------------------------------------------------------------------

        -- PDU-T-040: Busy asserted during computation
        REPORT "PDU-T-040: Busy signal assertion..." SEVERITY NOTE;
        run_wa_phase;
        run_wo_phase(x"20000", x"40000");
        -- Start WA phase, check busy at t0
        word_type <= '0';
        t0 <= '1';
        wait_bit_time;
        t0 <= '0';
        test_count <= test_count + 1;
        WAIT FOR 1 ns;
        IF busy = '1' THEN
            REPORT "PDU-T-040 PASSED: busy asserted during WA" SEVERITY NOTE;
        ELSE
            REPORT "PDU-T-040 FAILED: busy not asserted after WA start"
                   SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;
        -- Complete remaining WA bits
        FOR bit IN 1 TO 19 LOOP
            t19 <= '1' WHEN bit = 19 ELSE '0';
            wait_bit_time;
        END LOOP;
        t19 <= '0';
        run_wo_phase(x"00000", x"00000");

        -- PDU-T-041: Busy deasserts after computation completes
        -- (Adapted: bit-serial interface has no explicit done signal)
        REPORT "PDU-T-041: Busy deasserts after completion..." SEVERITY NOTE;
        test_count <= test_count + 1;
        WAIT FOR 1 ns;
        IF busy = '0' THEN
            REPORT "PDU-T-041 PASSED: busy deasserted after WA+WO"
                   SEVERITY NOTE;
        ELSE
            REPORT "PDU-T-041 FAILED: busy still asserted" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -- PDU-T-042: New operands presented during active computation
        REPORT "PDU-T-042: Start during busy..." SEVERITY NOTE;
        -- Load first operands
        run_wa_phase;
        run_wo_phase(x"20000", x"40000");
        -- Compute first, then immediately load second operands
        run_wa_phase;
        run_wo_phase(x"10000", x"40000");
        -- Compute second and read out
        run_wa_phase;
        run_wo_phase(x"00000", x"00000");
        test_count <= test_count + 1;
        WAIT FOR 1 ns;
        -- Second division: 0.125 / 0.5 = 0.25 -> 0x20000
        v_diff := ABS(to_integer(signed(quotient_sr)) - to_integer(signed'(x"20000")));
        IF v_diff <= 2 THEN
            REPORT "PDU-T-042 PASSED: Q=0x" &
                   to_hstring(unsigned(quotient_sr)) SEVERITY NOTE;
        ELSE
            REPORT "PDU-T-042 FAILED: Q=0x" &
                   to_hstring(unsigned(quotient_sr)) &
                   " expected ~0x20000" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -- PDU-T-043: Back-to-back operations
        REPORT "PDU-T-043: Back-to-back operations..." SEVERITY NOTE;
        -- Op1: 0.25 / 0.5
        run_wa_phase;
        run_wo_phase(x"20000", x"40000");
        run_wa_phase;
        -- Immediately load Op2: 0.125 / 0.5
        run_wo_phase(x"10000", x"40000");
        run_wa_phase;
        run_wo_phase(x"00000", x"00000");
        test_count <= test_count + 1;
        WAIT FOR 1 ns;
        v_diff := ABS(to_integer(signed(quotient_sr)) - to_integer(signed'(x"20000")));
        IF v_diff <= 2 THEN
            REPORT "PDU-T-043 PASSED: back-to-back Q=0x" &
                   to_hstring(unsigned(quotient_sr)) SEVERITY NOTE;
        ELSE
            REPORT "PDU-T-043 FAILED: Q=0x" &
                   to_hstring(unsigned(quotient_sr)) &
                   " expected ~0x20000" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -- PDU-T-044: Reset during operation clears busy
        REPORT "PDU-T-044: Reset during operation..." SEVERITY NOTE;
        run_wa_phase;
        run_wo_phase(x"20000", x"40000");
        -- Begin WA computation
        word_type <= '0';
        t0 <= '1';
        wait_bit_time;
        t0 <= '0';
        WAIT FOR 5 * CLK_PERIOD;
        -- Assert reset mid-computation
        rst <= '1';
        WAIT UNTIL rising_edge(clk);
        WAIT UNTIL rising_edge(clk);
        rst <= '0';
        WAIT FOR 1 ns;
        test_count <= test_count + 1;
        IF busy = '0' THEN
            REPORT "PDU-T-044 PASSED: busy cleared on reset" SEVERITY NOTE;
        ELSE
            REPORT "PDU-T-044 FAILED: busy not cleared after reset"
                   SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        WAIT FOR 5 * CLK_PERIOD;

        -----------------------------------------------------------------------
        -- Summary
        -----------------------------------------------------------------------
        REPORT "======================================" SEVERITY NOTE;
        REPORT "PDU Testbench Complete (Bit-Serial)" SEVERITY NOTE;
        REPORT "Tests run: " & INTEGER'image(test_count) SEVERITY NOTE;
        REPORT "Failures:  " & INTEGER'image(fail_count) SEVERITY NOTE;
        REPORT "======================================" SEVERITY NOTE;

        REPORT "sim complete" SEVERITY FAILURE;
    END PROCESS;

END ARCHITECTURE bench;
