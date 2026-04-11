@echo off
REM CADC Questa Visualizer - Run All Testbenches (Batch Mode)
REM Compiles and runs all testbenches, then opens Visualizer for review

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

echo ============================================================
echo F-14A CADC - Compiling All Sources
echo ============================================================

REM Compile all HDL sources
vcom -2008 -work work "%SRC_DIR%\timing_generator.vhd"
vcom -2008 -work work "%SRC_DIR%\slf.vhd"
vcom -2008 -work work "%SRC_DIR%\ras.vhd"
vcom -2008 -work work "%SRC_DIR%\sl.vhd"
vcom -2008 -work work "%SRC_DIR%\pmu.vhd"
vcom -2008 -work work "%SRC_DIR%\pdu.vhd"
vcom -2008 -work work "%SRC_DIR%\io_bridge.vhd"
vcom -2008 -work work "%SRC_DIR%\control_rom_sequencer.vhd"
vcom -2008 -work work "%SRC_DIR%\cadc_top.vhd"

REM Compile all testbenches
vcom -2008 -work work "%TB_DIR%\timing_generator_tb.vhd"
vcom -2008 -work work "%TB_DIR%\slf_tb.vhd"
vcom -2008 -work work "%TB_DIR%\ras_tb.vhd"
vcom -2008 -work work "%TB_DIR%\sl_tb.vhd"
vcom -2008 -work work "%TB_DIR%\pmu_tb.vhd"
vcom -2008 -work work "%TB_DIR%\pdu_tb.vhd"
vcom -2008 -work work "%TB_DIR%\io_bridge_tb.vhd"
vcom -2008 -work work "%TB_DIR%\control_rom_sequencer_tb.vhd"
vcom -2008 -work work "%TB_DIR%\cadc_top_tb.vhd"

echo.
echo ============================================================
echo Running All Testbenches in Batch Mode
echo ============================================================
echo.

REM Run each testbench in batch mode
echo [1/9] Running PDU testbench...
vsim -c -do "run -all; quit -f" work.pdu_tb

echo [2/9] Running PMU testbench...
vsim -c -do "run -all; quit -f" work.pmu_tb

echo [3/9] Running SLF testbench...
vsim -c -do "run -all; quit -f" work.slf_tb

echo [4/9] Running RAS testbench...
vsim -c -do "run -all; quit -f" work.ras_tb

echo [5/9] Running SL testbench...
vsim -c -do "run -all; quit -f" work.sl_tb

echo [6/9] Running I/O Bridge testbench...
vsim -c -do "run -all; quit -f" work.io_bridge_tb

echo [7/9] Running Control ROM/Sequencer testbench...
vsim -c -do "run -all; quit -f" work.control_rom_sequencer_tb

echo [8/9] Running Timing Generator testbench...
vsim -c -do "run -all; quit -f" work.timing_generator_tb

echo [9/9] Running CADC Top testbench...
vsim -c -do "run -all; quit -f" work.cadc_top_tb

echo.
echo ============================================================
echo All Testbenches Complete
echo ============================================================
echo.
pause
