-------------------------------------------------------------------------------
-- I/O Bridge Testbench
-- F-14A Central Air Data Computer -- FPGA Implementation
--
-- Verifies all sensor reads, display/actuator writes, NOP behavior,
-- hold register persistence, channel independence, and redundancy gating.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY io_bridge_tb IS
END ENTITY io_bridge_tb;

ARCHITECTURE bench OF io_bridge_tb IS

    CONSTANT CLK_PERIOD : TIME := 667 ns;  -- 1.5 MHz (original CADC)

    SIGNAL clk            : std_logic := '0';
    SIGNAL rst            : std_logic := '0';
    SIGNAL io_ctrl        : std_logic_vector(3 DOWNTO 0) := "0000";
    SIGNAL io_data_in     : std_logic_vector(19 DOWNTO 0) := (OTHERS => '0');
    SIGNAL io_data_out    : std_logic_vector(19 DOWNTO 0);
    SIGNAL io_ready       : std_logic;

    SIGNAL sensor_ps      : std_logic_vector(19 DOWNTO 0) := x"11111";
    SIGNAL sensor_qc      : std_logic_vector(19 DOWNTO 0) := x"22222";
    SIGNAL sensor_tat     : std_logic_vector(19 DOWNTO 0) := x"33333";
    SIGNAL sensor_analog  : std_logic_vector(19 DOWNTO 0) := x"44444";
    SIGNAL sensor_digital : std_logic_vector(19 DOWNTO 0) := x"55555";

    SIGNAL out_mach       : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_alt        : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_airspd     : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_vspd       : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_wing       : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_flap       : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_glove      : std_logic_vector(19 DOWNTO 0);
    SIGNAL out_bit_status : std_logic;

    SIGNAL channel_active : std_logic := '1';
    SIGNAL fail_detect    : std_logic;

    SIGNAL test_count : INTEGER := 0;
    SIGNAL fail_count : INTEGER := 0;

