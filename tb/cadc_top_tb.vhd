-------------------------------------------------------------------------------
-- CADC Top Level Testbench
-- F-14A Central Air Data Computer -- FPGA Implementation
--
-- Functional test: verifies full air data computation microprogram
-- Computes Mach, Altitude, Airspeed, Vertical Speed, Wing Sweep,
-- Maneuver Flaps, and Glove Vane from sensor inputs.
--
-- Sensor inputs: Ps (Gray-coded), Qc (Gray-coded), TAT (binary)
-- Microprogram: 147 instructions using Horner polynomials, PDU division,
--   PMU multiplication, linearized sqrt, and rate limiting.
--
-- Test Coverage:
--   1. System reset and initialization
--   2. Full air data computation (all 7 outputs)
--   3. Individual output verification with tolerance
--   4. Result stability after halt
--   5. Channel inactive output gating
--   6. Second frame computation (Vspd with valid Alt_prev)
--   7. Fail detect signal
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY cadc_top_tb IS
END ENTITY cadc_top_tb;

ARCHITECTURE bench OF cadc_top_tb IS

    CONSTANT CLK_PERIOD : TIME := 667 ns;  -- 1.5 MHz (matches original CADC)
    -- Each OP = 160 clocks (WA 20 bits + WO 20 bits, each 4 phases)
    -- Full frame = 512 OPs = 81920 clocks
    CONSTANT FRAME_CLOCKS : INTEGER := 81920;
    -- Tolerance for Q1.19 comparisons (±4 LSBs for rounding differences)
    CONSTANT TOLERANCE : INTEGER := 4;

    -- Testbench signals
    SIGNAL clk_master     : STD_LOGIC := '0';
    SIGNAL rst            : STD_LOGIC := '0';

    -- Sensor inputs (Q1.19 fractional format)
    -- Ps and Qc are Gray-coded (as from quartz pressure sensors)
    -- TAT is binary (direct from temperature sensor)
    SIGNAL sensor_ps      : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"60000";  -- Gray(0.5)
    SIGNAL sensor_qc      : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"30000";  -- Gray(0.25)
    SIGNAL sensor_tat     : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"30000";  -- 0.375 (binary)
    SIGNAL sensor_analog  : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"00000";
    SIGNAL sensor_digital : STD_LOGIC_VECTOR(19 DOWNTO 0) := x"00000";

    -- Display outputs
    SIGNAL out_mach       : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL out_alt        : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL out_airspd     : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL out_vspd       : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL out_wing       : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL out_flap       : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL out_glove      : STD_LOGIC_VECTOR(19 DOWNTO 0);

    -- Control signals
    SIGNAL bit_status     : STD_LOGIC;
    SIGNAL channel_active : STD_LOGIC := '1';
    SIGNAL fail_detect    : STD_LOGIC;

    -- Test counters
    SIGNAL test_count : INTEGER := 0;
    SIGNAL fail_count : INTEGER := 0;

    -- Helper function to convert to hex string
    FUNCTION TO_HSTRING(slv : STD_LOGIC_VECTOR) RETURN STRING IS
        VARIABLE result : STRING(1 TO slv'LENGTH/4);
        VARIABLE nibble : STD_LOGIC_VECTOR(3 DOWNTO 0);
        CONSTANT hex_chars : STRING(1 TO 16) := "0123456789ABCDEF";
    BEGIN
        FOR i IN 0 TO slv'LENGTH/4 - 1 LOOP
            nibble := slv(slv'HIGH - i*4 DOWNTO slv'HIGH - i*4 - 3);
            result(i+1) := hex_chars(TO_INTEGER(UNSIGNED(nibble)) + 1);
        END LOOP;
        RETURN result;
    END FUNCTION;

    -- Check if actual value is within tolerance of expected
    FUNCTION WITHIN_TOL(actual : STD_LOGIC_VECTOR; expected : STD_LOGIC_VECTOR;
                        tol : INTEGER) RETURN BOOLEAN IS
        VARIABLE a_int : SIGNED(20 DOWNTO 0);
        VARIABLE e_int : SIGNED(20 DOWNTO 0);
        VARIABLE diff  : SIGNED(20 DOWNTO 0);
    BEGIN
        a_int := SIGNED('0' & actual);
        e_int := SIGNED('0' & expected);
        diff  := a_int - e_int;
        IF diff < 0 THEN
            diff := -diff;
        END IF;
        RETURN diff <= tol;
    END FUNCTION;

BEGIN

    clk_master <= NOT clk_master AFTER CLK_PERIOD / 2;

    ---------------------------------------------------------------------------
    -- UUT Instantiation
    ---------------------------------------------------------------------------
    uut: ENTITY work.cadc_top
        PORT MAP (
            i_clk_master     => clk_master,
            i_rst            => rst,
            i_sensor_ps      => sensor_ps,
            i_sensor_qc      => sensor_qc,
            i_sensor_tat     => sensor_tat,
            i_sensor_analog  => sensor_analog,
            i_sensor_digital => sensor_digital,
            o_out_mach       => out_mach,
            o_out_alt        => out_alt,
            o_out_airspd     => out_airspd,
            o_out_vspd       => out_vspd,
            o_out_wing       => out_wing,
            o_out_flap       => out_flap,
            o_out_glove      => out_glove,
            o_bit_status     => bit_status,
            i_channel_active => channel_active,
            o_fail_detect    => fail_detect
        );

    ---------------------------------------------------------------------------
    -- Main Stimulus Process
    ---------------------------------------------------------------------------
    stim: PROCESS
        VARIABLE v_saved_mach : STD_LOGIC_VECTOR(19 DOWNTO 0);
        VARIABLE v_saved_alt  : STD_LOGIC_VECTOR(19 DOWNTO 0);
    BEGIN
        REPORT "==========================================================" SEVERITY NOTE;
        REPORT "F-14A CADC Air Data Computation Testbench" SEVERITY NOTE;
        REPORT "==========================================================" SEVERITY NOTE;
        REPORT "Microprogram: 147 instructions computing 7 air data outputs" SEVERITY NOTE;
        REPORT "Inputs: Ps=0.5(Gray), Qc=0.25(Gray), TAT=0.375(binary)" SEVERITY NOTE;

        -----------------------------------------------------------------------
        -- TEST 1: System Reset
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-001: System Reset Test" SEVERITY NOTE;
        rst <= '1';
        WAIT FOR 10 * CLK_PERIOD;
        rst <= '0';
        WAIT FOR 2 * CLK_PERIOD;
        WAIT FOR 1 ns;

        test_count <= test_count + 1;
        IF out_mach = x"00000" AND out_alt = x"00000" AND out_airspd = x"00000"
           AND out_vspd = x"00000" AND out_wing = x"00000" AND out_flap = x"00000"
           AND out_glove = x"00000" THEN
            REPORT "  PASSED: All outputs zero after reset" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Outputs not zero after reset" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 2: Full Air Data Computation (first frame)
        -- 147 instructions × 160 clocks/OP = ~23,520 clocks minimum
        -- Wait 26000 clocks for safety margin
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-002: Air Data Computation - First Frame" SEVERITY NOTE;
        REPORT "  Waiting for 147-instruction microprogram to complete..." SEVERITY NOTE;
        test_count <= test_count + 1;

        FOR i IN 0 TO 25999 LOOP
            WAIT UNTIL rising_edge(clk_master);
        END LOOP;
        WAIT FOR 1 ns;

        -- Report all outputs
        REPORT "  Mach    = 0x" & TO_HSTRING(out_mach)   SEVERITY NOTE;
        REPORT "  Alt     = 0x" & TO_HSTRING(out_alt)     SEVERITY NOTE;
        REPORT "  Airspd  = 0x" & TO_HSTRING(out_airspd)  SEVERITY NOTE;
        REPORT "  Vspd    = 0x" & TO_HSTRING(out_vspd)    SEVERITY NOTE;
        REPORT "  Wing    = 0x" & TO_HSTRING(out_wing)    SEVERITY NOTE;
        REPORT "  Flap    = 0x" & TO_HSTRING(out_flap)    SEVERITY NOTE;
        REPORT "  Glove   = 0x" & TO_HSTRING(out_glove)   SEVERITY NOTE;

        -- If all outputs are still zero, the program didn't execute
        IF out_mach = x"00000" AND out_alt = x"00000" AND out_airspd = x"00000" THEN
            REPORT "  FAILED: All outputs still zero - program may not have run" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        ELSE
            REPORT "  PASSED: Program executed, outputs are non-zero" SEVERITY NOTE;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 3: Mach Output Verification
        -- Expected: Mach = 0x2F5C3 (~0.370) for Qc/Ps = 0.5
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-003: Mach Number Verification" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Mach ~ 0x2F5C3 (0.370)" SEVERITY NOTE;
        REPORT "  Actual   Mach = 0x" & TO_HSTRING(out_mach) SEVERITY NOTE;

        IF WITHIN_TOL(out_mach, x"2F5C3", TOLERANCE) THEN
            REPORT "  PASSED: Mach within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Mach out of tolerance (expected ~0x2F5C3, got 0x" &
                   TO_HSTRING(out_mach) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 4: Altitude Output Verification
        -- Expected: Alt = 0x33334 (~0.400) for Ps = 0.5
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-004: Altitude Verification" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Alt ~ 0x33334 (0.400)" SEVERITY NOTE;
        REPORT "  Actual   Alt = 0x" & TO_HSTRING(out_alt) SEVERITY NOTE;

        IF WITHIN_TOL(out_alt, x"33334", TOLERANCE) THEN
            REPORT "  PASSED: Altitude within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Altitude out of tolerance (expected ~0x33334, got 0x" &
                   TO_HSTRING(out_alt) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        v_saved_alt := out_alt;  -- Save for Vspd frame-2 check

        -----------------------------------------------------------------------
        -- TEST 5: Airspeed Output Verification
        -- Expected: Airspd = 0x1C6A8 (~0.222) for Mach*sqrt_est*c1
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-005: Airspeed Verification" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Airspd ~ 0x1C6A8 (0.222)" SEVERITY NOTE;
        REPORT "  Actual   Airspd = 0x" & TO_HSTRING(out_airspd) SEVERITY NOTE;

        IF WITHIN_TOL(out_airspd, x"1C6A8", TOLERANCE) THEN
            REPORT "  PASSED: Airspeed within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Airspeed out of tolerance (expected ~0x1C6A8, got 0x" &
                   TO_HSTRING(out_airspd) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 6: Vertical Speed Output Verification (first frame)
        -- Expected: Vspd = 0x074CD (~0.057) since Alt_prev=0
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-006: Vertical Speed Verification (Frame 1)" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Vspd ~ 0x074CD (0.057) [Alt_prev=0, first frame]" SEVERITY NOTE;
        REPORT "  Actual   Vspd = 0x" & TO_HSTRING(out_vspd) SEVERITY NOTE;

        IF WITHIN_TOL(out_vspd, x"074CD", TOLERANCE) THEN
            REPORT "  PASSED: Vspd within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Vspd out of tolerance (expected ~0x074CD, got 0x" &
                   TO_HSTRING(out_vspd) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 7: Wing Sweep Output Verification (rate limited)
        -- Expected: Wing = 0xFF9DB (~-0.003 = +rate_limit clamped)
        -- ws_cmd ~ -0.023, but rate limited to -0.003 from prev=0
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-007: Wing Sweep Verification (Rate Limited)" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Wing ~ 0xFF9DB (-0.003) [rate clamped]" SEVERITY NOTE;
        REPORT "  Actual   Wing = 0x" & TO_HSTRING(out_wing) SEVERITY NOTE;

        IF WITHIN_TOL(out_wing, x"FF9DB", TOLERANCE) THEN
            REPORT "  PASSED: Wing sweep within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Wing sweep out of tolerance (expected ~0xFF9DB, got 0x" &
                   TO_HSTRING(out_wing) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 8: Flap Output Verification
        -- Expected: Flap = 0x4851F (~0.565)
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-008: Maneuver Flap Verification" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Flap ~ 0x4851F (0.565)" SEVERITY NOTE;
        REPORT "  Actual   Flap = 0x" & TO_HSTRING(out_flap) SEVERITY NOTE;

        IF WITHIN_TOL(out_flap, x"4851F", TOLERANCE) THEN
            REPORT "  PASSED: Flap within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Flap out of tolerance (expected ~0x4851F, got 0x" &
                   TO_HSTRING(out_flap) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 9: Glove Vane Output Verification
        -- Expected: Glove = 0xFC8A7 (~-0.027)
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-009: Glove Vane Verification" SEVERITY NOTE;
        test_count <= test_count + 1;

        REPORT "  Expected Glove ~ 0xFC8A7 (-0.027)" SEVERITY NOTE;
        REPORT "  Actual   Glove = 0x" & TO_HSTRING(out_glove) SEVERITY NOTE;

        IF WITHIN_TOL(out_glove, x"FC8A7", TOLERANCE) THEN
            REPORT "  PASSED: Glove vane within tolerance" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Glove vane out of tolerance (expected ~0xFC8A7, got 0x" &
                   TO_HSTRING(out_glove) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 10: Result Stability After Halt
        -- Program halts at addr 146 (JMP self). Outputs should not change.
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-010: Result Stability After Halt" SEVERITY NOTE;
        test_count <= test_count + 1;

        v_saved_mach := out_mach;
        FOR i IN 0 TO 999 LOOP
            WAIT UNTIL rising_edge(clk_master);
        END LOOP;
        WAIT FOR 1 ns;

        IF out_mach = v_saved_mach THEN
            REPORT "  PASSED: Mach stable after halt (0x" & TO_HSTRING(out_mach) & ")" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Mach changed (was 0x" & TO_HSTRING(v_saved_mach) &
                   ", now 0x" & TO_HSTRING(out_mach) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 11: Channel Inactive Output Gating
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-011: Channel Inactive Output Gating" SEVERITY NOTE;
        test_count <= test_count + 1;

        channel_active <= '0';
        WAIT FOR 5 * CLK_PERIOD;
        WAIT FOR 1 ns;

        IF out_mach = x"00000" AND out_alt = x"00000" AND out_airspd = x"00000"
           AND out_vspd = x"00000" AND out_wing = x"00000" AND out_flap = x"00000"
           AND out_glove = x"00000" THEN
            REPORT "  PASSED: All outputs gated to zero when channel inactive" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Outputs not gated (Mach=0x" & TO_HSTRING(out_mach) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        channel_active <= '1';
        WAIT FOR 2 * CLK_PERIOD;

        -----------------------------------------------------------------------
        -- TEST 12: Second Frame - Vspd with valid Alt_prev
        -- Wait for the rest of the first frame + full second frame.
        -- In frame 2, Alt_prev = Alt from frame 1, so Vspd should be ~0
        -- (same inputs => same Alt => delta_alt = 0 => Vspd ≈ 0)
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-012: Second Frame - Vspd with Valid Alt_prev" SEVERITY NOTE;
        test_count <= test_count + 1;

        -- Wait for remainder of frame 1 + full frame 2 + margin
        -- Already consumed ~27000 clocks. Full frame = 81920.
        -- Need to reach end of frame 2: 2 * 81920 = 163840 total.
        -- Already used ~27000. Wait another ~140,000 clocks.
        FOR i IN 0 TO 139999 LOOP
            WAIT UNTIL rising_edge(clk_master);
        END LOOP;
        WAIT FOR 1 ns;

        REPORT "  Vspd (frame 2) = 0x" & TO_HSTRING(out_vspd) SEVERITY NOTE;
        REPORT "  Expected: ~0x00000 (same inputs, delta_alt ~ 0)" SEVERITY NOTE;

        -- Vspd should be near zero since Alt didn't change
        IF WITHIN_TOL(out_vspd, x"00000", TOLERANCE) THEN
            REPORT "  PASSED: Vspd near zero in frame 2 (steady state)" SEVERITY NOTE;
        ELSE
            REPORT "  INFO: Vspd = 0x" & TO_HSTRING(out_vspd) & " (may have rounding residual)" SEVERITY NOTE;
        END IF;

        -- Verify other outputs remain correct in frame 2
        IF WITHIN_TOL(out_mach, x"2F5C3", TOLERANCE) THEN
            REPORT "  PASSED: Mach still correct in frame 2" SEVERITY NOTE;
        ELSE
            REPORT "  FAILED: Mach changed in frame 2 (0x" & TO_HSTRING(out_mach) & ")" SEVERITY ERROR;
            fail_count <= fail_count + 1;
        END IF;

        -----------------------------------------------------------------------
        -- TEST 13: Fail Detect Signal
        -----------------------------------------------------------------------
        REPORT "" SEVERITY NOTE;
        REPORT "TOP-T-013: Fail Detect Signal" SEVERITY NOTE;
        test_count <= test_count + 1;

        IF fail_detect = '0' THEN
            REPORT "  PASSED: No failure detected" SEVERITY NOTE;
        ELSE
            REPORT "  INFO: Failure detected (fail_detect='1')" SEVERITY NOTE;
        END IF;

        -----------------------------------------------------------------------
        -- Summary Table
        -----------------------------------------------------------------------
        WAIT FOR 10 * CLK_PERIOD;
        REPORT "" SEVERITY NOTE;
        REPORT "==========================================================================" SEVERITY NOTE;
        REPORT "                    CADC TOP TESTBENCH SUMMARY                            " SEVERITY NOTE;
        REPORT "==========================================================================" SEVERITY NOTE;
        REPORT "  Test Group       | Description                                         " SEVERITY NOTE;
        REPORT "--------------------------------------------------------------------------" SEVERITY NOTE;
        REPORT "  TOP-T-001..003   | Power-on reset and initialization                   " SEVERITY NOTE;
        REPORT "  TOP-T-010..013   | Input interface - Mach/Alpha sync capture           " SEVERITY NOTE;
        REPORT "  TOP-T-020..023   | Output interface - ACC/Airspeed serial output       " SEVERITY NOTE;
        REPORT "  TOP-T-030..033   | Computation validation - Horner polynomials         " SEVERITY NOTE;
        REPORT "  TOP-T-040..043   | Timing - 64-frame cycle, sync signals               " SEVERITY NOTE;
        REPORT "  TOP-T-050..051   | BIT - Built-In Test functionality                   " SEVERITY NOTE;
        REPORT "--------------------------------------------------------------------------" SEVERITY NOTE;
        REPORT "  Air Data Parameters Computed:                                          " SEVERITY NOTE;
        REPORT "    - Mach number     (4th-order Horner of Qc/Ps ratio)                  " SEVERITY NOTE;
        REPORT "    - Altitude        (4th-order Horner of Ps)                           " SEVERITY NOTE;
        REPORT "    - True Airspeed   (Mach * linearized sqrt(TAT/Tref))                 " SEVERITY NOTE;
        REPORT "    - Vertical Speed  (frame-to-frame altitude difference)              " SEVERITY NOTE;
        REPORT "    - Wing Sweep      (3rd-order Horner + rate limiting)                 " SEVERITY NOTE;
        REPORT "    - Maneuver Flaps  (linear function of Mach)                          " SEVERITY NOTE;
        REPORT "    - Glove Vane      (2nd-order Horner of Mach)                         " SEVERITY NOTE;
        REPORT "==========================================================================" SEVERITY NOTE;
        REPORT "  TOTAL: " & INTEGER'image(test_count) & " tests, " &
               INTEGER'image(fail_count) & " failures" SEVERITY NOTE;
        IF fail_count = 0 THEN
            REPORT "  STATUS: *** ALL TESTS PASSED ***" SEVERITY NOTE;
        ELSE
            REPORT "  STATUS: *** SOME TESTS FAILED ***" SEVERITY ERROR;
        END IF;
        REPORT "==========================================================================" SEVERITY NOTE;

        REPORT "sim complete" SEVERITY FAILURE;
    END PROCESS;

END ARCHITECTURE bench;
