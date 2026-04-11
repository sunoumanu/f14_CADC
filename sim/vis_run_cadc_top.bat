@echo off
REM CADC Top Level Testbench - Questa Visualizer Interactive Simulation
REM F-14A Central Air Data Computer - Full System

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

REM Compile all sources in dependency order
echo Compiling CADC sources...
vcom -2008 -work work "%SRC_DIR%\timing_generator.vhd"
vcom -2008 -work work "%SRC_DIR%\slf.vhd"
vcom -2008 -work work "%SRC_DIR%\ras.vhd"
vcom -2008 -work work "%SRC_DIR%\sl.vhd"
vcom -2008 -work work "%SRC_DIR%\pmu.vhd"
vcom -2008 -work work "%SRC_DIR%\pdu.vhd"
vcom -2008 -work work "%SRC_DIR%\io_bridge.vhd"
vcom -2008 -work work "%SRC_DIR%\control_rom_sequencer.vhd"
vcom -2008 -work work "%SRC_DIR%\cadc_top.vhd"
vcom -2008 -work work "%TB_DIR%\cadc_top_tb.vhd"

REM Launch with Visualizer GUI
echo Launching Questa Visualizer...
vsim -visualizer -do "do {%SIM_DIR%vis_cadc_top.do}" work.cadc_top_tb
