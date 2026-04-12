transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/axi_vip_v1_1_22
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/util_vector_logic_v2_0_5
vlib activehdl/xlconcat_v2_1_7
vlib activehdl/gigantic_mux

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 activehdl/axi_vip_v1_1_22
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap util_vector_logic_v2_0_5 activehdl/util_vector_logic_v2_0_5
vmap xlconcat_v2_1_7 activehdl/xlconcat_v2_1_7
vmap gigantic_mux activehdl/gigantic_mux

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_clk_wiz_0_0/cadc_system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/cadc_system/ip/cadc_system_clk_wiz_0_0/cadc_system_clk_wiz_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/cadc_system/ip/cadc_system_proc_sys_reset_0_0/sim/cadc_system_proc_sys_reset_0_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_protocol_0_0/sim/cadc_system_axi_protocol_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/sim/bd_fda1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_fda1_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_fda1_arinsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_fda1_rinsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_fda1_awinsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_fda1_winsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_fda1_binsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_fda1_aroutsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_fda1_routsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_fda1_awoutsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_fda1_woutsw_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_fda1_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_fda1_arni_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_fda1_rni_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_fda1_awni_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_fda1_wni_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_fda1_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_fda1_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_fda1_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_fda1_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_fda1_s00a2s_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_fda1_sarn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_fda1_srn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_fda1_sawn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_fda1_swn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_fda1_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_fda1_m00s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_fda1_m00arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_fda1_m00rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_fda1_m00awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_fda1_m00wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_fda1_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_fda1_m00e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_fda1_m01s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_fda1_m01arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_fda1_m01rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_fda1_m01awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_fda1_m01wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_fda1_m01bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_fda1_m01e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_fda1_m02s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_fda1_m02arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_fda1_m02rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_fda1_m02awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_fda1_m02wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_fda1_m02bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_fda1_m02e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_fda1_m03s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_fda1_m03arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_fda1_m03rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_fda1_m03awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_fda1_m03wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_fda1_m03bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_fda1_m03e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_54/sim/bd_fda1_m04s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_55/sim/bd_fda1_m04arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_56/sim/bd_fda1_m04rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_57/sim/bd_fda1_m04awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_58/sim/bd_fda1_m04wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_59/sim/bd_fda1_m04bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_60/sim/bd_fda1_m04e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_61/sim/bd_fda1_m05s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_62/sim/bd_fda1_m05arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_63/sim/bd_fda1_m05rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_64/sim/bd_fda1_m05awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_65/sim/bd_fda1_m05wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_66/sim/bd_fda1_m05bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_67/sim/bd_fda1_m05e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_68/sim/bd_fda1_m06s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_69/sim/bd_fda1_m06arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_70/sim/bd_fda1_m06rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_71/sim/bd_fda1_m06awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_72/sim/bd_fda1_m06wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_73/sim/bd_fda1_m06bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_74/sim/bd_fda1_m06e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_75/sim/bd_fda1_m07s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_76/sim/bd_fda1_m07arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_77/sim/bd_fda1_m07rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_78/sim/bd_fda1_m07awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_79/sim/bd_fda1_m07wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_80/sim/bd_fda1_m07bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_81/sim/bd_fda1_m07e_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_82/sim/bd_fda1_m08s2a_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_83/sim/bd_fda1_m08arn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_84/sim/bd_fda1_m08rn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_85/sim/bd_fda1_m08awn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_86/sim/bd_fda1_m08wn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_87/sim/bd_fda1_m08bn_0.sv" \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/bd_0/ip/ip_88/sim/bd_fda1_m08e_0.sv" \

vcom -work smartconnect_v1_0 -93  \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_axi_smartconnect_0_0/sim/cadc_system_axi_smartconnect_0_0.sv" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_ps_0/sim/cadc_system_axi_gpio_ps_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_qc_0/sim/cadc_system_axi_gpio_qc_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_tat_0/sim/cadc_system_axi_gpio_tat_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_analog_0/sim/cadc_system_axi_gpio_analog_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_digital_0/sim/cadc_system_axi_gpio_digital_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_out_0_0/sim/cadc_system_axi_gpio_out_0_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_out_1_0/sim/cadc_system_axi_gpio_out_1_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_out_2_0/sim/cadc_system_axi_gpio_out_2_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_axi_gpio_out_3_0/sim/cadc_system_axi_gpio_out_3_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_clock_divider_0_0/sim/cadc_system_clock_divider_0_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_cadc_top_0_0/sim/cadc_system_cadc_top_0_0.vhd" \

vlog -work util_vector_logic_v2_0_5  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/e056/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_util_vector_logic_0_0/sim/cadc_system_util_vector_logic_0_0.v" \

vlog -work xlconcat_v2_1_7  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_xlconcat_status_0/sim/cadc_system_xlconcat_status_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_8dad_ila_lib_0.vhd" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/b2b0/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/a415" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/00fe/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/5431/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/4e08/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/0568/hdl/verilog" "+incdir+../../../../cadc_tile.gen/sources_1/bd/cadc_system/ipshared/3556/hdl/verilog" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_vip_v1_1_22 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l util_vector_logic_v2_0_5 -l xlconcat_v2_1_7 -l gigantic_mux \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_1/bd_8dad_g_inst_0_gigantic_mux.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_1/sim/bd_8dad_g_inst_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_2/sim/bd_8dad_slot_0_aw_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_3/sim/bd_8dad_slot_0_w_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_4/sim/bd_8dad_slot_0_b_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_5/sim/bd_8dad_slot_0_ar_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_6/sim/bd_8dad_slot_0_r_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_7/sim/bd_8dad_slot_1_aw_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_8/sim/bd_8dad_slot_1_w_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_9/sim/bd_8dad_slot_1_b_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_10/sim/bd_8dad_slot_1_ar_0.v" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/ip/ip_11/sim/bd_8dad_slot_1_r_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/bd_0/sim/bd_8dad.vhd" \
"../../../bd/cadc_system/ip/cadc_system_system_ila_0_0/sim/cadc_system_system_ila_0_0.vhd" \
"../../../bd/cadc_system/ip/cadc_system_uart_0_0/sim/cadc_system_uart_0_0.vhd" \
"../../../bd/cadc_system/sim/cadc_system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

