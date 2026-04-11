#-------------------------------------------------------------------------------
# F-14A CADC Build Script — Tile/Carrier Card
# Target: XC7S25-CSGA225
# Vivado: 2025.2
#
# Usage: vivado -mode batch -source build_tile.tcl
#-------------------------------------------------------------------------------

# Create project (includes block design)
source [file dirname [info script]]/create_project_tile.tcl

# Run Synthesis
launch_runs synth_1 -jobs 8
wait_on_run synth_1

# Check synthesis status
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    puts "ERROR: Synthesis failed!"
    exit 1
}

# Run Implementation
launch_runs impl_1 -jobs 8
wait_on_run impl_1

# Check implementation status
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    puts "ERROR: Implementation failed!"
    exit 1
}

# Generate Bitstream
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1

puts "=========================================="
puts "Build completed successfully!"
puts "Bitstream: vivado_proj_tile/cadc_tile.runs/impl_1/cadc_system_wrapper.bit"
puts "=========================================="
