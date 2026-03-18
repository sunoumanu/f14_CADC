// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Mar 18 14:55:00 2026
// Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_artys7/cadc_artys7.gen/sources_1/bd/cadc_system/ip/cadc_system_cadc_top_0_0/cadc_system_cadc_top_0_0_stub.v
// Design      : cadc_system_cadc_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "cadc_system_cadc_top_0_0,cadc_wrapper,{}" *) (* core_generation_info = "cadc_system_cadc_top_0_0,cadc_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cadc_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "cadc_wrapper,Vivado 2025.2" *) 
module cadc_system_cadc_top_0_0(i_clk_master, i_rst, i_sensor_ps, i_sensor_qc, 
  i_sensor_tat, i_sensor_analog, i_sensor_digital, o_out_mach, o_out_alt, o_out_airspd, 
  o_out_vspd, o_out_wing, o_out_flap, o_out_glove, o_bit_status, i_channel_active, 
  o_fail_detect)
/* synthesis syn_black_box black_box_pad_pin="i_rst,i_sensor_ps[19:0],i_sensor_qc[19:0],i_sensor_tat[19:0],i_sensor_analog[19:0],i_sensor_digital[19:0],o_out_mach[19:0],o_out_alt[19:0],o_out_airspd[19:0],o_out_vspd[19:0],o_out_wing[19:0],o_out_flap[19:0],o_out_glove[19:0],o_bit_status,i_channel_active,o_fail_detect" */
/* synthesis syn_force_seq_prim="i_clk_master" */;
  input i_clk_master /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* x_interface_mode = "slave i_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_rst;
  input [19:0]i_sensor_ps;
  input [19:0]i_sensor_qc;
  input [19:0]i_sensor_tat;
  input [19:0]i_sensor_analog;
  input [19:0]i_sensor_digital;
  output [19:0]o_out_mach;
  output [19:0]o_out_alt;
  output [19:0]o_out_airspd;
  output [19:0]o_out_vspd;
  output [19:0]o_out_wing;
  output [19:0]o_out_flap;
  output [19:0]o_out_glove;
  output o_bit_status;
  input i_channel_active;
  output o_fail_detect;
endmodule