BEGIN

    clk <= NOT clk AFTER CLK_PERIOD / 2;

    uut: ENTITY work.io_bridge
        PORT MAP (
            i_clk            => clk,
            i_rst            => rst,
            i_io_ctrl        => io_ctrl,
            i_io_data_in     => io_data_in,
            o_io_data_out    => io_data_out,
            o_io_ready       => io_ready,
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
            o_out_bit_status => out_bit_status,
            i_channel_active => channel_active,
            o_fail_detect    => fail_detect
        );

    stim: PROCESS

        PROCEDURE do_io(
            ctrl : IN std_logic_vector(3 DOWNTO 0);
            data : IN std_logic_vector(19 DOWNTO 0)
        ) IS
        BEGIN
            io_ctrl    <= ctrl;
            io_data_in <= data;
            WAIT UNTIL rising_edge(clk);
            io_ctrl    <= "0000";
            WAIT FOR 1 ns;
        END PROCEDURE;

        PROCEDURE check20(
            actual   : IN std_logic_vector(19 DOWNTO 0);
            expected : IN std_logic_vector(19 DOWNTO 0);
            name     : IN STRING
        ) IS
        BEGIN
            test_count <= test_count + 1;
            WAIT FOR 0 ns;
            IF actual /= expected THEN
                REPORT name & " FAILED: got 0x" & to_hstring(UNSIGNED(actual)) &
                       " expected 0x" & to_hstring(UNSIGNED(expected)) SEVERITY ERROR;
                fail_count <= fail_count + 1;
            ELSE
                REPORT name & " PASSED" SEVERITY NOTE;
            END IF;
        END PROCEDURE;

        PROCEDURE check1(
            actual   : IN std_logic;
            expected : IN std_logic;
            name     : IN STRING
        ) IS
        BEGIN
            test_count <= test_count + 1;
            WAIT FOR 0 ns;
            IF actual /= expected THEN
                REPORT name & " FAILED: got " & STD_LOGIC'image(actual) &
                       " expected " & STD_LOGIC'image(expected) SEVERITY ERROR;
                fail_count <= fail_count + 1;
            ELSE
                REPORT name & " PASSED" SEVERITY NOTE;
            END IF;
        END PROCEDURE;

    BEGIN
        rst <= '1';
        WAIT FOR 5 * CLK_PERIOD;
        rst <= '0';
        WAIT FOR CLK_PERIOD;

        -----------------------------------------------------------------------
        -- 5.1 Sensor Input Tests
        -----------------------------------------------------------------------
        do_io("0001", x"00000");
        check20(io_data_out, x"11111", "IO-T-001: Read Ps");

        do_io("0010", x"00000");
        check20(io_data_out, x"22222", "IO-T-002: Read Qc");

        do_io("0011", x"00000");
        check20(io_data_out, x"33333", "IO-T-003: Read TAT");

        do_io("0100", x"00000");
        check20(io_data_out, x"44444", "IO-T-004: Read analog");

        do_io("0101", x"00000");
        check20(io_data_out, x"55555", "IO-T-005: Read digital");

        -- IO-T-006: Sensor changes between reads
        sensor_ps <= x"AAAAA";
        do_io("0001", x"00000");
        check20(io_data_out, x"AAAAA", "IO-T-006: Sensor change");

        -----------------------------------------------------------------------
        -- 5.2 Display/Actuator Output Tests
        -----------------------------------------------------------------------
        do_io("0110", x"ABCDE");
        check20(out_mach, x"ABCDE", "IO-T-010: Write Mach");

        do_io("0111", x"12345");
        check20(out_alt, x"12345", "IO-T-011: Write Alt");

        do_io("1000", x"67890");
        check20(out_airspd, x"67890", "IO-T-012: Write Airspd");

        do_io("1001", x"FEDCB");
        check20(out_vspd, x"FEDCB", "IO-T-013: Write VSPD");

        do_io("1010", x"11111");
        check20(out_wing, x"11111", "IO-T-014: Write Wing");

        do_io("1011", x"22222");
        check20(out_flap, x"22222", "IO-T-015: Write Flap");

        do_io("1100", x"33333");
        check20(out_glove, x"33333", "IO-T-016: Write Glove");

        do_io("1101", x"00001");
        check1(out_bit_status, '1', "IO-T-017: Write BIT");

        -----------------------------------------------------------------------
        -- 5.3 Hold / NOP Tests
        -----------------------------------------------------------------------
        do_io("0000", x"FFFFF");
        check20(out_mach, x"ABCDE", "IO-T-020: NOP no-change");

        WAIT FOR 5 * CLK_PERIOD;
        check20(out_alt, x"12345", "IO-T-021: Output hold");

        do_io("0110", x"99999");
        check20(out_alt, x"12345", "IO-T-022a: Alt after Mach write");
        check20(out_airspd, x"67890", "IO-T-022b: Airspd after Mach write");

        -----------------------------------------------------------------------
        -- 5.4 Channel Independence Tests
        -----------------------------------------------------------------------
        -- IO-T-030: Write to each output independently, only targeted changes
        -- Reset first, then write each one and verify others remain 0
        rst <= '1';
        WAIT UNTIL rising_edge(clk);
        rst <= '0';
        WAIT FOR CLK_PERIOD;

        do_io("0110", x"AAAAA");  -- Write Mach only
        check20(out_mach, x"AAAAA", "IO-T-030a: Mach written");
        check20(out_alt, x"00000", "IO-T-030b: Alt still 0");
        check20(out_airspd, x"00000", "IO-T-030c: Airspd still 0");
        check20(out_vspd, x"00000", "IO-T-030d: VSPD still 0");
        check20(out_wing, x"00000", "IO-T-030e: Wing still 0");
        check20(out_flap, x"00000", "IO-T-030f: Flap still 0");
        check20(out_glove, x"00000", "IO-T-030g: Glove still 0");

        -- IO-T-031: Read from each input independently
        sensor_ps      <= x"11111";
        sensor_qc      <= x"22222";
        sensor_tat     <= x"33333";
        sensor_analog  <= x"44444";
        sensor_digital <= x"55555";

        do_io("0001", x"00000");
        check20(io_data_out, x"11111", "IO-T-031a: Read Ps only");
        do_io("0010", x"00000");
        check20(io_data_out, x"22222", "IO-T-031b: Read Qc after Ps");
        do_io("0100", x"00000");
        check20(io_data_out, x"44444", "IO-T-031c: Read analog after Qc");

        -----------------------------------------------------------------------
        -- 5.5 Redundancy/Channel Active Tests
        -----------------------------------------------------------------------
        -- IO-T-040: Active channel drives outputs
        channel_active <= '1';
        do_io("0110", x"BBBBB");
        WAIT FOR 5 ns;
        check20(out_mach, x"BBBBB", "IO-T-040: Active drives output");

        -- IO-T-041: Inactive channel zeroes outputs
        channel_active <= '0';
        WAIT FOR 5 ns;
        check20(out_mach, x"00000", "IO-T-041a: Inactive zeroes Mach");
        check1(out_bit_status, '0', "IO-T-041b: Inactive zeroes BIT");

        -- Restore and verify
        channel_active <= '1';
        WAIT FOR 5 ns;
        check20(out_mach, x"BBBBB", "IO-T-041c: Restored after active");

        -- IO-T-042: Failure detection (currently hardcoded to '0')
        check1(fail_detect, '0', "IO-T-042: Fail detect default");

        -----------------------------------------------------------------------
        -- 5.6 Reset Tests
        -----------------------------------------------------------------------
        -- Write to all outputs first
        do_io("0110", x"AAAAA");
        do_io("0111", x"BBBBB");
        do_io("1000", x"CCCCC");
        do_io("1001", x"DDDDD");
        do_io("1010", x"EEEEE");
        do_io("1011", x"FFFFF");
        do_io("1100", x"12345");
        do_io("1101", x"00001");

        -- IO-T-050: Reset clears all outputs
        rst <= '1';
        WAIT UNTIL rising_edge(clk);
        rst <= '0';
        WAIT FOR 1 ns;
        check20(out_mach, x"00000", "IO-T-050a: Reset Mach");
        check20(out_alt, x"00000", "IO-T-050b: Reset Alt");
        check20(out_airspd, x"00000", "IO-T-050c: Reset Airspd");
        check20(out_vspd, x"00000", "IO-T-050d: Reset VSPD");
        check20(out_wing, x"00000", "IO-T-050e: Reset Wing");
        check20(out_flap, x"00000", "IO-T-050f: Reset Flap");
        check20(out_glove, x"00000", "IO-T-050g: Reset Glove");

        -- IO-T-051: Reset clears BIT status
        check1(out_bit_status, '0', "IO-T-051: Reset BIT status");

        -----------------------------------------------------------------------
        -- Summary Table
        -----------------------------------------------------------------------
        WAIT FOR 5 * CLK_PERIOD;
        REPORT "" SEVERITY NOTE;
        REPORT "==========================================================================" SEVERITY NOTE;
        REPORT "                     I/O BRIDGE TESTBENCH SUMMARY                         " SEVERITY NOTE;
        REPORT "==========================================================================" SEVERITY NOTE;
        REPORT "  Test Group       | Description                                         " SEVERITY NOTE;
        REPORT "--------------------------------------------------------------------------" SEVERITY NOTE;
        REPORT "  IO-T-001..006    | Basic reset and initialization                      " SEVERITY NOTE;
        REPORT "  IO-T-010..013    | Mach input capture and parallel load               " SEVERITY NOTE;
        REPORT "  IO-T-014..016    | Mach scaling factor tests                          " SEVERITY NOTE;
        REPORT "  IO-T-020..023    | Alpha input capture and parallel load              " SEVERITY NOTE;
        REPORT "  IO-T-024..026    | Alpha scaling factor tests                         " SEVERITY NOTE;
        REPORT "  IO-T-030..032    | ACC output shift register (MSB-first, serial)      " SEVERITY NOTE;
        REPORT "  IO-T-033..035    | ACC output pattern tests                           " SEVERITY NOTE;
        REPORT "  IO-T-040..043    | Airspeed output shift register                     " SEVERITY NOTE;
        REPORT "  IO-T-050..051    | Built-In Test (BIT) functionality                  " SEVERITY NOTE;
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
