# =============================================================================
# Timing Generator - Questa Visualizer Wave Configuration
# F-14A CADC - Master Timing and Synchronization
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Reset
# =============================================================================
add wave -noupdate -divider {Clock & Reset}
add wave -noupdate -label "CLK" /timing_generator_tb/s_clk
add wave -noupdate -label "RST" /timing_generator_tb/s_rst
add wave -noupdate -label "CLK Enable" /timing_generator_tb/s_clk_en

# =============================================================================
# Counters
# =============================================================================
add wave -noupdate -divider {Counters}
add wave -noupdate -label "Bit Counter" -radix unsigned -color Cyan /timing_generator_tb/s_bit_cnt
add wave -noupdate -label "Frame Counter" -radix unsigned -color Green /timing_generator_tb/s_frame_cnt

# =============================================================================
# Timing Pulses
# =============================================================================
add wave -noupdate -divider {Timing Pulses}
add wave -noupdate -label "PHI2" -color Gold /timing_generator_tb/s_phi2
add wave -noupdate -label "T0 (Bit Zero)" -color Yellow /timing_generator_tb/s_t0
add wave -noupdate -label "T19 (End Word)" -color Orange /timing_generator_tb/s_t19
add wave -noupdate -label "Sync" -color Magenta /timing_generator_tb/s_sync

# =============================================================================
# Word Type
# =============================================================================
add wave -noupdate -divider {Word Type}
add wave -noupdate -label "Word Type" -radix unsigned -color Cyan /timing_generator_tb/s_word_type

# =============================================================================
# Internal State
# =============================================================================
add wave -noupdate -divider {Internal State}
add wave -noupdate -label "Int Bit Cnt" -radix unsigned /timing_generator_tb/uut/s_bit_counter
add wave -noupdate -label "Int Frame Cnt" -radix unsigned /timing_generator_tb/uut/s_frame_counter

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /timing_generator_tb/s_test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /timing_generator_tb/s_fail_count

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

WaveRestoreZoom {0 ns} {5000 ns}
