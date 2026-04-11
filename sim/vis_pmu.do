# =============================================================================
# PMU (Parallel Multiplier Unit) - Questa Visualizer Wave Configuration
# F-14A CADC - Bit-Serial Multiplication Unit
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Timing Signals
# =============================================================================
add wave -noupdate -divider {Clock & Timing}
add wave -noupdate -label "CLK" /pmu_tb/clk
add wave -noupdate -label "RST" /pmu_tb/rst
add wave -noupdate -label "PHI2" /pmu_tb/phi2
add wave -noupdate -label "WORD_TYPE" /pmu_tb/word_type
add wave -noupdate -label "T0" /pmu_tb/t0
add wave -noupdate -label "T19" /pmu_tb/t19

# =============================================================================
# Serial Interface (Bit-Serial I/O)
# =============================================================================
add wave -noupdate -divider {Serial Inputs}
add wave -noupdate -label "Multiplicand Bit" -color Gold /pmu_tb/multiplicand_bit
add wave -noupdate -label "Multiplier Bit" -color Orange /pmu_tb/multiplier_bit

add wave -noupdate -divider {Serial Outputs}
add wave -noupdate -label "Product Hi Bit" -color Cyan /pmu_tb/product_hi_bit
add wave -noupdate -label "Product Lo Bit" -color Green /pmu_tb/product_lo_bit

# =============================================================================
# Captured Results (Shift Registers)
# =============================================================================
add wave -noupdate -divider {Captured Results}
add wave -noupdate -label "Product Hi SR" -radix hexadecimal -color Cyan /pmu_tb/product_hi_sr
add wave -noupdate -label "Product Lo SR" -radix hexadecimal -color Green /pmu_tb/product_lo_sr

# =============================================================================
# Status Signals
# =============================================================================
add wave -noupdate -divider {Status}
add wave -noupdate -label "Busy" -color Yellow /pmu_tb/busy
add wave -noupdate -label "Overflow" -color Red /pmu_tb/overflow

# =============================================================================
# Internal State Machine
# =============================================================================
add wave -noupdate -divider {Internal State}
add wave -noupdate -label "State" /pmu_tb/uut/s_state
add wave -noupdate -label "Accumulator" -radix hexadecimal /pmu_tb/uut/s_accumulator
add wave -noupdate -label "Multiplicand Reg" -radix hexadecimal /pmu_tb/uut/s_multiplicand_reg
add wave -noupdate -label "Bit Counter" -radix unsigned /pmu_tb/uut/s_bit_cnt

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /pmu_tb/test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /pmu_tb/fail_count

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
