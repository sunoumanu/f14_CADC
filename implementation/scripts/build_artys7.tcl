#-------------------------------------------------------------------------------
# F-14A CADC Build Script — Arty S7-50
# Runs synthesis, implementation, and bitstream generation
#
# Usage: cd implementation/scripts
#        vivado -mode batch -source build_artys7.tcl
#-------------------------------------------------------------------------------

set script_dir [file dirname [info script]]
open_project [file normalize "$script_dir/../vivado_proj_artys7/cadc_artys7.xpr"]

# Run synthesis
puts ">>> Starting Synthesis..."
reset_run synth_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1
set synth_status [get_property STATUS [get_runs synth_1]]
puts ">>> SYNTH_STATUS: $synth_status"
if {$synth_status != "synth_design Complete!"} {
    puts ">>> ERROR: Synthesis failed"
    exit 1
}

# Run implementation
puts ">>> Starting Implementation..."
launch_runs impl_1 -jobs 8
wait_on_run impl_1
set impl_status [get_property STATUS [get_runs impl_1]]
puts ">>> IMPL_STATUS: $impl_status"
if {$impl_status != "route_design Complete!"} {
    puts ">>> ERROR: Implementation failed"
    exit 1
}

# Generate bitstream
puts ">>> Generating Bitstream..."
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
set bit_status [get_property STATUS [get_runs impl_1]]
puts ">>> BIT_STATUS: $bit_status"

# Report utilization
open_run impl_1
report_utilization -file [file normalize "$script_dir/../vivado_proj_artys7/utilization_report.txt"]

puts ">>> BUILD COMPLETE"
