@echo off
REM I/O Bridge Testbench - Questa Visualizer Interactive Simulation
REM F-14A CADC - Input/Output Interface

set QUESTA_PATH=C:\questa_base64_2025.3\win64
set PATH=%QUESTA_PATH%;%PATH%
set WORK_DIR=C:\temp\cadc_sim
set SRC_DIR=%~dp0..\hdl
set TB_DIR=%~dp0..\tb
set SIM_DIR=%~dp0

cd /d %WORK_DIR%

REM Create work library
vlib work 2>nul

REM Compile sources
echo Compiling I/O Bridge sources...
vcom -2008 -work work "%SRC_DIR%\io_bridge.vhd"
vcom -2008 -work work "%TB_DIR%\io_bridge_tb.vhd"

REM Launch with Visualizer GUI
echo Launching Questa Visualizer...
vsim -visualizer -do "do {%SIM_DIR%vis_io_bridge.do}; run 0 ns" work.io_bridge_tb
