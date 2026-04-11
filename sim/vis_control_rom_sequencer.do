# =============================================================================
# Control ROM / Sequencer - Questa Visualizer Wave Configuration
# F-14A CADC - Microprogram Controller
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Control
# =============================================================================
add wave -noupdate -divider {Clock & Control}
add wave -noupdate -label "CLK" /control_rom_sequencer_tb/clk
add wave -noupdate -label "RST" /control_rom_sequencer_tb/rst
add wave -noupdate -label "Enable" /control_rom_sequencer_tb/enable

# =============================================================================
# Program Counter
# =============================================================================
add wave -noupdate -divider {Program Counter}
add wave -noupdate -label "PC" -radix unsigned -color Cyan /control_rom_sequencer_tb/s_pc
add wave -noupdate -label "Next PC" -radix unsigned -color Green /control_rom_sequencer_tb/uut/s_next_pc

# =============================================================================
# Microinstruction Word
# =============================================================================
add wave -noupdate -divider {Microinstruction}
add wave -noupdate -label "Micro Word" -radix hexadecimal -color Gold /control_rom_sequencer_tb/micro_word

# =============================================================================
# Decoded Control Fields
# =============================================================================
add wave -noupdate -divider {Control Fields}
add wave -noupdate -label "ACC Sel" -radix unsigned /control_rom_sequencer_tb/sel_acc
add wave -noupdate -label "RAS Sel" -radix unsigned /control_rom_sequencer_tb/sel_ras
add wave -noupdate -label "IO Sel" -radix unsigned /control_rom_sequencer_tb/sel_io
add wave -noupdate -label "DP Sel" -radix unsigned /control_rom_sequencer_tb/sel_dp

# =============================================================================
# ALU Control
# =============================================================================
add wave -noupdate -divider {ALU Control}
add wave -noupdate -label "ALU Op" -radix hexadecimal -color Cyan /control_rom_sequencer_tb/alu_op
add wave -noupdate -label "ACC Write" -color Green /control_rom_sequencer_tb/acc_write
add wave -noupdate -label "TMP Write" -color Yellow /control_rom_sequencer_tb/tmp_write

# =============================================================================
# Jump/Branch Control
# =============================================================================
add wave -noupdate -divider {Branch Control}
add wave -noupdate -label "Jump Enable" -color Magenta /control_rom_sequencer_tb/jump_en
add wave -noupdate -label "Jump Address" -radix unsigned /control_rom_sequencer_tb/jump_addr
add wave -noupdate -label "Condition Code" -radix hexadecimal /control_rom_sequencer_tb/cond_code

# =============================================================================
# Condition Inputs
# =============================================================================
add wave -noupdate -divider {Condition Inputs}
add wave -noupdate -label "Flag Z" /control_rom_sequencer_tb/flag_z
add wave -noupdate -label "Flag N" /control_rom_sequencer_tb/flag_n
add wave -noupdate -label "Flag C" /control_rom_sequencer_tb/flag_c

# =============================================================================
# Stack (JSR/RET)
# =============================================================================
add wave -noupdate -divider {Call Stack}
add wave -noupdate -label "Stack Ptr" -radix unsigned /control_rom_sequencer_tb/uut/s_stack_ptr
add wave -noupdate -label "Stack[0]" -radix unsigned /control_rom_sequencer_tb/uut/s_stack(0)
add wave -noupdate -label "Stack[1]" -radix unsigned /control_rom_sequencer_tb/uut/s_stack(1)

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /control_rom_sequencer_tb/v_test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /control_rom_sequencer_tb/v_fail_count

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
