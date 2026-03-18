open_hw_manager
connect_hw_server -url localhost:3121 -allow_non_jtag
puts ">>> Connected to hw_server"
set targets [get_hw_targets]
puts ">>> Targets: "
foreach t  {
    puts ">>>   Target: "
}
open_hw_target
set devices [get_hw_devices]
puts ">>> Devices: "
close_hw_target
disconnect_hw_server
close_hw_manager
exit
