# =============================================================================
# SLF (Special Logic Function / ALU) - Questa Visualizer Wave Configuration
# F-14A CADC - Bit-Serial ALU Unit
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Control
# =============================================================================
add wave -noupdate -divider {Clock & Control}
add wave -noupdate -label "CLK" /slf_tb/s_clk
add wave -noupdate -label "RST" /slf_tb/s_rst
add wave -noupdate -label "PHI2" /slf_tb/s_phi2
add wave -noupdate -label "T0" /slf_tb/s_t0

# =============================================================================
# ALU Control Signals
# =============================================================================
add wave -noupdate -divider {ALU Control}
add wave -noupdate -label "ALU Op" -radix hexadecimal -color Cyan /slf_tb/s_alu_op
add wave -noupdate -label "ACC Write En" -color Green /slf_tb/s_acc_write_en
add wave -noupdate -label "TMP Write En" -color Yellow /slf_tb/s_tmp_write_en
add wave -noupdate -label "Flags Write En" /slf_tb/s_flags_write_en

# =============================================================================
# Serial Data Paths
# =============================================================================
add wave -noupdate -divider {Serial Data}
add wave -noupdate -label "ACC In Bit" -color Gold /slf_tb/s_acc_in_bit
add wave -noupdate -label "ACC Out Bit" -color Cyan /slf_tb/s_acc_out_bit
add wave -noupdate -label "TMP Out Bit" -color Orange /slf_tb/s_tmp_out_bit
add wave -noupdate -label "ALU Result Bit" -color Green /slf_tb/s_alu_result_bit

# =============================================================================
# Captured Results
# =============================================================================
add wave -noupdate -divider {Captured Results}
add wave -noupdate -label "ACC Out" -radix hexadecimal -color Cyan /slf_tb/s_acc_out
add wave -noupdate -label "TMP Out" -radix hexadecimal -color Orange /slf_tb/s_tmp_out
add wave -noupdate -label "ALU Result" -radix hexadecimal -color Green /slf_tb/s_alu_result

# =============================================================================
# Status Flags
# =============================================================================
add wave -noupdate -divider {Flags}
add wave -noupdate -label "Zero (Z)" -color Yellow /slf_tb/s_flag_z
add wave -noupdate -label "Negative (N)" -color Magenta /slf_tb/s_flag_n
add wave -noupdate -label "Carry (C)" -color Red /slf_tb/s_flag_c

# =============================================================================
# Internal Registers
# =============================================================================
add wave -noupdate -divider {Internal Registers}
add wave -noupdate -label "ACC Register" -radix hexadecimal /slf_tb/uut/s_acc_reg
add wave -noupdate -label "TMP Register" -radix hexadecimal /slf_tb/uut/s_tmp_reg
add wave -noupdate -label "Bit Counter" -radix unsigned /slf_tb/uut/s_bit_cnt

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /slf_tb/s_test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /slf_tb/s_fail_count

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
