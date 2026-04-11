# =============================================================================
# PDU (Parallel Divider Unit) - Questa Visualizer Wave Configuration
# F-14A CADC - Bit-Serial Division Unit
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Timing Signals
# =============================================================================
add wave -noupdate -divider {Clock & Timing}
add wave -noupdate -label "CLK" /pdu_tb/clk
add wave -noupdate -label "RST" /pdu_tb/rst
add wave -noupdate -label "PHI2" /pdu_tb/phi2
add wave -noupdate -label "WORD_TYPE" /pdu_tb/word_type
add wave -noupdate -label "T0" /pdu_tb/t0
add wave -noupdate -label "T19" /pdu_tb/t19

# =============================================================================
# Serial Interface (Bit-Serial I/O)
# =============================================================================
add wave -noupdate -divider {Serial Inputs}
add wave -noupdate -label "Dividend Bit" -color Gold /pdu_tb/dividend_bit
add wave -noupdate -label "Divisor Bit" -color Orange /pdu_tb/divisor_bit

add wave -noupdate -divider {Serial Outputs}
add wave -noupdate -label "Quotient Bit" -color Cyan /pdu_tb/quotient_bit
add wave -noupdate -label "Remainder Bit" -color Green /pdu_tb/remainder_bit

# =============================================================================
# Captured Results (Shift Registers)
# =============================================================================
add wave -noupdate -divider {Captured Results}
add wave -noupdate -label "Quotient SR" -radix hexadecimal -color Cyan /pdu_tb/quotient_sr
add wave -noupdate -label "Remainder SR" -radix hexadecimal -color Green /pdu_tb/remainder_sr

# =============================================================================
# Status Signals
# =============================================================================
add wave -noupdate -divider {Status}
add wave -noupdate -label "Busy" -color Yellow /pdu_tb/busy
add wave -noupdate -label "Div By Zero" -color Red /pdu_tb/div_by_zero

# =============================================================================
# Internal State Machine
# =============================================================================
add wave -noupdate -divider {Internal State}
add wave -noupdate -label "State" /pdu_tb/uut/s_state
add wave -noupdate -label "Partial Rem" -radix hexadecimal /pdu_tb/uut/s_partial_rem
add wave -noupdate -label "Quotient Reg" -radix hexadecimal /pdu_tb/uut/s_quot_reg
add wave -noupdate -label "Bit Counter" -radix unsigned /pdu_tb/uut/s_bit_cnt

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /pdu_tb/test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /pdu_tb/fail_count

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
