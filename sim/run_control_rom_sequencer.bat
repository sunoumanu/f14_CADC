@echo off
REM Control ROM Sequencer Testbench - Interactive Simulation
if not defined QUESTA_HOME set QUESTA_HOME=C:\questa_base64_2025.3\win64
set QUESTA_PATH=%QUESTA_HOME%
set PATH=%QUESTA_PATH%;%PATH%
set WORK_DIR=%TEMP%\cadc_sim
set SRC_DIR=%~dp0..\hdl
set TB_DIR=%~dp0..\tb

cd /d %WORK_DIR%

REM Compile sources (timing_generator needed by testbench)
vlib work 2>nul
vcom -2008 -work work "%SRC_DIR%\timing_generator.vhd"
vcom -2008 -work work "%SRC_DIR%\control_rom_sequencer.vhd"
vcom -2008 -work work "%TB_DIR%\control_rom_sequencer_tb.vhd"

REM Create DO file for waveform setup
echo # Control ROM Sequencer Waveform Setup > rom_seq_wave.do
echo add wave -divider "Clock and Control" >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/clk >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/rst >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/seq_frame_mark >> rom_seq_wave.do
echo add wave -divider "Timing" >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/phi2 >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/word_type >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/t0 >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/t19 >> rom_seq_wave.do
echo add wave -divider "Flags" >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/flag_z >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/flag_n >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/flag_c >> rom_seq_wave.do
echo add wave -divider "Unit Busy" >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/pmu_busy >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/pdu_busy >> rom_seq_wave.do
echo add wave -divider "Microcode" >> rom_seq_wave.do
echo add wave -unsigned /control_rom_sequencer_tb/micro_addr >> rom_seq_wave.do
echo add wave -hex /control_rom_sequencer_tb/micro_word >> rom_seq_wave.do
echo add wave -divider "Serial Output" >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/cw_bit >> rom_seq_wave.do
echo add wave /control_rom_sequencer_tb/const_bit >> rom_seq_wave.do
echo add wave -divider "Internal State" >> rom_seq_wave.do
echo add wave -unsigned /control_rom_sequencer_tb/uut/s_micro_pc >> rom_seq_wave.do
echo add wave -unsigned /control_rom_sequencer_tb/uut/s_next_pc >> rom_seq_wave.do
echo add wave -hex /control_rom_sequencer_tb/uut/s_nextctl_field >> rom_seq_wave.do
echo add wave -unsigned /control_rom_sequencer_tb/uut/s_stack_ptr >> rom_seq_wave.do
echo configure wave -namecolwidth 320 >> rom_seq_wave.do
echo configure wave -valuecolwidth 120 >> rom_seq_wave.do

REM Launch simulation with GUI
vsim -gui -do "do rom_seq_wave.do; run 0 ns" work.control_rom_sequencer_tb
