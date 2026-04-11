#-------------------------------------------------------------------------------
# F-14A CADC Project Creation Script — Tile/Carrier Card with RPi UART
# Target: XC7S25-CSGA225
# Vivado: 2025.2
#
# Creates project with:
#   - ip_axi_uart for RPi serial communication
#   - ip_axi_protocol_lite for UART-to-AXI-Lite bridge
#   - AXI GPIO blocks for CADC I/O
#   - CADC core with clocking
#-------------------------------------------------------------------------------

# Configuration
set project_name "cadc_tile"
set project_dir "[file dirname [info script]]/../vivado_proj_tile"
set src_dir "[file dirname [info script]]/../../hdl"
set constraints_dir "[file dirname [info script]]/../constraints"

# IP library paths (FuseSoC cores - added as RTL sources)
set ip_axi_uart_dir "C:/GIT/ip_axi_uart/src"
set ip_axi_protocol_lite_dir "C:/GIT/ip_axi_protocol_lite"
set cl_axi_common_dir "C:/GIT/cl_axi_common"
set cl_common_dir "C:/GIT/cl_common"

# Target device
set part "xc7s25csga225-1"

#-------------------------------------------------------------------------------
# Create Project
#-------------------------------------------------------------------------------
create_project $project_name $project_dir -part $part -force

# Set project properties
set_property target_language VHDL [current_project]
set_property simulator_language Mixed [current_project]

#-------------------------------------------------------------------------------
# Add CADC RTL Sources
#-------------------------------------------------------------------------------
add_files -norecurse [list \
    "$src_dir/cadc_top.vhd" \
    "$src_dir/cadc_wrapper.vhd" \
    "$src_dir/clock_divider.vhd" \
    "$src_dir/control_rom_sequencer.vhd" \
    "$src_dir/io_bridge.vhd" \
    "$src_dir/pdu.vhd" \
    "$src_dir/pmu.vhd" \
    "$src_dir/ras.vhd" \
    "$src_dir/sl.vhd" \
    "$src_dir/slf.vhd" \
    "$src_dir/timing_generator.vhd" \
    "$src_dir/axi_protocol_wrapper.vhd" \
]

#-------------------------------------------------------------------------------
# Add AXI UART IP Sources
#-------------------------------------------------------------------------------
add_files -norecurse [list \
    "$ip_axi_uart_dir/axi_uart_pkg.vhd" \
    "$ip_axi_uart_dir/axi_uart_rx_fsm.vhd" \
    "$ip_axi_uart_dir/axi_uart_tx_fsm.vhd" \
    "$ip_axi_uart_dir/axi_uart.vhd" \
]

#-------------------------------------------------------------------------------
# Add AXI Protocol Lite IP Source
#-------------------------------------------------------------------------------
add_files -norecurse [list \
    "$ip_axi_protocol_lite_dir/protocol.vhd" \
]

#-------------------------------------------------------------------------------
# Add cl_axi_common Library Sources (axis_slice, axi_register_fifo)
#-------------------------------------------------------------------------------
add_files -norecurse [list \
    "$cl_axi_common_dir/axis_slice/axis_slice.vhd" \
    "$cl_axi_common_dir/axi_register_fifo/axi_register_fifo.vhd" \
]

#-------------------------------------------------------------------------------
# Add cl_common Library Sources (sync, glitch filter, watchdog, etc.)
#-------------------------------------------------------------------------------
add_files -norecurse [list \
    "$cl_common_dir/synchronisers/register_synchroniser.vhd" \
    "$cl_common_dir/glitch_filter/glitch_filter.vhd" \
    "$cl_common_dir/edge_detector/edge_detector.vhd" \
    "$cl_common_dir/counter/counter.vhd" \
    "$cl_common_dir/watchdog_timer/watchdog_timer.vhd" \
    "$cl_common_dir/shift_register/shift_register.vhd" \
]

#-------------------------------------------------------------------------------
# Set VHDL file types
#-------------------------------------------------------------------------------

# VHDL-2008 for main CADC sources
set_property file_type {VHDL 2008} [get_files "$src_dir/*.vhd"]

# VHDL-2008 for IP sources
set_property file_type {VHDL 2008} [get_files "$ip_axi_uart_dir/*.vhd"]
set_property file_type {VHDL 2008} [get_files "$ip_axi_protocol_lite_dir/*.vhd"]
set_property file_type {VHDL 2008} [get_files "$cl_axi_common_dir/*/*.vhd"]
set_property file_type {VHDL 2008} [get_files "$cl_common_dir/*/*.vhd"]

# Set library names for IP sources
set_property library ip_axi_uart [get_files "$ip_axi_uart_dir/*.vhd"]
set_property library cl_axi_common [get_files "$cl_axi_common_dir/*/*.vhd"]
set_property library cl_common [get_files "$cl_common_dir/*/*.vhd"]

# Wrapper must be VHDL-93 for IP Integrator compatibility
set_property file_type {VHDL} [get_files "$src_dir/cadc_wrapper.vhd"]
set_property file_type {VHDL} [get_files "$src_dir/clock_divider.vhd"]
set_property file_type {VHDL} [get_files "$src_dir/axi_protocol_wrapper.vhd"]

#-------------------------------------------------------------------------------
# Add Constraints
#-------------------------------------------------------------------------------
add_files -fileset constrs_1 -norecurse "$constraints_dir/cadc_tile.xdc"

#-------------------------------------------------------------------------------
# Create Block Design
#-------------------------------------------------------------------------------
source "[file dirname [info script]]/create_bd_tile.tcl"

# Create HDL wrapper for block design
make_wrapper -files [get_files "$project_dir/$project_name.srcs/sources_1/bd/cadc_system/cadc_system.bd"] -top
add_files -norecurse "$project_dir/$project_name.gen/sources_1/bd/cadc_system/hdl/cadc_system_wrapper.vhd"

# Set top module
set_property top cadc_system_wrapper [current_fileset]
update_compile_order -fileset sources_1

#-------------------------------------------------------------------------------
# Generate Output Products
#-------------------------------------------------------------------------------
generate_target all [get_files "$project_dir/$project_name.srcs/sources_1/bd/cadc_system/cadc_system.bd"]

puts "=========================================="
puts "Project created successfully!"
puts "Target: $part"
puts "Project: $project_dir"
puts ""
puts "Next steps:"
puts "  1. Update pin assignments in cadc_tile.xdc"
puts "  2. Run synthesis: launch_runs synth_1"
puts "  3. Run implementation: launch_runs impl_1"
puts "=========================================="
