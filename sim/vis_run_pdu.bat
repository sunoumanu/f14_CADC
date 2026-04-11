@echo off
REM PDU Testbench - Questa Visualizer Interactive Simulation
REM F-14A CADC - Parallel Divider Unit

if not defined QUESTA_HOME set QUESTA_HOME=C:\questa_base64_2025.3\win64
set QUESTA_PATH=%QUESTA_HOME%
set PATH=%QUESTA_PATH%;%PATH%
set WORK_DIR=%TEMP%\cadc_sim
set SRC_DIR=%~dp0..\hdl
set TB_DIR=%~dp0..\tb
set SIM_DIR=%~dp0

cd /d %WORK_DIR%

REM Create work library
vlib work 2>nul

REM Compile sources
echo Compiling PDU sources...
vcom -2008 -work work "%SRC_DIR%\pdu.vhd"
vcom -2008 -work work "%TB_DIR%\pdu_tb.vhd"

REM Launch with Visualizer GUI
echo Launching Questa Visualizer...
vsim -visualizer -do "do {%SIM_DIR%vis_pdu.do}" work.pdu_tb
