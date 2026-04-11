# =============================================================================
# RAS (Random Access Storage) - Questa Visualizer Wave Configuration
# F-14A CADC - 32x18-bit Register File with Bit-Serial I/O
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Control
# =============================================================================
add wave -noupdate -divider {Clock & Control}
add wave -noupdate -label "CLK" /ras_tb/s_clk
add wave -noupdate -label "RST" /ras_tb/s_rst
add wave -noupdate -label "PHI2" /ras_tb/s_phi2
add wave -noupdate -label "T0" /ras_tb/s_t0

# =============================================================================
# Address and Write Enable
# =============================================================================
add wave -noupdate -divider {Address & Control}
add wave -noupdate -label "Address" -radix unsigned -color Cyan /ras_tb/s_addr
add wave -noupdate -label "Write Enable" -color Green /ras_tb/s_write_en

# =============================================================================
# Serial Data Interface
# =============================================================================
add wave -noupdate -divider {Serial Data}
add wave -noupdate -label "Data In Bit" -color Gold /ras_tb/s_data_in_bit
add wave -noupdate -label "Data Out Bit" -color Cyan /ras_tb/s_data_out_bit

# =============================================================================
# Captured Results
# =============================================================================
add wave -noupdate -divider {Captured Results}
add wave -noupdate -label "Data Out SR" -radix hexadecimal -color Cyan /ras_tb/s_data_out_sr
add wave -noupdate -label "Expected" -radix hexadecimal -color Yellow /ras_tb/s_expected

# =============================================================================
# Internal State
# =============================================================================
add wave -noupdate -divider {Internal State}
add wave -noupdate -label "Input SR" -radix hexadecimal /ras_tb/uut/s_input_sr
add wave -noupdate -label "Output SR" -radix hexadecimal /ras_tb/uut/s_output_sr
add wave -noupdate -label "Bit Counter" -radix unsigned /ras_tb/uut/s_bit_cnt

# =============================================================================
# Memory Array (First 8 locations)
# =============================================================================
add wave -noupdate -divider {Memory Array}
add wave -noupdate -label "MEM[0]" -radix hexadecimal /ras_tb/uut/s_mem(0)
add wave -noupdate -label "MEM[1]" -radix hexadecimal /ras_tb/uut/s_mem(1)
add wave -noupdate -label "MEM[2]" -radix hexadecimal /ras_tb/uut/s_mem(2)
add wave -noupdate -label "MEM[3]" -radix hexadecimal /ras_tb/uut/s_mem(3)
add wave -noupdate -label "MEM[4]" -radix hexadecimal /ras_tb/uut/s_mem(4)
add wave -noupdate -label "MEM[5]" -radix hexadecimal /ras_tb/uut/s_mem(5)
add wave -noupdate -label "MEM[6]" -radix hexadecimal /ras_tb/uut/s_mem(6)
add wave -noupdate -label "MEM[7]" -radix hexadecimal /ras_tb/uut/s_mem(7)

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /ras_tb/s_test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /ras_tb/s_fail_count

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

WaveRestoreZoom {0 ns} {1000 ns}
