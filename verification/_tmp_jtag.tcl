
open_hw_manager
connect_hw_server
open_hw_target

set device [lindex [get_hw_devices xc7s*] 0]
current_hw_device $device
set_property PROGRAM.FILE {C:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_artys7/cadc_artys7.runs/impl_1/cadc_system_wrapper.bit} $device
program_hw_devices $device
puts ">>> FPGA programmed successfully"

close_hw_target
disconnect_hw_server
close_hw_manager

exit
