#-------------------------------------------------------------------------------
# Generate bitstream from already-routed implementation
#-------------------------------------------------------------------------------
set script_dir [file dirname [info script]]
open_project [file normalize "$script_dir/../vivado_proj_artys7/cadc_artys7.xpr"]

puts ">>> Generating Bitstream..."
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
set bit_status [get_property STATUS [get_runs impl_1]]
puts ">>> BIT_STATUS: $bit_status"

puts ">>> BITSTREAM GENERATION COMPLETE"
