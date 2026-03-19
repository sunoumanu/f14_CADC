open_hw_manager
connect_hw_server
puts ">>> hw_server connected"
set targets [get_hw_targets]
puts ">>> Targets: $targets"
open_hw_target
set devices [get_hw_devices]
puts ">>> Devices: $devices"
close_hw_target
disconnect_hw_server
close_hw_manager
