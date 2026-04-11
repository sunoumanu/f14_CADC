# =============================================================================
# I/O Bridge - Questa Visualizer Wave Configuration
# F-14A CADC - Input/Output Interface with Bit-Serial Conversion
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Control
# =============================================================================
add wave -noupdate -divider {Clock & Control}
add wave -noupdate -label "CLK" /io_bridge_tb/clk
add wave -noupdate -label "RST" /io_bridge_tb/rst
add wave -noupdate -label "PHI2" /io_bridge_tb/phi2
add wave -noupdate -label "T0" /io_bridge_tb/t0

# =============================================================================
# Parallel Inputs (From Sensors)
# =============================================================================
add wave -noupdate -divider {Parallel Inputs}
add wave -noupdate -label "Mach In" -radix hexadecimal -color Gold /io_bridge_tb/in_mach
add wave -noupdate -label "Alpha In" -radix hexadecimal -color Orange /io_bridge_tb/in_alpha
add wave -noupdate -label "Load Enable" -color Green /io_bridge_tb/load_en

# =============================================================================
# Serial Interface (To CADC Core)
# =============================================================================
add wave -noupdate -divider {Serial Interface}
add wave -noupdate -label "Mach Serial Out" -color Cyan /io_bridge_tb/mach_serial_out
add wave -noupdate -label "Alpha Serial Out" -color Green /io_bridge_tb/alpha_serial_out
add wave -noupdate -label "ACC Serial In" -color Yellow /io_bridge_tb/acc_serial_in
add wave -noupdate -label "Airspeed Serial In" -color Magenta /io_bridge_tb/airspeed_serial_in

# =============================================================================
# Parallel Outputs (To Aircraft Systems)
# =============================================================================
add wave -noupdate -divider {Parallel Outputs}
add wave -noupdate -label "ACC Out" -radix hexadecimal -color Cyan /io_bridge_tb/out_acc
add wave -noupdate -label "Airspeed Out" -radix hexadecimal -color Magenta /io_bridge_tb/out_airspeed

# =============================================================================
# BIT Status
# =============================================================================
add wave -noupdate -divider {BIT Status}
add wave -noupdate -label "BIT Enable" -color Yellow /io_bridge_tb/bit_enable
add wave -noupdate -label "BIT Status" -color Red /io_bridge_tb/out_bit_status

# =============================================================================
# Internal State
# =============================================================================
add wave -noupdate -divider {Internal State}
add wave -noupdate -label "Mach SR" -radix hexadecimal /io_bridge_tb/uut/s_mach_sr
add wave -noupdate -label "Alpha SR" -radix hexadecimal /io_bridge_tb/uut/s_alpha_sr
add wave -noupdate -label "ACC SR" -radix hexadecimal /io_bridge_tb/uut/s_acc_sr
add wave -noupdate -label "Airspeed SR" -radix hexadecimal /io_bridge_tb/uut/s_airspeed_sr
add wave -noupdate -label "Bit Counter" -radix unsigned /io_bridge_tb/uut/s_bit_cnt

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /io_bridge_tb/test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /io_bridge_tb/fail_count

# =============================================================================
# Wave Window Configuration
# =============================================================================
configure wave -namecolwidth 200
configure wave -valuecolwidth 150
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns

WaveRestoreZoom {0 ns} {2000 ns}
