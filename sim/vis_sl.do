# =============================================================================
# SL (Steering Logic / Multiplexers) - Questa Visualizer Wave Configuration
# F-14A CADC - Data Path Multiplexers
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Control
# =============================================================================
add wave -noupdate -divider {Clock & Control}
add wave -noupdate -label "CLK" /sl_tb/s_clk
add wave -noupdate -label "RST" /sl_tb/s_rst

# =============================================================================
# MUX Select Signals
# =============================================================================
add wave -noupdate -divider {MUX Selects}
add wave -noupdate -label "ACC Src Sel" -radix unsigned -color Cyan /sl_tb/s_sel_acc_src
add wave -noupdate -label "RAS Src Sel" -radix unsigned -color Green /sl_tb/s_sel_ras_src
add wave -noupdate -label "IO Src Sel" -radix unsigned -color Yellow /sl_tb/s_sel_io_src

# =============================================================================
# ACC MUX Inputs (8 sources)
# =============================================================================
add wave -noupdate -divider {ACC MUX Inputs}
add wave -noupdate -label "ACC In 0" -radix hexadecimal /sl_tb/s_acc_in_0
add wave -noupdate -label "ACC In 1" -radix hexadecimal /sl_tb/s_acc_in_1
add wave -noupdate -label "ACC In 2" -radix hexadecimal /sl_tb/s_acc_in_2
add wave -noupdate -label "ACC In 3" -radix hexadecimal /sl_tb/s_acc_in_3
add wave -noupdate -label "ACC In 4" -radix hexadecimal /sl_tb/s_acc_in_4
add wave -noupdate -label "ACC In 5" -radix hexadecimal /sl_tb/s_acc_in_5
add wave -noupdate -label "ACC In 6" -radix hexadecimal /sl_tb/s_acc_in_6
add wave -noupdate -label "ACC In 7" -radix hexadecimal /sl_tb/s_acc_in_7

# =============================================================================
# MUX Outputs
# =============================================================================
add wave -noupdate -divider {MUX Outputs}
add wave -noupdate -label "ACC Out" -radix hexadecimal -color Cyan /sl_tb/s_acc_out
add wave -noupdate -label "RAS Out" -radix hexadecimal -color Green /sl_tb/s_ras_out
add wave -noupdate -label "IO Out" -radix hexadecimal -color Yellow /sl_tb/s_io_out

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /sl_tb/test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /sl_tb/fail_count

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
