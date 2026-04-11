# =============================================================================
# CADC Top Level - Questa Visualizer Wave Configuration
# F-14A Central Air Data Computer - Full System Simulation
# =============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

# Clear existing waves
delete wave *

# =============================================================================
# Clock and Reset
# =============================================================================
add wave -noupdate -divider {Clock & Reset}
add wave -noupdate -label "CLK Master" /cadc_top_tb/clk_master
add wave -noupdate -label "RST" /cadc_top_tb/rst
add wave -noupdate -label "CLK Enable" /cadc_top_tb/clk_en

# =============================================================================
# Timing Signals
# =============================================================================
add wave -noupdate -divider {Timing}
add wave -noupdate -label "PHI2" /cadc_top_tb/uut/s_phi2
add wave -noupdate -label "T0" /cadc_top_tb/uut/s_t0
add wave -noupdate -label "T19" /cadc_top_tb/uut/s_t19
add wave -noupdate -label "Sync" /cadc_top_tb/uut/s_sync
add wave -noupdate -label "Bit Cnt" -radix unsigned /cadc_top_tb/uut/s_bit_cnt
add wave -noupdate -label "Frame Cnt" -radix unsigned /cadc_top_tb/uut/s_frame_cnt

# =============================================================================
# Sensor Inputs
# =============================================================================
add wave -noupdate -divider {Sensor Inputs}
add wave -noupdate -label "Ps (Static Press)" -radix hexadecimal -color Gold /cadc_top_tb/sensor_ps
add wave -noupdate -label "Qc (Dynamic Press)" -radix hexadecimal -color Orange /cadc_top_tb/sensor_qc
add wave -noupdate -label "TAT (Total Air Temp)" -radix hexadecimal -color Yellow /cadc_top_tb/sensor_tat
add wave -noupdate -label "Alpha (AOA)" -radix hexadecimal -color Green /cadc_top_tb/sensor_alpha

# =============================================================================
# Computed Outputs
# =============================================================================
add wave -noupdate -divider {Computed Outputs}
add wave -noupdate -label "Mach Number" -radix hexadecimal -color Cyan /cadc_top_tb/out_mach
add wave -noupdate -label "Altitude" -radix hexadecimal -color Green /cadc_top_tb/out_altitude
add wave -noupdate -label "True Airspeed" -radix hexadecimal -color Yellow /cadc_top_tb/out_airspeed
add wave -noupdate -label "Vertical Speed" -radix hexadecimal -color Orange /cadc_top_tb/out_vert_speed
add wave -noupdate -label "Wing Sweep" -radix hexadecimal -color Magenta /cadc_top_tb/out_wing_sweep
add wave -noupdate -label "Maneuver Flaps" -radix hexadecimal -color Purple /cadc_top_tb/out_man_flaps
add wave -noupdate -label "Glove Vane" -radix hexadecimal -color Coral /cadc_top_tb/out_glove_vane

# =============================================================================
# Microprogram Control
# =============================================================================
add wave -noupdate -divider {Microprogram}
add wave -noupdate -label "Micro PC" -radix unsigned -color Cyan /cadc_top_tb/uut/s_micro_addr
add wave -noupdate -label "Micro Word" -radix hexadecimal /cadc_top_tb/uut/s_micro_word
add wave -noupdate -label "ALU Op" -radix hexadecimal /cadc_top_tb/uut/s_alu_op

# =============================================================================
# ALU / SLF
# =============================================================================
add wave -noupdate -divider {SLF (ALU)}
add wave -noupdate -label "ACC" -radix hexadecimal -color Cyan /cadc_top_tb/uut/u_slf/s_acc_reg
add wave -noupdate -label "TMP" -radix hexadecimal -color Yellow /cadc_top_tb/uut/u_slf/s_tmp_reg
add wave -noupdate -label "ACC Write En" /cadc_top_tb/uut/s_acc_write_en
add wave -noupdate -label "Flag Z" /cadc_top_tb/uut/s_flag_z
add wave -noupdate -label "Flag N" /cadc_top_tb/uut/s_flag_n
add wave -noupdate -label "Flag C" /cadc_top_tb/uut/s_flag_c

# =============================================================================
# RAS (Register File)
# =============================================================================
add wave -noupdate -divider {RAS}
add wave -noupdate -label "RAS Addr" -radix unsigned /cadc_top_tb/uut/s_ras_addr
add wave -noupdate -label "RAS Write En" /cadc_top_tb/uut/s_ras_write_en
add wave -noupdate -label "RAS Data Out" -radix hexadecimal /cadc_top_tb/uut/s_ras_out_bit

# =============================================================================
# PMU (Multiplier)
# =============================================================================
add wave -noupdate -divider {PMU}
add wave -noupdate -label "PMU Busy" -color Yellow /cadc_top_tb/uut/u_pmu/busy
add wave -noupdate -label "PMU Overflow" -color Red /cadc_top_tb/uut/u_pmu/overflow

# =============================================================================
# PDU (Divider)
# =============================================================================
add wave -noupdate -divider {PDU}
add wave -noupdate -label "PDU Busy" -color Yellow /cadc_top_tb/uut/u_pdu/busy
add wave -noupdate -label "PDU Div Zero" -color Red /cadc_top_tb/uut/u_pdu/div_by_zero

# =============================================================================
# BIT Status
# =============================================================================
add wave -noupdate -divider {BIT Status}
add wave -noupdate -label "BIT Enable" /cadc_top_tb/bit_enable
add wave -noupdate -label "Fail Detect" -color Red /cadc_top_tb/fail_detect
add wave -noupdate -label "Channel Active" -color Green /cadc_top_tb/channel_active

# =============================================================================
# Test Status
# =============================================================================
add wave -noupdate -divider {Test Status}
add wave -noupdate -label "Test Count" -radix decimal -color White /cadc_top_tb/test_count
add wave -noupdate -label "Fail Count" -radix decimal -color Red /cadc_top_tb/fail_count

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

WaveRestoreZoom {0 ns} {50000 ns}
