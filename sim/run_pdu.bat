@echo off
REM PDU Testbench - Interactive Simulation
if not defined QUESTA_HOME set QUESTA_HOME=C:\questa_base64_2025.3\win64
set QUESTA_PATH=%QUESTA_HOME%
set PATH=%QUESTA_PATH%;%PATH%
set WORK_DIR=%TEMP%\cadc_sim
set SRC_DIR=%~dp0..\hdl
set TB_DIR=%~dp0..\tb

cd /d %WORK_DIR%

REM Compile sources if needed
vlib work 2>nul
vcom -2008 -work work "%SRC_DIR%\pdu.vhd"
vcom -2008 -work work "%TB_DIR%\pdu_tb.vhd"

REM Create DO file for waveform setup (bit-serial interface)
echo # PDU Waveform Setup (Bit-Serial) > pdu_wave.do
echo add wave -divider "Clock and Timing" >> pdu_wave.do
echo add wave /pdu_tb/clk >> pdu_wave.do
echo add wave /pdu_tb/rst >> pdu_wave.do
echo add wave /pdu_tb/phi2 >> pdu_wave.do
echo add wave /pdu_tb/word_type >> pdu_wave.do
echo add wave /pdu_tb/t0 >> pdu_wave.do
echo add wave /pdu_tb/t19 >> pdu_wave.do
echo add wave -divider "Serial Inputs" >> pdu_wave.do
echo add wave /pdu_tb/dividend_bit >> pdu_wave.do
echo add wave /pdu_tb/divisor_bit >> pdu_wave.do
echo add wave -divider "Serial Outputs" >> pdu_wave.do
echo add wave /pdu_tb/quotient_bit >> pdu_wave.do
echo add wave /pdu_tb/remainder_bit >> pdu_wave.do
echo add wave -divider "Captured Results (shift registers)" >> pdu_wave.do
echo add wave -hex /pdu_tb/quotient_sr >> pdu_wave.do
echo add wave -hex /pdu_tb/remainder_sr >> pdu_wave.do
echo add wave -divider "Status" >> pdu_wave.do
echo add wave /pdu_tb/busy >> pdu_wave.do
echo add wave /pdu_tb/div_by_zero >> pdu_wave.do
echo add wave -divider "Internal State" >> pdu_wave.do
echo add wave /pdu_tb/uut/s_state >> pdu_wave.do
echo add wave -hex /pdu_tb/uut/s_partial_rem >> pdu_wave.do
echo add wave -hex /pdu_tb/uut/s_quot_reg >> pdu_wave.do
echo add wave -unsigned /pdu_tb/uut/s_bit_cnt >> pdu_wave.do
echo add wave -divider "Test Status" >> pdu_wave.do
echo add wave -decimal /pdu_tb/test_count >> pdu_wave.do
echo add wave -decimal /pdu_tb/fail_count >> pdu_wave.do
echo configure wave -namecolwidth 250 >> pdu_wave.do
echo configure wave -valuecolwidth 120 >> pdu_wave.do

REM Launch simulation with GUI
vsim -gui -do "do pdu_wave.do; run 0 ns" work.pdu_tb
