// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Apr 12 12:13:16 2026
// Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_clock_divider_0_0/cadc_system_clock_divider_0_0_stub.v
// Design      : cadc_system_clock_divider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "cadc_system_clock_divider_0_0,clock_divider,{}" *) (* core_generation_info = "cadc_system_clock_divider_0_0,clock_divider,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=clock_divider,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,g_DIV_RATIO=4}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "clock_divider,Vivado 2025.2" *) 
module cadc_system_clock_divider_0_0(i_clk, i_rst_n, o_clk_div)
/* synthesis syn_black_box black_box_pad_pin="i_rst_n,o_clk_div" */
/* synthesis syn_force_seq_prim="i_clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_mode = "slave i_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst_n, FREQ_HZ 6000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_rst_n RST" *) (* x_interface_mode = "slave i_rst_n" *) (* x_interface_parameter = "XIL_INTERFACENAME i_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rst_n;
  output o_clk_div;
endmodule
