// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Mar 18 14:55:00 2026
// Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_artys7/cadc_artys7.gen/sources_1/bd/cadc_system/ip/cadc_system_cadc_top_0_0/cadc_system_cadc_top_0_0_sim_netlist.v
// Design      : cadc_system_cadc_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cadc_system_cadc_top_0_0,cadc_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "cadc_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module cadc_system_cadc_top_0_0
   (i_clk_master,
    i_rst,
    i_sensor_ps,
    i_sensor_qc,
    i_sensor_tat,
    i_sensor_analog,
    i_sensor_digital,
    o_out_mach,
    o_out_alt,
    o_out_airspd,
    o_out_vspd,
    o_out_wing,
    o_out_flap,
    o_out_glove,
    o_bit_status,
    i_channel_active,
    o_fail_detect);
  input i_clk_master;
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

  wire \<const0> ;
  wire i_channel_active;
  wire i_clk_master;
  wire i_rst;
  wire [19:0]i_sensor_analog;
  wire [19:0]i_sensor_digital;
  wire [19:0]i_sensor_ps;
  wire [19:0]i_sensor_qc;
  wire [19:0]i_sensor_tat;
  wire o_bit_status;
  wire [19:0]o_out_airspd;
  wire [19:0]o_out_alt;
  wire [19:0]o_out_flap;
  wire [19:0]o_out_glove;
  wire [19:0]o_out_mach;
  wire [19:0]o_out_vspd;
  wire [19:0]o_out_wing;

  assign o_fail_detect = \<const0> ;
  GND GND
       (.G(\<const0> ));
  cadc_system_cadc_top_0_0_cadc_wrapper U0
       (.i_channel_active(i_channel_active),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .i_sensor_analog(i_sensor_analog),
        .i_sensor_digital(i_sensor_digital),
        .i_sensor_ps(i_sensor_ps),
        .i_sensor_qc(i_sensor_qc),
        .i_sensor_tat(i_sensor_tat),
        .o_bit_status(o_bit_status),
        .o_out_airspd(o_out_airspd),
        .o_out_alt(o_out_alt),
        .o_out_flap(o_out_flap),
        .o_out_glove(o_out_glove),
        .o_out_mach(o_out_mach),
        .o_out_vspd(o_out_vspd),
        .o_out_wing(o_out_wing));
endmodule

(* ORIG_REF_NAME = "cadc_top" *) 
module cadc_system_cadc_top_0_0_cadc_top
   (o_word_type,
    o_out_mach,
    o_out_alt,
    o_out_airspd,
    o_out_vspd,
    o_out_wing,
    o_out_flap,
    o_out_glove,
    o_phi2,
    o_t19,
    o_bit_status,
    i_rst,
    s_mcand_sr,
    i_clk_master,
    i_channel_active,
    \s_cw_bit_cnt_reg[4] ,
    E,
    i_sensor_digital,
    i_sensor_analog,
    i_sensor_ps,
    i_sensor_tat,
    i_sensor_qc);
  output o_word_type;
  output [19:0]o_out_mach;
  output [19:0]o_out_alt;
  output [19:0]o_out_airspd;
  output [19:0]o_out_vspd;
  output [19:0]o_out_wing;
  output [19:0]o_out_flap;
  output [19:0]o_out_glove;
  output o_phi2;
  output o_t19;
  output o_bit_status;
  input i_rst;
  input [0:0]s_mcand_sr;
  input i_clk_master;
  input i_channel_active;
  input \s_cw_bit_cnt_reg[4] ;
  input [0:0]E;
  input [19:0]i_sensor_digital;
  input [19:0]i_sensor_analog;
  input [19:0]i_sensor_ps;
  input [19:0]i_sensor_tat;
  input [19:0]i_sensor_qc;

  wire [0:0]E;
  wire i_channel_active;
  wire i_clk_master;
  wire i_rst;
  wire [19:0]i_sensor_analog;
  wire [19:0]i_sensor_digital;
  wire [19:0]i_sensor_ps;
  wire [19:0]i_sensor_qc;
  wire [19:0]i_sensor_tat;
  wire o_bit_status;
  wire [19:0]o_out_airspd;
  wire [19:0]o_out_alt;
  wire [19:0]o_out_flap;
  wire [19:0]o_out_glove;
  wire [19:0]o_out_mach;
  wire [19:0]o_out_vspd;
  wire [19:0]o_out_wing;
  wire o_phi2;
  wire o_t19;
  wire o_word_type;
  wire [0:0]p_0_in;
  wire [18:0]p_0_in_0;
  wire p_19_in;
  wire [19:0]p_1_in;
  wire [0:0]p_1_in_1;
  wire s_acc_bit;
  wire s_acc_in_bit;
  wire s_acc_reg15_out;
  wire s_compute_done;
  wire [0:0]s_const_sr;
  wire s_cw_bit;
  wire \s_cw_bit_cnt_reg[4] ;
  wire [0:0]s_cw_sr;
  wire [0:0]s_dividend_lat;
  wire s_flag_c;
  wire s_flag_n;
  wire s_flag_z;
  wire s_frame_mark;
  wire s_input_sr0;
  wire [19:19]s_io_data_out_par;
  wire \s_io_in_sr_reg_n_0_[0] ;
  wire \s_io_in_sr_reg_n_0_[10] ;
  wire \s_io_in_sr_reg_n_0_[11] ;
  wire \s_io_in_sr_reg_n_0_[12] ;
  wire \s_io_in_sr_reg_n_0_[13] ;
  wire \s_io_in_sr_reg_n_0_[14] ;
  wire \s_io_in_sr_reg_n_0_[15] ;
  wire \s_io_in_sr_reg_n_0_[16] ;
  wire \s_io_in_sr_reg_n_0_[17] ;
  wire \s_io_in_sr_reg_n_0_[18] ;
  wire \s_io_in_sr_reg_n_0_[19] ;
  wire \s_io_in_sr_reg_n_0_[2] ;
  wire \s_io_in_sr_reg_n_0_[3] ;
  wire \s_io_in_sr_reg_n_0_[4] ;
  wire \s_io_in_sr_reg_n_0_[5] ;
  wire \s_io_in_sr_reg_n_0_[6] ;
  wire \s_io_in_sr_reg_n_0_[7] ;
  wire \s_io_in_sr_reg_n_0_[8] ;
  wire \s_io_in_sr_reg_n_0_[9] ;
  wire [18:0]s_io_out_sr;
  wire \s_io_out_sr_reg_n_0_[0] ;
  wire [19:0]s_latched_data;
  wire [0:0]s_mcand_lat;
  wire [0:0]s_mcand_sr;
  wire s_pdu_busy;
  wire [0:0]s_product_sr;
  wire s_reg_bit;
  wire [2:0]s_sel_out1;
  wire [2:0]s_state;
  wire s_t0;
  wire s_t18;
  wire s_tmp_bit;
  wire [0:0]s_tmp_out_sr;
  wire [0:0]s_tmp_reg;
  wire s_tmp_we_lat;
  wire u_pdu_n_23;
  wire u_pdu_n_24;
  wire u_pmu_n_1;
  wire u_sequencer_n_0;
  wire u_sequencer_n_1;
  wire u_sequencer_n_10;
  wire u_sequencer_n_11;
  wire u_sequencer_n_12;
  wire u_sequencer_n_13;
  wire u_sequencer_n_14;
  wire u_sequencer_n_15;
  wire u_sequencer_n_16;
  wire u_sequencer_n_17;
  wire u_sequencer_n_18;
  wire u_sequencer_n_19;
  wire u_sequencer_n_2;
  wire u_sequencer_n_20;
  wire u_sequencer_n_21;
  wire u_sequencer_n_22;
  wire u_sequencer_n_23;
  wire u_sequencer_n_24;
  wire u_sequencer_n_25;
  wire u_sequencer_n_26;
  wire u_sequencer_n_27;
  wire u_sequencer_n_28;
  wire u_sequencer_n_3;
  wire u_sequencer_n_4;
  wire u_sequencer_n_49;
  wire u_sequencer_n_50;
  wire u_sequencer_n_51;
  wire u_sequencer_n_6;
  wire u_sequencer_n_7;
  wire u_sequencer_n_8;
  wire u_sequencer_n_9;
  wire u_sl_n_0;
  wire u_slf_n_8;
  wire u_timing_n_0;
  wire u_timing_n_10;
  wire u_timing_n_11;
  wire u_timing_n_18;
  wire u_timing_n_2;
  wire u_timing_n_21;
  wire u_timing_n_22;
  wire u_timing_n_23;
  wire u_timing_n_24;
  wire u_timing_n_25;
  wire u_timing_n_26;
  wire u_timing_n_27;
  wire u_timing_n_28;
  wire u_timing_n_29;
  wire u_timing_n_30;
  wire u_timing_n_31;
  wire u_timing_n_32;
  wire u_timing_n_33;
  wire u_timing_n_34;
  wire u_timing_n_35;
  wire u_timing_n_4;
  wire u_timing_n_5;

  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[0] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[0]),
        .Q(\s_io_in_sr_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[10] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[10]),
        .Q(\s_io_in_sr_reg_n_0_[10] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[11] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[11]),
        .Q(\s_io_in_sr_reg_n_0_[11] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[12] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[12]),
        .Q(\s_io_in_sr_reg_n_0_[12] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[13] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[13]),
        .Q(\s_io_in_sr_reg_n_0_[13] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[14] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[14]),
        .Q(\s_io_in_sr_reg_n_0_[14] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[15] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[15]),
        .Q(\s_io_in_sr_reg_n_0_[15] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[16] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[16]),
        .Q(\s_io_in_sr_reg_n_0_[16] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[17] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[17]),
        .Q(\s_io_in_sr_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[18] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[18]),
        .Q(\s_io_in_sr_reg_n_0_[18] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[19] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[19]),
        .Q(\s_io_in_sr_reg_n_0_[19] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[1] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[1]),
        .Q(p_0_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[2] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[2]),
        .Q(\s_io_in_sr_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[3] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[3]),
        .Q(\s_io_in_sr_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[4] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[4]),
        .Q(\s_io_in_sr_reg_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[5] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[5]),
        .Q(\s_io_in_sr_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[6] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[6]),
        .Q(\s_io_in_sr_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[7] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[7]),
        .Q(\s_io_in_sr_reg_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[8] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[8]),
        .Q(\s_io_in_sr_reg_n_0_[8] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_in_sr_reg[9] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(p_1_in[9]),
        .Q(\s_io_in_sr_reg_n_0_[9] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[0] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[0]),
        .Q(\s_io_out_sr_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[10] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[10]),
        .Q(s_io_out_sr[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[11] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[11]),
        .Q(s_io_out_sr[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[12] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[12]),
        .Q(s_io_out_sr[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[13] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[13]),
        .Q(s_io_out_sr[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[14] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[14]),
        .Q(s_io_out_sr[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[15] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[15]),
        .Q(s_io_out_sr[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[16] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[16]),
        .Q(s_io_out_sr[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[17] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[17]),
        .Q(s_io_out_sr[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[18] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[18]),
        .Q(s_io_out_sr[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[19] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_acc_bit),
        .Q(s_io_out_sr[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[1] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[1]),
        .Q(s_io_out_sr[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[2] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[2]),
        .Q(s_io_out_sr[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[3] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[3]),
        .Q(s_io_out_sr[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[4] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[4]),
        .Q(s_io_out_sr[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[5] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[5]),
        .Q(s_io_out_sr[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[6] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[6]),
        .Q(s_io_out_sr[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[7] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[7]),
        .Q(s_io_out_sr[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[8] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[8]),
        .Q(s_io_out_sr[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_io_out_sr_reg[9] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(s_io_out_sr[9]),
        .Q(s_io_out_sr[8]),
        .R(i_rst));
  cadc_system_cadc_top_0_0_io_bridge u_io
       (.D(p_1_in[18:0]),
        .E(u_sequencer_n_24),
        .Q(s_io_data_out_par),
        .i_channel_active(i_channel_active),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .o_bit_status(o_bit_status),
        .o_out_airspd(o_out_airspd),
        .o_out_alt(o_out_alt),
        .o_out_flap(o_out_flap),
        .o_out_glove(o_out_glove),
        .o_out_mach(o_out_mach),
        .o_out_vspd(o_out_vspd),
        .o_out_wing(o_out_wing),
        .o_t0(s_t0),
        .\s_io_in_sr_reg[18] ({\s_io_in_sr_reg_n_0_[19] ,\s_io_in_sr_reg_n_0_[18] ,\s_io_in_sr_reg_n_0_[17] ,\s_io_in_sr_reg_n_0_[16] ,\s_io_in_sr_reg_n_0_[15] ,\s_io_in_sr_reg_n_0_[14] ,\s_io_in_sr_reg_n_0_[13] ,\s_io_in_sr_reg_n_0_[12] ,\s_io_in_sr_reg_n_0_[11] ,\s_io_in_sr_reg_n_0_[10] ,\s_io_in_sr_reg_n_0_[9] ,\s_io_in_sr_reg_n_0_[8] ,\s_io_in_sr_reg_n_0_[7] ,\s_io_in_sr_reg_n_0_[6] ,\s_io_in_sr_reg_n_0_[5] ,\s_io_in_sr_reg_n_0_[4] ,\s_io_in_sr_reg_n_0_[3] ,\s_io_in_sr_reg_n_0_[2] ,p_0_in}),
        .\s_latched_data_reg[19]_0 (s_latched_data),
        .\s_reg_airspd_reg[19]_0 (u_sequencer_n_27),
        .\s_reg_alt_reg[19]_0 (u_sequencer_n_49),
        .s_reg_bit(s_reg_bit),
        .s_reg_bit_reg_0(u_sequencer_n_1),
        .\s_reg_flap_reg[19]_0 ({s_io_out_sr,\s_io_out_sr_reg_n_0_[0] }),
        .\s_reg_flap_reg[19]_1 (u_sequencer_n_51),
        .\s_reg_glove_reg[19]_0 (u_sequencer_n_28),
        .\s_reg_mach_reg[19]_0 (u_sequencer_n_25),
        .\s_reg_vspd_reg[19]_0 (u_sequencer_n_50),
        .\s_reg_wing_reg[19]_0 (u_sequencer_n_26));
  cadc_system_cadc_top_0_0_pdu u_pdu
       (.D(p_0_in_0),
        .E(s_dividend_lat),
        .\FSM_onehot_s_state_reg[0]_0 (u_timing_n_4),
        .\FSM_onehot_s_state_reg[1]_0 (u_timing_n_2),
        .\FSM_onehot_s_state_reg[2]_0 (u_timing_n_5),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .o_phi2(o_phi2),
        .s_busy_reg_0(u_pdu_n_24),
        .s_busy_reg_1(u_timing_n_18),
        .\s_divisor_lat_reg[1]_0 (u_pdu_n_23),
        .\s_divisor_sr_reg[19]_0 (s_tmp_bit),
        .s_mcand_sr(s_mcand_sr),
        .\s_micro_pc_rep_rep[1]_i_4 (u_sequencer_n_0),
        .s_pdu_busy(s_pdu_busy),
        .s_state(s_state));
  cadc_system_cadc_top_0_0_pmu u_pmu
       (.A({s_tmp_bit,p_0_in_0}),
        .D({s_acc_bit,s_io_out_sr[18:17]}),
        .E(s_mcand_lat),
        .Q({p_1_in_1,u_pmu_n_1}),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .\main_proc.v_product_201_0 (s_io_out_sr[16:1]),
        .o_word_type(o_word_type),
        .s_mcand_sr(s_mcand_sr),
        .\s_product_sr_reg[19]_0 (s_product_sr));
  cadc_system_cadc_top_0_0_control_rom_sequencer u_sequencer
       (.D({u_timing_n_21,u_timing_n_22,u_timing_n_23,u_timing_n_24,u_timing_n_25,u_timing_n_26,u_timing_n_27,u_timing_n_28,u_timing_n_29,u_timing_n_30,u_timing_n_31,u_timing_n_32,u_timing_n_33,u_timing_n_34,u_timing_n_35}),
        .E(E),
        .Q(\s_io_out_sr_reg_n_0_[0] ),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .i_sensor_analog(i_sensor_analog),
        .i_sensor_digital(i_sensor_digital),
        .\i_sensor_digital[19] (s_latched_data),
        .i_sensor_ps(i_sensor_ps),
        .i_sensor_qc(i_sensor_qc),
        .i_sensor_tat(i_sensor_tat),
        .o_t0(s_t0),
        .o_word_type(o_word_type),
        .\s_const_sr_reg[15]_0 ({u_sequencer_n_8,u_sequencer_n_9,u_sequencer_n_10,u_sequencer_n_11,u_sequencer_n_12,u_sequencer_n_13,u_sequencer_n_14,u_sequencer_n_15,u_sequencer_n_16,u_sequencer_n_17,u_sequencer_n_18,u_sequencer_n_19,u_sequencer_n_20,u_sequencer_n_21,u_sequencer_n_22,u_sequencer_n_23}),
        .\s_const_sr_reg[17]_0 (s_const_sr),
        .s_cw_bit(s_cw_bit),
        .\s_cw_sr_reg[1]_0 ({u_sequencer_n_2,u_sequencer_n_3}),
        .\s_cw_sr_reg[43]_0 (s_cw_sr),
        .s_flag_c(s_flag_c),
        .s_flag_n(s_flag_n),
        .s_flag_z(s_flag_z),
        .s_frame_mark(s_frame_mark),
        .\s_io_out_sr_reg[0] (u_sequencer_n_1),
        .\s_micro_pc_reg_rep[8]_0 (u_sequencer_n_4),
        .\s_micro_pc_reg_rep[8]_1 (u_timing_n_0),
        .\s_micro_pc_reg_rep_rep[4]_0 (u_pdu_n_24),
        .\s_micro_pc_reg_rep_rep[8]_0 (u_sequencer_n_0),
        .\s_micro_pc_reg_rep_rep[8]_1 (u_sequencer_n_6),
        .\s_micro_pc_reg_rep_rep[8]_2 (u_sequencer_n_7),
        .\s_micro_pc_reg_rep_rep[9]_0 (u_sequencer_n_24),
        .\s_micro_pc_reg_rep_rep[9]_1 (u_sequencer_n_25),
        .\s_micro_pc_reg_rep_rep[9]_2 (u_sequencer_n_26),
        .\s_micro_pc_reg_rep_rep[9]_3 (u_sequencer_n_27),
        .\s_micro_pc_reg_rep_rep[9]_4 (u_sequencer_n_28),
        .\s_micro_pc_reg_rep_rep[9]_5 (u_sequencer_n_49),
        .\s_micro_pc_reg_rep_rep[9]_6 (u_sequencer_n_50),
        .\s_micro_pc_reg_rep_rep[9]_7 (u_sequencer_n_51),
        .s_pdu_busy(s_pdu_busy),
        .s_reg_bit(s_reg_bit),
        .s_sel_out1({s_sel_out1[2],s_sel_out1[0]}),
        .\s_sel_out1_reg[0] (u_sl_n_0));
  cadc_system_cadc_top_0_0_sl u_sl
       (.D(s_acc_in_bit),
        .Q({p_1_in_1,u_pmu_n_1}),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .o_phi2(o_phi2),
        .o_t0(s_t0),
        .o_word_type(o_word_type),
        .\s_input_sr_reg[19] ({u_sequencer_n_22,u_sequencer_n_23}),
        .\s_input_sr_reg[19]_0 ({p_0_in,\s_io_in_sr_reg_n_0_[0] }),
        .s_phi2_reg_reg(u_sl_n_0),
        .s_sel_out1({s_sel_out1[2],s_sel_out1[0]}),
        .\s_sel_out1_reg[0]_0 (u_sequencer_n_6),
        .\s_sel_out1_reg[2]_0 (u_sequencer_n_7));
  cadc_system_cadc_top_0_0_slf u_slf
       (.A(s_tmp_bit),
        .D(s_acc_bit),
        .E(s_input_sr0),
        .Q(p_19_in),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .o_phi2(o_phi2),
        .o_t0(s_t0),
        .o_t18(s_t18),
        .o_word_type(o_word_type),
        .\s_acc_out_sr_reg[19]_0 (s_tmp_out_sr),
        .\s_acc_out_sr_reg[19]_1 (u_timing_n_10),
        .s_acc_reg15_out(s_acc_reg15_out),
        .s_compute_done(s_compute_done),
        .s_cw_bit(s_cw_bit),
        .\s_cw_bit_cnt_reg[4]_0 (\s_cw_bit_cnt_reg[4] ),
        .\s_cw_sr_reg[4]_0 ({u_sequencer_n_2,u_sequencer_n_3}),
        .s_flag_c(s_flag_c),
        .s_flag_n(s_flag_n),
        .s_flag_z(s_flag_z),
        .\s_input_lat_reg[19]_0 (E),
        .\s_input_sr_reg[19]_0 (s_acc_in_bit),
        .\s_tmp_out_sr_reg[19]_0 (u_timing_n_11),
        .\s_tmp_reg_reg[19]_0 (u_slf_n_8),
        .\s_tmp_reg_reg[19]_1 (s_tmp_reg),
        .s_tmp_we_lat(s_tmp_we_lat));
  cadc_system_cadc_top_0_0_timing_generator u_timing
       (.D(p_1_in[19]),
        .E(s_input_sr0),
        .\FSM_onehot_s_phase_cnt_reg[3]_0 (u_timing_n_0),
        .Q(s_io_data_out_par),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .o_phi2(o_phi2),
        .o_t0(s_t0),
        .o_t18(s_t18),
        .o_t19(o_t19),
        .o_word_type(o_word_type),
        .\s_acc_out_sr_reg[19] (p_19_in),
        .s_acc_reg15_out(s_acc_reg15_out),
        .\s_acc_reg_reg[19] (u_timing_n_10),
        .s_busy_reg(u_pdu_n_23),
        .s_compute_done(s_compute_done),
        .\s_const_sr_reg[14] ({u_sequencer_n_8,u_sequencer_n_9,u_sequencer_n_10,u_sequencer_n_11,u_sequencer_n_12,u_sequencer_n_13,u_sequencer_n_14,u_sequencer_n_15,u_sequencer_n_16,u_sequencer_n_17,u_sequencer_n_18,u_sequencer_n_19,u_sequencer_n_20,u_sequencer_n_21,u_sequencer_n_22}),
        .s_frame_mark(s_frame_mark),
        .\s_micro_pc_reg_rep[8] (u_sequencer_n_4),
        .s_pdu_busy(s_pdu_busy),
        .s_phi2_reg_reg_0(u_timing_n_2),
        .s_phi2_reg_reg_1(u_timing_n_5),
        .s_phi2_reg_reg_2(s_mcand_lat),
        .s_phi2_reg_reg_3(s_product_sr),
        .s_state(s_state),
        .s_t0_reg_reg_0(s_tmp_out_sr),
        .s_t0_reg_reg_1(s_const_sr),
        .s_t0_reg_reg_2(s_cw_sr),
        .s_t18_reg_reg_0(s_tmp_reg),
        .\s_tmp_out_sr_reg[19] (u_slf_n_8),
        .\s_tmp_reg_reg[19] (u_timing_n_11),
        .s_tmp_we_lat(s_tmp_we_lat),
        .s_word_type_reg_reg_0(u_timing_n_4),
        .s_word_type_reg_reg_1(s_dividend_lat),
        .s_word_type_reg_reg_2(u_timing_n_18),
        .s_word_type_reg_reg_3({u_timing_n_21,u_timing_n_22,u_timing_n_23,u_timing_n_24,u_timing_n_25,u_timing_n_26,u_timing_n_27,u_timing_n_28,u_timing_n_29,u_timing_n_30,u_timing_n_31,u_timing_n_32,u_timing_n_33,u_timing_n_34,u_timing_n_35}));
endmodule

(* ORIG_REF_NAME = "cadc_wrapper" *) 
module cadc_system_cadc_top_0_0_cadc_wrapper
   (o_out_mach,
    o_out_alt,
    o_out_airspd,
    o_out_vspd,
    o_out_wing,
    o_out_flap,
    o_out_glove,
    o_bit_status,
    i_channel_active,
    i_rst,
    i_clk_master,
    i_sensor_digital,
    i_sensor_analog,
    i_sensor_ps,
    i_sensor_tat,
    i_sensor_qc);
  output [19:0]o_out_mach;
  output [19:0]o_out_alt;
  output [19:0]o_out_airspd;
  output [19:0]o_out_vspd;
  output [19:0]o_out_wing;
  output [19:0]o_out_flap;
  output [19:0]o_out_glove;
  output o_bit_status;
  input i_channel_active;
  input i_rst;
  input i_clk_master;
  input [19:0]i_sensor_digital;
  input [19:0]i_sensor_analog;
  input [19:0]i_sensor_ps;
  input [19:0]i_sensor_tat;
  input [19:0]i_sensor_qc;

  wire i_channel_active;
  wire i_clk_master;
  wire i_rst;
  wire [19:0]i_sensor_analog;
  wire [19:0]i_sensor_digital;
  wire [19:0]i_sensor_ps;
  wire [19:0]i_sensor_qc;
  wire [19:0]i_sensor_tat;
  wire \main_proc.v_product_201_i_1_n_0 ;
  wire o_bit_status;
  wire [19:0]o_out_airspd;
  wire [19:0]o_out_alt;
  wire [19:0]o_out_flap;
  wire [19:0]o_out_glove;
  wire [19:0]o_out_mach;
  wire [19:0]o_out_vspd;
  wire [19:0]o_out_wing;
  wire \s_cw_bit_cnt[4]_i_1_n_0 ;
  wire s_phi2;
  wire s_t19;
  wire s_word_type;
  wire \u_sequencer/s_micro_pc0 ;

  LUT2 #(
    .INIT(4'h8)) 
    \main_proc.v_product_201_i_1 
       (.I0(s_phi2),
        .I1(s_word_type),
        .O(\main_proc.v_product_201_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_bit_cnt[4]_i_1 
       (.I0(s_phi2),
        .I1(s_word_type),
        .O(\s_cw_bit_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_micro_pc_rep_rep[9]_i_1 
       (.I0(s_phi2),
        .I1(s_word_type),
        .I2(s_t19),
        .O(\u_sequencer/s_micro_pc0 ));
  cadc_system_cadc_top_0_0_cadc_top u_cadc_top
       (.E(\u_sequencer/s_micro_pc0 ),
        .i_channel_active(i_channel_active),
        .i_clk_master(i_clk_master),
        .i_rst(i_rst),
        .i_sensor_analog(i_sensor_analog),
        .i_sensor_digital(i_sensor_digital),
        .i_sensor_ps(i_sensor_ps),
        .i_sensor_qc(i_sensor_qc),
        .i_sensor_tat(i_sensor_tat),
        .o_bit_status(o_bit_status),
        .o_out_airspd(o_out_airspd),
        .o_out_alt(o_out_alt),
        .o_out_flap(o_out_flap),
        .o_out_glove(o_out_glove),
        .o_out_mach(o_out_mach),
        .o_out_vspd(o_out_vspd),
        .o_out_wing(o_out_wing),
        .o_phi2(s_phi2),
        .o_t19(s_t19),
        .o_word_type(s_word_type),
        .\s_cw_bit_cnt_reg[4] (\s_cw_bit_cnt[4]_i_1_n_0 ),
        .s_mcand_sr(\main_proc.v_product_201_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "control_rom_sequencer" *) 
module cadc_system_cadc_top_0_0_control_rom_sequencer
   (\s_micro_pc_reg_rep_rep[8]_0 ,
    \s_io_out_sr_reg[0] ,
    \s_cw_sr_reg[1]_0 ,
    \s_micro_pc_reg_rep[8]_0 ,
    s_cw_bit,
    \s_micro_pc_reg_rep_rep[8]_1 ,
    \s_micro_pc_reg_rep_rep[8]_2 ,
    \s_const_sr_reg[15]_0 ,
    \s_micro_pc_reg_rep_rep[9]_0 ,
    \s_micro_pc_reg_rep_rep[9]_1 ,
    \s_micro_pc_reg_rep_rep[9]_2 ,
    \s_micro_pc_reg_rep_rep[9]_3 ,
    \s_micro_pc_reg_rep_rep[9]_4 ,
    \i_sensor_digital[19] ,
    \s_micro_pc_reg_rep_rep[9]_5 ,
    \s_micro_pc_reg_rep_rep[9]_6 ,
    \s_micro_pc_reg_rep_rep[9]_7 ,
    s_frame_mark,
    \s_micro_pc_reg_rep_rep[4]_0 ,
    s_flag_z,
    s_flag_n,
    o_word_type,
    Q,
    s_reg_bit,
    \s_micro_pc_reg_rep[8]_1 ,
    E,
    s_pdu_busy,
    s_flag_c,
    o_t0,
    \s_sel_out1_reg[0] ,
    s_sel_out1,
    i_rst,
    i_clk_master,
    \s_cw_sr_reg[43]_0 ,
    \s_const_sr_reg[17]_0 ,
    D,
    i_sensor_digital,
    i_sensor_analog,
    i_sensor_ps,
    i_sensor_tat,
    i_sensor_qc);
  output \s_micro_pc_reg_rep_rep[8]_0 ;
  output \s_io_out_sr_reg[0] ;
  output [1:0]\s_cw_sr_reg[1]_0 ;
  output \s_micro_pc_reg_rep[8]_0 ;
  output s_cw_bit;
  output \s_micro_pc_reg_rep_rep[8]_1 ;
  output \s_micro_pc_reg_rep_rep[8]_2 ;
  output [15:0]\s_const_sr_reg[15]_0 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_0 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_1 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_2 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_3 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_4 ;
  output [19:0]\i_sensor_digital[19] ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_5 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_6 ;
  output [0:0]\s_micro_pc_reg_rep_rep[9]_7 ;
  input s_frame_mark;
  input \s_micro_pc_reg_rep_rep[4]_0 ;
  input s_flag_z;
  input s_flag_n;
  input o_word_type;
  input [0:0]Q;
  input s_reg_bit;
  input \s_micro_pc_reg_rep[8]_1 ;
  input [0:0]E;
  input s_pdu_busy;
  input s_flag_c;
  input o_t0;
  input \s_sel_out1_reg[0] ;
  input [1:0]s_sel_out1;
  input i_rst;
  input i_clk_master;
  input [0:0]\s_cw_sr_reg[43]_0 ;
  input [0:0]\s_const_sr_reg[17]_0 ;
  input [14:0]D;
  input [19:0]i_sensor_digital;
  input [19:0]i_sensor_analog;
  input [19:0]i_sensor_ps;
  input [19:0]i_sensor_tat;
  input [19:0]i_sensor_qc;

  wire [14:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [9:0]data0;
  wire i_clk_master;
  wire i_rst;
  wire [19:0]i_sensor_analog;
  wire [19:0]i_sensor_digital;
  wire [19:0]\i_sensor_digital[19] ;
  wire [19:0]i_sensor_ps;
  wire [19:0]i_sensor_qc;
  wire [19:0]i_sensor_tat;
  wire o_t0;
  wire o_word_type;
  wire \s_const_sr[15]_i_1_n_0 ;
  wire \s_const_sr[16]_i_1_n_0 ;
  wire \s_const_sr[17]_i_10_n_0 ;
  wire \s_const_sr[17]_i_2_n_0 ;
  wire \s_const_sr[17]_i_3_n_0 ;
  wire \s_const_sr[17]_i_4_n_0 ;
  wire \s_const_sr[17]_i_5_n_0 ;
  wire \s_const_sr[17]_i_6_n_0 ;
  wire \s_const_sr[17]_i_7_n_0 ;
  wire \s_const_sr[17]_i_8_n_0 ;
  wire \s_const_sr[17]_i_9_n_0 ;
  wire [15:0]\s_const_sr_reg[15]_0 ;
  wire [0:0]\s_const_sr_reg[17]_0 ;
  wire \s_const_sr_reg_n_0_[16] ;
  wire \s_const_sr_reg_n_0_[17] ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0 ;
  wire \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4_n_0 ;
  wire s_cw_bit;
  wire \s_cw_sr[0]_i_1_n_0 ;
  wire \s_cw_sr[10]_i_1_n_0 ;
  wire \s_cw_sr[11]_i_1_n_0 ;
  wire \s_cw_sr[12]_i_1_n_0 ;
  wire \s_cw_sr[13]_i_1_n_0 ;
  wire \s_cw_sr[14]_i_1_n_0 ;
  wire \s_cw_sr[15]_i_1_n_0 ;
  wire \s_cw_sr[16]_i_1_n_0 ;
  wire \s_cw_sr[17]_i_1_n_0 ;
  wire \s_cw_sr[18]_i_1_n_0 ;
  wire \s_cw_sr[19]_i_1_n_0 ;
  wire \s_cw_sr[1]_i_1_n_0 ;
  wire \s_cw_sr[1]_i_3_n_0 ;
  wire \s_cw_sr[20]_i_1_n_0 ;
  wire \s_cw_sr[21]_i_1_n_0 ;
  wire \s_cw_sr[22]_i_1_n_0 ;
  wire \s_cw_sr[23]_i_1_n_0 ;
  wire \s_cw_sr[24]_i_1_n_0 ;
  wire \s_cw_sr[25]_i_1_n_0 ;
  wire \s_cw_sr[26]_i_1_n_0 ;
  wire \s_cw_sr[27]_i_1_n_0 ;
  wire \s_cw_sr[28]_i_1_n_0 ;
  wire \s_cw_sr[29]_i_1_n_0 ;
  wire \s_cw_sr[2]_i_1_n_0 ;
  wire \s_cw_sr[30]_i_1_n_0 ;
  wire \s_cw_sr[31]_i_1_n_0 ;
  wire \s_cw_sr[32]_i_1_n_0 ;
  wire \s_cw_sr[33]_i_1_n_0 ;
  wire \s_cw_sr[34]_i_1_n_0 ;
  wire \s_cw_sr[35]_i_1_n_0 ;
  wire \s_cw_sr[36]_i_1_n_0 ;
  wire \s_cw_sr[37]_i_1_n_0 ;
  wire \s_cw_sr[38]_i_1_n_0 ;
  wire \s_cw_sr[39]_i_1_n_0 ;
  wire \s_cw_sr[3]_i_1_n_0 ;
  wire \s_cw_sr[3]_i_3__0_n_0 ;
  wire \s_cw_sr[40]_i_1_n_0 ;
  wire \s_cw_sr[41]_i_1_n_0 ;
  wire \s_cw_sr[42]_i_1_n_0 ;
  wire \s_cw_sr[43]_i_2_n_0 ;
  wire \s_cw_sr[43]_i_4_n_0 ;
  wire \s_cw_sr[4]_i_1_n_0 ;
  wire \s_cw_sr[5]_i_1_n_0 ;
  wire \s_cw_sr[6]_i_1_n_0 ;
  wire \s_cw_sr[7]_i_1_n_0 ;
  wire \s_cw_sr[8]_i_1_n_0 ;
  wire \s_cw_sr[9]_i_1_n_0 ;
  wire [1:0]\s_cw_sr_reg[1]_0 ;
  wire [0:0]\s_cw_sr_reg[43]_0 ;
  wire \s_cw_sr_reg_n_0_[10] ;
  wire \s_cw_sr_reg_n_0_[11] ;
  wire \s_cw_sr_reg_n_0_[12] ;
  wire \s_cw_sr_reg_n_0_[13] ;
  wire \s_cw_sr_reg_n_0_[14] ;
  wire \s_cw_sr_reg_n_0_[15] ;
  wire \s_cw_sr_reg_n_0_[16] ;
  wire \s_cw_sr_reg_n_0_[17] ;
  wire \s_cw_sr_reg_n_0_[18] ;
  wire \s_cw_sr_reg_n_0_[19] ;
  wire \s_cw_sr_reg_n_0_[20] ;
  wire \s_cw_sr_reg_n_0_[21] ;
  wire \s_cw_sr_reg_n_0_[22] ;
  wire \s_cw_sr_reg_n_0_[23] ;
  wire \s_cw_sr_reg_n_0_[24] ;
  wire \s_cw_sr_reg_n_0_[25] ;
  wire \s_cw_sr_reg_n_0_[26] ;
  wire \s_cw_sr_reg_n_0_[27] ;
  wire \s_cw_sr_reg_n_0_[28] ;
  wire \s_cw_sr_reg_n_0_[29] ;
  wire \s_cw_sr_reg_n_0_[2] ;
  wire \s_cw_sr_reg_n_0_[30] ;
  wire \s_cw_sr_reg_n_0_[31] ;
  wire \s_cw_sr_reg_n_0_[32] ;
  wire \s_cw_sr_reg_n_0_[33] ;
  wire \s_cw_sr_reg_n_0_[34] ;
  wire \s_cw_sr_reg_n_0_[35] ;
  wire \s_cw_sr_reg_n_0_[36] ;
  wire \s_cw_sr_reg_n_0_[37] ;
  wire \s_cw_sr_reg_n_0_[38] ;
  wire \s_cw_sr_reg_n_0_[39] ;
  wire \s_cw_sr_reg_n_0_[3] ;
  wire \s_cw_sr_reg_n_0_[40] ;
  wire \s_cw_sr_reg_n_0_[41] ;
  wire \s_cw_sr_reg_n_0_[42] ;
  wire \s_cw_sr_reg_n_0_[43] ;
  wire \s_cw_sr_reg_n_0_[4] ;
  wire \s_cw_sr_reg_n_0_[5] ;
  wire \s_cw_sr_reg_n_0_[6] ;
  wire \s_cw_sr_reg_n_0_[7] ;
  wire \s_cw_sr_reg_n_0_[8] ;
  wire \s_cw_sr_reg_n_0_[9] ;
  wire s_flag_c;
  wire s_flag_n;
  wire s_flag_z;
  wire s_frame_mark;
  wire \s_io_out_sr_reg[0] ;
  wire \s_latched_data[0]_i_2_n_0 ;
  wire \s_latched_data[10]_i_2_n_0 ;
  wire \s_latched_data[11]_i_2_n_0 ;
  wire \s_latched_data[12]_i_2_n_0 ;
  wire \s_latched_data[13]_i_2_n_0 ;
  wire \s_latched_data[14]_i_2_n_0 ;
  wire \s_latched_data[15]_i_2_n_0 ;
  wire \s_latched_data[16]_i_2_n_0 ;
  wire \s_latched_data[17]_i_2_n_0 ;
  wire \s_latched_data[18]_i_2_n_0 ;
  wire \s_latched_data[19]_i_10_n_0 ;
  wire \s_latched_data[19]_i_11_n_0 ;
  wire \s_latched_data[19]_i_12_n_0 ;
  wire \s_latched_data[19]_i_3_n_0 ;
  wire \s_latched_data[19]_i_4_n_0 ;
  wire \s_latched_data[19]_i_5_n_0 ;
  wire \s_latched_data[19]_i_6_n_0 ;
  wire \s_latched_data[19]_i_7_n_0 ;
  wire \s_latched_data[19]_i_8_n_0 ;
  wire \s_latched_data[19]_i_9_n_0 ;
  wire \s_latched_data[1]_i_2_n_0 ;
  wire \s_latched_data[2]_i_2_n_0 ;
  wire \s_latched_data[3]_i_2_n_0 ;
  wire \s_latched_data[4]_i_2_n_0 ;
  wire \s_latched_data[5]_i_2_n_0 ;
  wire \s_latched_data[6]_i_2_n_0 ;
  wire \s_latched_data[7]_i_2_n_0 ;
  wire \s_latched_data[8]_i_2_n_0 ;
  wire \s_latched_data[9]_i_2_n_0 ;
  wire [9:0]s_micro_pc;
  wire \s_micro_pc_reg_rep[8]_0 ;
  wire \s_micro_pc_reg_rep[8]_1 ;
  wire \s_micro_pc_reg_rep_n_0_[0] ;
  wire \s_micro_pc_reg_rep_n_0_[1] ;
  wire \s_micro_pc_reg_rep_n_0_[2] ;
  wire \s_micro_pc_reg_rep_n_0_[3] ;
  wire \s_micro_pc_reg_rep_n_0_[4] ;
  wire \s_micro_pc_reg_rep_n_0_[5] ;
  wire \s_micro_pc_reg_rep_n_0_[6] ;
  wire \s_micro_pc_reg_rep_n_0_[7] ;
  wire \s_micro_pc_reg_rep_n_0_[8] ;
  wire \s_micro_pc_reg_rep_n_0_[9] ;
  wire \s_micro_pc_reg_rep_rep[4]_0 ;
  wire \s_micro_pc_reg_rep_rep[8]_0 ;
  wire \s_micro_pc_reg_rep_rep[8]_1 ;
  wire \s_micro_pc_reg_rep_rep[8]_2 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_0 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_1 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_2 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_3 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_4 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_5 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_6 ;
  wire [0:0]\s_micro_pc_reg_rep_rep[9]_7 ;
  wire \s_micro_pc_rep_rep[0]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[0]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[0]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[0]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[0]_i_6_n_0 ;
  wire \s_micro_pc_rep_rep[0]_i_7_n_0 ;
  wire \s_micro_pc_rep_rep[1]_i_1_n_0 ;
  wire \s_micro_pc_rep_rep[1]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[1]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[1]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[1]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[1]_i_6_n_0 ;
  wire \s_micro_pc_rep_rep[2]_i_1_n_0 ;
  wire \s_micro_pc_rep_rep[2]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[2]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[2]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[2]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[3]_i_1_n_0 ;
  wire \s_micro_pc_rep_rep[3]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[3]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[3]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[3]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[3]_i_6_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_1_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_6_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_7_n_0 ;
  wire \s_micro_pc_rep_rep[4]_i_9_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_10_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_11_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_12_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_7_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_8_n_0 ;
  wire \s_micro_pc_rep_rep[5]_i_9_n_0 ;
  wire \s_micro_pc_rep_rep[6]_i_1_n_0 ;
  wire \s_micro_pc_rep_rep[6]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[6]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[6]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[7]_i_1_n_0 ;
  wire \s_micro_pc_rep_rep[7]_i_2_n_0 ;
  wire \s_micro_pc_rep_rep[7]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[7]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[7]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[8]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[8]_i_6_n_0 ;
  wire \s_micro_pc_rep_rep[8]_i_7_n_0 ;
  wire \s_micro_pc_rep_rep[8]_i_8_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_10_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_11_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_12_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_13_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_14_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_15_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_16_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_17_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_18_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_19_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_3_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_4_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_5_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_6_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_7_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_8_n_0 ;
  wire \s_micro_pc_rep_rep[9]_i_9_n_0 ;
  wire [9:0]s_next_pc;
  wire s_pdu_busy;
  wire s_reg_bit;
  wire \s_ret_stack[0][9]_i_1_n_0 ;
  wire \s_ret_stack[1][9]_i_1_n_0 ;
  wire \s_ret_stack[2][2]_i_1_n_0 ;
  wire \s_ret_stack[2][3]_i_1_n_0 ;
  wire \s_ret_stack[2][4]_i_1_n_0 ;
  wire \s_ret_stack[2][9]_i_1_n_0 ;
  wire \s_ret_stack[2][9]_i_3_n_0 ;
  wire \s_ret_stack[2][9]_i_4_n_0 ;
  wire [9:0]\s_ret_stack_reg[0]_2 ;
  wire [9:0]\s_ret_stack_reg[1]_1 ;
  wire [9:0]\s_ret_stack_reg[2]_0 ;
  wire [1:0]s_sel_out1;
  wire \s_sel_out1[0]_i_2_n_0 ;
  wire \s_sel_out1[2]_i_2_n_0 ;
  wire \s_sel_out1[2]_i_3_n_0 ;
  wire \s_sel_out1_reg[0] ;
  wire [0:0]s_stack_ptr;
  wire \s_stack_ptr[0]_i_1_n_0 ;
  wire \s_stack_ptr[1]_i_1_n_0 ;
  wire \s_stack_ptr[1]_i_2_n_0 ;
  wire \s_stack_ptr[1]_i_4_n_0 ;
  wire \s_stack_ptr[1]_i_5_n_0 ;
  wire [1:0]s_stack_ptr_reg;

  LUT6 #(
    .INIT(64'h888888888B888888)) 
    \s_const_sr[15]_i_1 
       (.I0(\s_const_sr_reg_n_0_[16] ),
        .I1(o_word_type),
        .I2(\s_const_sr[17]_i_6_n_0 ),
        .I3(\s_const_sr[17]_i_5_n_0 ),
        .I4(\s_const_sr[17]_i_4_n_0 ),
        .I5(\s_const_sr[17]_i_3_n_0 ),
        .O(\s_const_sr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888888B)) 
    \s_const_sr[16]_i_1 
       (.I0(\s_const_sr_reg_n_0_[17] ),
        .I1(o_word_type),
        .I2(\s_const_sr[17]_i_6_n_0 ),
        .I3(\s_const_sr[17]_i_5_n_0 ),
        .I4(\s_const_sr[17]_i_3_n_0 ),
        .O(\s_const_sr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h074002002A180000)) 
    \s_const_sr[17]_i_10 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[0]),
        .I2(s_micro_pc[3]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[4]),
        .I5(s_micro_pc[1]),
        .O(\s_const_sr[17]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000014)) 
    \s_const_sr[17]_i_2 
       (.I0(\s_const_sr[17]_i_3_n_0 ),
        .I1(\s_const_sr[17]_i_4_n_0 ),
        .I2(\s_const_sr[17]_i_5_n_0 ),
        .I3(\s_const_sr[17]_i_6_n_0 ),
        .I4(o_word_type),
        .O(\s_const_sr[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_const_sr[17]_i_3 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_const_sr[17]_i_7_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_const_sr[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_const_sr[17]_i_4 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_const_sr[17]_i_8_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_const_sr[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_const_sr[17]_i_5 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_const_sr[17]_i_9_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_const_sr[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_const_sr[17]_i_6 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_const_sr[17]_i_10_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_const_sr[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h320141003A000000)) 
    \s_const_sr[17]_i_7 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[3]),
        .I2(s_micro_pc[1]),
        .I3(s_micro_pc[4]),
        .I4(s_micro_pc[5]),
        .I5(s_micro_pc[0]),
        .O(\s_const_sr[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1000011288080000)) 
    \s_const_sr[17]_i_8 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[5]),
        .I2(s_micro_pc[4]),
        .I3(s_micro_pc[0]),
        .I4(s_micro_pc[1]),
        .I5(s_micro_pc[3]),
        .O(\s_const_sr[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000090280000008)) 
    \s_const_sr[17]_i_9 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[1]),
        .I2(s_micro_pc[5]),
        .I3(s_micro_pc[4]),
        .I4(s_micro_pc[0]),
        .I5(s_micro_pc[3]),
        .O(\s_const_sr[17]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[0] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[0]),
        .Q(\s_const_sr_reg[15]_0 [0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[10] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[10]),
        .Q(\s_const_sr_reg[15]_0 [10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[11] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[11]),
        .Q(\s_const_sr_reg[15]_0 [11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[12] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[12]),
        .Q(\s_const_sr_reg[15]_0 [12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[13] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[13]),
        .Q(\s_const_sr_reg[15]_0 [13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[14] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[14]),
        .Q(\s_const_sr_reg[15]_0 [14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[15] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(\s_const_sr[15]_i_1_n_0 ),
        .Q(\s_const_sr_reg[15]_0 [15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[16] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(\s_const_sr[16]_i_1_n_0 ),
        .Q(\s_const_sr_reg_n_0_[16] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[17] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(\s_const_sr[17]_i_2_n_0 ),
        .Q(\s_const_sr_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[1] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[1]),
        .Q(\s_const_sr_reg[15]_0 [1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[2] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[2]),
        .Q(\s_const_sr_reg[15]_0 [2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[3] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[3]),
        .Q(\s_const_sr_reg[15]_0 [3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[4] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[4]),
        .Q(\s_const_sr_reg[15]_0 [4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[5] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[5]),
        .Q(\s_const_sr_reg[15]_0 [5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[6] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[6]),
        .Q(\s_const_sr_reg[15]_0 [6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[7] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[7]),
        .Q(\s_const_sr_reg[15]_0 [7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[8] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[8]),
        .Q(\s_const_sr_reg[15]_0 [8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_const_sr_reg[9] 
       (.C(i_clk_master),
        .CE(\s_const_sr_reg[17]_0 ),
        .D(D[9]),
        .Q(\s_const_sr_reg[15]_0 [9]),
        .R(i_rst));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001E00A7)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I3(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(s_next_pc[5]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I2(\s_cw_sr[1]_i_3_n_0 ),
        .I3(s_next_pc[5]),
        .I4(s_next_pc[0]),
        .I5(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200060106)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000009208)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I2(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I3(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I4(s_next_pc[5]),
        .I5(s_next_pc[0]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h048000A001000600)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400F0002000A440)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02007A2041000800)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I3(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(s_next_pc[5]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200FA8041000C00)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I3(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(s_next_pc[5]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200F0A02000A040)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054080408)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2 
       (.I0(s_next_pc[0]),
        .I1(\s_cw_sr[3]_i_3__0_n_0 ),
        .I2(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I3(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I4(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0 ),
        .I5(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0018E2000805A060)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I2(s_next_pc[0]),
        .I3(s_next_pc[5]),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100700C04110088)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I3(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I5(s_next_pc[5]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0620040000A001C8)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8880000)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3 
       (.I0(\s_cw_sr[43]_i_4_n_0 ),
        .I1(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I2(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I3(\s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5_n_0 ),
        .I4(s_next_pc[5]),
        .I5(s_next_pc[0]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5 
       (.I0(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010A00000E06)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2 
       (.I0(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I2(\s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I4(s_next_pc[9]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040600000708)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3 
       (.I0(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I1(s_next_pc[0]),
        .I2(s_next_pc[5]),
        .I3(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I4(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D08D484)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2 
       (.I0(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .I1(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0 ),
        .I2(s_next_pc[0]),
        .I3(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4_n_0 ),
        .I4(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .I5(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3 
       (.I0(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I2(s_next_pc[5]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4 
       (.I0(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I2(s_next_pc[5]),
        .O(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[0]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg[1]_0 [1]),
        .O(\s_cw_sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[10]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[11] ),
        .I1(o_word_type),
        .O(\s_cw_sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[11]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[12] ),
        .I1(o_word_type),
        .O(\s_cw_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[12]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[13] ),
        .I1(o_word_type),
        .O(\s_cw_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[13]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[14] ),
        .I1(o_word_type),
        .O(\s_cw_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[14]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[15] ),
        .I1(o_word_type),
        .O(\s_cw_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[15]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[16] ),
        .I1(o_word_type),
        .O(\s_cw_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[16]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[17] ),
        .I1(o_word_type),
        .O(\s_cw_sr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[17]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[18] ),
        .I1(o_word_type),
        .O(\s_cw_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[18]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[19] ),
        .I1(o_word_type),
        .O(\s_cw_sr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[19]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[20] ),
        .I1(o_word_type),
        .O(\s_cw_sr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \s_cw_sr[1]_i_1 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I3(s_next_pc[9]),
        .I4(o_word_type),
        .I5(\s_cw_sr_reg_n_0_[2] ),
        .O(\s_cw_sr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[1]_i_3 
       (.I0(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .O(\s_cw_sr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[20]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[21] ),
        .I1(o_word_type),
        .O(\s_cw_sr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[21]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[22] ),
        .I1(o_word_type),
        .O(\s_cw_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[22]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[23] ),
        .I1(o_word_type),
        .O(\s_cw_sr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[23]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[24] ),
        .I1(o_word_type),
        .O(\s_cw_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[24]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[25] ),
        .I1(o_word_type),
        .O(\s_cw_sr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[25]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[26] ),
        .I1(o_word_type),
        .O(\s_cw_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[26]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[27] ),
        .I1(o_word_type),
        .O(\s_cw_sr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[27]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[28] ),
        .I1(o_word_type),
        .O(\s_cw_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[28]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[29] ),
        .I1(o_word_type),
        .O(\s_cw_sr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[29]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[30] ),
        .I1(o_word_type),
        .O(\s_cw_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[2]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[3] ),
        .O(\s_cw_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[30]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[31] ),
        .I1(o_word_type),
        .O(\s_cw_sr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[31]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[32] ),
        .I1(o_word_type),
        .O(\s_cw_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[32]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[33] ),
        .O(\s_cw_sr[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[33]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[34] ),
        .O(\s_cw_sr[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[34]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[35] ),
        .O(\s_cw_sr[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[35]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[36] ),
        .O(\s_cw_sr[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[36]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[37] ),
        .O(\s_cw_sr[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[37]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[38] ),
        .O(\s_cw_sr[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[38]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[39] ),
        .I1(o_word_type),
        .O(\s_cw_sr[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[39]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[40] ),
        .I1(o_word_type),
        .O(\s_cw_sr[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \s_cw_sr[3]_i_1 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I3(s_next_pc[9]),
        .I4(o_word_type),
        .I5(\s_cw_sr_reg_n_0_[4] ),
        .O(\s_cw_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[3]_i_3 
       (.I0(\s_cw_sr_reg[1]_0 [0]),
        .I1(o_t0),
        .I2(\s_cw_sr_reg[1]_0 [1]),
        .O(s_cw_bit));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_cw_sr[3]_i_3__0 
       (.I0(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .I1(s_next_pc[5]),
        .O(\s_cw_sr[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[40]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[41] ),
        .O(\s_cw_sr[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[41]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[42] ),
        .O(\s_cw_sr[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[42]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[43] ),
        .O(\s_cw_sr[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \s_cw_sr[43]_i_2 
       (.I0(o_word_type),
        .I1(s_next_pc[9]),
        .I2(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I3(\s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .I5(\s_micro_pc_reg_rep[8]_1 ),
        .O(\s_cw_sr[43]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_cw_sr[43]_i_4 
       (.I0(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .O(\s_cw_sr[43]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[4]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[5] ),
        .O(\s_cw_sr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_cw_sr[5]_i_1 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2_n_0 ),
        .I2(s_next_pc[9]),
        .I3(o_word_type),
        .I4(\s_cw_sr_reg_n_0_[6] ),
        .O(\s_cw_sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[6]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[7] ),
        .I1(o_word_type),
        .O(\s_cw_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_cw_sr[7]_i_1 
       (.I0(\s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2_n_0 ),
        .I1(o_word_type),
        .I2(\s_cw_sr_reg_n_0_[8] ),
        .O(\s_cw_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_cw_sr[8]_i_1 
       (.I0(\s_cw_sr_reg_n_0_[9] ),
        .I1(o_word_type),
        .O(\s_cw_sr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \s_cw_sr[9]_i_1 
       (.I0(\s_micro_pc_reg_rep[8]_1 ),
        .I1(\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .I3(s_next_pc[9]),
        .I4(o_word_type),
        .I5(\s_cw_sr_reg_n_0_[10] ),
        .O(\s_cw_sr[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[0] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[0]_i_1_n_0 ),
        .Q(\s_cw_sr_reg[1]_0 [0]),
        .S(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[10] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[10]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[10] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[11] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[11]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[11] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[12] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[12]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[12] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[13] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[13]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[13] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[14] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[14]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[14] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[15] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[15]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[15] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[16] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[16]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[16] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[17] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[17]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[18] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[18]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[18] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[19] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[19]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[19] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[1] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[1]_i_1_n_0 ),
        .Q(\s_cw_sr_reg[1]_0 [1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[20] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[20]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[20] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[21] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[21]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[21] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[22] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[22]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[22] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[23] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[23]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[23] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[24] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[24]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[24] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[25] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[25]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[25] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[26] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[26]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[26] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[27] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[27]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[27] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[28] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[28]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[28] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[29] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[29]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[29] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[2] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[2]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[30] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[30]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[30] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[31] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[31]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[31] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[32] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[32]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[32] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[33] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[33]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[33] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[34] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[34]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[34] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[35] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[35]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[35] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[36] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[36]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[36] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[37] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[37]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[37] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[38] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[38]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[38] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[39] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[39]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[39] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[3] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[3]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[40] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[40]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[40] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[41] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[41]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[41] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[42] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[42]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[42] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[43] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[43]_i_2_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[43] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[4] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[4]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[5] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[5]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[6] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[6]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[7] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[7]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[8] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[8]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[8] ),
        .R(i_rst));
  FDSE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[9] 
       (.C(i_clk_master),
        .CE(\s_cw_sr_reg[43]_0 ),
        .D(\s_cw_sr[9]_i_1_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[9] ),
        .S(i_rst));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[0]_i_1 
       (.I0(i_sensor_digital[0]),
        .I1(i_sensor_analog[0]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[0]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[0]),
        .O(\i_sensor_digital[19] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[0]_i_2 
       (.I0(i_sensor_tat[0]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[0]),
        .O(\s_latched_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[10]_i_1 
       (.I0(i_sensor_digital[10]),
        .I1(i_sensor_analog[10]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[10]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[10]),
        .O(\i_sensor_digital[19] [10]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[10]_i_2 
       (.I0(i_sensor_tat[10]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[10]),
        .O(\s_latched_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[11]_i_1 
       (.I0(i_sensor_digital[11]),
        .I1(i_sensor_analog[11]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[11]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[11]),
        .O(\i_sensor_digital[19] [11]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[11]_i_2 
       (.I0(i_sensor_tat[11]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[11]),
        .O(\s_latched_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[12]_i_1 
       (.I0(i_sensor_digital[12]),
        .I1(i_sensor_analog[12]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[12]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[12]),
        .O(\i_sensor_digital[19] [12]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[12]_i_2 
       (.I0(i_sensor_tat[12]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[12]),
        .O(\s_latched_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[13]_i_1 
       (.I0(i_sensor_digital[13]),
        .I1(i_sensor_analog[13]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[13]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[13]),
        .O(\i_sensor_digital[19] [13]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[13]_i_2 
       (.I0(i_sensor_tat[13]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[13]),
        .O(\s_latched_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[14]_i_1 
       (.I0(i_sensor_digital[14]),
        .I1(i_sensor_analog[14]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[14]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[14]),
        .O(\i_sensor_digital[19] [14]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[14]_i_2 
       (.I0(i_sensor_tat[14]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[14]),
        .O(\s_latched_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[15]_i_1 
       (.I0(i_sensor_digital[15]),
        .I1(i_sensor_analog[15]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[15]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[15]),
        .O(\i_sensor_digital[19] [15]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[15]_i_2 
       (.I0(i_sensor_tat[15]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[15]),
        .O(\s_latched_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[16]_i_1 
       (.I0(i_sensor_digital[16]),
        .I1(i_sensor_analog[16]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[16]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[16]),
        .O(\i_sensor_digital[19] [16]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[16]_i_2 
       (.I0(i_sensor_tat[16]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[16]),
        .O(\s_latched_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[17]_i_1 
       (.I0(i_sensor_digital[17]),
        .I1(i_sensor_analog[17]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[17]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[17]),
        .O(\i_sensor_digital[19] [17]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[17]_i_2 
       (.I0(i_sensor_tat[17]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[17]),
        .O(\s_latched_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[18]_i_1 
       (.I0(i_sensor_digital[18]),
        .I1(i_sensor_analog[18]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[18]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[18]),
        .O(\i_sensor_digital[19] [18]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[18]_i_2 
       (.I0(i_sensor_tat[18]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[18]),
        .O(\s_latched_data[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h1154)) 
    \s_latched_data[19]_i_1 
       (.I0(\s_latched_data[19]_i_3_n_0 ),
        .I1(\s_latched_data[19]_i_4_n_0 ),
        .I2(\s_latched_data[19]_i_5_n_0 ),
        .I3(\s_latched_data[19]_i_6_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_latched_data[19]_i_10 
       (.I0(s_micro_pc[3]),
        .I1(s_micro_pc[0]),
        .I2(s_micro_pc[4]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[1]),
        .I5(s_micro_pc[2]),
        .O(\s_latched_data[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000001A000000E7)) 
    \s_latched_data[19]_i_11 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[0]),
        .I2(s_micro_pc[3]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[4]),
        .I5(s_micro_pc[1]),
        .O(\s_latched_data[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000020005010A)) 
    \s_latched_data[19]_i_12 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[3]),
        .I2(s_micro_pc[5]),
        .I3(s_micro_pc[4]),
        .I4(s_micro_pc[0]),
        .I5(s_micro_pc[1]),
        .O(\s_latched_data[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[19]_i_2 
       (.I0(i_sensor_digital[19]),
        .I1(i_sensor_analog[19]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[19]_i_7_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[19]),
        .O(\i_sensor_digital[19] [19]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_latched_data[19]_i_3 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_latched_data[19]_i_9_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(o_word_type),
        .O(\s_latched_data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_latched_data[19]_i_4 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_latched_data[19]_i_10_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(o_word_type),
        .O(\s_latched_data[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_latched_data[19]_i_5 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_latched_data[19]_i_11_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(o_word_type),
        .O(\s_latched_data[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_latched_data[19]_i_6 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_latched_data[19]_i_12_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(o_word_type),
        .O(\s_latched_data[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[19]_i_7 
       (.I0(i_sensor_tat[19]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[19]),
        .O(\s_latched_data[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[19]_i_8 
       (.I0(\s_latched_data[19]_i_5_n_0 ),
        .I1(\s_latched_data[19]_i_6_n_0 ),
        .I2(\s_latched_data[19]_i_4_n_0 ),
        .O(\s_latched_data[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000040000003C)) 
    \s_latched_data[19]_i_9 
       (.I0(s_micro_pc[3]),
        .I1(s_micro_pc[2]),
        .I2(s_micro_pc[0]),
        .I3(s_micro_pc[4]),
        .I4(s_micro_pc[5]),
        .I5(s_micro_pc[1]),
        .O(\s_latched_data[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[1]_i_1 
       (.I0(i_sensor_digital[1]),
        .I1(i_sensor_analog[1]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[1]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[1]),
        .O(\i_sensor_digital[19] [1]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[1]_i_2 
       (.I0(i_sensor_tat[1]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[1]),
        .O(\s_latched_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[2]_i_1 
       (.I0(i_sensor_digital[2]),
        .I1(i_sensor_analog[2]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[2]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[2]),
        .O(\i_sensor_digital[19] [2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[2]_i_2 
       (.I0(i_sensor_tat[2]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[2]),
        .O(\s_latched_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[3]_i_1 
       (.I0(i_sensor_digital[3]),
        .I1(i_sensor_analog[3]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[3]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[3]),
        .O(\i_sensor_digital[19] [3]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[3]_i_2 
       (.I0(i_sensor_tat[3]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[3]),
        .O(\s_latched_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[4]_i_1 
       (.I0(i_sensor_digital[4]),
        .I1(i_sensor_analog[4]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[4]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[4]),
        .O(\i_sensor_digital[19] [4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[4]_i_2 
       (.I0(i_sensor_tat[4]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[4]),
        .O(\s_latched_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[5]_i_1 
       (.I0(i_sensor_digital[5]),
        .I1(i_sensor_analog[5]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[5]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[5]),
        .O(\i_sensor_digital[19] [5]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[5]_i_2 
       (.I0(i_sensor_tat[5]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[5]),
        .O(\s_latched_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[6]_i_1 
       (.I0(i_sensor_digital[6]),
        .I1(i_sensor_analog[6]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[6]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[6]),
        .O(\i_sensor_digital[19] [6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[6]_i_2 
       (.I0(i_sensor_tat[6]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[6]),
        .O(\s_latched_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[7]_i_1 
       (.I0(i_sensor_digital[7]),
        .I1(i_sensor_analog[7]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[7]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[7]),
        .O(\i_sensor_digital[19] [7]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[7]_i_2 
       (.I0(i_sensor_tat[7]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[7]),
        .O(\s_latched_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[8]_i_1 
       (.I0(i_sensor_digital[8]),
        .I1(i_sensor_analog[8]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[8]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[8]),
        .O(\i_sensor_digital[19] [8]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[8]_i_2 
       (.I0(i_sensor_tat[8]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[8]),
        .O(\s_latched_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_latched_data[9]_i_1 
       (.I0(i_sensor_digital[9]),
        .I1(i_sensor_analog[9]),
        .I2(\s_latched_data[19]_i_6_n_0 ),
        .I3(\s_latched_data[9]_i_2_n_0 ),
        .I4(\s_latched_data[19]_i_8_n_0 ),
        .I5(i_sensor_ps[9]),
        .O(\i_sensor_digital[19] [9]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_latched_data[9]_i_2 
       (.I0(i_sensor_tat[9]),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(i_sensor_qc[9]),
        .O(\s_latched_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[0] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_next_pc[0]),
        .Q(\s_micro_pc_reg_rep_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[1] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .Q(\s_micro_pc_reg_rep_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[2] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .Q(\s_micro_pc_reg_rep_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[3] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .Q(\s_micro_pc_reg_rep_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[4] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .Q(\s_micro_pc_reg_rep_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[5] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_next_pc[5]),
        .Q(\s_micro_pc_reg_rep_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[6] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .Q(\s_micro_pc_reg_rep_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[7] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .Q(\s_micro_pc_reg_rep_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[8] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_reg_rep[8]_1 ),
        .Q(\s_micro_pc_reg_rep_n_0_[8] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep[9] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_next_pc[9]),
        .Q(\s_micro_pc_reg_rep_n_0_[9] ),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[0] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_next_pc[0]),
        .Q(s_micro_pc[0]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[1] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[1]_i_1_n_0 ),
        .Q(s_micro_pc[1]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[2] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[2]_i_1_n_0 ),
        .Q(s_micro_pc[2]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[3] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[3]_i_1_n_0 ),
        .Q(s_micro_pc[3]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[4] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[4]_i_1_n_0 ),
        .Q(s_micro_pc[4]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[5] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_next_pc[5]),
        .Q(s_micro_pc[5]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[6] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[6]_i_1_n_0 ),
        .Q(s_micro_pc[6]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[7] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_rep_rep[7]_i_1_n_0 ),
        .Q(s_micro_pc[7]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[8] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_micro_pc_reg_rep[8]_1 ),
        .Q(s_micro_pc[8]),
        .R(i_rst));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_micro_pc_reg_rep_rep[9] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_next_pc[9]),
        .Q(s_micro_pc[9]),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    \s_micro_pc_rep_rep[0]_i_1 
       (.I0(\s_micro_pc_rep_rep[0]_i_2_n_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I2(\s_micro_pc_rep_rep[0]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I4(\s_micro_pc_reg_rep_n_0_[0] ),
        .I5(s_frame_mark),
        .O(s_next_pc[0]));
  LUT6 #(
    .INIT(64'h30FF11FF000F00EE)) 
    \s_micro_pc_rep_rep[0]_i_2 
       (.I0(\s_micro_pc_rep_rep[0]_i_4_n_0 ),
        .I1(\s_micro_pc_rep_rep[0]_i_5_n_0 ),
        .I2(\s_micro_pc_rep_rep[0]_i_6_n_0 ),
        .I3(\s_micro_pc_reg_rep_n_0_[0] ),
        .I4(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I5(\s_const_sr[17]_i_5_n_0 ),
        .O(\s_micro_pc_rep_rep[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30BB3088FC88FCBB)) 
    \s_micro_pc_rep_rep[0]_i_3 
       (.I0(\s_micro_pc_rep_rep[0]_i_7_n_0 ),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I2(\s_const_sr[17]_i_5_n_0 ),
        .I3(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I4(s_pdu_busy),
        .I5(\s_micro_pc_reg_rep_n_0_[0] ),
        .O(\s_micro_pc_rep_rep[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \s_micro_pc_rep_rep[0]_i_4 
       (.I0(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I1(s_flag_z),
        .I2(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \s_micro_pc_rep_rep[0]_i_5 
       (.I0(s_flag_n),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h3022)) 
    \s_micro_pc_rep_rep[0]_i_6 
       (.I0(s_flag_c),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(s_pdu_busy),
        .I3(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CC00AAF0CCFF)) 
    \s_micro_pc_rep_rep[0]_i_7 
       (.I0(\s_ret_stack_reg[2]_0 [0]),
        .I1(\s_ret_stack_reg[1]_1 [0]),
        .I2(\s_ret_stack_reg[0]_2 [0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(s_stack_ptr_reg[0]),
        .I5(\s_micro_pc_reg_rep_n_0_[0] ),
        .O(\s_micro_pc_rep_rep[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000550455555555)) 
    \s_micro_pc_rep_rep[1]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[1]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[1]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[1]_i_4_n_0 ),
        .I5(\s_micro_pc_rep_rep[1]_i_5_n_0 ),
        .O(\s_micro_pc_rep_rep[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFAEAFAEFAAEAAA)) 
    \s_micro_pc_rep_rep[1]_i_2 
       (.I0(\s_micro_pc_rep_rep[4]_i_7_n_0 ),
        .I1(\s_ret_stack_reg[2]_0 [1]),
        .I2(s_stack_ptr_reg[1]),
        .I3(s_stack_ptr_reg[0]),
        .I4(\s_ret_stack_reg[0]_2 [1]),
        .I5(\s_ret_stack_reg[1]_1 [1]),
        .O(\s_micro_pc_rep_rep[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h000002F2)) 
    \s_micro_pc_rep_rep[1]_i_3 
       (.I0(s_pdu_busy),
        .I1(\s_micro_pc_reg_rep_n_0_[1] ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_const_sr[17]_i_4_n_0 ),
        .I4(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h09009999FFFFFFFF)) 
    \s_micro_pc_rep_rep[1]_i_4 
       (.I0(\s_micro_pc_reg_rep_n_0_[0] ),
        .I1(\s_micro_pc_reg_rep_n_0_[1] ),
        .I2(\s_micro_pc_rep_rep[1]_i_6_n_0 ),
        .I3(\s_micro_pc_reg_rep_rep[4]_0 ),
        .I4(\s_micro_pc_rep_rep[8]_i_7_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .O(\s_micro_pc_rep_rep[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hAAEBFFEB)) 
    \s_micro_pc_rep_rep[1]_i_5 
       (.I0(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I1(\s_micro_pc_reg_rep_n_0_[1] ),
        .I2(\s_micro_pc_reg_rep_n_0_[0] ),
        .I3(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I4(\s_const_sr[17]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_micro_pc_rep_rep[1]_i_6 
       (.I0(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I1(\s_const_sr[17]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040055555555)) 
    \s_micro_pc_rep_rep[2]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[2]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[2]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I4(\s_micro_pc_rep_rep[2]_i_4_n_0 ),
        .I5(\s_micro_pc_rep_rep[2]_i_5_n_0 ),
        .O(\s_micro_pc_rep_rep[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \s_micro_pc_rep_rep[2]_i_2 
       (.I0(\s_ret_stack[2][2]_i_1_n_0 ),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I2(s_pdu_busy),
        .I3(\s_const_sr[17]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I5(\s_micro_pc_rep_rep[8]_i_7_n_0 ),
        .O(\s_micro_pc_rep_rep[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000002F2)) 
    \s_micro_pc_rep_rep[2]_i_3 
       (.I0(s_pdu_busy),
        .I1(\s_micro_pc_reg_rep_n_0_[2] ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_const_sr[17]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I5(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h200A2A0A20AA2AAA)) 
    \s_micro_pc_rep_rep[2]_i_4 
       (.I0(\s_micro_pc_rep_rep[5]_i_8_n_0 ),
        .I1(\s_ret_stack_reg[2]_0 [2]),
        .I2(s_stack_ptr_reg[0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(\s_ret_stack_reg[1]_1 [2]),
        .I5(\s_ret_stack_reg[0]_2 [2]),
        .O(\s_micro_pc_rep_rep[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0095FF95)) 
    \s_micro_pc_rep_rep[2]_i_5 
       (.I0(\s_micro_pc_reg_rep_n_0_[2] ),
        .I1(\s_micro_pc_reg_rep_n_0_[1] ),
        .I2(\s_micro_pc_reg_rep_n_0_[0] ),
        .I3(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I4(\s_const_sr[17]_i_3_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .O(\s_micro_pc_rep_rep[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h05450040)) 
    \s_micro_pc_rep_rep[3]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[3]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I3(\s_micro_pc_rep_rep[3]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[3]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \s_micro_pc_rep_rep[3]_i_2 
       (.I0(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I1(\s_micro_pc_rep_rep[4]_i_7_n_0 ),
        .I2(\s_micro_pc_rep_rep[3]_i_5_n_0 ),
        .I3(\s_micro_pc_rep_rep[3]_i_6_n_0 ),
        .O(\s_micro_pc_rep_rep[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055575757)) 
    \s_micro_pc_rep_rep[3]_i_3 
       (.I0(\s_micro_pc_rep_rep[8]_i_7_n_0 ),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I2(s_pdu_busy),
        .I3(\s_const_sr[17]_i_6_n_0 ),
        .I4(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I5(\s_ret_stack[2][3]_i_1_n_0 ),
        .O(\s_micro_pc_rep_rep[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \s_micro_pc_rep_rep[3]_i_4 
       (.I0(\s_const_sr[17]_i_6_n_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I2(\s_micro_pc_reg_rep_n_0_[3] ),
        .I3(\s_micro_pc_reg_rep_n_0_[2] ),
        .I4(\s_micro_pc_reg_rep_n_0_[0] ),
        .I5(\s_micro_pc_reg_rep_n_0_[1] ),
        .O(\s_micro_pc_rep_rep[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \s_micro_pc_rep_rep[3]_i_5 
       (.I0(\s_ret_stack_reg[0]_2 [3]),
        .I1(\s_ret_stack_reg[1]_1 [3]),
        .I2(s_stack_ptr_reg[1]),
        .I3(s_stack_ptr_reg[0]),
        .I4(\s_ret_stack_reg[2]_0 [3]),
        .O(\s_micro_pc_rep_rep[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \s_micro_pc_rep_rep[3]_i_6 
       (.I0(s_pdu_busy),
        .I1(\s_micro_pc_reg_rep_n_0_[3] ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_const_sr[17]_i_6_n_0 ),
        .I4(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000550455555555)) 
    \s_micro_pc_rep_rep[4]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[4]_i_2_n_0 ),
        .I2(\s_micro_pc_rep_rep[4]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[4]_i_4_n_0 ),
        .I5(\s_micro_pc_rep_rep[4]_i_5_n_0 ),
        .O(\s_micro_pc_rep_rep[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFFFFFD0D)) 
    \s_micro_pc_rep_rep[4]_i_2 
       (.I0(s_pdu_busy),
        .I1(\s_micro_pc_reg_rep_n_0_[4] ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_micro_pc_rep_rep[4]_i_6_n_0 ),
        .I4(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1005150510551555)) 
    \s_micro_pc_rep_rep[4]_i_3 
       (.I0(\s_micro_pc_rep_rep[4]_i_7_n_0 ),
        .I1(\s_ret_stack_reg[2]_0 [4]),
        .I2(s_stack_ptr_reg[1]),
        .I3(s_stack_ptr_reg[0]),
        .I4(\s_ret_stack_reg[0]_2 [4]),
        .I5(\s_ret_stack_reg[1]_1 [4]),
        .O(\s_micro_pc_rep_rep[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h15005555FFFFFFFF)) 
    \s_micro_pc_rep_rep[4]_i_4 
       (.I0(\s_ret_stack[2][4]_i_1_n_0 ),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(\s_micro_pc_rep_rep[4]_i_6_n_0 ),
        .I3(\s_micro_pc_reg_rep_rep[4]_0 ),
        .I4(\s_micro_pc_rep_rep[8]_i_7_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .O(\s_micro_pc_rep_rep[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \s_micro_pc_rep_rep[4]_i_5 
       (.I0(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I1(\s_ret_stack[2][4]_i_1_n_0 ),
        .I2(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I3(\s_micro_pc_rep_rep[4]_i_6_n_0 ),
        .O(\s_micro_pc_rep_rep[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_micro_pc_rep_rep[4]_i_6 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_micro_pc_rep_rep[4]_i_9_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_micro_pc_rep_rep[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFF57)) 
    \s_micro_pc_rep_rep[4]_i_7 
       (.I0(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I1(s_stack_ptr_reg[1]),
        .I2(s_stack_ptr_reg[0]),
        .I3(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h324320003A040000)) 
    \s_micro_pc_rep_rep[4]_i_9 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[3]),
        .I2(s_micro_pc[1]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[4]),
        .I5(s_micro_pc[0]),
        .O(\s_micro_pc_rep_rep[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEAE)) 
    \s_micro_pc_rep_rep[5]_i_1 
       (.I0(\s_micro_pc_rep_rep[5]_i_2_n_0 ),
        .I1(\s_micro_pc_rep_rep[5]_i_3_n_0 ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_micro_pc_rep_rep[5]_i_5_n_0 ),
        .I4(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I5(\s_micro_pc_rep_rep[5]_i_7_n_0 ),
        .O(s_next_pc[5]));
  LUT6 #(
    .INIT(64'h3201224208842004)) 
    \s_micro_pc_rep_rep[5]_i_10 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[3]),
        .I2(s_micro_pc[1]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[4]),
        .I5(s_micro_pc[0]),
        .O(\s_micro_pc_rep_rep[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h02002000F0A0A040)) 
    \s_micro_pc_rep_rep[5]_i_11 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[0]),
        .I2(s_micro_pc[5]),
        .I3(s_micro_pc[4]),
        .I4(s_micro_pc[1]),
        .I5(s_micro_pc[3]),
        .O(\s_micro_pc_rep_rep[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1003024230400404)) 
    \s_micro_pc_rep_rep[5]_i_12 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[3]),
        .I2(s_micro_pc[1]),
        .I3(s_micro_pc[4]),
        .I4(s_micro_pc[5]),
        .I5(s_micro_pc[0]),
        .O(\s_micro_pc_rep_rep[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \s_micro_pc_rep_rep[5]_i_2 
       (.I0(\s_micro_pc_rep_rep[8]_i_7_n_0 ),
        .I1(data0[5]),
        .I2(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I3(\s_micro_pc_rep_rep[5]_i_8_n_0 ),
        .I4(\s_micro_pc_rep_rep[5]_i_9_n_0 ),
        .O(\s_micro_pc_rep_rep[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hCFCE0ACE)) 
    \s_micro_pc_rep_rep[5]_i_3 
       (.I0(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I1(data0[5]),
        .I2(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I3(s_pdu_busy),
        .I4(\s_micro_pc_reg_rep_n_0_[5] ),
        .O(\s_micro_pc_rep_rep[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_micro_pc_rep_rep[5]_i_4 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_micro_pc_rep_rep[5]_i_10_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_micro_pc_rep_rep[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_micro_pc_rep_rep[5]_i_5 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_micro_pc_rep_rep[5]_i_11_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_micro_pc_rep_rep[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_micro_pc_rep_rep[5]_i_6 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_micro_pc_rep_rep[5]_i_12_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_micro_pc_reg_rep_rep[8]_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \s_micro_pc_rep_rep[5]_i_7 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[5]_i_5_n_0 ),
        .I2(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I3(data0[5]),
        .I4(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .O(\s_micro_pc_rep_rep[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h11100000)) 
    \s_micro_pc_rep_rep[5]_i_8 
       (.I0(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(s_stack_ptr_reg[0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h053FF53F)) 
    \s_micro_pc_rep_rep[5]_i_9 
       (.I0(\s_ret_stack_reg[0]_2 [5]),
        .I1(\s_ret_stack_reg[1]_1 [5]),
        .I2(s_stack_ptr_reg[1]),
        .I3(s_stack_ptr_reg[0]),
        .I4(\s_ret_stack_reg[2]_0 [5]),
        .O(\s_micro_pc_rep_rep[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5501000155010501)) 
    \s_micro_pc_rep_rep[6]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I2(\s_micro_pc_rep_rep[6]_i_2_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I4(\s_micro_pc_rep_rep[6]_i_3_n_0 ),
        .I5(\s_micro_pc_rep_rep[7]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_micro_pc_rep_rep[6]_i_2 
       (.I0(\s_micro_pc_reg_rep_n_0_[6] ),
        .I1(\s_ret_stack[2][9]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \s_micro_pc_rep_rep[6]_i_3 
       (.I0(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I3(s_pdu_busy),
        .I4(\s_micro_pc_reg_rep_n_0_[6] ),
        .I5(\s_micro_pc_rep_rep[6]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8AA080A08A008000)) 
    \s_micro_pc_rep_rep[6]_i_4 
       (.I0(\s_micro_pc_rep_rep[5]_i_8_n_0 ),
        .I1(\s_ret_stack_reg[2]_0 [6]),
        .I2(s_stack_ptr_reg[0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(\s_ret_stack_reg[1]_1 [6]),
        .I5(\s_ret_stack_reg[0]_2 [6]),
        .O(\s_micro_pc_rep_rep[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5501000155010501)) 
    \s_micro_pc_rep_rep[7]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I2(\s_micro_pc_rep_rep[7]_i_2_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I4(\s_micro_pc_rep_rep[7]_i_3_n_0 ),
        .I5(\s_micro_pc_rep_rep[7]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \s_micro_pc_rep_rep[7]_i_2 
       (.I0(\s_micro_pc_reg_rep_n_0_[7] ),
        .I1(\s_micro_pc_reg_rep_n_0_[6] ),
        .I2(\s_ret_stack[2][9]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \s_micro_pc_rep_rep[7]_i_3 
       (.I0(\s_micro_pc_rep_rep[7]_i_5_n_0 ),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I4(s_pdu_busy),
        .I5(\s_micro_pc_reg_rep_n_0_[7] ),
        .O(\s_micro_pc_rep_rep[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000E000E0F0F0F00)) 
    \s_micro_pc_rep_rep[7]_i_4 
       (.I0(s_stack_ptr_reg[1]),
        .I1(s_stack_ptr_reg[0]),
        .I2(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I4(s_pdu_busy),
        .I5(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8AA080A08A008000)) 
    \s_micro_pc_rep_rep[7]_i_5 
       (.I0(\s_micro_pc_rep_rep[5]_i_8_n_0 ),
        .I1(\s_ret_stack_reg[2]_0 [7]),
        .I2(s_stack_ptr_reg[0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(\s_ret_stack_reg[1]_1 [7]),
        .I5(\s_ret_stack_reg[0]_2 [7]),
        .O(\s_micro_pc_rep_rep[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h22FF22FF20FF2000)) 
    \s_micro_pc_rep_rep[8]_i_3 
       (.I0(\s_micro_pc_rep_rep[8]_i_5_n_0 ),
        .I1(\s_micro_pc_rep_rep[8]_i_6_n_0 ),
        .I2(\s_micro_pc_rep_rep[8]_i_7_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I4(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I5(\s_micro_pc_rep_rep[8]_i_8_n_0 ),
        .O(\s_micro_pc_reg_rep[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFDFCFDFC)) 
    \s_micro_pc_rep_rep[8]_i_5 
       (.I0(\s_micro_pc_reg_rep_n_0_[8] ),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I3(s_pdu_busy),
        .I4(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I5(\s_micro_pc_rep_rep[8]_i_8_n_0 ),
        .O(\s_micro_pc_rep_rep[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AA08A0080A08000)) 
    \s_micro_pc_rep_rep[8]_i_6 
       (.I0(\s_micro_pc_rep_rep[5]_i_8_n_0 ),
        .I1(\s_ret_stack_reg[2]_0 [8]),
        .I2(s_stack_ptr_reg[0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(\s_ret_stack_reg[0]_2 [8]),
        .I5(\s_ret_stack_reg[1]_1 [8]),
        .O(\s_micro_pc_rep_rep[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h11105555)) 
    \s_micro_pc_rep_rep[8]_i_7 
       (.I0(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(s_stack_ptr_reg[0]),
        .I3(s_stack_ptr_reg[1]),
        .I4(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h6555)) 
    \s_micro_pc_rep_rep[8]_i_8 
       (.I0(\s_micro_pc_reg_rep_n_0_[8] ),
        .I1(\s_ret_stack[2][9]_i_4_n_0 ),
        .I2(\s_micro_pc_reg_rep_n_0_[6] ),
        .I3(\s_micro_pc_reg_rep_n_0_[7] ),
        .O(\s_micro_pc_rep_rep[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_micro_pc_rep_rep[9]_i_10 
       (.I0(s_stack_ptr_reg[1]),
        .I1(s_stack_ptr_reg[0]),
        .O(\s_micro_pc_rep_rep[9]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_micro_pc_rep_rep[9]_i_11 
       (.I0(\s_micro_pc_reg_rep_n_0_[9] ),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \s_micro_pc_rep_rep[9]_i_12 
       (.I0(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I1(s_pdu_busy),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .O(\s_micro_pc_rep_rep[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10101110FFFFFFFF)) 
    \s_micro_pc_rep_rep[9]_i_13 
       (.I0(\s_micro_pc_rep_rep[9]_i_19_n_0 ),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(s_stack_ptr_reg[1]),
        .I3(s_stack_ptr_reg[0]),
        .I4(\s_ret_stack_reg[0]_2 [9]),
        .I5(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_micro_pc_rep_rep[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_micro_pc_rep_rep[9]_i_14 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_micro_pc_rep_rep[5]_i_12_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(s_flag_n),
        .O(\s_micro_pc_rep_rep[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \s_micro_pc_rep_rep[9]_i_15 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_micro_pc_rep_rep[5]_i_12_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(s_flag_c),
        .O(\s_micro_pc_rep_rep[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \s_micro_pc_rep_rep[9]_i_16 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_micro_pc_rep_rep[5]_i_12_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(s_flag_z),
        .O(\s_micro_pc_rep_rep[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_micro_pc_rep_rep[9]_i_17 
       (.I0(s_micro_pc[9]),
        .I1(s_micro_pc[6]),
        .I2(\s_micro_pc_rep_rep[5]_i_12_n_0 ),
        .I3(s_micro_pc[7]),
        .I4(s_micro_pc[8]),
        .I5(s_pdu_busy),
        .O(\s_micro_pc_rep_rep[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000A00)) 
    \s_micro_pc_rep_rep[9]_i_18 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[1]),
        .I2(s_micro_pc[4]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[0]),
        .I5(s_micro_pc[3]),
        .O(\s_micro_pc_rep_rep[9]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \s_micro_pc_rep_rep[9]_i_19 
       (.I0(\s_ret_stack_reg[1]_1 [9]),
        .I1(s_stack_ptr_reg[1]),
        .I2(s_stack_ptr_reg[0]),
        .I3(\s_ret_stack_reg[2]_0 [9]),
        .O(\s_micro_pc_rep_rep[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00F100F1000000F0)) 
    \s_micro_pc_rep_rep[9]_i_2 
       (.I0(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_4_n_0 ),
        .I2(data0[9]),
        .I3(\s_micro_pc_rep_rep[9]_i_5_n_0 ),
        .I4(\s_micro_pc_rep_rep[9]_i_6_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .O(s_next_pc[9]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_micro_pc_rep_rep[9]_i_3 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_micro_pc_rep_rep[9]_i_8_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_micro_pc_rep_rep[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF77FFFFF077)) 
    \s_micro_pc_rep_rep[9]_i_4 
       (.I0(\s_micro_pc_reg_rep_n_0_[9] ),
        .I1(s_pdu_busy),
        .I2(\s_micro_pc_rep_rep[9]_i_9_n_0 ),
        .I3(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I4(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_10_n_0 ),
        .O(\s_micro_pc_rep_rep[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \s_micro_pc_rep_rep[9]_i_5 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_rep_rep[9]_i_11_n_0 ),
        .I2(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I4(\s_micro_pc_rep_rep[9]_i_12_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_13_n_0 ),
        .O(\s_micro_pc_rep_rep[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000535003035350)) 
    \s_micro_pc_rep_rep[9]_i_6 
       (.I0(\s_micro_pc_rep_rep[9]_i_14_n_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_15_n_0 ),
        .I2(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I3(\s_micro_pc_rep_rep[9]_i_16_n_0 ),
        .I4(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I5(\s_micro_pc_rep_rep[9]_i_17_n_0 ),
        .O(\s_micro_pc_rep_rep[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_micro_pc_rep_rep[9]_i_7 
       (.I0(s_micro_pc[8]),
        .I1(s_micro_pc[7]),
        .I2(\s_micro_pc_rep_rep[9]_i_18_n_0 ),
        .I3(s_micro_pc[6]),
        .I4(s_micro_pc[9]),
        .O(\s_micro_pc_rep_rep[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0248004022003024)) 
    \s_micro_pc_rep_rep[9]_i_8 
       (.I0(s_micro_pc[2]),
        .I1(s_micro_pc[3]),
        .I2(s_micro_pc[0]),
        .I3(s_micro_pc[5]),
        .I4(s_micro_pc[4]),
        .I5(s_micro_pc[1]),
        .O(\s_micro_pc_rep_rep[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0300110003331100)) 
    \s_micro_pc_rep_rep[9]_i_9 
       (.I0(\s_ret_stack_reg[0]_2 [9]),
        .I1(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I2(\s_ret_stack_reg[2]_0 [9]),
        .I3(s_stack_ptr_reg[0]),
        .I4(s_stack_ptr_reg[1]),
        .I5(\s_ret_stack_reg[1]_1 [9]),
        .O(\s_micro_pc_rep_rep[9]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \s_reg_airspd[19]_i_1 
       (.I0(\s_latched_data[19]_i_5_n_0 ),
        .I1(\s_latched_data[19]_i_6_n_0 ),
        .I2(\s_latched_data[19]_i_3_n_0 ),
        .I3(\s_latched_data[19]_i_4_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \s_reg_alt[19]_i_1 
       (.I0(\s_latched_data[19]_i_6_n_0 ),
        .I1(\s_latched_data[19]_i_3_n_0 ),
        .I2(\s_latched_data[19]_i_5_n_0 ),
        .I3(\s_latched_data[19]_i_4_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_5 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    s_reg_bit_i_1
       (.I0(Q),
        .I1(\s_latched_data[19]_i_6_n_0 ),
        .I2(\s_latched_data[19]_i_4_n_0 ),
        .I3(\s_latched_data[19]_i_5_n_0 ),
        .I4(\s_latched_data[19]_i_3_n_0 ),
        .I5(s_reg_bit),
        .O(\s_io_out_sr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \s_reg_flap[19]_i_1 
       (.I0(\s_latched_data[19]_i_3_n_0 ),
        .I1(\s_latched_data[19]_i_6_n_0 ),
        .I2(\s_latched_data[19]_i_5_n_0 ),
        .I3(\s_latched_data[19]_i_4_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_reg_glove[19]_i_1 
       (.I0(\s_latched_data[19]_i_5_n_0 ),
        .I1(\s_latched_data[19]_i_4_n_0 ),
        .I2(\s_latched_data[19]_i_3_n_0 ),
        .I3(\s_latched_data[19]_i_6_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_reg_mach[19]_i_1 
       (.I0(\s_latched_data[19]_i_3_n_0 ),
        .I1(\s_latched_data[19]_i_5_n_0 ),
        .I2(\s_latched_data[19]_i_4_n_0 ),
        .I3(\s_latched_data[19]_i_6_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_reg_vspd[19]_i_1 
       (.I0(\s_latched_data[19]_i_4_n_0 ),
        .I1(\s_latched_data[19]_i_6_n_0 ),
        .I2(\s_latched_data[19]_i_5_n_0 ),
        .I3(\s_latched_data[19]_i_3_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_reg_wing[19]_i_1 
       (.I0(\s_latched_data[19]_i_5_n_0 ),
        .I1(\s_latched_data[19]_i_6_n_0 ),
        .I2(\s_latched_data[19]_i_4_n_0 ),
        .I3(\s_latched_data[19]_i_3_n_0 ),
        .O(\s_micro_pc_reg_rep_rep[9]_2 ));
  LUT3 #(
    .INIT(8'h01)) 
    \s_ret_stack[0][9]_i_1 
       (.I0(s_stack_ptr_reg[0]),
        .I1(s_stack_ptr_reg[1]),
        .I2(\s_ret_stack[2][9]_i_3_n_0 ),
        .O(\s_ret_stack[0][9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \s_ret_stack[1][9]_i_1 
       (.I0(s_stack_ptr_reg[0]),
        .I1(s_stack_ptr_reg[1]),
        .I2(\s_ret_stack[2][9]_i_3_n_0 ),
        .O(\s_ret_stack[1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_ret_stack[2][0]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[0] ),
        .O(data0[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_ret_stack[2][1]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[0] ),
        .I1(\s_micro_pc_reg_rep_n_0_[1] ),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_ret_stack[2][2]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[2] ),
        .I1(\s_micro_pc_reg_rep_n_0_[1] ),
        .I2(\s_micro_pc_reg_rep_n_0_[0] ),
        .O(\s_ret_stack[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_ret_stack[2][3]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[3] ),
        .I1(\s_micro_pc_reg_rep_n_0_[2] ),
        .I2(\s_micro_pc_reg_rep_n_0_[0] ),
        .I3(\s_micro_pc_reg_rep_n_0_[1] ),
        .O(\s_ret_stack[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s_ret_stack[2][4]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[4] ),
        .I1(\s_micro_pc_reg_rep_n_0_[3] ),
        .I2(\s_micro_pc_reg_rep_n_0_[1] ),
        .I3(\s_micro_pc_reg_rep_n_0_[0] ),
        .I4(\s_micro_pc_reg_rep_n_0_[2] ),
        .O(\s_ret_stack[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \s_ret_stack[2][5]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[5] ),
        .I1(\s_micro_pc_reg_rep_n_0_[3] ),
        .I2(\s_micro_pc_reg_rep_n_0_[1] ),
        .I3(\s_micro_pc_reg_rep_n_0_[0] ),
        .I4(\s_micro_pc_reg_rep_n_0_[2] ),
        .I5(\s_micro_pc_reg_rep_n_0_[4] ),
        .O(data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \s_ret_stack[2][6]_i_1 
       (.I0(\s_ret_stack[2][9]_i_4_n_0 ),
        .I1(\s_micro_pc_reg_rep_n_0_[6] ),
        .O(data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \s_ret_stack[2][7]_i_1 
       (.I0(\s_ret_stack[2][9]_i_4_n_0 ),
        .I1(\s_micro_pc_reg_rep_n_0_[6] ),
        .I2(\s_micro_pc_reg_rep_n_0_[7] ),
        .O(data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \s_ret_stack[2][8]_i_1 
       (.I0(\s_micro_pc_reg_rep_n_0_[7] ),
        .I1(\s_micro_pc_reg_rep_n_0_[6] ),
        .I2(\s_ret_stack[2][9]_i_4_n_0 ),
        .I3(\s_micro_pc_reg_rep_n_0_[8] ),
        .O(data0[8]));
  LUT3 #(
    .INIT(8'h02)) 
    \s_ret_stack[2][9]_i_1 
       (.I0(s_stack_ptr_reg[1]),
        .I1(s_stack_ptr_reg[0]),
        .I2(\s_ret_stack[2][9]_i_3_n_0 ),
        .O(\s_ret_stack[2][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \s_ret_stack[2][9]_i_2 
       (.I0(\s_micro_pc_reg_rep_n_0_[9] ),
        .I1(\s_micro_pc_reg_rep_n_0_[8] ),
        .I2(\s_micro_pc_reg_rep_n_0_[7] ),
        .I3(\s_micro_pc_reg_rep_n_0_[6] ),
        .I4(\s_ret_stack[2][9]_i_4_n_0 ),
        .O(data0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \s_ret_stack[2][9]_i_3 
       (.I0(E),
        .I1(s_frame_mark),
        .I2(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I3(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I4(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I5(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_ret_stack[2][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \s_ret_stack[2][9]_i_4 
       (.I0(\s_micro_pc_reg_rep_n_0_[4] ),
        .I1(\s_micro_pc_reg_rep_n_0_[2] ),
        .I2(\s_micro_pc_reg_rep_n_0_[0] ),
        .I3(\s_micro_pc_reg_rep_n_0_[1] ),
        .I4(\s_micro_pc_reg_rep_n_0_[3] ),
        .I5(\s_micro_pc_reg_rep_n_0_[5] ),
        .O(\s_ret_stack[2][9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][0] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[0]),
        .Q(\s_ret_stack_reg[0]_2 [0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][1] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[1]),
        .Q(\s_ret_stack_reg[0]_2 [1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][2] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][2]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[0]_2 [2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][3] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][3]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[0]_2 [3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][4] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][4]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[0]_2 [4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][5] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[5]),
        .Q(\s_ret_stack_reg[0]_2 [5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][6] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[6]),
        .Q(\s_ret_stack_reg[0]_2 [6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][7] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[7]),
        .Q(\s_ret_stack_reg[0]_2 [7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][8] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[8]),
        .Q(\s_ret_stack_reg[0]_2 [8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[0][9] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[0][9]_i_1_n_0 ),
        .D(data0[9]),
        .Q(\s_ret_stack_reg[0]_2 [9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][0] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[0]),
        .Q(\s_ret_stack_reg[1]_1 [0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][1] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[1]),
        .Q(\s_ret_stack_reg[1]_1 [1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][2] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][2]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[1]_1 [2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][3] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][3]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[1]_1 [3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][4] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][4]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[1]_1 [4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][5] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[5]),
        .Q(\s_ret_stack_reg[1]_1 [5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][6] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[6]),
        .Q(\s_ret_stack_reg[1]_1 [6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][7] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[7]),
        .Q(\s_ret_stack_reg[1]_1 [7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][8] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[8]),
        .Q(\s_ret_stack_reg[1]_1 [8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[1][9] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[1][9]_i_1_n_0 ),
        .D(data0[9]),
        .Q(\s_ret_stack_reg[1]_1 [9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][0] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[0]),
        .Q(\s_ret_stack_reg[2]_0 [0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][1] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[1]),
        .Q(\s_ret_stack_reg[2]_0 [1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][2] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][2]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[2]_0 [2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][3] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][3]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[2]_0 [3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][4] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(\s_ret_stack[2][4]_i_1_n_0 ),
        .Q(\s_ret_stack_reg[2]_0 [4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][5] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[5]),
        .Q(\s_ret_stack_reg[2]_0 [5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][6] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[6]),
        .Q(\s_ret_stack_reg[2]_0 [6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][7] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[7]),
        .Q(\s_ret_stack_reg[2]_0 [7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][8] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[8]),
        .Q(\s_ret_stack_reg[2]_0 [8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ret_stack_reg[2][9] 
       (.C(i_clk_master),
        .CE(\s_ret_stack[2][9]_i_1_n_0 ),
        .D(data0[9]),
        .Q(\s_ret_stack_reg[2]_0 [9]),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \s_sel_out1[0]_i_1 
       (.I0(s_micro_pc[8]),
        .I1(\s_sel_out1[0]_i_2_n_0 ),
        .I2(s_micro_pc[6]),
        .I3(s_micro_pc[9]),
        .I4(\s_sel_out1_reg[0] ),
        .I5(s_sel_out1[0]),
        .O(\s_micro_pc_reg_rep_rep[8]_1 ));
  LUT6 #(
    .INIT(64'h000000000448C480)) 
    \s_sel_out1[0]_i_2 
       (.I0(s_micro_pc[1]),
        .I1(\s_sel_out1[2]_i_3_n_0 ),
        .I2(s_micro_pc[0]),
        .I3(s_micro_pc[3]),
        .I4(s_micro_pc[2]),
        .I5(s_micro_pc[7]),
        .O(\s_sel_out1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \s_sel_out1[2]_i_1 
       (.I0(s_micro_pc[8]),
        .I1(\s_sel_out1[2]_i_2_n_0 ),
        .I2(s_micro_pc[6]),
        .I3(s_micro_pc[9]),
        .I4(\s_sel_out1_reg[0] ),
        .I5(s_sel_out1[1]),
        .O(\s_micro_pc_reg_rep_rep[8]_2 ));
  LUT6 #(
    .INIT(64'h0000000004400884)) 
    \s_sel_out1[2]_i_2 
       (.I0(s_micro_pc[0]),
        .I1(\s_sel_out1[2]_i_3_n_0 ),
        .I2(s_micro_pc[1]),
        .I3(s_micro_pc[3]),
        .I4(s_micro_pc[2]),
        .I5(s_micro_pc[7]),
        .O(\s_sel_out1[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \s_sel_out1[2]_i_3 
       (.I0(s_micro_pc[4]),
        .I1(s_micro_pc[5]),
        .O(\s_sel_out1[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_stack_ptr[0]_i_1 
       (.I0(s_stack_ptr),
        .I1(s_stack_ptr_reg[0]),
        .O(\s_stack_ptr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF40FFFF40BF0000)) 
    \s_stack_ptr[1]_i_1 
       (.I0(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I2(\s_stack_ptr[1]_i_2_n_0 ),
        .I3(s_stack_ptr_reg[0]),
        .I4(s_stack_ptr),
        .I5(s_stack_ptr_reg[1]),
        .O(\s_stack_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_stack_ptr[1]_i_2 
       (.I0(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .O(\s_stack_ptr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \s_stack_ptr[1]_i_3 
       (.I0(\s_stack_ptr[1]_i_4_n_0 ),
        .I1(\s_micro_pc_rep_rep[9]_i_7_n_0 ),
        .I2(\s_micro_pc_rep_rep[9]_i_3_n_0 ),
        .I3(s_frame_mark),
        .I4(E),
        .I5(\s_stack_ptr[1]_i_5_n_0 ),
        .O(s_stack_ptr));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_stack_ptr[1]_i_4 
       (.I0(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .I1(\s_micro_pc_reg_rep_rep[8]_0 ),
        .O(\s_stack_ptr[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hAA02)) 
    \s_stack_ptr[1]_i_5 
       (.I0(\s_micro_pc_reg_rep_rep[8]_0 ),
        .I1(s_stack_ptr_reg[1]),
        .I2(s_stack_ptr_reg[0]),
        .I3(\s_micro_pc_rep_rep[5]_i_4_n_0 ),
        .O(\s_stack_ptr[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_stack_ptr_reg[0] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_stack_ptr[0]_i_1_n_0 ),
        .Q(s_stack_ptr_reg[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_stack_ptr_reg[1] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_stack_ptr[1]_i_1_n_0 ),
        .Q(s_stack_ptr_reg[1]),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "io_bridge" *) 
module cadc_system_cadc_top_0_0_io_bridge
   (s_reg_bit,
    o_out_mach,
    o_out_alt,
    o_out_airspd,
    o_out_vspd,
    o_out_wing,
    o_out_flap,
    o_out_glove,
    D,
    Q,
    o_bit_status,
    i_rst,
    s_reg_bit_reg_0,
    i_clk_master,
    i_channel_active,
    o_t0,
    \s_io_in_sr_reg[18] ,
    E,
    \s_latched_data_reg[19]_0 ,
    \s_reg_mach_reg[19]_0 ,
    \s_reg_flap_reg[19]_0 ,
    \s_reg_alt_reg[19]_0 ,
    \s_reg_airspd_reg[19]_0 ,
    \s_reg_vspd_reg[19]_0 ,
    \s_reg_wing_reg[19]_0 ,
    \s_reg_flap_reg[19]_1 ,
    \s_reg_glove_reg[19]_0 );
  output s_reg_bit;
  output [19:0]o_out_mach;
  output [19:0]o_out_alt;
  output [19:0]o_out_airspd;
  output [19:0]o_out_vspd;
  output [19:0]o_out_wing;
  output [19:0]o_out_flap;
  output [19:0]o_out_glove;
  output [18:0]D;
  output [0:0]Q;
  output o_bit_status;
  input i_rst;
  input s_reg_bit_reg_0;
  input i_clk_master;
  input i_channel_active;
  input o_t0;
  input [18:0]\s_io_in_sr_reg[18] ;
  input [0:0]E;
  input [19:0]\s_latched_data_reg[19]_0 ;
  input [0:0]\s_reg_mach_reg[19]_0 ;
  input [19:0]\s_reg_flap_reg[19]_0 ;
  input [0:0]\s_reg_alt_reg[19]_0 ;
  input [0:0]\s_reg_airspd_reg[19]_0 ;
  input [0:0]\s_reg_vspd_reg[19]_0 ;
  input [0:0]\s_reg_wing_reg[19]_0 ;
  input [0:0]\s_reg_flap_reg[19]_1 ;
  input [0:0]\s_reg_glove_reg[19]_0 ;

  wire [18:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire i_channel_active;
  wire i_clk_master;
  wire i_rst;
  wire o_bit_status;
  wire [19:0]o_out_airspd;
  wire [19:0]o_out_alt;
  wire [19:0]o_out_flap;
  wire [19:0]o_out_glove;
  wire [19:0]o_out_mach;
  wire [19:0]o_out_vspd;
  wire [19:0]o_out_wing;
  wire o_t0;
  wire [18:0]s_io_data_out_par;
  wire [18:0]\s_io_in_sr_reg[18] ;
  wire [19:0]\s_latched_data_reg[19]_0 ;
  wire [19:0]s_reg_airspd;
  wire [0:0]\s_reg_airspd_reg[19]_0 ;
  wire [19:0]s_reg_alt;
  wire [0:0]\s_reg_alt_reg[19]_0 ;
  wire s_reg_bit;
  wire s_reg_bit_reg_0;
  wire [19:0]s_reg_flap;
  wire [19:0]\s_reg_flap_reg[19]_0 ;
  wire [0:0]\s_reg_flap_reg[19]_1 ;
  wire [19:0]s_reg_glove;
  wire [0:0]\s_reg_glove_reg[19]_0 ;
  wire [19:0]s_reg_mach;
  wire [0:0]\s_reg_mach_reg[19]_0 ;
  wire [19:0]s_reg_vspd;
  wire [0:0]\s_reg_vspd_reg[19]_0 ;
  wire [19:0]s_reg_wing;
  wire [0:0]\s_reg_wing_reg[19]_0 ;

  LUT2 #(
    .INIT(4'h8)) 
    o_bit_status_INST_0
       (.I0(i_channel_active),
        .I1(s_reg_bit),
        .O(o_bit_status));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[0]),
        .O(o_out_airspd[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[10]),
        .O(o_out_airspd[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[11]),
        .O(o_out_airspd[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[12]),
        .O(o_out_airspd[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[13]),
        .O(o_out_airspd[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[14]),
        .O(o_out_airspd[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[15]),
        .O(o_out_airspd[15]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[16]),
        .O(o_out_airspd[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[17]),
        .O(o_out_airspd[17]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[18]),
        .O(o_out_airspd[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[19]),
        .O(o_out_airspd[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[1]),
        .O(o_out_airspd[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[2]),
        .O(o_out_airspd[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[3]),
        .O(o_out_airspd[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[4]),
        .O(o_out_airspd[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[5]),
        .O(o_out_airspd[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[6]),
        .O(o_out_airspd[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[7]),
        .O(o_out_airspd[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[8]),
        .O(o_out_airspd[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_airspd[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_airspd[9]),
        .O(o_out_airspd[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[0]),
        .O(o_out_alt[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[10]),
        .O(o_out_alt[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[11]),
        .O(o_out_alt[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[12]),
        .O(o_out_alt[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[13]),
        .O(o_out_alt[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[14]),
        .O(o_out_alt[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[15]),
        .O(o_out_alt[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[16]),
        .O(o_out_alt[16]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[17]),
        .O(o_out_alt[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[18]),
        .O(o_out_alt[18]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[19]),
        .O(o_out_alt[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[1]),
        .O(o_out_alt[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[2]),
        .O(o_out_alt[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[3]),
        .O(o_out_alt[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[4]),
        .O(o_out_alt[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[5]),
        .O(o_out_alt[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[6]),
        .O(o_out_alt[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[7]),
        .O(o_out_alt[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[8]),
        .O(o_out_alt[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_alt[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_alt[9]),
        .O(o_out_alt[9]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[0]),
        .O(o_out_flap[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[10]),
        .O(o_out_flap[10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[11]),
        .O(o_out_flap[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[12]),
        .O(o_out_flap[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[13]),
        .O(o_out_flap[13]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[14]),
        .O(o_out_flap[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[15]),
        .O(o_out_flap[15]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[16]),
        .O(o_out_flap[16]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[17]),
        .O(o_out_flap[17]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[18]),
        .O(o_out_flap[18]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[19]),
        .O(o_out_flap[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[1]),
        .O(o_out_flap[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[2]),
        .O(o_out_flap[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[3]),
        .O(o_out_flap[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[4]),
        .O(o_out_flap[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[5]),
        .O(o_out_flap[5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[6]),
        .O(o_out_flap[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[7]),
        .O(o_out_flap[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[8]),
        .O(o_out_flap[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_flap[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_flap[9]),
        .O(o_out_flap[9]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[0]),
        .O(o_out_glove[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[10]),
        .O(o_out_glove[10]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[11]),
        .O(o_out_glove[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[12]),
        .O(o_out_glove[12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[13]),
        .O(o_out_glove[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[14]),
        .O(o_out_glove[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[15]),
        .O(o_out_glove[15]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[16]),
        .O(o_out_glove[16]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[17]),
        .O(o_out_glove[17]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[18]),
        .O(o_out_glove[18]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[19]),
        .O(o_out_glove[19]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[1]),
        .O(o_out_glove[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[2]),
        .O(o_out_glove[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[3]),
        .O(o_out_glove[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[4]),
        .O(o_out_glove[4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[5]),
        .O(o_out_glove[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[6]),
        .O(o_out_glove[6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[7]),
        .O(o_out_glove[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[8]),
        .O(o_out_glove[8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_glove[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_glove[9]),
        .O(o_out_glove[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[0]),
        .O(o_out_mach[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[10]),
        .O(o_out_mach[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[11]),
        .O(o_out_mach[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[12]),
        .O(o_out_mach[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[13]),
        .O(o_out_mach[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[14]),
        .O(o_out_mach[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[15]),
        .O(o_out_mach[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[16]),
        .O(o_out_mach[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[17]),
        .O(o_out_mach[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[18]),
        .O(o_out_mach[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[19]),
        .O(o_out_mach[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[1]),
        .O(o_out_mach[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[2]),
        .O(o_out_mach[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[3]),
        .O(o_out_mach[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[4]),
        .O(o_out_mach[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[5]),
        .O(o_out_mach[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[6]),
        .O(o_out_mach[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[7]),
        .O(o_out_mach[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[8]),
        .O(o_out_mach[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_mach[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_mach[9]),
        .O(o_out_mach[9]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[0]),
        .O(o_out_vspd[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[10]),
        .O(o_out_vspd[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[11]),
        .O(o_out_vspd[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[12]),
        .O(o_out_vspd[12]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[13]),
        .O(o_out_vspd[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[14]),
        .O(o_out_vspd[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[15]),
        .O(o_out_vspd[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[16]),
        .O(o_out_vspd[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[17]),
        .O(o_out_vspd[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[18]),
        .O(o_out_vspd[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[19]),
        .O(o_out_vspd[19]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[1]),
        .O(o_out_vspd[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[2]),
        .O(o_out_vspd[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[3]),
        .O(o_out_vspd[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[4]),
        .O(o_out_vspd[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[5]),
        .O(o_out_vspd[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[6]),
        .O(o_out_vspd[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[7]),
        .O(o_out_vspd[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[8]),
        .O(o_out_vspd[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_vspd[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_vspd[9]),
        .O(o_out_vspd[9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[0]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[0]),
        .O(o_out_wing[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[10]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[10]),
        .O(o_out_wing[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[11]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[11]),
        .O(o_out_wing[11]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[12]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[12]),
        .O(o_out_wing[12]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[13]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[13]),
        .O(o_out_wing[13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[14]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[14]),
        .O(o_out_wing[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[15]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[15]),
        .O(o_out_wing[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[16]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[16]),
        .O(o_out_wing[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[17]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[17]),
        .O(o_out_wing[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[18]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[18]),
        .O(o_out_wing[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[19]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[19]),
        .O(o_out_wing[19]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[1]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[1]),
        .O(o_out_wing[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[2]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[2]),
        .O(o_out_wing[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[3]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[3]),
        .O(o_out_wing[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[4]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[4]),
        .O(o_out_wing[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[5]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[5]),
        .O(o_out_wing[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[6]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[6]),
        .O(o_out_wing[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[7]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[7]),
        .O(o_out_wing[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[8]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[8]),
        .O(o_out_wing[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_out_wing[9]_INST_0 
       (.I0(i_channel_active),
        .I1(s_reg_wing[9]),
        .O(o_out_wing[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[0]_i_1 
       (.I0(s_io_data_out_par[0]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[10]_i_1 
       (.I0(s_io_data_out_par[10]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[11]_i_1 
       (.I0(s_io_data_out_par[11]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[12]_i_1 
       (.I0(s_io_data_out_par[12]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[13]_i_1 
       (.I0(s_io_data_out_par[13]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[14]_i_1 
       (.I0(s_io_data_out_par[14]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[15]_i_1 
       (.I0(s_io_data_out_par[15]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[16]_i_1 
       (.I0(s_io_data_out_par[16]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[17]_i_1 
       (.I0(s_io_data_out_par[17]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [17]),
        .O(D[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[18]_i_1 
       (.I0(s_io_data_out_par[18]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[1]_i_1 
       (.I0(s_io_data_out_par[1]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[2]_i_1 
       (.I0(s_io_data_out_par[2]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[3]_i_1 
       (.I0(s_io_data_out_par[3]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[4]_i_1 
       (.I0(s_io_data_out_par[4]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[5]_i_1 
       (.I0(s_io_data_out_par[5]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[6]_i_1 
       (.I0(s_io_data_out_par[6]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[7]_i_1 
       (.I0(s_io_data_out_par[7]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[8]_i_1 
       (.I0(s_io_data_out_par[8]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_io_in_sr[9]_i_1 
       (.I0(s_io_data_out_par[9]),
        .I1(o_t0),
        .I2(\s_io_in_sr_reg[18] [9]),
        .O(D[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[0] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [0]),
        .Q(s_io_data_out_par[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[10] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [10]),
        .Q(s_io_data_out_par[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[11] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [11]),
        .Q(s_io_data_out_par[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[12] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [12]),
        .Q(s_io_data_out_par[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[13] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [13]),
        .Q(s_io_data_out_par[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[14] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [14]),
        .Q(s_io_data_out_par[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[15] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [15]),
        .Q(s_io_data_out_par[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[16] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [16]),
        .Q(s_io_data_out_par[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[17] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [17]),
        .Q(s_io_data_out_par[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[18] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [18]),
        .Q(s_io_data_out_par[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[19] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [19]),
        .Q(Q),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[1] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [1]),
        .Q(s_io_data_out_par[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[2] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [2]),
        .Q(s_io_data_out_par[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[3] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [3]),
        .Q(s_io_data_out_par[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[4] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [4]),
        .Q(s_io_data_out_par[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[5] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [5]),
        .Q(s_io_data_out_par[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[6] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [6]),
        .Q(s_io_data_out_par[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[7] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [7]),
        .Q(s_io_data_out_par[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[8] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [8]),
        .Q(s_io_data_out_par[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_latched_data_reg[9] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_latched_data_reg[19]_0 [9]),
        .Q(s_io_data_out_par[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_airspd[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_airspd[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_airspd[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_airspd[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_airspd[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_airspd[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_airspd[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_airspd[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_airspd[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_airspd[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_airspd[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_airspd[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_airspd[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_airspd[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_airspd[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_airspd[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_airspd[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_airspd[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_airspd[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_airspd_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_airspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_airspd[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_alt[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_alt[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_alt[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_alt[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_alt[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_alt[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_alt[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_alt[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_alt[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_alt[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_alt[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_alt[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_alt[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_alt[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_alt[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_alt[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_alt[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_alt[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_alt[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_alt_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_alt_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_alt[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_bit_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_reg_bit_reg_0),
        .Q(s_reg_bit),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_flap[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_flap[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_flap[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_flap[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_flap[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_flap[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_flap[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_flap[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_flap[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_flap[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_flap[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_flap[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_flap[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_flap[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_flap[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_flap[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_flap[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_flap[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_flap[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_flap_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_flap_reg[19]_1 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_flap[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_glove[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_glove[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_glove[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_glove[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_glove[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_glove[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_glove[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_glove[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_glove[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_glove[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_glove[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_glove[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_glove[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_glove[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_glove[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_glove[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_glove[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_glove[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_glove[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_glove_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_glove_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_glove[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_mach[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_mach[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_mach[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_mach[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_mach[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_mach[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_mach[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_mach[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_mach[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_mach[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_mach[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_mach[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_mach[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_mach[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_mach[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_mach[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_mach[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_mach[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_mach[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_mach_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_mach_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_mach[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_vspd[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_vspd[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_vspd[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_vspd[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_vspd[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_vspd[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_vspd[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_vspd[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_vspd[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_vspd[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_vspd[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_vspd[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_vspd[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_vspd[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_vspd[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_vspd[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_vspd[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_vspd[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_vspd[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_vspd_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_vspd_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_vspd[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[0] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [0]),
        .Q(s_reg_wing[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[10] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [10]),
        .Q(s_reg_wing[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[11] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [11]),
        .Q(s_reg_wing[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[12] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [12]),
        .Q(s_reg_wing[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[13] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [13]),
        .Q(s_reg_wing[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[14] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [14]),
        .Q(s_reg_wing[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[15] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [15]),
        .Q(s_reg_wing[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[16] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [16]),
        .Q(s_reg_wing[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[17] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [17]),
        .Q(s_reg_wing[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[18] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [18]),
        .Q(s_reg_wing[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[19] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [19]),
        .Q(s_reg_wing[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[1] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [1]),
        .Q(s_reg_wing[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[2] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [2]),
        .Q(s_reg_wing[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[3] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [3]),
        .Q(s_reg_wing[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[4] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [4]),
        .Q(s_reg_wing[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[5] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [5]),
        .Q(s_reg_wing[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[6] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [6]),
        .Q(s_reg_wing[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[7] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [7]),
        .Q(s_reg_wing[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[8] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [8]),
        .Q(s_reg_wing[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_wing_reg[9] 
       (.C(i_clk_master),
        .CE(\s_reg_wing_reg[19]_0 ),
        .D(\s_reg_flap_reg[19]_0 [9]),
        .Q(s_reg_wing[9]),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "pdu" *) 
module cadc_system_cadc_top_0_0_pdu
   (D,
    s_pdu_busy,
    s_state,
    \s_divisor_lat_reg[1]_0 ,
    s_busy_reg_0,
    i_rst,
    s_mcand_sr,
    \s_divisor_sr_reg[19]_0 ,
    i_clk_master,
    s_busy_reg_1,
    o_phi2,
    \FSM_onehot_s_state_reg[0]_0 ,
    \s_micro_pc_rep_rep[1]_i_4 ,
    \FSM_onehot_s_state_reg[2]_0 ,
    \FSM_onehot_s_state_reg[1]_0 ,
    E);
  output [18:0]D;
  output s_pdu_busy;
  output [2:0]s_state;
  output \s_divisor_lat_reg[1]_0 ;
  output s_busy_reg_0;
  input i_rst;
  input [0:0]s_mcand_sr;
  input [0:0]\s_divisor_sr_reg[19]_0 ;
  input i_clk_master;
  input s_busy_reg_1;
  input o_phi2;
  input \FSM_onehot_s_state_reg[0]_0 ;
  input \s_micro_pc_rep_rep[1]_i_4 ;
  input \FSM_onehot_s_state_reg[2]_0 ;
  input \FSM_onehot_s_state_reg[1]_0 ;
  input [0:0]E;

  wire [18:0]D;
  wire [0:0]E;
  wire \FSM_onehot_s_state[0]_i_1_n_0 ;
  wire \FSM_onehot_s_state[2]_i_4_n_0 ;
  wire \FSM_onehot_s_state[2]_i_5_n_0 ;
  wire \FSM_onehot_s_state[2]_i_6_n_0 ;
  wire \FSM_onehot_s_state[2]_i_7_n_0 ;
  wire \FSM_onehot_s_state_reg[0]_0 ;
  wire \FSM_onehot_s_state_reg[1]_0 ;
  wire \FSM_onehot_s_state_reg[2]_0 ;
  wire i_clk_master;
  wire i_rst;
  wire o_phi2;
  wire s_busy_reg_0;
  wire s_busy_reg_1;
  wire [19:0]s_divisor_lat;
  wire \s_divisor_lat_reg[1]_0 ;
  wire [0:0]\s_divisor_sr_reg[19]_0 ;
  wire [0:0]s_mcand_sr;
  wire \s_micro_pc_rep_rep[1]_i_4 ;
  wire s_pdu_busy;
  wire [2:0]s_state;

  LUT5 #(
    .INIT(32'hFF07F800)) 
    \FSM_onehot_s_state[0]_i_1 
       (.I0(o_phi2),
        .I1(s_state[1]),
        .I2(\FSM_onehot_s_state_reg[0]_0 ),
        .I3(s_state[2]),
        .I4(s_state[0]),
        .O(\FSM_onehot_s_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_s_state[2]_i_3 
       (.I0(s_divisor_lat[1]),
        .I1(s_divisor_lat[0]),
        .I2(s_divisor_lat[3]),
        .I3(s_divisor_lat[2]),
        .I4(\FSM_onehot_s_state[2]_i_4_n_0 ),
        .I5(\FSM_onehot_s_state[2]_i_5_n_0 ),
        .O(\s_divisor_lat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_s_state[2]_i_4 
       (.I0(s_divisor_lat[14]),
        .I1(s_divisor_lat[15]),
        .I2(s_divisor_lat[12]),
        .I3(s_divisor_lat[13]),
        .I4(\FSM_onehot_s_state[2]_i_6_n_0 ),
        .O(\FSM_onehot_s_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_s_state[2]_i_5 
       (.I0(s_divisor_lat[6]),
        .I1(s_divisor_lat[7]),
        .I2(s_divisor_lat[4]),
        .I3(s_divisor_lat[5]),
        .I4(\FSM_onehot_s_state[2]_i_7_n_0 ),
        .O(\FSM_onehot_s_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s_state[2]_i_6 
       (.I0(s_divisor_lat[17]),
        .I1(s_divisor_lat[16]),
        .I2(s_divisor_lat[19]),
        .I3(s_divisor_lat[18]),
        .O(\FSM_onehot_s_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s_state[2]_i_7 
       (.I0(s_divisor_lat[9]),
        .I1(s_divisor_lat[8]),
        .I2(s_divisor_lat[11]),
        .I3(s_divisor_lat[10]),
        .O(\FSM_onehot_s_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,setup:010,dividing:010,correction:011,done:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_s_state_reg[0] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\FSM_onehot_s_state[0]_i_1_n_0 ),
        .Q(s_state[0]),
        .S(i_rst));
  (* FSM_ENCODED_STATES = "idle:001,setup:010,dividing:010,correction:011,done:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_state_reg[1] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\FSM_onehot_s_state_reg[1]_0 ),
        .Q(s_state[1]),
        .R(i_rst));
  (* FSM_ENCODED_STATES = "idle:001,setup:010,dividing:010,correction:011,done:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_state_reg[2] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\FSM_onehot_s_state_reg[2]_0 ),
        .Q(s_state[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    s_busy_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_busy_reg_1),
        .Q(s_pdu_busy),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[0] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[0]),
        .Q(s_divisor_lat[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[10] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[10]),
        .Q(s_divisor_lat[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[11] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[11]),
        .Q(s_divisor_lat[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[12] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[12]),
        .Q(s_divisor_lat[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[13] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[13]),
        .Q(s_divisor_lat[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[14] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[14]),
        .Q(s_divisor_lat[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[15] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[15]),
        .Q(s_divisor_lat[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[16] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[16]),
        .Q(s_divisor_lat[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[17] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[17]),
        .Q(s_divisor_lat[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[18] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[18]),
        .Q(s_divisor_lat[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[19] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_divisor_sr_reg[19]_0 ),
        .Q(s_divisor_lat[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[1] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[1]),
        .Q(s_divisor_lat[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[2] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[2]),
        .Q(s_divisor_lat[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[3] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[3]),
        .Q(s_divisor_lat[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[4] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[4]),
        .Q(s_divisor_lat[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[5] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[5]),
        .Q(s_divisor_lat[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[6] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[6]),
        .Q(s_divisor_lat[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[7] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[7]),
        .Q(s_divisor_lat[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[8] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[8]),
        .Q(s_divisor_lat[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_lat_reg[9] 
       (.C(i_clk_master),
        .CE(E),
        .D(D[9]),
        .Q(s_divisor_lat[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[10] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[10]),
        .Q(D[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[11] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[11]),
        .Q(D[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[12] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[12]),
        .Q(D[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[13] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[13]),
        .Q(D[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[14] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[14]),
        .Q(D[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[15] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[15]),
        .Q(D[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[16] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[16]),
        .Q(D[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[17] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[17]),
        .Q(D[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[18] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[18]),
        .Q(D[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[19] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(\s_divisor_sr_reg[19]_0 ),
        .Q(D[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[1] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[1]),
        .Q(D[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[2] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[2]),
        .Q(D[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[3] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[3]),
        .Q(D[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[4] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[4]),
        .Q(D[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[5] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[5]),
        .Q(D[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[6] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[6]),
        .Q(D[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[7] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[7]),
        .Q(D[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[8] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[8]),
        .Q(D[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_divisor_sr_reg[9] 
       (.C(i_clk_master),
        .CE(s_mcand_sr),
        .D(D[9]),
        .Q(D[8]),
        .R(i_rst));
  LUT2 #(
    .INIT(4'h1)) 
    \s_micro_pc_rep_rep[4]_i_8 
       (.I0(s_pdu_busy),
        .I1(\s_micro_pc_rep_rep[1]_i_4 ),
        .O(s_busy_reg_0));
endmodule

(* ORIG_REF_NAME = "pmu" *) 
module cadc_system_cadc_top_0_0_pmu
   (Q,
    o_word_type,
    i_rst,
    E,
    A,
    i_clk_master,
    D,
    s_mcand_sr,
    \main_proc.v_product_201_0 ,
    \s_product_sr_reg[19]_0 );
  output [1:0]Q;
  input o_word_type;
  input i_rst;
  input [0:0]E;
  input [19:0]A;
  input i_clk_master;
  input [2:0]D;
  input [0:0]s_mcand_sr;
  input [15:0]\main_proc.v_product_201_0 ;
  input [0:0]\s_product_sr_reg[19]_0 ;

  wire [19:0]A;
  wire [2:0]D;
  wire [0:0]E;
  wire [38:19]L;
  wire [1:0]Q;
  wire i_clk_master;
  wire i_rst;
  wire [15:0]\main_proc.v_product_201_0 ;
  wire [21:0]\main_proc.v_product_201__0 ;
  wire \main_proc.v_product_201_n_100 ;
  wire \main_proc.v_product_201_n_101 ;
  wire \main_proc.v_product_201_n_102 ;
  wire \main_proc.v_product_201_n_103 ;
  wire \main_proc.v_product_201_n_104 ;
  wire \main_proc.v_product_201_n_105 ;
  wire \main_proc.v_product_201_n_58 ;
  wire \main_proc.v_product_201_n_59 ;
  wire \main_proc.v_product_201_n_60 ;
  wire \main_proc.v_product_201_n_61 ;
  wire \main_proc.v_product_201_n_62 ;
  wire \main_proc.v_product_201_n_63 ;
  wire \main_proc.v_product_201_n_64 ;
  wire \main_proc.v_product_201_n_65 ;
  wire \main_proc.v_product_201_n_66 ;
  wire \main_proc.v_product_201_n_67 ;
  wire \main_proc.v_product_201_n_68 ;
  wire \main_proc.v_product_201_n_69 ;
  wire \main_proc.v_product_201_n_70 ;
  wire \main_proc.v_product_201_n_71 ;
  wire \main_proc.v_product_201_n_72 ;
  wire \main_proc.v_product_201_n_73 ;
  wire \main_proc.v_product_201_n_74 ;
  wire \main_proc.v_product_201_n_75 ;
  wire \main_proc.v_product_201_n_76 ;
  wire \main_proc.v_product_201_n_77 ;
  wire \main_proc.v_product_201_n_78 ;
  wire \main_proc.v_product_201_n_79 ;
  wire \main_proc.v_product_201_n_80 ;
  wire \main_proc.v_product_201_n_81 ;
  wire \main_proc.v_product_201_n_82 ;
  wire \main_proc.v_product_201_n_83 ;
  wire \main_proc.v_product_201_n_84 ;
  wire \main_proc.v_product_201_n_85 ;
  wire \main_proc.v_product_201_n_86 ;
  wire \main_proc.v_product_201_n_87 ;
  wire \main_proc.v_product_201_n_88 ;
  wire \main_proc.v_product_201_n_89 ;
  wire \main_proc.v_product_201_n_90 ;
  wire \main_proc.v_product_201_n_91 ;
  wire \main_proc.v_product_201_n_92 ;
  wire \main_proc.v_product_201_n_93 ;
  wire \main_proc.v_product_201_n_94 ;
  wire \main_proc.v_product_201_n_95 ;
  wire \main_proc.v_product_201_n_96 ;
  wire \main_proc.v_product_201_n_97 ;
  wire \main_proc.v_product_201_n_98 ;
  wire \main_proc.v_product_201_n_99 ;
  wire o_word_type;
  wire p_0_in;
  wire [18:1]p_1_in;
  wire s_mcand_lat_reg__0_n_0;
  wire s_mcand_lat_reg__1_n_0;
  wire s_mcand_lat_reg_n_0;
  wire [0:0]s_mcand_sr;
  wire \s_mplier_lat_reg_n_0_[0] ;
  wire \s_mplier_lat_reg_n_0_[10] ;
  wire \s_mplier_lat_reg_n_0_[11] ;
  wire \s_mplier_lat_reg_n_0_[12] ;
  wire \s_mplier_lat_reg_n_0_[13] ;
  wire \s_mplier_lat_reg_n_0_[14] ;
  wire \s_mplier_lat_reg_n_0_[15] ;
  wire \s_mplier_lat_reg_n_0_[16] ;
  wire \s_mplier_lat_reg_n_0_[17] ;
  wire \s_mplier_lat_reg_n_0_[18] ;
  wire \s_mplier_lat_reg_n_0_[19] ;
  wire \s_mplier_lat_reg_n_0_[1] ;
  wire \s_mplier_lat_reg_n_0_[2] ;
  wire \s_mplier_lat_reg_n_0_[3] ;
  wire \s_mplier_lat_reg_n_0_[4] ;
  wire \s_mplier_lat_reg_n_0_[5] ;
  wire \s_mplier_lat_reg_n_0_[6] ;
  wire \s_mplier_lat_reg_n_0_[7] ;
  wire \s_mplier_lat_reg_n_0_[8] ;
  wire \s_mplier_lat_reg_n_0_[9] ;
  wire \s_product_sr[11]_i_11_n_0 ;
  wire \s_product_sr[11]_i_12_n_0 ;
  wire \s_product_sr[11]_i_13_n_0 ;
  wire \s_product_sr[11]_i_14_n_0 ;
  wire \s_product_sr[11]_i_16_n_0 ;
  wire \s_product_sr[11]_i_17_n_0 ;
  wire \s_product_sr[11]_i_18_n_0 ;
  wire \s_product_sr[11]_i_19_n_0 ;
  wire \s_product_sr[11]_i_20_n_0 ;
  wire \s_product_sr[11]_i_21_n_0 ;
  wire \s_product_sr[11]_i_22_n_0 ;
  wire \s_product_sr[11]_i_23_n_0 ;
  wire \s_product_sr[11]_i_24_n_0 ;
  wire \s_product_sr[11]_i_25_n_0 ;
  wire \s_product_sr[11]_i_26_n_0 ;
  wire \s_product_sr[11]_i_27_n_0 ;
  wire \s_product_sr[11]_i_2_n_0 ;
  wire \s_product_sr[11]_i_3_n_0 ;
  wire \s_product_sr[11]_i_4_n_0 ;
  wire \s_product_sr[11]_i_5_n_0 ;
  wire \s_product_sr[11]_i_6_n_0 ;
  wire \s_product_sr[11]_i_7_n_0 ;
  wire \s_product_sr[11]_i_8_n_0 ;
  wire \s_product_sr[11]_i_9_n_0 ;
  wire \s_product_sr[15]_i_11_n_0 ;
  wire \s_product_sr[15]_i_12_n_0 ;
  wire \s_product_sr[15]_i_13_n_0 ;
  wire \s_product_sr[15]_i_14_n_0 ;
  wire \s_product_sr[15]_i_16_n_0 ;
  wire \s_product_sr[15]_i_17_n_0 ;
  wire \s_product_sr[15]_i_18_n_0 ;
  wire \s_product_sr[15]_i_19_n_0 ;
  wire \s_product_sr[15]_i_20_n_0 ;
  wire \s_product_sr[15]_i_21_n_0 ;
  wire \s_product_sr[15]_i_22_n_0 ;
  wire \s_product_sr[15]_i_23_n_0 ;
  wire \s_product_sr[15]_i_24_n_0 ;
  wire \s_product_sr[15]_i_25_n_0 ;
  wire \s_product_sr[15]_i_26_n_0 ;
  wire \s_product_sr[15]_i_27_n_0 ;
  wire \s_product_sr[15]_i_2_n_0 ;
  wire \s_product_sr[15]_i_3_n_0 ;
  wire \s_product_sr[15]_i_4_n_0 ;
  wire \s_product_sr[15]_i_5_n_0 ;
  wire \s_product_sr[15]_i_6_n_0 ;
  wire \s_product_sr[15]_i_7_n_0 ;
  wire \s_product_sr[15]_i_8_n_0 ;
  wire \s_product_sr[15]_i_9_n_0 ;
  wire \s_product_sr[19]_i_12_n_0 ;
  wire \s_product_sr[19]_i_13_n_0 ;
  wire \s_product_sr[19]_i_14_n_0 ;
  wire \s_product_sr[19]_i_15_n_0 ;
  wire \s_product_sr[19]_i_16_n_0 ;
  wire \s_product_sr[19]_i_17_n_0 ;
  wire \s_product_sr[19]_i_20_n_0 ;
  wire \s_product_sr[19]_i_21_n_0 ;
  wire \s_product_sr[19]_i_22_n_0 ;
  wire \s_product_sr[19]_i_23_n_0 ;
  wire \s_product_sr[19]_i_24_n_0 ;
  wire \s_product_sr[19]_i_25_n_0 ;
  wire \s_product_sr[19]_i_26_n_0 ;
  wire \s_product_sr[19]_i_27_n_0 ;
  wire \s_product_sr[19]_i_28_n_0 ;
  wire \s_product_sr[19]_i_29_n_0 ;
  wire \s_product_sr[19]_i_30_n_0 ;
  wire \s_product_sr[19]_i_31_n_0 ;
  wire \s_product_sr[19]_i_32_n_0 ;
  wire \s_product_sr[19]_i_33_n_0 ;
  wire \s_product_sr[19]_i_34_n_0 ;
  wire \s_product_sr[19]_i_3_n_0 ;
  wire \s_product_sr[19]_i_4_n_0 ;
  wire \s_product_sr[19]_i_5_n_0 ;
  wire \s_product_sr[19]_i_6_n_0 ;
  wire \s_product_sr[19]_i_7_n_0 ;
  wire \s_product_sr[19]_i_8_n_0 ;
  wire \s_product_sr[19]_i_9_n_0 ;
  wire \s_product_sr[3]_i_11_n_0 ;
  wire \s_product_sr[3]_i_12_n_0 ;
  wire \s_product_sr[3]_i_13_n_0 ;
  wire \s_product_sr[3]_i_14_n_0 ;
  wire \s_product_sr[3]_i_16_n_0 ;
  wire \s_product_sr[3]_i_17_n_0 ;
  wire \s_product_sr[3]_i_18_n_0 ;
  wire \s_product_sr[3]_i_19_n_0 ;
  wire \s_product_sr[3]_i_20_n_0 ;
  wire \s_product_sr[3]_i_21_n_0 ;
  wire \s_product_sr[3]_i_22_n_0 ;
  wire \s_product_sr[3]_i_23_n_0 ;
  wire \s_product_sr[3]_i_2_n_0 ;
  wire \s_product_sr[3]_i_3_n_0 ;
  wire \s_product_sr[3]_i_4_n_0 ;
  wire \s_product_sr[3]_i_5_n_0 ;
  wire \s_product_sr[3]_i_6_n_0 ;
  wire \s_product_sr[3]_i_7_n_0 ;
  wire \s_product_sr[3]_i_8_n_0 ;
  wire \s_product_sr[3]_i_9_n_0 ;
  wire \s_product_sr[7]_i_11_n_0 ;
  wire \s_product_sr[7]_i_12_n_0 ;
  wire \s_product_sr[7]_i_13_n_0 ;
  wire \s_product_sr[7]_i_14_n_0 ;
  wire \s_product_sr[7]_i_16_n_0 ;
  wire \s_product_sr[7]_i_17_n_0 ;
  wire \s_product_sr[7]_i_18_n_0 ;
  wire \s_product_sr[7]_i_19_n_0 ;
  wire \s_product_sr[7]_i_20_n_0 ;
  wire \s_product_sr[7]_i_21_n_0 ;
  wire \s_product_sr[7]_i_22_n_0 ;
  wire \s_product_sr[7]_i_23_n_0 ;
  wire \s_product_sr[7]_i_24_n_0 ;
  wire \s_product_sr[7]_i_25_n_0 ;
  wire \s_product_sr[7]_i_26_n_0 ;
  wire \s_product_sr[7]_i_27_n_0 ;
  wire \s_product_sr[7]_i_2_n_0 ;
  wire \s_product_sr[7]_i_3_n_0 ;
  wire \s_product_sr[7]_i_4_n_0 ;
  wire \s_product_sr[7]_i_5_n_0 ;
  wire \s_product_sr[7]_i_6_n_0 ;
  wire \s_product_sr[7]_i_7_n_0 ;
  wire \s_product_sr[7]_i_8_n_0 ;
  wire \s_product_sr[7]_i_9_n_0 ;
  wire \s_product_sr_reg[11]_i_10_n_0 ;
  wire \s_product_sr_reg[11]_i_10_n_1 ;
  wire \s_product_sr_reg[11]_i_10_n_2 ;
  wire \s_product_sr_reg[11]_i_10_n_3 ;
  wire \s_product_sr_reg[11]_i_15_n_0 ;
  wire \s_product_sr_reg[11]_i_15_n_1 ;
  wire \s_product_sr_reg[11]_i_15_n_2 ;
  wire \s_product_sr_reg[11]_i_15_n_3 ;
  wire \s_product_sr_reg[11]_i_1_n_0 ;
  wire \s_product_sr_reg[11]_i_1_n_1 ;
  wire \s_product_sr_reg[11]_i_1_n_2 ;
  wire \s_product_sr_reg[11]_i_1_n_3 ;
  wire \s_product_sr_reg[11]_i_1_n_4 ;
  wire \s_product_sr_reg[11]_i_1_n_5 ;
  wire \s_product_sr_reg[11]_i_1_n_6 ;
  wire \s_product_sr_reg[11]_i_1_n_7 ;
  wire \s_product_sr_reg[15]_i_10_n_0 ;
  wire \s_product_sr_reg[15]_i_10_n_1 ;
  wire \s_product_sr_reg[15]_i_10_n_2 ;
  wire \s_product_sr_reg[15]_i_10_n_3 ;
  wire \s_product_sr_reg[15]_i_15_n_0 ;
  wire \s_product_sr_reg[15]_i_15_n_1 ;
  wire \s_product_sr_reg[15]_i_15_n_2 ;
  wire \s_product_sr_reg[15]_i_15_n_3 ;
  wire \s_product_sr_reg[15]_i_1_n_0 ;
  wire \s_product_sr_reg[15]_i_1_n_1 ;
  wire \s_product_sr_reg[15]_i_1_n_2 ;
  wire \s_product_sr_reg[15]_i_1_n_3 ;
  wire \s_product_sr_reg[15]_i_1_n_4 ;
  wire \s_product_sr_reg[15]_i_1_n_5 ;
  wire \s_product_sr_reg[15]_i_1_n_6 ;
  wire \s_product_sr_reg[15]_i_1_n_7 ;
  wire [0:0]\s_product_sr_reg[19]_0 ;
  wire \s_product_sr_reg[19]_i_10_n_3 ;
  wire \s_product_sr_reg[19]_i_11_n_0 ;
  wire \s_product_sr_reg[19]_i_11_n_1 ;
  wire \s_product_sr_reg[19]_i_11_n_2 ;
  wire \s_product_sr_reg[19]_i_11_n_3 ;
  wire \s_product_sr_reg[19]_i_18_n_3 ;
  wire \s_product_sr_reg[19]_i_19_n_0 ;
  wire \s_product_sr_reg[19]_i_19_n_1 ;
  wire \s_product_sr_reg[19]_i_19_n_2 ;
  wire \s_product_sr_reg[19]_i_19_n_3 ;
  wire \s_product_sr_reg[19]_i_2_n_1 ;
  wire \s_product_sr_reg[19]_i_2_n_2 ;
  wire \s_product_sr_reg[19]_i_2_n_3 ;
  wire \s_product_sr_reg[19]_i_2_n_4 ;
  wire \s_product_sr_reg[19]_i_2_n_5 ;
  wire \s_product_sr_reg[19]_i_2_n_6 ;
  wire \s_product_sr_reg[19]_i_2_n_7 ;
  wire \s_product_sr_reg[3]_i_10_n_0 ;
  wire \s_product_sr_reg[3]_i_10_n_1 ;
  wire \s_product_sr_reg[3]_i_10_n_2 ;
  wire \s_product_sr_reg[3]_i_10_n_3 ;
  wire \s_product_sr_reg[3]_i_15_n_0 ;
  wire \s_product_sr_reg[3]_i_15_n_1 ;
  wire \s_product_sr_reg[3]_i_15_n_2 ;
  wire \s_product_sr_reg[3]_i_15_n_3 ;
  wire \s_product_sr_reg[3]_i_1_n_0 ;
  wire \s_product_sr_reg[3]_i_1_n_1 ;
  wire \s_product_sr_reg[3]_i_1_n_2 ;
  wire \s_product_sr_reg[3]_i_1_n_3 ;
  wire \s_product_sr_reg[3]_i_1_n_4 ;
  wire \s_product_sr_reg[3]_i_1_n_5 ;
  wire \s_product_sr_reg[3]_i_1_n_6 ;
  wire \s_product_sr_reg[3]_i_1_n_7 ;
  wire \s_product_sr_reg[7]_i_10_n_0 ;
  wire \s_product_sr_reg[7]_i_10_n_1 ;
  wire \s_product_sr_reg[7]_i_10_n_2 ;
  wire \s_product_sr_reg[7]_i_10_n_3 ;
  wire \s_product_sr_reg[7]_i_15_n_0 ;
  wire \s_product_sr_reg[7]_i_15_n_1 ;
  wire \s_product_sr_reg[7]_i_15_n_2 ;
  wire \s_product_sr_reg[7]_i_15_n_3 ;
  wire \s_product_sr_reg[7]_i_1_n_0 ;
  wire \s_product_sr_reg[7]_i_1_n_1 ;
  wire \s_product_sr_reg[7]_i_1_n_2 ;
  wire \s_product_sr_reg[7]_i_1_n_3 ;
  wire \s_product_sr_reg[7]_i_1_n_4 ;
  wire \s_product_sr_reg[7]_i_1_n_5 ;
  wire \s_product_sr_reg[7]_i_1_n_6 ;
  wire \s_product_sr_reg[7]_i_1_n_7 ;
  wire \NLW_main_proc.v_product_201_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_main_proc.v_product_201_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_main_proc.v_product_201_OVERFLOW_UNCONNECTED ;
  wire \NLW_main_proc.v_product_201_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_main_proc.v_product_201_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_main_proc.v_product_201_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_main_proc.v_product_201_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_main_proc.v_product_201_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_main_proc.v_product_201_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_main_proc.v_product_201_PCOUT_UNCONNECTED ;
  wire [3:1]\NLW_s_product_sr_reg[19]_i_10_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_product_sr_reg[19]_i_10_O_UNCONNECTED ;
  wire [3:1]\NLW_s_product_sr_reg[19]_i_18_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_product_sr_reg[19]_i_18_O_UNCONNECTED ;
  wire [3:3]\NLW_s_product_sr_reg[19]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_s_product_sr_reg[3]_i_10_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \main_proc.v_product_201 
       (.A({A[19],A[19],A[19],A[19],A[19],A[19],A[19],A[19],A[19],A[19],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_main_proc.v_product_201_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,D[0],\main_proc.v_product_201_0 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_main_proc.v_product_201_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_main_proc.v_product_201_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_main_proc.v_product_201_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(s_mcand_sr),
        .CEB2(E),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(i_clk_master),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_main_proc.v_product_201_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_main_proc.v_product_201_OVERFLOW_UNCONNECTED ),
        .P({\main_proc.v_product_201_n_58 ,\main_proc.v_product_201_n_59 ,\main_proc.v_product_201_n_60 ,\main_proc.v_product_201_n_61 ,\main_proc.v_product_201_n_62 ,\main_proc.v_product_201_n_63 ,\main_proc.v_product_201_n_64 ,\main_proc.v_product_201_n_65 ,\main_proc.v_product_201_n_66 ,\main_proc.v_product_201_n_67 ,\main_proc.v_product_201_n_68 ,\main_proc.v_product_201_n_69 ,\main_proc.v_product_201_n_70 ,\main_proc.v_product_201_n_71 ,\main_proc.v_product_201_n_72 ,\main_proc.v_product_201_n_73 ,\main_proc.v_product_201_n_74 ,\main_proc.v_product_201_n_75 ,\main_proc.v_product_201_n_76 ,\main_proc.v_product_201_n_77 ,\main_proc.v_product_201_n_78 ,\main_proc.v_product_201_n_79 ,\main_proc.v_product_201_n_80 ,\main_proc.v_product_201_n_81 ,\main_proc.v_product_201_n_82 ,\main_proc.v_product_201_n_83 ,\main_proc.v_product_201_n_84 ,\main_proc.v_product_201_n_85 ,\main_proc.v_product_201_n_86 ,\main_proc.v_product_201_n_87 ,\main_proc.v_product_201_n_88 ,\main_proc.v_product_201_n_89 ,\main_proc.v_product_201_n_90 ,\main_proc.v_product_201_n_91 ,\main_proc.v_product_201_n_92 ,\main_proc.v_product_201_n_93 ,\main_proc.v_product_201_n_94 ,\main_proc.v_product_201_n_95 ,\main_proc.v_product_201_n_96 ,\main_proc.v_product_201_n_97 ,\main_proc.v_product_201_n_98 ,\main_proc.v_product_201_n_99 ,\main_proc.v_product_201_n_100 ,\main_proc.v_product_201_n_101 ,\main_proc.v_product_201_n_102 ,\main_proc.v_product_201_n_103 ,\main_proc.v_product_201_n_104 ,\main_proc.v_product_201_n_105 }),
        .PATTERNBDETECT(\NLW_main_proc.v_product_201_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_main_proc.v_product_201_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_main_proc.v_product_201_PCOUT_UNCONNECTED [47:0]),
        .RSTA(i_rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(i_rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_main_proc.v_product_201_UNDERFLOW_UNCONNECTED ));
  FDRE s_mcand_lat_reg
       (.C(i_clk_master),
        .CE(E),
        .D(D[2]),
        .Q(s_mcand_lat_reg_n_0),
        .R(i_rst));
  FDRE s_mcand_lat_reg__0
       (.C(i_clk_master),
        .CE(E),
        .D(D[1]),
        .Q(s_mcand_lat_reg__0_n_0),
        .R(i_rst));
  FDRE s_mcand_lat_reg__1
       (.C(i_clk_master),
        .CE(E),
        .D(D[0]),
        .Q(s_mcand_lat_reg__1_n_0),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[0] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[0]),
        .Q(\s_mplier_lat_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[10] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[10]),
        .Q(\s_mplier_lat_reg_n_0_[10] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[11] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[11]),
        .Q(\s_mplier_lat_reg_n_0_[11] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[12] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[12]),
        .Q(\s_mplier_lat_reg_n_0_[12] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[13] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[13]),
        .Q(\s_mplier_lat_reg_n_0_[13] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[14] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[14]),
        .Q(\s_mplier_lat_reg_n_0_[14] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[15] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[15]),
        .Q(\s_mplier_lat_reg_n_0_[15] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[16] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[16]),
        .Q(\s_mplier_lat_reg_n_0_[16] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[17] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[17]),
        .Q(\s_mplier_lat_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[18] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[18]),
        .Q(\s_mplier_lat_reg_n_0_[18] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[19] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[19]),
        .Q(\s_mplier_lat_reg_n_0_[19] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[1] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[1]),
        .Q(\s_mplier_lat_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[2] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[2]),
        .Q(\s_mplier_lat_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[3] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[3]),
        .Q(\s_mplier_lat_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[4] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[4]),
        .Q(\s_mplier_lat_reg_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[5] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[5]),
        .Q(\s_mplier_lat_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[6] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[6]),
        .Q(\s_mplier_lat_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[7] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[7]),
        .Q(\s_mplier_lat_reg_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[8] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[8]),
        .Q(\s_mplier_lat_reg_n_0_[8] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_mplier_lat_reg[9] 
       (.C(i_clk_master),
        .CE(E),
        .D(A[9]),
        .Q(\s_mplier_lat_reg_n_0_[9] ),
        .R(i_rst));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[11]_i_11 
       (.I0(\main_proc.v_product_201_n_77 ),
        .I1(\main_proc.v_product_201__0 [11]),
        .O(\s_product_sr[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[11]_i_12 
       (.I0(\main_proc.v_product_201_n_78 ),
        .I1(\main_proc.v_product_201__0 [10]),
        .O(\s_product_sr[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[11]_i_13 
       (.I0(\main_proc.v_product_201_n_79 ),
        .I1(\main_proc.v_product_201__0 [9]),
        .O(\s_product_sr[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[11]_i_14 
       (.I0(\main_proc.v_product_201_n_80 ),
        .I1(\main_proc.v_product_201__0 [8]),
        .O(\s_product_sr[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[11]_i_16 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[9] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[8] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[10] ),
        .O(\s_product_sr[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[11]_i_17 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[8] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[7] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[9] ),
        .O(\s_product_sr[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[11]_i_18 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[7] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[6] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[8] ),
        .O(\s_product_sr[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[11]_i_19 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[6] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[5] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[7] ),
        .O(\s_product_sr[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[11]_i_2 
       (.I0(L[30]),
        .I1(o_word_type),
        .O(\s_product_sr[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[11]_i_20 
       (.I0(\s_product_sr[11]_i_16_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[10] ),
        .I3(\s_product_sr[11]_i_24_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[11] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[11]_i_21 
       (.I0(\s_product_sr[11]_i_17_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[9] ),
        .I3(\s_product_sr[11]_i_25_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[10] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[11]_i_22 
       (.I0(\s_product_sr[11]_i_18_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[8] ),
        .I3(\s_product_sr[11]_i_26_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[9] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[11]_i_23 
       (.I0(\s_product_sr[11]_i_19_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[7] ),
        .I3(\s_product_sr[11]_i_27_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[8] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[11]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[11]_i_24 
       (.I0(\s_mplier_lat_reg_n_0_[9] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[11]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[11]_i_25 
       (.I0(\s_mplier_lat_reg_n_0_[8] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[11]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[11]_i_26 
       (.I0(\s_mplier_lat_reg_n_0_[7] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[11]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[11]_i_27 
       (.I0(\s_mplier_lat_reg_n_0_[6] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[11]_i_3 
       (.I0(L[29]),
        .I1(o_word_type),
        .O(\s_product_sr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[11]_i_4 
       (.I0(L[28]),
        .I1(o_word_type),
        .O(\s_product_sr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[11]_i_5 
       (.I0(L[27]),
        .I1(o_word_type),
        .O(\s_product_sr[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[11]_i_6 
       (.I0(L[30]),
        .I1(p_1_in[11]),
        .I2(o_word_type),
        .O(\s_product_sr[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[11]_i_7 
       (.I0(L[29]),
        .I1(p_1_in[10]),
        .I2(o_word_type),
        .O(\s_product_sr[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[11]_i_8 
       (.I0(L[28]),
        .I1(p_1_in[9]),
        .I2(o_word_type),
        .O(\s_product_sr[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[11]_i_9 
       (.I0(L[27]),
        .I1(p_1_in[8]),
        .I2(o_word_type),
        .O(\s_product_sr[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[15]_i_11 
       (.I0(\main_proc.v_product_201_n_73 ),
        .I1(\main_proc.v_product_201__0 [15]),
        .O(\s_product_sr[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[15]_i_12 
       (.I0(\main_proc.v_product_201_n_74 ),
        .I1(\main_proc.v_product_201__0 [14]),
        .O(\s_product_sr[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[15]_i_13 
       (.I0(\main_proc.v_product_201_n_75 ),
        .I1(\main_proc.v_product_201__0 [13]),
        .O(\s_product_sr[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[15]_i_14 
       (.I0(\main_proc.v_product_201_n_76 ),
        .I1(\main_proc.v_product_201__0 [12]),
        .O(\s_product_sr[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[15]_i_16 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[13] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[12] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[14] ),
        .O(\s_product_sr[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[15]_i_17 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[12] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[11] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[13] ),
        .O(\s_product_sr[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[15]_i_18 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[11] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[10] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[12] ),
        .O(\s_product_sr[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[15]_i_19 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[10] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[9] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[11] ),
        .O(\s_product_sr[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[15]_i_2 
       (.I0(L[34]),
        .I1(o_word_type),
        .O(\s_product_sr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[15]_i_20 
       (.I0(\s_product_sr[15]_i_16_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[14] ),
        .I3(\s_product_sr[15]_i_24_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[15] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[15]_i_21 
       (.I0(\s_product_sr[15]_i_17_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[13] ),
        .I3(\s_product_sr[15]_i_25_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[14] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[15]_i_22 
       (.I0(\s_product_sr[15]_i_18_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[12] ),
        .I3(\s_product_sr[15]_i_26_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[13] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[15]_i_23 
       (.I0(\s_product_sr[15]_i_19_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[11] ),
        .I3(\s_product_sr[15]_i_27_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[12] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[15]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[15]_i_24 
       (.I0(\s_mplier_lat_reg_n_0_[13] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[15]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[15]_i_25 
       (.I0(\s_mplier_lat_reg_n_0_[12] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[15]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[15]_i_26 
       (.I0(\s_mplier_lat_reg_n_0_[11] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[15]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[15]_i_27 
       (.I0(\s_mplier_lat_reg_n_0_[10] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[15]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[15]_i_3 
       (.I0(L[33]),
        .I1(o_word_type),
        .O(\s_product_sr[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[15]_i_4 
       (.I0(L[32]),
        .I1(o_word_type),
        .O(\s_product_sr[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[15]_i_5 
       (.I0(L[31]),
        .I1(o_word_type),
        .O(\s_product_sr[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[15]_i_6 
       (.I0(L[34]),
        .I1(p_1_in[15]),
        .I2(o_word_type),
        .O(\s_product_sr[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[15]_i_7 
       (.I0(L[33]),
        .I1(p_1_in[14]),
        .I2(o_word_type),
        .O(\s_product_sr[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[15]_i_8 
       (.I0(L[32]),
        .I1(p_1_in[13]),
        .I2(o_word_type),
        .O(\s_product_sr[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[15]_i_9 
       (.I0(L[31]),
        .I1(p_1_in[12]),
        .I2(o_word_type),
        .O(\s_product_sr[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[19]_i_12 
       (.I0(\main_proc.v_product_201_n_67 ),
        .I1(\main_proc.v_product_201__0 [21]),
        .O(\s_product_sr[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[19]_i_13 
       (.I0(\main_proc.v_product_201_n_68 ),
        .I1(\main_proc.v_product_201__0 [20]),
        .O(\s_product_sr[19]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[19]_i_14 
       (.I0(\main_proc.v_product_201_n_69 ),
        .I1(\main_proc.v_product_201__0 [19]),
        .O(\s_product_sr[19]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[19]_i_15 
       (.I0(\main_proc.v_product_201_n_70 ),
        .I1(\main_proc.v_product_201__0 [18]),
        .O(\s_product_sr[19]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[19]_i_16 
       (.I0(\main_proc.v_product_201_n_71 ),
        .I1(\main_proc.v_product_201__0 [17]),
        .O(\s_product_sr[19]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[19]_i_17 
       (.I0(\main_proc.v_product_201_n_72 ),
        .I1(\main_proc.v_product_201__0 [16]),
        .O(\s_product_sr[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0777700070007000)) 
    \s_product_sr[19]_i_20 
       (.I0(s_mcand_lat_reg__1_n_0),
        .I1(\s_mplier_lat_reg_n_0_[19] ),
        .I2(\s_mplier_lat_reg_n_0_[17] ),
        .I3(s_mcand_lat_reg_n_0),
        .I4(\s_mplier_lat_reg_n_0_[18] ),
        .I5(s_mcand_lat_reg__0_n_0),
        .O(\s_product_sr[19]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hE8FFDFFF)) 
    \s_product_sr[19]_i_21 
       (.I0(\s_mplier_lat_reg_n_0_[17] ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[18] ),
        .I3(s_mcand_lat_reg_n_0),
        .I4(\s_mplier_lat_reg_n_0_[19] ),
        .O(\s_product_sr[19]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h59956A956A959595)) 
    \s_product_sr[19]_i_22 
       (.I0(\s_product_sr[19]_i_20_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[19] ),
        .I3(s_mcand_lat_reg_n_0),
        .I4(\s_mplier_lat_reg_n_0_[18] ),
        .I5(\s_mplier_lat_reg_n_0_[17] ),
        .O(\s_product_sr[19]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \s_product_sr[19]_i_23 
       (.I0(\s_mplier_lat_reg_n_0_[17] ),
        .I1(s_mcand_lat_reg_n_0),
        .I2(\s_mplier_lat_reg_n_0_[18] ),
        .I3(s_mcand_lat_reg__0_n_0),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[19] ),
        .O(\s_product_sr[19]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[19]_i_24 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[16] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[15] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[17] ),
        .O(\s_product_sr[19]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[19]_i_25 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[15] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[14] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[16] ),
        .O(\s_product_sr[19]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[19]_i_26 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[14] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[13] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[15] ),
        .O(\s_product_sr[19]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAA6A6A6A6A555555)) 
    \s_product_sr[19]_i_27 
       (.I0(\s_product_sr[19]_i_23_n_0 ),
        .I1(\s_mplier_lat_reg_n_0_[18] ),
        .I2(s_mcand_lat_reg__1_n_0),
        .I3(\s_mplier_lat_reg_n_0_[16] ),
        .I4(s_mcand_lat_reg_n_0),
        .I5(\s_product_sr[19]_i_31_n_0 ),
        .O(\s_product_sr[19]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[19]_i_28 
       (.I0(\s_product_sr[19]_i_24_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[17] ),
        .I3(\s_product_sr[19]_i_32_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[18] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[19]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[19]_i_29 
       (.I0(\s_product_sr[19]_i_25_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[16] ),
        .I3(\s_product_sr[19]_i_33_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[17] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[19]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[19]_i_3 
       (.I0(L[37]),
        .I1(o_word_type),
        .O(\s_product_sr[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[19]_i_30 
       (.I0(\s_product_sr[19]_i_26_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[15] ),
        .I3(\s_product_sr[19]_i_34_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[16] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[19]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[19]_i_31 
       (.I0(\s_mplier_lat_reg_n_0_[17] ),
        .I1(s_mcand_lat_reg__0_n_0),
        .O(\s_product_sr[19]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[19]_i_32 
       (.I0(\s_mplier_lat_reg_n_0_[16] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[19]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[19]_i_33 
       (.I0(\s_mplier_lat_reg_n_0_[15] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[19]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[19]_i_34 
       (.I0(\s_mplier_lat_reg_n_0_[14] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[19]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[19]_i_4 
       (.I0(L[36]),
        .I1(o_word_type),
        .O(\s_product_sr[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[19]_i_5 
       (.I0(L[35]),
        .I1(o_word_type),
        .O(\s_product_sr[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[19]_i_6 
       (.I0(L[38]),
        .I1(o_word_type),
        .O(\s_product_sr[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[19]_i_7 
       (.I0(L[37]),
        .I1(p_1_in[18]),
        .I2(o_word_type),
        .O(\s_product_sr[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[19]_i_8 
       (.I0(L[36]),
        .I1(p_1_in[17]),
        .I2(o_word_type),
        .O(\s_product_sr[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[19]_i_9 
       (.I0(L[35]),
        .I1(p_1_in[16]),
        .I2(o_word_type),
        .O(\s_product_sr[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[3]_i_11 
       (.I0(\main_proc.v_product_201_n_85 ),
        .I1(\main_proc.v_product_201__0 [3]),
        .O(\s_product_sr[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[3]_i_12 
       (.I0(\main_proc.v_product_201_n_86 ),
        .I1(\main_proc.v_product_201__0 [2]),
        .O(\s_product_sr[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[3]_i_13 
       (.I0(\main_proc.v_product_201_n_87 ),
        .I1(\main_proc.v_product_201__0 [1]),
        .O(\s_product_sr[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[3]_i_14 
       (.I0(\main_proc.v_product_201_n_88 ),
        .I1(\main_proc.v_product_201__0 [0]),
        .O(\s_product_sr[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF777)) 
    \s_product_sr[3]_i_16 
       (.I0(s_mcand_lat_reg_n_0),
        .I1(\s_mplier_lat_reg_n_0_[0] ),
        .I2(s_mcand_lat_reg__0_n_0),
        .I3(\s_mplier_lat_reg_n_0_[1] ),
        .O(\s_product_sr[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_product_sr[3]_i_17 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[1] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[0] ),
        .O(\s_product_sr[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_product_sr[3]_i_18 
       (.I0(s_mcand_lat_reg__1_n_0),
        .I1(\s_mplier_lat_reg_n_0_[1] ),
        .O(\s_product_sr[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[3]_i_19 
       (.I0(\s_product_sr[3]_i_16_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[2] ),
        .I3(\s_product_sr[3]_i_23_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[3] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[3]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[3]_i_2 
       (.I0(L[22]),
        .I1(o_word_type),
        .O(\s_product_sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_product_sr[3]_i_20 
       (.I0(\s_mplier_lat_reg_n_0_[0] ),
        .I1(s_mcand_lat_reg_n_0),
        .I2(\s_mplier_lat_reg_n_0_[1] ),
        .I3(s_mcand_lat_reg__0_n_0),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[2] ),
        .O(\s_product_sr[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_product_sr[3]_i_21 
       (.I0(s_mcand_lat_reg__1_n_0),
        .I1(\s_mplier_lat_reg_n_0_[1] ),
        .I2(s_mcand_lat_reg__0_n_0),
        .I3(\s_mplier_lat_reg_n_0_[0] ),
        .O(\s_product_sr[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_product_sr[3]_i_22 
       (.I0(\s_mplier_lat_reg_n_0_[0] ),
        .I1(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[3]_i_23 
       (.I0(\s_mplier_lat_reg_n_0_[1] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[3]_i_3 
       (.I0(L[21]),
        .I1(o_word_type),
        .O(\s_product_sr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[3]_i_4 
       (.I0(L[20]),
        .I1(o_word_type),
        .O(\s_product_sr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[3]_i_5 
       (.I0(L[19]),
        .I1(o_word_type),
        .O(\s_product_sr[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[3]_i_6 
       (.I0(L[22]),
        .I1(p_1_in[3]),
        .I2(o_word_type),
        .O(\s_product_sr[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[3]_i_7 
       (.I0(L[21]),
        .I1(p_1_in[2]),
        .I2(o_word_type),
        .O(\s_product_sr[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[3]_i_8 
       (.I0(L[20]),
        .I1(p_1_in[1]),
        .I2(o_word_type),
        .O(\s_product_sr[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \s_product_sr[3]_i_9 
       (.I0(L[19]),
        .I1(p_0_in),
        .I2(o_word_type),
        .I3(Q[1]),
        .O(\s_product_sr[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[7]_i_11 
       (.I0(\main_proc.v_product_201_n_81 ),
        .I1(\main_proc.v_product_201__0 [7]),
        .O(\s_product_sr[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[7]_i_12 
       (.I0(\main_proc.v_product_201_n_82 ),
        .I1(\main_proc.v_product_201__0 [6]),
        .O(\s_product_sr[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[7]_i_13 
       (.I0(\main_proc.v_product_201_n_83 ),
        .I1(\main_proc.v_product_201__0 [5]),
        .O(\s_product_sr[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_product_sr[7]_i_14 
       (.I0(\main_proc.v_product_201_n_84 ),
        .I1(\main_proc.v_product_201__0 [4]),
        .O(\s_product_sr[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[7]_i_16 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[5] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[4] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[6] ),
        .O(\s_product_sr[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[7]_i_17 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[4] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[3] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[5] ),
        .O(\s_product_sr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[7]_i_18 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[3] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[2] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[4] ),
        .O(\s_product_sr[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \s_product_sr[7]_i_19 
       (.I0(s_mcand_lat_reg__0_n_0),
        .I1(\s_mplier_lat_reg_n_0_[2] ),
        .I2(s_mcand_lat_reg_n_0),
        .I3(\s_mplier_lat_reg_n_0_[1] ),
        .I4(s_mcand_lat_reg__1_n_0),
        .I5(\s_mplier_lat_reg_n_0_[3] ),
        .O(\s_product_sr[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[7]_i_2 
       (.I0(L[26]),
        .I1(o_word_type),
        .O(\s_product_sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[7]_i_20 
       (.I0(\s_product_sr[7]_i_16_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[6] ),
        .I3(\s_product_sr[7]_i_24_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[7] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[7]_i_21 
       (.I0(\s_product_sr[7]_i_17_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[5] ),
        .I3(\s_product_sr[7]_i_25_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[6] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[7]_i_22 
       (.I0(\s_product_sr[7]_i_18_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[4] ),
        .I3(\s_product_sr[7]_i_26_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[5] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \s_product_sr[7]_i_23 
       (.I0(\s_product_sr[7]_i_19_n_0 ),
        .I1(s_mcand_lat_reg__0_n_0),
        .I2(\s_mplier_lat_reg_n_0_[3] ),
        .I3(\s_product_sr[7]_i_27_n_0 ),
        .I4(\s_mplier_lat_reg_n_0_[4] ),
        .I5(s_mcand_lat_reg__1_n_0),
        .O(\s_product_sr[7]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[7]_i_24 
       (.I0(\s_mplier_lat_reg_n_0_[5] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[7]_i_25 
       (.I0(\s_mplier_lat_reg_n_0_[4] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[7]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[7]_i_26 
       (.I0(\s_mplier_lat_reg_n_0_[3] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_product_sr[7]_i_27 
       (.I0(\s_mplier_lat_reg_n_0_[2] ),
        .I1(s_mcand_lat_reg_n_0),
        .O(\s_product_sr[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[7]_i_3 
       (.I0(L[25]),
        .I1(o_word_type),
        .O(\s_product_sr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[7]_i_4 
       (.I0(L[24]),
        .I1(o_word_type),
        .O(\s_product_sr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_product_sr[7]_i_5 
       (.I0(L[23]),
        .I1(o_word_type),
        .O(\s_product_sr[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[7]_i_6 
       (.I0(L[26]),
        .I1(p_1_in[7]),
        .I2(o_word_type),
        .O(\s_product_sr[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[7]_i_7 
       (.I0(L[25]),
        .I1(p_1_in[6]),
        .I2(o_word_type),
        .O(\s_product_sr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[7]_i_8 
       (.I0(L[24]),
        .I1(p_1_in[5]),
        .I2(o_word_type),
        .O(\s_product_sr[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \s_product_sr[7]_i_9 
       (.I0(L[23]),
        .I1(p_1_in[4]),
        .I2(o_word_type),
        .O(\s_product_sr[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[0] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[10] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[11]_i_1_n_5 ),
        .Q(p_1_in[9]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[11] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[11]_i_1_n_4 ),
        .Q(p_1_in[10]),
        .R(i_rst));
  CARRY4 \s_product_sr_reg[11]_i_1 
       (.CI(\s_product_sr_reg[7]_i_1_n_0 ),
        .CO({\s_product_sr_reg[11]_i_1_n_0 ,\s_product_sr_reg[11]_i_1_n_1 ,\s_product_sr_reg[11]_i_1_n_2 ,\s_product_sr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[11]_i_2_n_0 ,\s_product_sr[11]_i_3_n_0 ,\s_product_sr[11]_i_4_n_0 ,\s_product_sr[11]_i_5_n_0 }),
        .O({\s_product_sr_reg[11]_i_1_n_4 ,\s_product_sr_reg[11]_i_1_n_5 ,\s_product_sr_reg[11]_i_1_n_6 ,\s_product_sr_reg[11]_i_1_n_7 }),
        .S({\s_product_sr[11]_i_6_n_0 ,\s_product_sr[11]_i_7_n_0 ,\s_product_sr[11]_i_8_n_0 ,\s_product_sr[11]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_product_sr_reg[11]_i_10 
       (.CI(\s_product_sr_reg[7]_i_10_n_0 ),
        .CO({\s_product_sr_reg[11]_i_10_n_0 ,\s_product_sr_reg[11]_i_10_n_1 ,\s_product_sr_reg[11]_i_10_n_2 ,\s_product_sr_reg[11]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\main_proc.v_product_201_n_77 ,\main_proc.v_product_201_n_78 ,\main_proc.v_product_201_n_79 ,\main_proc.v_product_201_n_80 }),
        .O(L[28:25]),
        .S({\s_product_sr[11]_i_11_n_0 ,\s_product_sr[11]_i_12_n_0 ,\s_product_sr[11]_i_13_n_0 ,\s_product_sr[11]_i_14_n_0 }));
  CARRY4 \s_product_sr_reg[11]_i_15 
       (.CI(\s_product_sr_reg[7]_i_15_n_0 ),
        .CO({\s_product_sr_reg[11]_i_15_n_0 ,\s_product_sr_reg[11]_i_15_n_1 ,\s_product_sr_reg[11]_i_15_n_2 ,\s_product_sr_reg[11]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[11]_i_16_n_0 ,\s_product_sr[11]_i_17_n_0 ,\s_product_sr[11]_i_18_n_0 ,\s_product_sr[11]_i_19_n_0 }),
        .O(\main_proc.v_product_201__0 [11:8]),
        .S({\s_product_sr[11]_i_20_n_0 ,\s_product_sr[11]_i_21_n_0 ,\s_product_sr[11]_i_22_n_0 ,\s_product_sr[11]_i_23_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[12] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[15]_i_1_n_7 ),
        .Q(p_1_in[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[13] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[15]_i_1_n_6 ),
        .Q(p_1_in[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[14] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[15]_i_1_n_5 ),
        .Q(p_1_in[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[15] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[15]_i_1_n_4 ),
        .Q(p_1_in[14]),
        .R(i_rst));
  CARRY4 \s_product_sr_reg[15]_i_1 
       (.CI(\s_product_sr_reg[11]_i_1_n_0 ),
        .CO({\s_product_sr_reg[15]_i_1_n_0 ,\s_product_sr_reg[15]_i_1_n_1 ,\s_product_sr_reg[15]_i_1_n_2 ,\s_product_sr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[15]_i_2_n_0 ,\s_product_sr[15]_i_3_n_0 ,\s_product_sr[15]_i_4_n_0 ,\s_product_sr[15]_i_5_n_0 }),
        .O({\s_product_sr_reg[15]_i_1_n_4 ,\s_product_sr_reg[15]_i_1_n_5 ,\s_product_sr_reg[15]_i_1_n_6 ,\s_product_sr_reg[15]_i_1_n_7 }),
        .S({\s_product_sr[15]_i_6_n_0 ,\s_product_sr[15]_i_7_n_0 ,\s_product_sr[15]_i_8_n_0 ,\s_product_sr[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_product_sr_reg[15]_i_10 
       (.CI(\s_product_sr_reg[11]_i_10_n_0 ),
        .CO({\s_product_sr_reg[15]_i_10_n_0 ,\s_product_sr_reg[15]_i_10_n_1 ,\s_product_sr_reg[15]_i_10_n_2 ,\s_product_sr_reg[15]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\main_proc.v_product_201_n_73 ,\main_proc.v_product_201_n_74 ,\main_proc.v_product_201_n_75 ,\main_proc.v_product_201_n_76 }),
        .O(L[32:29]),
        .S({\s_product_sr[15]_i_11_n_0 ,\s_product_sr[15]_i_12_n_0 ,\s_product_sr[15]_i_13_n_0 ,\s_product_sr[15]_i_14_n_0 }));
  CARRY4 \s_product_sr_reg[15]_i_15 
       (.CI(\s_product_sr_reg[11]_i_15_n_0 ),
        .CO({\s_product_sr_reg[15]_i_15_n_0 ,\s_product_sr_reg[15]_i_15_n_1 ,\s_product_sr_reg[15]_i_15_n_2 ,\s_product_sr_reg[15]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[15]_i_16_n_0 ,\s_product_sr[15]_i_17_n_0 ,\s_product_sr[15]_i_18_n_0 ,\s_product_sr[15]_i_19_n_0 }),
        .O(\main_proc.v_product_201__0 [15:12]),
        .S({\s_product_sr[15]_i_20_n_0 ,\s_product_sr[15]_i_21_n_0 ,\s_product_sr[15]_i_22_n_0 ,\s_product_sr[15]_i_23_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[16] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[19]_i_2_n_7 ),
        .Q(p_1_in[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[17] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[19]_i_2_n_6 ),
        .Q(p_1_in[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[18] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[19]_i_2_n_5 ),
        .Q(p_1_in[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[19] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[19]_i_2_n_4 ),
        .Q(p_1_in[18]),
        .R(i_rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_product_sr_reg[19]_i_10 
       (.CI(\s_product_sr_reg[19]_i_11_n_0 ),
        .CO({\NLW_s_product_sr_reg[19]_i_10_CO_UNCONNECTED [3:1],\s_product_sr_reg[19]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\main_proc.v_product_201_n_68 }),
        .O({\NLW_s_product_sr_reg[19]_i_10_O_UNCONNECTED [3:2],L[38:37]}),
        .S({1'b0,1'b0,\s_product_sr[19]_i_12_n_0 ,\s_product_sr[19]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_product_sr_reg[19]_i_11 
       (.CI(\s_product_sr_reg[15]_i_10_n_0 ),
        .CO({\s_product_sr_reg[19]_i_11_n_0 ,\s_product_sr_reg[19]_i_11_n_1 ,\s_product_sr_reg[19]_i_11_n_2 ,\s_product_sr_reg[19]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\main_proc.v_product_201_n_69 ,\main_proc.v_product_201_n_70 ,\main_proc.v_product_201_n_71 ,\main_proc.v_product_201_n_72 }),
        .O(L[36:33]),
        .S({\s_product_sr[19]_i_14_n_0 ,\s_product_sr[19]_i_15_n_0 ,\s_product_sr[19]_i_16_n_0 ,\s_product_sr[19]_i_17_n_0 }));
  CARRY4 \s_product_sr_reg[19]_i_18 
       (.CI(\s_product_sr_reg[19]_i_19_n_0 ),
        .CO({\NLW_s_product_sr_reg[19]_i_18_CO_UNCONNECTED [3:1],\s_product_sr_reg[19]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_product_sr[19]_i_20_n_0 }),
        .O({\NLW_s_product_sr_reg[19]_i_18_O_UNCONNECTED [3:2],\main_proc.v_product_201__0 [21:20]}),
        .S({1'b0,1'b0,\s_product_sr[19]_i_21_n_0 ,\s_product_sr[19]_i_22_n_0 }));
  CARRY4 \s_product_sr_reg[19]_i_19 
       (.CI(\s_product_sr_reg[15]_i_15_n_0 ),
        .CO({\s_product_sr_reg[19]_i_19_n_0 ,\s_product_sr_reg[19]_i_19_n_1 ,\s_product_sr_reg[19]_i_19_n_2 ,\s_product_sr_reg[19]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[19]_i_23_n_0 ,\s_product_sr[19]_i_24_n_0 ,\s_product_sr[19]_i_25_n_0 ,\s_product_sr[19]_i_26_n_0 }),
        .O(\main_proc.v_product_201__0 [19:16]),
        .S({\s_product_sr[19]_i_27_n_0 ,\s_product_sr[19]_i_28_n_0 ,\s_product_sr[19]_i_29_n_0 ,\s_product_sr[19]_i_30_n_0 }));
  CARRY4 \s_product_sr_reg[19]_i_2 
       (.CI(\s_product_sr_reg[15]_i_1_n_0 ),
        .CO({\NLW_s_product_sr_reg[19]_i_2_CO_UNCONNECTED [3],\s_product_sr_reg[19]_i_2_n_1 ,\s_product_sr_reg[19]_i_2_n_2 ,\s_product_sr_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\s_product_sr[19]_i_3_n_0 ,\s_product_sr[19]_i_4_n_0 ,\s_product_sr[19]_i_5_n_0 }),
        .O({\s_product_sr_reg[19]_i_2_n_4 ,\s_product_sr_reg[19]_i_2_n_5 ,\s_product_sr_reg[19]_i_2_n_6 ,\s_product_sr_reg[19]_i_2_n_7 }),
        .S({\s_product_sr[19]_i_6_n_0 ,\s_product_sr[19]_i_7_n_0 ,\s_product_sr[19]_i_8_n_0 ,\s_product_sr[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[1] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[2] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[3]_i_1_n_5 ),
        .Q(p_1_in[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[3] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[3]_i_1_n_4 ),
        .Q(p_1_in[2]),
        .R(i_rst));
  CARRY4 \s_product_sr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\s_product_sr_reg[3]_i_1_n_0 ,\s_product_sr_reg[3]_i_1_n_1 ,\s_product_sr_reg[3]_i_1_n_2 ,\s_product_sr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[3]_i_2_n_0 ,\s_product_sr[3]_i_3_n_0 ,\s_product_sr[3]_i_4_n_0 ,\s_product_sr[3]_i_5_n_0 }),
        .O({\s_product_sr_reg[3]_i_1_n_4 ,\s_product_sr_reg[3]_i_1_n_5 ,\s_product_sr_reg[3]_i_1_n_6 ,\s_product_sr_reg[3]_i_1_n_7 }),
        .S({\s_product_sr[3]_i_6_n_0 ,\s_product_sr[3]_i_7_n_0 ,\s_product_sr[3]_i_8_n_0 ,\s_product_sr[3]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_product_sr_reg[3]_i_10 
       (.CI(1'b0),
        .CO({\s_product_sr_reg[3]_i_10_n_0 ,\s_product_sr_reg[3]_i_10_n_1 ,\s_product_sr_reg[3]_i_10_n_2 ,\s_product_sr_reg[3]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\main_proc.v_product_201_n_85 ,\main_proc.v_product_201_n_86 ,\main_proc.v_product_201_n_87 ,\main_proc.v_product_201_n_88 }),
        .O({L[20:19],p_0_in,\NLW_s_product_sr_reg[3]_i_10_O_UNCONNECTED [0]}),
        .S({\s_product_sr[3]_i_11_n_0 ,\s_product_sr[3]_i_12_n_0 ,\s_product_sr[3]_i_13_n_0 ,\s_product_sr[3]_i_14_n_0 }));
  CARRY4 \s_product_sr_reg[3]_i_15 
       (.CI(1'b0),
        .CO({\s_product_sr_reg[3]_i_15_n_0 ,\s_product_sr_reg[3]_i_15_n_1 ,\s_product_sr_reg[3]_i_15_n_2 ,\s_product_sr_reg[3]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[3]_i_16_n_0 ,\s_product_sr[3]_i_17_n_0 ,\s_product_sr[3]_i_18_n_0 ,1'b0}),
        .O(\main_proc.v_product_201__0 [3:0]),
        .S({\s_product_sr[3]_i_19_n_0 ,\s_product_sr[3]_i_20_n_0 ,\s_product_sr[3]_i_21_n_0 ,\s_product_sr[3]_i_22_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[4] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[7]_i_1_n_7 ),
        .Q(p_1_in[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[5] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[7]_i_1_n_6 ),
        .Q(p_1_in[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[6] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[7]_i_1_n_5 ),
        .Q(p_1_in[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[7] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[7]_i_1_n_4 ),
        .Q(p_1_in[6]),
        .R(i_rst));
  CARRY4 \s_product_sr_reg[7]_i_1 
       (.CI(\s_product_sr_reg[3]_i_1_n_0 ),
        .CO({\s_product_sr_reg[7]_i_1_n_0 ,\s_product_sr_reg[7]_i_1_n_1 ,\s_product_sr_reg[7]_i_1_n_2 ,\s_product_sr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[7]_i_2_n_0 ,\s_product_sr[7]_i_3_n_0 ,\s_product_sr[7]_i_4_n_0 ,\s_product_sr[7]_i_5_n_0 }),
        .O({\s_product_sr_reg[7]_i_1_n_4 ,\s_product_sr_reg[7]_i_1_n_5 ,\s_product_sr_reg[7]_i_1_n_6 ,\s_product_sr_reg[7]_i_1_n_7 }),
        .S({\s_product_sr[7]_i_6_n_0 ,\s_product_sr[7]_i_7_n_0 ,\s_product_sr[7]_i_8_n_0 ,\s_product_sr[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_product_sr_reg[7]_i_10 
       (.CI(\s_product_sr_reg[3]_i_10_n_0 ),
        .CO({\s_product_sr_reg[7]_i_10_n_0 ,\s_product_sr_reg[7]_i_10_n_1 ,\s_product_sr_reg[7]_i_10_n_2 ,\s_product_sr_reg[7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\main_proc.v_product_201_n_81 ,\main_proc.v_product_201_n_82 ,\main_proc.v_product_201_n_83 ,\main_proc.v_product_201_n_84 }),
        .O(L[24:21]),
        .S({\s_product_sr[7]_i_11_n_0 ,\s_product_sr[7]_i_12_n_0 ,\s_product_sr[7]_i_13_n_0 ,\s_product_sr[7]_i_14_n_0 }));
  CARRY4 \s_product_sr_reg[7]_i_15 
       (.CI(\s_product_sr_reg[3]_i_15_n_0 ),
        .CO({\s_product_sr_reg[7]_i_15_n_0 ,\s_product_sr_reg[7]_i_15_n_1 ,\s_product_sr_reg[7]_i_15_n_2 ,\s_product_sr_reg[7]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_product_sr[7]_i_16_n_0 ,\s_product_sr[7]_i_17_n_0 ,\s_product_sr[7]_i_18_n_0 ,\s_product_sr[7]_i_19_n_0 }),
        .O(\main_proc.v_product_201__0 [7:4]),
        .S({\s_product_sr[7]_i_20_n_0 ,\s_product_sr[7]_i_21_n_0 ,\s_product_sr[7]_i_22_n_0 ,\s_product_sr[7]_i_23_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[8] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[11]_i_1_n_7 ),
        .Q(p_1_in[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_product_sr_reg[9] 
       (.C(i_clk_master),
        .CE(\s_product_sr_reg[19]_0 ),
        .D(\s_product_sr_reg[11]_i_1_n_6 ),
        .Q(p_1_in[8]),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "sl" *) 
module cadc_system_cadc_top_0_0_sl
   (s_phi2_reg_reg,
    s_sel_out1,
    D,
    o_phi2,
    o_word_type,
    o_t0,
    i_rst,
    \s_sel_out1_reg[2]_0 ,
    i_clk_master,
    \s_sel_out1_reg[0]_0 ,
    Q,
    \s_input_sr_reg[19] ,
    \s_input_sr_reg[19]_0 );
  output s_phi2_reg_reg;
  output [1:0]s_sel_out1;
  output [0:0]D;
  input o_phi2;
  input o_word_type;
  input o_t0;
  input i_rst;
  input \s_sel_out1_reg[2]_0 ;
  input i_clk_master;
  input \s_sel_out1_reg[0]_0 ;
  input [1:0]Q;
  input [1:0]\s_input_sr_reg[19] ;
  input [1:0]\s_input_sr_reg[19]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire i_clk_master;
  wire i_rst;
  wire o_phi2;
  wire o_t0;
  wire o_word_type;
  wire \s_input_sr[19]_i_3_n_0 ;
  wire [1:0]\s_input_sr_reg[19] ;
  wire [1:0]\s_input_sr_reg[19]_0 ;
  wire s_phi2_reg_reg;
  wire [1:0]s_sel_out1;
  wire \s_sel_out1_reg[0]_0 ;
  wire \s_sel_out1_reg[2]_0 ;

  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \s_input_sr[19]_i_2 
       (.I0(\s_input_sr[19]_i_3_n_0 ),
        .I1(s_sel_out1[1]),
        .I2(s_sel_out1[0]),
        .I3(Q[1]),
        .I4(o_t0),
        .I5(Q[0]),
        .O(D));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_input_sr[19]_i_3 
       (.I0(\s_input_sr_reg[19] [0]),
        .I1(\s_input_sr_reg[19] [1]),
        .I2(s_sel_out1[0]),
        .I3(\s_input_sr_reg[19]_0 [0]),
        .I4(o_t0),
        .I5(\s_input_sr_reg[19]_0 [1]),
        .O(\s_input_sr[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    s_sel_out10
       (.I0(o_phi2),
        .I1(o_word_type),
        .I2(o_t0),
        .O(s_phi2_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_sel_out1_reg[0] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_sel_out1_reg[0]_0 ),
        .Q(s_sel_out1[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_sel_out1_reg[2] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_sel_out1_reg[2]_0 ),
        .Q(s_sel_out1[1]),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "slf" *) 
module cadc_system_cadc_top_0_0_slf
   (s_compute_done,
    s_tmp_we_lat,
    s_flag_z,
    s_flag_n,
    s_flag_c,
    Q,
    D,
    A,
    \s_tmp_reg_reg[19]_0 ,
    i_rst,
    s_acc_reg15_out,
    i_clk_master,
    o_t0,
    \s_cw_sr_reg[4]_0 ,
    o_word_type,
    o_phi2,
    o_t18,
    \s_cw_bit_cnt_reg[4]_0 ,
    s_cw_bit,
    E,
    \s_input_sr_reg[19]_0 ,
    \s_input_lat_reg[19]_0 ,
    \s_acc_out_sr_reg[19]_0 ,
    \s_acc_out_sr_reg[19]_1 ,
    \s_tmp_reg_reg[19]_1 ,
    \s_tmp_out_sr_reg[19]_0 );
  output s_compute_done;
  output s_tmp_we_lat;
  output s_flag_z;
  output s_flag_n;
  output s_flag_c;
  output [0:0]Q;
  output [0:0]D;
  output [0:0]A;
  output [0:0]\s_tmp_reg_reg[19]_0 ;
  input i_rst;
  input s_acc_reg15_out;
  input i_clk_master;
  input o_t0;
  input [1:0]\s_cw_sr_reg[4]_0 ;
  input o_word_type;
  input o_phi2;
  input o_t18;
  input \s_cw_bit_cnt_reg[4]_0 ;
  input s_cw_bit;
  input [0:0]E;
  input [0:0]\s_input_sr_reg[19]_0 ;
  input [0:0]\s_input_lat_reg[19]_0 ;
  input [0:0]\s_acc_out_sr_reg[19]_0 ;
  input [0:0]\s_acc_out_sr_reg[19]_1 ;
  input [0:0]\s_tmp_reg_reg[19]_1 ;
  input [0:0]\s_tmp_out_sr_reg[19]_0 ;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [19:1]data9;
  wire i_clk_master;
  wire i_rst;
  wire o_phi2;
  wire o_t0;
  wire o_t18;
  wire o_word_type;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in23_in;
  wire p_0_in26_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in32_in;
  wire p_0_in35_in;
  wire p_0_in38_in;
  wire p_0_in41_in;
  wire p_0_in44_in;
  wire p_0_in47_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_0_in__0;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in67_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in71_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in75_in;
  wire p_1_in;
  wire p_1_in52_in;
  wire [18:1]p_20_out;
  wire p_2_in;
  wire p_3_in55_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in59_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in63_in;
  wire [1:0]s_acc_out_sr;
  wire \s_acc_out_sr[0]_i_1_n_0 ;
  wire \s_acc_out_sr[10]_i_1_n_0 ;
  wire \s_acc_out_sr[11]_i_1_n_0 ;
  wire \s_acc_out_sr[12]_i_1_n_0 ;
  wire \s_acc_out_sr[13]_i_1_n_0 ;
  wire \s_acc_out_sr[14]_i_1_n_0 ;
  wire \s_acc_out_sr[15]_i_1_n_0 ;
  wire \s_acc_out_sr[16]_i_1_n_0 ;
  wire \s_acc_out_sr[17]_i_1_n_0 ;
  wire \s_acc_out_sr[18]_i_1_n_0 ;
  wire \s_acc_out_sr[1]_i_1_n_0 ;
  wire \s_acc_out_sr[2]_i_1_n_0 ;
  wire \s_acc_out_sr[3]_i_1_n_0 ;
  wire \s_acc_out_sr[4]_i_1_n_0 ;
  wire \s_acc_out_sr[5]_i_1_n_0 ;
  wire \s_acc_out_sr[6]_i_1_n_0 ;
  wire \s_acc_out_sr[7]_i_1_n_0 ;
  wire \s_acc_out_sr[8]_i_1_n_0 ;
  wire \s_acc_out_sr[9]_i_1_n_0 ;
  wire [19:2]s_acc_out_sr__0;
  wire [0:0]\s_acc_out_sr_reg[19]_0 ;
  wire [0:0]\s_acc_out_sr_reg[19]_1 ;
  wire s_acc_reg;
  wire s_acc_reg15_out;
  wire \s_acc_reg[19]_i_2_n_0 ;
  wire \s_acc_reg[19]_i_3_n_0 ;
  wire \s_acc_reg_reg_n_0_[0] ;
  wire s_acc_we_lat;
  wire s_acc_we_lat4_out;
  wire s_acc_we_lat_i_1_n_0;
  wire [0:0]s_alu_op_lat;
  wire \s_alu_op_lat_reg_n_0_[0] ;
  wire \s_alu_op_lat_reg_n_0_[1] ;
  wire \s_alu_op_lat_reg_n_0_[2] ;
  wire \s_alu_op_lat_reg_n_0_[3] ;
  wire s_alu_result0;
  wire \s_alu_result[0]_i_10_n_0 ;
  wire \s_alu_result[0]_i_11_n_0 ;
  wire \s_alu_result[0]_i_12_n_0 ;
  wire \s_alu_result[0]_i_1_n_0 ;
  wire \s_alu_result[0]_i_2_n_0 ;
  wire \s_alu_result[0]_i_3_n_0 ;
  wire \s_alu_result[0]_i_4_n_0 ;
  wire \s_alu_result[0]_i_5_n_0 ;
  wire \s_alu_result[0]_i_6_n_0 ;
  wire \s_alu_result[0]_i_7_n_0 ;
  wire \s_alu_result[0]_i_8_n_0 ;
  wire \s_alu_result[0]_i_9_n_0 ;
  wire \s_alu_result[10]_i_1_n_0 ;
  wire \s_alu_result[10]_i_2_n_0 ;
  wire \s_alu_result[10]_i_3_n_0 ;
  wire \s_alu_result[10]_i_4_n_0 ;
  wire \s_alu_result[10]_i_5_n_0 ;
  wire \s_alu_result[10]_i_6_n_0 ;
  wire \s_alu_result[11]_i_10_n_0 ;
  wire \s_alu_result[11]_i_11_n_0 ;
  wire \s_alu_result[11]_i_12_n_0 ;
  wire \s_alu_result[11]_i_13_n_0 ;
  wire \s_alu_result[11]_i_14_n_0 ;
  wire \s_alu_result[11]_i_15_n_0 ;
  wire \s_alu_result[11]_i_16_n_0 ;
  wire \s_alu_result[11]_i_17_n_0 ;
  wire \s_alu_result[11]_i_1_n_0 ;
  wire \s_alu_result[11]_i_2_n_0 ;
  wire \s_alu_result[11]_i_3_n_0 ;
  wire \s_alu_result[11]_i_4_n_0 ;
  wire \s_alu_result[11]_i_5_n_0 ;
  wire \s_alu_result[11]_i_6_n_0 ;
  wire \s_alu_result[12]_i_10_n_0 ;
  wire \s_alu_result[12]_i_11_n_0 ;
  wire \s_alu_result[12]_i_12_n_0 ;
  wire \s_alu_result[12]_i_1_n_0 ;
  wire \s_alu_result[12]_i_2_n_0 ;
  wire \s_alu_result[12]_i_3_n_0 ;
  wire \s_alu_result[12]_i_4_n_0 ;
  wire \s_alu_result[12]_i_5_n_0 ;
  wire \s_alu_result[12]_i_6_n_0 ;
  wire \s_alu_result[12]_i_9_n_0 ;
  wire \s_alu_result[13]_i_1_n_0 ;
  wire \s_alu_result[13]_i_2_n_0 ;
  wire \s_alu_result[13]_i_3_n_0 ;
  wire \s_alu_result[13]_i_4_n_0 ;
  wire \s_alu_result[13]_i_5_n_0 ;
  wire \s_alu_result[13]_i_6_n_0 ;
  wire \s_alu_result[14]_i_1_n_0 ;
  wire \s_alu_result[14]_i_2_n_0 ;
  wire \s_alu_result[14]_i_3_n_0 ;
  wire \s_alu_result[14]_i_4_n_0 ;
  wire \s_alu_result[14]_i_5_n_0 ;
  wire \s_alu_result[14]_i_6_n_0 ;
  wire \s_alu_result[15]_i_10_n_0 ;
  wire \s_alu_result[15]_i_11_n_0 ;
  wire \s_alu_result[15]_i_12_n_0 ;
  wire \s_alu_result[15]_i_13_n_0 ;
  wire \s_alu_result[15]_i_14_n_0 ;
  wire \s_alu_result[15]_i_15_n_0 ;
  wire \s_alu_result[15]_i_16_n_0 ;
  wire \s_alu_result[15]_i_17_n_0 ;
  wire \s_alu_result[15]_i_1_n_0 ;
  wire \s_alu_result[15]_i_2_n_0 ;
  wire \s_alu_result[15]_i_3_n_0 ;
  wire \s_alu_result[15]_i_4_n_0 ;
  wire \s_alu_result[15]_i_5_n_0 ;
  wire \s_alu_result[15]_i_6_n_0 ;
  wire \s_alu_result[16]_i_10_n_0 ;
  wire \s_alu_result[16]_i_11_n_0 ;
  wire \s_alu_result[16]_i_12_n_0 ;
  wire \s_alu_result[16]_i_1_n_0 ;
  wire \s_alu_result[16]_i_2_n_0 ;
  wire \s_alu_result[16]_i_3_n_0 ;
  wire \s_alu_result[16]_i_4_n_0 ;
  wire \s_alu_result[16]_i_5_n_0 ;
  wire \s_alu_result[16]_i_6_n_0 ;
  wire \s_alu_result[16]_i_9_n_0 ;
  wire \s_alu_result[17]_i_1_n_0 ;
  wire \s_alu_result[17]_i_2_n_0 ;
  wire \s_alu_result[17]_i_3_n_0 ;
  wire \s_alu_result[17]_i_4_n_0 ;
  wire \s_alu_result[17]_i_5_n_0 ;
  wire \s_alu_result[17]_i_6_n_0 ;
  wire \s_alu_result[18]_i_10_n_0 ;
  wire \s_alu_result[18]_i_11_n_0 ;
  wire \s_alu_result[18]_i_1_n_0 ;
  wire \s_alu_result[18]_i_2_n_0 ;
  wire \s_alu_result[18]_i_3_n_0 ;
  wire \s_alu_result[18]_i_4_n_0 ;
  wire \s_alu_result[18]_i_5_n_0 ;
  wire \s_alu_result[18]_i_6_n_0 ;
  wire \s_alu_result[18]_i_9_n_0 ;
  wire \s_alu_result[19]_i_10_n_0 ;
  wire \s_alu_result[19]_i_11_n_0 ;
  wire \s_alu_result[19]_i_12_n_0 ;
  wire \s_alu_result[19]_i_13_n_0 ;
  wire \s_alu_result[19]_i_14_n_0 ;
  wire \s_alu_result[19]_i_15_n_0 ;
  wire \s_alu_result[19]_i_16_n_0 ;
  wire \s_alu_result[19]_i_17_n_0 ;
  wire \s_alu_result[19]_i_18_n_0 ;
  wire \s_alu_result[19]_i_2_n_0 ;
  wire \s_alu_result[19]_i_3_n_0 ;
  wire \s_alu_result[19]_i_4_n_0 ;
  wire \s_alu_result[19]_i_5_n_0 ;
  wire \s_alu_result[19]_i_8_n_0 ;
  wire \s_alu_result[19]_i_9_n_0 ;
  wire \s_alu_result[1]_i_1_n_0 ;
  wire \s_alu_result[1]_i_2_n_0 ;
  wire \s_alu_result[1]_i_3_n_0 ;
  wire \s_alu_result[1]_i_4_n_0 ;
  wire \s_alu_result[1]_i_5_n_0 ;
  wire \s_alu_result[1]_i_6_n_0 ;
  wire \s_alu_result[2]_i_1_n_0 ;
  wire \s_alu_result[2]_i_2_n_0 ;
  wire \s_alu_result[2]_i_3_n_0 ;
  wire \s_alu_result[2]_i_4_n_0 ;
  wire \s_alu_result[2]_i_5_n_0 ;
  wire \s_alu_result[2]_i_6_n_0 ;
  wire \s_alu_result[3]_i_10_n_0 ;
  wire \s_alu_result[3]_i_11_n_0 ;
  wire \s_alu_result[3]_i_12_n_0 ;
  wire \s_alu_result[3]_i_13_n_0 ;
  wire \s_alu_result[3]_i_14_n_0 ;
  wire \s_alu_result[3]_i_15_n_0 ;
  wire \s_alu_result[3]_i_16_n_0 ;
  wire \s_alu_result[3]_i_17_n_0 ;
  wire \s_alu_result[3]_i_1_n_0 ;
  wire \s_alu_result[3]_i_2_n_0 ;
  wire \s_alu_result[3]_i_3_n_0 ;
  wire \s_alu_result[3]_i_4_n_0 ;
  wire \s_alu_result[3]_i_5_n_0 ;
  wire \s_alu_result[3]_i_6_n_0 ;
  wire \s_alu_result[4]_i_10_n_0 ;
  wire \s_alu_result[4]_i_11_n_0 ;
  wire \s_alu_result[4]_i_12_n_0 ;
  wire \s_alu_result[4]_i_13_n_0 ;
  wire \s_alu_result[4]_i_1_n_0 ;
  wire \s_alu_result[4]_i_2_n_0 ;
  wire \s_alu_result[4]_i_3_n_0 ;
  wire \s_alu_result[4]_i_4_n_0 ;
  wire \s_alu_result[4]_i_5_n_0 ;
  wire \s_alu_result[4]_i_6_n_0 ;
  wire \s_alu_result[4]_i_9_n_0 ;
  wire \s_alu_result[5]_i_1_n_0 ;
  wire \s_alu_result[5]_i_2_n_0 ;
  wire \s_alu_result[5]_i_3_n_0 ;
  wire \s_alu_result[5]_i_4_n_0 ;
  wire \s_alu_result[5]_i_5_n_0 ;
  wire \s_alu_result[5]_i_6_n_0 ;
  wire \s_alu_result[6]_i_1_n_0 ;
  wire \s_alu_result[6]_i_2_n_0 ;
  wire \s_alu_result[6]_i_3_n_0 ;
  wire \s_alu_result[6]_i_4_n_0 ;
  wire \s_alu_result[6]_i_5_n_0 ;
  wire \s_alu_result[6]_i_6_n_0 ;
  wire \s_alu_result[7]_i_10_n_0 ;
  wire \s_alu_result[7]_i_11_n_0 ;
  wire \s_alu_result[7]_i_12_n_0 ;
  wire \s_alu_result[7]_i_13_n_0 ;
  wire \s_alu_result[7]_i_14_n_0 ;
  wire \s_alu_result[7]_i_15_n_0 ;
  wire \s_alu_result[7]_i_16_n_0 ;
  wire \s_alu_result[7]_i_17_n_0 ;
  wire \s_alu_result[7]_i_1_n_0 ;
  wire \s_alu_result[7]_i_2_n_0 ;
  wire \s_alu_result[7]_i_3_n_0 ;
  wire \s_alu_result[7]_i_4_n_0 ;
  wire \s_alu_result[7]_i_5_n_0 ;
  wire \s_alu_result[7]_i_6_n_0 ;
  wire \s_alu_result[8]_i_10_n_0 ;
  wire \s_alu_result[8]_i_11_n_0 ;
  wire \s_alu_result[8]_i_12_n_0 ;
  wire \s_alu_result[8]_i_1_n_0 ;
  wire \s_alu_result[8]_i_2_n_0 ;
  wire \s_alu_result[8]_i_3_n_0 ;
  wire \s_alu_result[8]_i_4_n_0 ;
  wire \s_alu_result[8]_i_5_n_0 ;
  wire \s_alu_result[8]_i_6_n_0 ;
  wire \s_alu_result[8]_i_9_n_0 ;
  wire \s_alu_result[9]_i_1_n_0 ;
  wire \s_alu_result[9]_i_2_n_0 ;
  wire \s_alu_result[9]_i_3_n_0 ;
  wire \s_alu_result[9]_i_4_n_0 ;
  wire \s_alu_result[9]_i_5_n_0 ;
  wire \s_alu_result[9]_i_6_n_0 ;
  wire \s_alu_result_reg[11]_i_8_n_0 ;
  wire \s_alu_result_reg[11]_i_8_n_1 ;
  wire \s_alu_result_reg[11]_i_8_n_2 ;
  wire \s_alu_result_reg[11]_i_8_n_3 ;
  wire \s_alu_result_reg[11]_i_8_n_4 ;
  wire \s_alu_result_reg[11]_i_8_n_5 ;
  wire \s_alu_result_reg[11]_i_8_n_6 ;
  wire \s_alu_result_reg[11]_i_8_n_7 ;
  wire \s_alu_result_reg[11]_i_9_n_0 ;
  wire \s_alu_result_reg[11]_i_9_n_1 ;
  wire \s_alu_result_reg[11]_i_9_n_2 ;
  wire \s_alu_result_reg[11]_i_9_n_3 ;
  wire \s_alu_result_reg[11]_i_9_n_4 ;
  wire \s_alu_result_reg[11]_i_9_n_5 ;
  wire \s_alu_result_reg[11]_i_9_n_6 ;
  wire \s_alu_result_reg[11]_i_9_n_7 ;
  wire \s_alu_result_reg[12]_i_7_n_0 ;
  wire \s_alu_result_reg[12]_i_7_n_1 ;
  wire \s_alu_result_reg[12]_i_7_n_2 ;
  wire \s_alu_result_reg[12]_i_7_n_3 ;
  wire \s_alu_result_reg[15]_i_8_n_0 ;
  wire \s_alu_result_reg[15]_i_8_n_1 ;
  wire \s_alu_result_reg[15]_i_8_n_2 ;
  wire \s_alu_result_reg[15]_i_8_n_3 ;
  wire \s_alu_result_reg[15]_i_8_n_4 ;
  wire \s_alu_result_reg[15]_i_8_n_5 ;
  wire \s_alu_result_reg[15]_i_8_n_6 ;
  wire \s_alu_result_reg[15]_i_8_n_7 ;
  wire \s_alu_result_reg[15]_i_9_n_0 ;
  wire \s_alu_result_reg[15]_i_9_n_1 ;
  wire \s_alu_result_reg[15]_i_9_n_2 ;
  wire \s_alu_result_reg[15]_i_9_n_3 ;
  wire \s_alu_result_reg[15]_i_9_n_4 ;
  wire \s_alu_result_reg[15]_i_9_n_5 ;
  wire \s_alu_result_reg[15]_i_9_n_6 ;
  wire \s_alu_result_reg[15]_i_9_n_7 ;
  wire \s_alu_result_reg[16]_i_8_n_0 ;
  wire \s_alu_result_reg[16]_i_8_n_1 ;
  wire \s_alu_result_reg[16]_i_8_n_2 ;
  wire \s_alu_result_reg[16]_i_8_n_3 ;
  wire \s_alu_result_reg[18]_i_8_n_2 ;
  wire \s_alu_result_reg[18]_i_8_n_3 ;
  wire \s_alu_result_reg[19]_i_6_n_0 ;
  wire \s_alu_result_reg[19]_i_6_n_1 ;
  wire \s_alu_result_reg[19]_i_6_n_2 ;
  wire \s_alu_result_reg[19]_i_6_n_3 ;
  wire \s_alu_result_reg[19]_i_6_n_4 ;
  wire \s_alu_result_reg[19]_i_6_n_5 ;
  wire \s_alu_result_reg[19]_i_6_n_6 ;
  wire \s_alu_result_reg[19]_i_6_n_7 ;
  wire \s_alu_result_reg[19]_i_7_n_0 ;
  wire \s_alu_result_reg[19]_i_7_n_1 ;
  wire \s_alu_result_reg[19]_i_7_n_2 ;
  wire \s_alu_result_reg[19]_i_7_n_3 ;
  wire \s_alu_result_reg[19]_i_7_n_4 ;
  wire \s_alu_result_reg[19]_i_7_n_5 ;
  wire \s_alu_result_reg[19]_i_7_n_6 ;
  wire \s_alu_result_reg[19]_i_7_n_7 ;
  wire \s_alu_result_reg[3]_i_8_n_0 ;
  wire \s_alu_result_reg[3]_i_8_n_1 ;
  wire \s_alu_result_reg[3]_i_8_n_2 ;
  wire \s_alu_result_reg[3]_i_8_n_3 ;
  wire \s_alu_result_reg[3]_i_8_n_4 ;
  wire \s_alu_result_reg[3]_i_8_n_5 ;
  wire \s_alu_result_reg[3]_i_8_n_6 ;
  wire \s_alu_result_reg[3]_i_8_n_7 ;
  wire \s_alu_result_reg[3]_i_9_n_0 ;
  wire \s_alu_result_reg[3]_i_9_n_1 ;
  wire \s_alu_result_reg[3]_i_9_n_2 ;
  wire \s_alu_result_reg[3]_i_9_n_3 ;
  wire \s_alu_result_reg[3]_i_9_n_4 ;
  wire \s_alu_result_reg[3]_i_9_n_5 ;
  wire \s_alu_result_reg[3]_i_9_n_6 ;
  wire \s_alu_result_reg[3]_i_9_n_7 ;
  wire \s_alu_result_reg[4]_i_7_n_0 ;
  wire \s_alu_result_reg[4]_i_7_n_1 ;
  wire \s_alu_result_reg[4]_i_7_n_2 ;
  wire \s_alu_result_reg[4]_i_7_n_3 ;
  wire \s_alu_result_reg[7]_i_8_n_0 ;
  wire \s_alu_result_reg[7]_i_8_n_1 ;
  wire \s_alu_result_reg[7]_i_8_n_2 ;
  wire \s_alu_result_reg[7]_i_8_n_3 ;
  wire \s_alu_result_reg[7]_i_8_n_4 ;
  wire \s_alu_result_reg[7]_i_8_n_5 ;
  wire \s_alu_result_reg[7]_i_8_n_6 ;
  wire \s_alu_result_reg[7]_i_8_n_7 ;
  wire \s_alu_result_reg[7]_i_9_n_0 ;
  wire \s_alu_result_reg[7]_i_9_n_1 ;
  wire \s_alu_result_reg[7]_i_9_n_2 ;
  wire \s_alu_result_reg[7]_i_9_n_3 ;
  wire \s_alu_result_reg[7]_i_9_n_4 ;
  wire \s_alu_result_reg[7]_i_9_n_5 ;
  wire \s_alu_result_reg[7]_i_9_n_6 ;
  wire \s_alu_result_reg[7]_i_9_n_7 ;
  wire \s_alu_result_reg[8]_i_7_n_0 ;
  wire \s_alu_result_reg[8]_i_7_n_1 ;
  wire \s_alu_result_reg[8]_i_7_n_2 ;
  wire \s_alu_result_reg[8]_i_7_n_3 ;
  wire \s_alu_result_reg_n_0_[0] ;
  wire \s_alu_result_reg_n_0_[10] ;
  wire \s_alu_result_reg_n_0_[11] ;
  wire \s_alu_result_reg_n_0_[12] ;
  wire \s_alu_result_reg_n_0_[13] ;
  wire \s_alu_result_reg_n_0_[14] ;
  wire \s_alu_result_reg_n_0_[15] ;
  wire \s_alu_result_reg_n_0_[16] ;
  wire \s_alu_result_reg_n_0_[17] ;
  wire \s_alu_result_reg_n_0_[18] ;
  wire \s_alu_result_reg_n_0_[19] ;
  wire \s_alu_result_reg_n_0_[1] ;
  wire \s_alu_result_reg_n_0_[2] ;
  wire \s_alu_result_reg_n_0_[3] ;
  wire \s_alu_result_reg_n_0_[4] ;
  wire \s_alu_result_reg_n_0_[5] ;
  wire \s_alu_result_reg_n_0_[6] ;
  wire \s_alu_result_reg_n_0_[7] ;
  wire \s_alu_result_reg_n_0_[8] ;
  wire \s_alu_result_reg_n_0_[9] ;
  wire s_c_reg_i_1_n_0;
  wire s_carry_out;
  wire s_carry_out_i_1_n_0;
  wire s_carry_out_reg_i_2_n_3;
  wire s_carry_out_reg_i_3_n_3;
  wire s_compute_done;
  wire s_cw_bit;
  wire \s_cw_bit_cnt[0]_i_1_n_0 ;
  wire \s_cw_bit_cnt[1]_i_1_n_0 ;
  wire \s_cw_bit_cnt[2]_i_1_n_0 ;
  wire \s_cw_bit_cnt[3]_i_1_n_0 ;
  wire \s_cw_bit_cnt[4]_i_2_n_0 ;
  wire \s_cw_bit_cnt_reg[4]_0 ;
  wire \s_cw_bit_cnt_reg_n_0_[0] ;
  wire \s_cw_bit_cnt_reg_n_0_[1] ;
  wire \s_cw_bit_cnt_reg_n_0_[2] ;
  wire \s_cw_bit_cnt_reg_n_0_[3] ;
  wire \s_cw_bit_cnt_reg_n_0_[4] ;
  wire \s_cw_sr[0]_i_1__0_n_0 ;
  wire \s_cw_sr[0]_i_2_n_0 ;
  wire \s_cw_sr[1]_i_1__0_n_0 ;
  wire \s_cw_sr[1]_i_2_n_0 ;
  wire \s_cw_sr[2]_i_1__0_n_0 ;
  wire \s_cw_sr[2]_i_2_n_0 ;
  wire \s_cw_sr[3]_i_1__0_n_0 ;
  wire \s_cw_sr[3]_i_2_n_0 ;
  wire \s_cw_sr[3]_i_4_n_0 ;
  wire \s_cw_sr[3]_i_5_n_0 ;
  wire \s_cw_sr[4]_i_1__0_n_0 ;
  wire \s_cw_sr[4]_i_2_n_0 ;
  wire \s_cw_sr[4]_i_3_n_0 ;
  wire \s_cw_sr[5]_i_1__0_n_0 ;
  wire \s_cw_sr[5]_i_2_n_0 ;
  wire \s_cw_sr[5]_i_3_n_0 ;
  wire \s_cw_sr[6]_i_1__0_n_0 ;
  wire \s_cw_sr[6]_i_2_n_0 ;
  wire \s_cw_sr[6]_i_3_n_0 ;
  wire \s_cw_sr[6]_i_4_n_0 ;
  wire \s_cw_sr[6]_i_5_n_0 ;
  wire \s_cw_sr[6]_i_6_n_0 ;
  wire [1:0]\s_cw_sr_reg[4]_0 ;
  wire \s_cw_sr_reg_n_0_[0] ;
  wire \s_cw_sr_reg_n_0_[1] ;
  wire \s_cw_sr_reg_n_0_[2] ;
  wire \s_cw_sr_reg_n_0_[3] ;
  wire \s_cw_sr_reg_n_0_[5] ;
  wire \s_cw_sr_reg_n_0_[6] ;
  wire s_flag_c;
  wire s_flag_n;
  wire s_flag_z;
  wire s_flags_we_lat;
  wire s_flags_we_lat_i_1_n_0;
  wire [0:0]\s_input_lat_reg[19]_0 ;
  wire \s_input_lat_reg_n_0_[0] ;
  wire \s_input_lat_reg_n_0_[18] ;
  wire [19:1]s_input_sr;
  wire [0:0]\s_input_sr_reg[19]_0 ;
  wire s_n_reg_i_1_n_0;
  wire \s_tmp_out_sr[0]_i_1_n_0 ;
  wire \s_tmp_out_sr[10]_i_1_n_0 ;
  wire \s_tmp_out_sr[11]_i_1_n_0 ;
  wire \s_tmp_out_sr[12]_i_1_n_0 ;
  wire \s_tmp_out_sr[13]_i_1_n_0 ;
  wire \s_tmp_out_sr[14]_i_1_n_0 ;
  wire \s_tmp_out_sr[15]_i_1_n_0 ;
  wire \s_tmp_out_sr[16]_i_1_n_0 ;
  wire \s_tmp_out_sr[17]_i_1_n_0 ;
  wire \s_tmp_out_sr[18]_i_1_n_0 ;
  wire \s_tmp_out_sr[1]_i_1_n_0 ;
  wire \s_tmp_out_sr[2]_i_1_n_0 ;
  wire \s_tmp_out_sr[3]_i_1_n_0 ;
  wire \s_tmp_out_sr[4]_i_1_n_0 ;
  wire \s_tmp_out_sr[5]_i_1_n_0 ;
  wire \s_tmp_out_sr[6]_i_1_n_0 ;
  wire \s_tmp_out_sr[7]_i_1_n_0 ;
  wire \s_tmp_out_sr[8]_i_1_n_0 ;
  wire \s_tmp_out_sr[9]_i_1_n_0 ;
  wire [0:0]\s_tmp_out_sr_reg[19]_0 ;
  wire \s_tmp_out_sr_reg_n_0_[0] ;
  wire \s_tmp_out_sr_reg_n_0_[10] ;
  wire \s_tmp_out_sr_reg_n_0_[11] ;
  wire \s_tmp_out_sr_reg_n_0_[12] ;
  wire \s_tmp_out_sr_reg_n_0_[13] ;
  wire \s_tmp_out_sr_reg_n_0_[14] ;
  wire \s_tmp_out_sr_reg_n_0_[15] ;
  wire \s_tmp_out_sr_reg_n_0_[16] ;
  wire \s_tmp_out_sr_reg_n_0_[17] ;
  wire \s_tmp_out_sr_reg_n_0_[18] ;
  wire \s_tmp_out_sr_reg_n_0_[19] ;
  wire \s_tmp_out_sr_reg_n_0_[1] ;
  wire \s_tmp_out_sr_reg_n_0_[2] ;
  wire \s_tmp_out_sr_reg_n_0_[3] ;
  wire \s_tmp_out_sr_reg_n_0_[4] ;
  wire \s_tmp_out_sr_reg_n_0_[5] ;
  wire \s_tmp_out_sr_reg_n_0_[6] ;
  wire \s_tmp_out_sr_reg_n_0_[7] ;
  wire \s_tmp_out_sr_reg_n_0_[8] ;
  wire \s_tmp_out_sr_reg_n_0_[9] ;
  wire [0:0]\s_tmp_reg_reg[19]_0 ;
  wire [0:0]\s_tmp_reg_reg[19]_1 ;
  wire \s_tmp_reg_reg_n_0_[0] ;
  wire \s_tmp_reg_reg_n_0_[10] ;
  wire \s_tmp_reg_reg_n_0_[11] ;
  wire \s_tmp_reg_reg_n_0_[12] ;
  wire \s_tmp_reg_reg_n_0_[13] ;
  wire \s_tmp_reg_reg_n_0_[14] ;
  wire \s_tmp_reg_reg_n_0_[15] ;
  wire \s_tmp_reg_reg_n_0_[16] ;
  wire \s_tmp_reg_reg_n_0_[17] ;
  wire \s_tmp_reg_reg_n_0_[18] ;
  wire \s_tmp_reg_reg_n_0_[1] ;
  wire \s_tmp_reg_reg_n_0_[2] ;
  wire \s_tmp_reg_reg_n_0_[3] ;
  wire \s_tmp_reg_reg_n_0_[4] ;
  wire \s_tmp_reg_reg_n_0_[5] ;
  wire \s_tmp_reg_reg_n_0_[6] ;
  wire \s_tmp_reg_reg_n_0_[7] ;
  wire \s_tmp_reg_reg_n_0_[8] ;
  wire \s_tmp_reg_reg_n_0_[9] ;
  wire s_tmp_we_lat;
  wire s_tmp_we_lat_i_1_n_0;
  wire s_z_reg;
  wire s_z_reg_i_1_n_0;
  wire \s_z_reg_inferred__0/s_z_reg_i_3_n_0 ;
  wire \s_z_reg_inferred__0/s_z_reg_i_4_n_0 ;
  wire \s_z_reg_inferred__0/s_z_reg_i_5_n_0 ;
  wire [3:2]\NLW_s_alu_result_reg[18]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_alu_result_reg[18]_i_8_O_UNCONNECTED ;
  wire [3:1]NLW_s_carry_out_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_s_carry_out_reg_i_2_O_UNCONNECTED;
  wire [3:1]NLW_s_carry_out_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_s_carry_out_reg_i_3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[0]_i_1 
       (.I0(s_acc_out_sr[1]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_acc_reg_reg_n_0_[0] ),
        .O(\s_acc_out_sr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[10]_i_1 
       (.I0(s_acc_out_sr__0[11]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_10_in),
        .O(\s_acc_out_sr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[11]_i_1 
       (.I0(s_acc_out_sr__0[12]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_11_in),
        .O(\s_acc_out_sr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[12]_i_1 
       (.I0(s_acc_out_sr__0[13]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_12_in67_in),
        .O(\s_acc_out_sr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[13]_i_1 
       (.I0(s_acc_out_sr__0[14]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_13_in),
        .O(\s_acc_out_sr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[14]_i_1 
       (.I0(s_acc_out_sr__0[15]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_14_in),
        .O(\s_acc_out_sr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[15]_i_1 
       (.I0(s_acc_out_sr__0[16]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_15_in71_in),
        .O(\s_acc_out_sr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[16]_i_1 
       (.I0(s_acc_out_sr__0[17]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_16_in),
        .O(\s_acc_out_sr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[17]_i_1 
       (.I0(s_acc_out_sr__0[18]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_17_in),
        .O(\s_acc_out_sr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[18]_i_1 
       (.I0(s_acc_out_sr__0[19]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_18_in75_in),
        .O(\s_acc_out_sr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[1]_i_1 
       (.I0(s_acc_out_sr__0[2]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_1_in52_in),
        .O(\s_acc_out_sr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[2]_i_1 
       (.I0(s_acc_out_sr__0[3]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_2_in),
        .O(\s_acc_out_sr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[3]_i_1 
       (.I0(s_acc_out_sr__0[4]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_3_in55_in),
        .O(\s_acc_out_sr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[4]_i_1 
       (.I0(s_acc_out_sr__0[5]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_4_in),
        .O(\s_acc_out_sr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[5]_i_1 
       (.I0(s_acc_out_sr__0[6]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_5_in),
        .O(\s_acc_out_sr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[6]_i_1 
       (.I0(s_acc_out_sr__0[7]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_6_in59_in),
        .O(\s_acc_out_sr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[7]_i_1 
       (.I0(s_acc_out_sr__0[8]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_7_in),
        .O(\s_acc_out_sr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[8]_i_1 
       (.I0(s_acc_out_sr__0[9]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_8_in),
        .O(\s_acc_out_sr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_acc_out_sr[9]_i_1 
       (.I0(s_acc_out_sr__0[10]),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(p_9_in63_in),
        .O(\s_acc_out_sr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[0] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[0]_i_1_n_0 ),
        .Q(s_acc_out_sr[0]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[10] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[10]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[11] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[11]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[12] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[12]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[13] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[13]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[14] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[14]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[15] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[15]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[16] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[16]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[17] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[17]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[18] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[18]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[19] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr_reg[19]_1 ),
        .Q(s_acc_out_sr__0[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[1] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[1]_i_1_n_0 ),
        .Q(s_acc_out_sr[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[2] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[2]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[3] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[3]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[4] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[4]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[5] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[5]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[6] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[6]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[7] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[7]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[8] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[8]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_out_sr_reg[9] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_acc_out_sr[9]_i_1_n_0 ),
        .Q(s_acc_out_sr__0[9]),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h2000200020000000)) 
    \s_acc_reg[19]_i_1 
       (.I0(s_acc_we_lat),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(o_t18),
        .I4(\s_acc_reg[19]_i_2_n_0 ),
        .I5(\s_acc_reg[19]_i_3_n_0 ),
        .O(s_acc_reg));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_acc_reg[19]_i_2 
       (.I0(\s_alu_op_lat_reg_n_0_[1] ),
        .I1(\s_alu_op_lat_reg_n_0_[0] ),
        .O(\s_acc_reg[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_acc_reg[19]_i_3 
       (.I0(\s_alu_op_lat_reg_n_0_[2] ),
        .I1(\s_alu_op_lat_reg_n_0_[3] ),
        .O(\s_acc_reg[19]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[0] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[0] ),
        .Q(\s_acc_reg_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[10] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[10] ),
        .Q(p_10_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[11] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[11] ),
        .Q(p_11_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[12] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[12] ),
        .Q(p_12_in67_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[13] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[13] ),
        .Q(p_13_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[14] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[14] ),
        .Q(p_14_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[15] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[15] ),
        .Q(p_15_in71_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[16] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[16] ),
        .Q(p_16_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[17] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[17] ),
        .Q(p_17_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[18] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[18] ),
        .Q(p_18_in75_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[19] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[19] ),
        .Q(Q),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[1] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[1] ),
        .Q(p_1_in52_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[2] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[2] ),
        .Q(p_2_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[3] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[3] ),
        .Q(p_3_in55_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[4] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[4] ),
        .Q(p_4_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[5] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[5] ),
        .Q(p_5_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[6] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[6] ),
        .Q(p_6_in59_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[7] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[7] ),
        .Q(p_7_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[8] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[8] ),
        .Q(p_8_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_acc_reg_reg[9] 
       (.C(i_clk_master),
        .CE(s_acc_reg),
        .D(\s_alu_result_reg_n_0_[9] ),
        .Q(p_9_in63_in),
        .R(i_rst));
  LUT3 #(
    .INIT(8'hB8)) 
    s_acc_we_lat_i_1
       (.I0(p_0_in__0),
        .I1(s_acc_we_lat4_out),
        .I2(s_acc_we_lat),
        .O(s_acc_we_lat_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    s_acc_we_lat_i_2
       (.I0(\s_cw_sr[3]_i_2_n_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I3(o_t0),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_bit_cnt_reg[4]_0 ),
        .O(s_acc_we_lat4_out));
  FDRE #(
    .INIT(1'b0)) 
    s_acc_we_lat_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_acc_we_lat_i_1_n_0),
        .Q(s_acc_we_lat),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \s_alu_op_lat[3]_i_1 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_sr[3]_i_2_n_0 ),
        .I2(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[2] ),
        .O(s_alu_op_lat));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_op_lat_reg[0] 
       (.C(i_clk_master),
        .CE(s_alu_op_lat),
        .D(\s_cw_sr_reg_n_0_[0] ),
        .Q(\s_alu_op_lat_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_op_lat_reg[1] 
       (.C(i_clk_master),
        .CE(s_alu_op_lat),
        .D(\s_cw_sr_reg_n_0_[1] ),
        .Q(\s_alu_op_lat_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_op_lat_reg[2] 
       (.C(i_clk_master),
        .CE(s_alu_op_lat),
        .D(\s_cw_sr_reg_n_0_[2] ),
        .Q(\s_alu_op_lat_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_op_lat_reg[3] 
       (.C(i_clk_master),
        .CE(s_alu_op_lat),
        .D(\s_cw_sr_reg_n_0_[3] ),
        .Q(\s_alu_op_lat_reg_n_0_[3] ),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hCCCCAAAAFFF0AAAA)) 
    \s_alu_result[0]_i_1 
       (.I0(\s_alu_result[0]_i_2_n_0 ),
        .I1(\s_alu_result[0]_i_3_n_0 ),
        .I2(\s_alu_result[0]_i_4_n_0 ),
        .I3(\s_alu_result[0]_i_5_n_0 ),
        .I4(\s_alu_op_lat_reg_n_0_[3] ),
        .I5(\s_alu_op_lat_reg_n_0_[2] ),
        .O(\s_alu_result[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_alu_result[0]_i_10 
       (.I0(p_16_in),
        .I1(p_17_in),
        .O(\s_alu_result[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_alu_result[0]_i_11 
       (.I0(p_4_in),
        .I1(p_5_in),
        .I2(p_6_in59_in),
        .I3(p_7_in),
        .O(\s_alu_result[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_alu_result[0]_i_12 
       (.I0(p_12_in67_in),
        .I1(p_13_in),
        .I2(p_14_in),
        .I3(p_15_in71_in),
        .O(\s_alu_result[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h030FAAAA0CFCAAAA)) 
    \s_alu_result[0]_i_2 
       (.I0(\s_alu_result[0]_i_6_n_0 ),
        .I1(\s_input_lat_reg_n_0_[0] ),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(\s_alu_op_lat_reg_n_0_[2] ),
        .I5(\s_acc_reg_reg_n_0_[0] ),
        .O(\s_alu_result[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[0]_i_3 
       (.I0(\s_acc_reg_reg_n_0_[0] ),
        .I1(p_1_in52_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(\s_input_lat_reg_n_0_[0] ),
        .O(\s_alu_result[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_alu_result[0]_i_4 
       (.I0(\s_acc_reg_reg_n_0_[0] ),
        .I1(p_1_in52_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .O(\s_alu_result[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h32FEFE3200000000)) 
    \s_alu_result[0]_i_5 
       (.I0(\s_alu_result[0]_i_7_n_0 ),
        .I1(\s_alu_op_lat_reg_n_0_[0] ),
        .I2(\s_acc_reg_reg_n_0_[0] ),
        .I3(p_20_out[1]),
        .I4(\s_input_lat_reg_n_0_[0] ),
        .I5(\s_alu_op_lat_reg_n_0_[1] ),
        .O(\s_alu_result[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[0]_i_6 
       (.I0(\s_alu_result_reg[3]_i_8_n_7 ),
        .I1(\s_input_lat_reg_n_0_[0] ),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_acc_reg_reg_n_0_[0] ),
        .I5(\s_alu_result_reg[3]_i_9_n_7 ),
        .O(\s_alu_result[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \s_alu_result[0]_i_7 
       (.I0(\s_alu_result[0]_i_8_n_0 ),
        .I1(\s_alu_result[0]_i_9_n_0 ),
        .I2(p_18_in75_in),
        .I3(\s_alu_result[0]_i_10_n_0 ),
        .I4(\s_alu_result[0]_i_11_n_0 ),
        .I5(Q),
        .O(\s_alu_result[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_alu_result[0]_i_8 
       (.I0(p_11_in),
        .I1(p_10_in),
        .I2(p_9_in63_in),
        .I3(p_8_in),
        .I4(\s_alu_result[0]_i_12_n_0 ),
        .O(\s_alu_result[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_alu_result[0]_i_9 
       (.I0(p_1_in52_in),
        .I1(\s_acc_reg_reg_n_0_[0] ),
        .I2(p_3_in55_in),
        .I3(p_2_in),
        .O(\s_alu_result[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[10]_i_1 
       (.I0(\s_alu_result[10]_i_2_n_0 ),
        .I1(\s_alu_result[10]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[10]_i_4_n_0 ),
        .I5(\s_alu_result[10]_i_5_n_0 ),
        .O(\s_alu_result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[10]_i_2 
       (.I0(\s_alu_result[10]_i_6_n_0 ),
        .I1(data9[10]),
        .I2(p_11_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[10]),
        .O(\s_alu_result[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[10]_i_3 
       (.I0(p_10_in),
        .I1(p_11_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in26_in),
        .O(\s_alu_result[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[10]_i_4 
       (.I0(\s_alu_result_reg[11]_i_8_n_5 ),
        .I1(p_0_in26_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_10_in),
        .I5(\s_alu_result_reg[11]_i_9_n_5 ),
        .O(\s_alu_result[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[10]_i_5 
       (.I0(p_0_in26_in),
        .I1(p_10_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_9_in63_in),
        .O(\s_alu_result[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[10]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[10]),
        .I3(Q),
        .I4(p_10_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_alu_result[10]_i_7 
       (.I0(p_0_in26_in),
        .I1(p_0_in32_in),
        .I2(p_20_out[14]),
        .I3(p_0_in35_in),
        .I4(p_0_in29_in),
        .O(p_20_out[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[11]_i_1 
       (.I0(\s_alu_result[11]_i_2_n_0 ),
        .I1(\s_alu_result[11]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[11]_i_4_n_0 ),
        .I5(\s_alu_result[11]_i_5_n_0 ),
        .O(\s_alu_result[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[11]_i_10 
       (.I0(p_0_in29_in),
        .I1(p_11_in),
        .O(\s_alu_result[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[11]_i_11 
       (.I0(p_0_in26_in),
        .I1(p_10_in),
        .O(\s_alu_result[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[11]_i_12 
       (.I0(p_0_in23_in),
        .I1(p_9_in63_in),
        .O(\s_alu_result[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[11]_i_13 
       (.I0(p_0_in20_in),
        .I1(p_8_in),
        .O(\s_alu_result[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[11]_i_14 
       (.I0(p_11_in),
        .I1(p_0_in29_in),
        .O(\s_alu_result[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[11]_i_15 
       (.I0(p_10_in),
        .I1(p_0_in26_in),
        .O(\s_alu_result[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[11]_i_16 
       (.I0(p_9_in63_in),
        .I1(p_0_in23_in),
        .O(\s_alu_result[11]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[11]_i_17 
       (.I0(p_8_in),
        .I1(p_0_in20_in),
        .O(\s_alu_result[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[11]_i_2 
       (.I0(\s_alu_result[11]_i_6_n_0 ),
        .I1(data9[11]),
        .I2(p_12_in67_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[11]),
        .O(\s_alu_result[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[11]_i_3 
       (.I0(p_11_in),
        .I1(p_12_in67_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in29_in),
        .O(\s_alu_result[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[11]_i_4 
       (.I0(\s_alu_result_reg[11]_i_8_n_4 ),
        .I1(p_0_in29_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_11_in),
        .I5(\s_alu_result_reg[11]_i_9_n_4 ),
        .O(\s_alu_result[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[11]_i_5 
       (.I0(p_0_in29_in),
        .I1(p_11_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_10_in),
        .O(\s_alu_result[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[11]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[11]),
        .I3(Q),
        .I4(p_11_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_alu_result[11]_i_7 
       (.I0(p_0_in29_in),
        .I1(p_0_in35_in),
        .I2(p_20_out[14]),
        .I3(p_0_in32_in),
        .O(p_20_out[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[12]_i_1 
       (.I0(\s_alu_result[12]_i_2_n_0 ),
        .I1(\s_alu_result[12]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[12]_i_4_n_0 ),
        .I5(\s_alu_result[12]_i_5_n_0 ),
        .O(\s_alu_result[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[12]_i_10 
       (.I0(p_11_in),
        .O(\s_alu_result[12]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[12]_i_11 
       (.I0(p_10_in),
        .O(\s_alu_result[12]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[12]_i_12 
       (.I0(p_9_in63_in),
        .O(\s_alu_result[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[12]_i_2 
       (.I0(\s_alu_result[12]_i_6_n_0 ),
        .I1(data9[12]),
        .I2(p_13_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[12]),
        .O(\s_alu_result[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[12]_i_3 
       (.I0(p_12_in67_in),
        .I1(p_13_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in32_in),
        .O(\s_alu_result[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[12]_i_4 
       (.I0(\s_alu_result_reg[15]_i_8_n_7 ),
        .I1(p_0_in32_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_12_in67_in),
        .I5(\s_alu_result_reg[15]_i_9_n_7 ),
        .O(\s_alu_result[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[12]_i_5 
       (.I0(p_0_in32_in),
        .I1(p_12_in67_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_11_in),
        .O(\s_alu_result[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[12]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[12]),
        .I3(Q),
        .I4(p_12_in67_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_alu_result[12]_i_8 
       (.I0(p_0_in32_in),
        .I1(p_20_out[14]),
        .I2(p_0_in35_in),
        .O(p_20_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[12]_i_9 
       (.I0(p_12_in67_in),
        .O(\s_alu_result[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[13]_i_1 
       (.I0(\s_alu_result[13]_i_2_n_0 ),
        .I1(\s_alu_result[13]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[13]_i_4_n_0 ),
        .I5(\s_alu_result[13]_i_5_n_0 ),
        .O(\s_alu_result[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[13]_i_2 
       (.I0(\s_alu_result[13]_i_6_n_0 ),
        .I1(data9[13]),
        .I2(p_14_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[13]),
        .O(\s_alu_result[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[13]_i_3 
       (.I0(p_13_in),
        .I1(p_14_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in35_in),
        .O(\s_alu_result[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[13]_i_4 
       (.I0(\s_alu_result_reg[15]_i_8_n_6 ),
        .I1(p_0_in35_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_13_in),
        .I5(\s_alu_result_reg[15]_i_9_n_6 ),
        .O(\s_alu_result[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[13]_i_5 
       (.I0(p_0_in35_in),
        .I1(p_13_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_12_in67_in),
        .O(\s_alu_result[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[13]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[13]),
        .I3(Q),
        .I4(p_13_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[13]_i_7 
       (.I0(p_0_in35_in),
        .I1(p_20_out[14]),
        .O(p_20_out[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[14]_i_1 
       (.I0(\s_alu_result[14]_i_2_n_0 ),
        .I1(\s_alu_result[14]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[14]_i_4_n_0 ),
        .I5(\s_alu_result[14]_i_5_n_0 ),
        .O(\s_alu_result[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \s_alu_result[14]_i_2 
       (.I0(\s_alu_result[14]_i_6_n_0 ),
        .I1(p_20_out[14]),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_15_in71_in),
        .I5(data9[14]),
        .O(\s_alu_result[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[14]_i_3 
       (.I0(p_14_in),
        .I1(p_15_in71_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in38_in),
        .O(\s_alu_result[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[14]_i_4 
       (.I0(\s_alu_result_reg[15]_i_8_n_5 ),
        .I1(p_0_in38_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_14_in),
        .I5(\s_alu_result_reg[15]_i_9_n_5 ),
        .O(\s_alu_result[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[14]_i_5 
       (.I0(p_0_in38_in),
        .I1(p_14_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_13_in),
        .O(\s_alu_result[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[14]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[14]),
        .I3(Q),
        .I4(p_14_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \s_alu_result[14]_i_7 
       (.I0(p_0_in38_in),
        .I1(p_0_in44_in),
        .I2(\s_input_lat_reg_n_0_[18] ),
        .I3(p_1_in),
        .I4(p_0_in47_in),
        .I5(p_0_in41_in),
        .O(p_20_out[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[15]_i_1 
       (.I0(\s_alu_result[15]_i_2_n_0 ),
        .I1(\s_alu_result[15]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[15]_i_4_n_0 ),
        .I5(\s_alu_result[15]_i_5_n_0 ),
        .O(\s_alu_result[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[15]_i_10 
       (.I0(p_0_in41_in),
        .I1(p_15_in71_in),
        .O(\s_alu_result[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[15]_i_11 
       (.I0(p_0_in38_in),
        .I1(p_14_in),
        .O(\s_alu_result[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[15]_i_12 
       (.I0(p_0_in35_in),
        .I1(p_13_in),
        .O(\s_alu_result[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[15]_i_13 
       (.I0(p_0_in32_in),
        .I1(p_12_in67_in),
        .O(\s_alu_result[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[15]_i_14 
       (.I0(p_15_in71_in),
        .I1(p_0_in41_in),
        .O(\s_alu_result[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[15]_i_15 
       (.I0(p_14_in),
        .I1(p_0_in38_in),
        .O(\s_alu_result[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[15]_i_16 
       (.I0(p_13_in),
        .I1(p_0_in35_in),
        .O(\s_alu_result[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[15]_i_17 
       (.I0(p_12_in67_in),
        .I1(p_0_in32_in),
        .O(\s_alu_result[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \s_alu_result[15]_i_2 
       (.I0(\s_alu_result[15]_i_6_n_0 ),
        .I1(p_20_out[15]),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_16_in),
        .I5(data9[15]),
        .O(\s_alu_result[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[15]_i_3 
       (.I0(p_15_in71_in),
        .I1(p_16_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in41_in),
        .O(\s_alu_result[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[15]_i_4 
       (.I0(\s_alu_result_reg[15]_i_8_n_4 ),
        .I1(p_0_in41_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_15_in71_in),
        .I5(\s_alu_result_reg[15]_i_9_n_4 ),
        .O(\s_alu_result[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[15]_i_5 
       (.I0(p_0_in41_in),
        .I1(p_15_in71_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_14_in),
        .O(\s_alu_result[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[15]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[15]),
        .I3(Q),
        .I4(p_15_in71_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_alu_result[15]_i_7 
       (.I0(p_0_in41_in),
        .I1(p_0_in47_in),
        .I2(p_1_in),
        .I3(\s_input_lat_reg_n_0_[18] ),
        .I4(p_0_in44_in),
        .O(p_20_out[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[16]_i_1 
       (.I0(\s_alu_result[16]_i_2_n_0 ),
        .I1(\s_alu_result[16]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[16]_i_4_n_0 ),
        .I5(\s_alu_result[16]_i_5_n_0 ),
        .O(\s_alu_result[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[16]_i_10 
       (.I0(p_15_in71_in),
        .O(\s_alu_result[16]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[16]_i_11 
       (.I0(p_14_in),
        .O(\s_alu_result[16]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[16]_i_12 
       (.I0(p_13_in),
        .O(\s_alu_result[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \s_alu_result[16]_i_2 
       (.I0(\s_alu_result[16]_i_6_n_0 ),
        .I1(p_20_out[16]),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_17_in),
        .I5(data9[16]),
        .O(\s_alu_result[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[16]_i_3 
       (.I0(p_16_in),
        .I1(p_17_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in44_in),
        .O(\s_alu_result[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[16]_i_4 
       (.I0(\s_alu_result_reg[19]_i_6_n_7 ),
        .I1(p_0_in44_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_16_in),
        .I5(\s_alu_result_reg[19]_i_7_n_7 ),
        .O(\s_alu_result[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[16]_i_5 
       (.I0(p_0_in44_in),
        .I1(p_16_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_15_in71_in),
        .O(\s_alu_result[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[16]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[16]),
        .I3(Q),
        .I4(p_16_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_alu_result[16]_i_7 
       (.I0(p_0_in44_in),
        .I1(\s_input_lat_reg_n_0_[18] ),
        .I2(p_1_in),
        .I3(p_0_in47_in),
        .O(p_20_out[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[16]_i_9 
       (.I0(p_16_in),
        .O(\s_alu_result[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[17]_i_1 
       (.I0(\s_alu_result[17]_i_2_n_0 ),
        .I1(\s_alu_result[17]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[17]_i_4_n_0 ),
        .I5(\s_alu_result[17]_i_5_n_0 ),
        .O(\s_alu_result[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \s_alu_result[17]_i_2 
       (.I0(\s_alu_result[17]_i_6_n_0 ),
        .I1(p_20_out[17]),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_18_in75_in),
        .I5(data9[17]),
        .O(\s_alu_result[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[17]_i_3 
       (.I0(p_17_in),
        .I1(p_18_in75_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in47_in),
        .O(\s_alu_result[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[17]_i_4 
       (.I0(\s_alu_result_reg[19]_i_6_n_6 ),
        .I1(p_0_in47_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_17_in),
        .I5(\s_alu_result_reg[19]_i_7_n_6 ),
        .O(\s_alu_result[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[17]_i_5 
       (.I0(p_0_in47_in),
        .I1(p_17_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_16_in),
        .O(\s_alu_result[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[17]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[17]),
        .I3(Q),
        .I4(p_17_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_alu_result[17]_i_7 
       (.I0(p_0_in47_in),
        .I1(p_1_in),
        .I2(\s_input_lat_reg_n_0_[18] ),
        .O(p_20_out[17]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[18]_i_1 
       (.I0(\s_alu_result[18]_i_2_n_0 ),
        .I1(\s_alu_result[18]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[18]_i_4_n_0 ),
        .I5(\s_alu_result[18]_i_5_n_0 ),
        .O(\s_alu_result[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[18]_i_10 
       (.I0(p_18_in75_in),
        .O(\s_alu_result[18]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[18]_i_11 
       (.I0(p_17_in),
        .O(\s_alu_result[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \s_alu_result[18]_i_2 
       (.I0(\s_alu_result[18]_i_6_n_0 ),
        .I1(p_20_out[18]),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(Q),
        .I5(data9[18]),
        .O(\s_alu_result[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFC600C6)) 
    \s_alu_result[18]_i_3 
       (.I0(Q),
        .I1(p_18_in75_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(\s_input_lat_reg_n_0_[18] ),
        .O(\s_alu_result[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[18]_i_4 
       (.I0(\s_alu_result_reg[19]_i_6_n_5 ),
        .I1(\s_input_lat_reg_n_0_[18] ),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_18_in75_in),
        .I5(\s_alu_result_reg[19]_i_7_n_5 ),
        .O(\s_alu_result[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[18]_i_5 
       (.I0(\s_input_lat_reg_n_0_[18] ),
        .I1(p_18_in75_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_17_in),
        .O(\s_alu_result[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[18]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[18]),
        .I3(Q),
        .I4(p_18_in75_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[18]_i_7 
       (.I0(\s_input_lat_reg_n_0_[18] ),
        .I1(p_1_in),
        .O(p_20_out[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[18]_i_9 
       (.I0(Q),
        .O(\s_alu_result[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \s_alu_result[19]_i_1 
       (.I0(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I2(\s_cw_bit_cnt_reg[4]_0 ),
        .I3(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I5(\s_cw_bit_cnt_reg_n_0_[2] ),
        .O(s_alu_result0));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[19]_i_10 
       (.I0(\s_input_lat_reg_n_0_[18] ),
        .I1(p_18_in75_in),
        .O(\s_alu_result[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[19]_i_11 
       (.I0(p_0_in47_in),
        .I1(p_17_in),
        .O(\s_alu_result[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[19]_i_12 
       (.I0(p_0_in44_in),
        .I1(p_16_in),
        .O(\s_alu_result[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[19]_i_13 
       (.I0(Q),
        .I1(p_1_in),
        .O(\s_alu_result[19]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[19]_i_14 
       (.I0(p_18_in75_in),
        .I1(\s_input_lat_reg_n_0_[18] ),
        .O(\s_alu_result[19]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[19]_i_15 
       (.I0(p_17_in),
        .I1(p_0_in47_in),
        .O(\s_alu_result[19]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[19]_i_16 
       (.I0(p_16_in),
        .I1(p_0_in44_in),
        .O(\s_alu_result[19]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \s_alu_result[19]_i_17 
       (.I0(\s_alu_result[19]_i_18_n_0 ),
        .I1(\s_alu_result[0]_i_9_n_0 ),
        .I2(p_16_in),
        .I3(p_17_in),
        .I4(\s_alu_result[0]_i_8_n_0 ),
        .O(\s_alu_result[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \s_alu_result[19]_i_18 
       (.I0(p_7_in),
        .I1(p_6_in59_in),
        .I2(p_5_in),
        .I3(p_4_in),
        .I4(p_18_in75_in),
        .I5(Q),
        .O(\s_alu_result[19]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'hFFFFFF10)) 
    \s_alu_result[19]_i_2 
       (.I0(\s_alu_op_lat_reg_n_0_[3] ),
        .I1(\s_alu_op_lat_reg_n_0_[2] ),
        .I2(\s_alu_result[19]_i_3_n_0 ),
        .I3(\s_alu_result[19]_i_4_n_0 ),
        .I4(\s_alu_result[19]_i_5_n_0 ),
        .O(\s_alu_result[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[19]_i_3 
       (.I0(\s_alu_result_reg[19]_i_6_n_4 ),
        .I1(p_1_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(Q),
        .I5(\s_alu_result_reg[19]_i_7_n_4 ),
        .O(\s_alu_result[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4004044440044040)) 
    \s_alu_result[19]_i_4 
       (.I0(\s_alu_op_lat_reg_n_0_[3] ),
        .I1(\s_alu_op_lat_reg_n_0_[2] ),
        .I2(Q),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(\s_alu_op_lat_reg_n_0_[1] ),
        .I5(p_1_in),
        .O(\s_alu_result[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDF8FD08000000000)) 
    \s_alu_result[19]_i_5 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(\s_alu_op_lat_reg_n_0_[2] ),
        .I3(Q),
        .I4(\s_alu_result[19]_i_8_n_0 ),
        .I5(\s_alu_op_lat_reg_n_0_[3] ),
        .O(\s_alu_result[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFC0F0C00FC000)) 
    \s_alu_result[19]_i_8 
       (.I0(\s_alu_result[19]_i_17_n_0 ),
        .I1(p_1_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(Q),
        .I5(data9[19]),
        .O(\s_alu_result[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[19]_i_9 
       (.I0(Q),
        .I1(p_1_in),
        .O(\s_alu_result[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[1]_i_1 
       (.I0(\s_alu_result[1]_i_2_n_0 ),
        .I1(\s_alu_result[1]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[1]_i_4_n_0 ),
        .I5(\s_alu_result[1]_i_5_n_0 ),
        .O(\s_alu_result[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[1]_i_2 
       (.I0(\s_alu_result[1]_i_6_n_0 ),
        .I1(data9[1]),
        .I2(p_2_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[1]),
        .O(\s_alu_result[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[1]_i_3 
       (.I0(p_1_in52_in),
        .I1(p_2_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in),
        .O(\s_alu_result[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[1]_i_4 
       (.I0(\s_alu_result_reg[3]_i_8_n_6 ),
        .I1(p_0_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_1_in52_in),
        .I5(\s_alu_result_reg[3]_i_9_n_6 ),
        .O(\s_alu_result[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[1]_i_5 
       (.I0(p_0_in),
        .I1(p_1_in52_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(\s_acc_reg_reg_n_0_[0] ),
        .O(\s_alu_result[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[1]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[1]),
        .I3(Q),
        .I4(p_1_in52_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_alu_result[1]_i_7 
       (.I0(p_0_in),
        .I1(p_0_in5_in),
        .I2(p_20_out[4]),
        .I3(p_0_in2_in),
        .O(p_20_out[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[2]_i_1 
       (.I0(\s_alu_result[2]_i_2_n_0 ),
        .I1(\s_alu_result[2]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[2]_i_4_n_0 ),
        .I5(\s_alu_result[2]_i_5_n_0 ),
        .O(\s_alu_result[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[2]_i_2 
       (.I0(\s_alu_result[2]_i_6_n_0 ),
        .I1(data9[2]),
        .I2(p_3_in55_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[2]),
        .O(\s_alu_result[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[2]_i_3 
       (.I0(p_2_in),
        .I1(p_3_in55_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(\s_alu_result[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[2]_i_4 
       (.I0(\s_alu_result_reg[3]_i_8_n_5 ),
        .I1(p_0_in2_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_2_in),
        .I5(\s_alu_result_reg[3]_i_9_n_5 ),
        .O(\s_alu_result[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[2]_i_5 
       (.I0(p_0_in2_in),
        .I1(p_2_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_1_in52_in),
        .O(\s_alu_result[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[2]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[2]),
        .I3(Q),
        .I4(p_2_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_alu_result[2]_i_7 
       (.I0(p_0_in2_in),
        .I1(p_20_out[4]),
        .I2(p_0_in5_in),
        .O(p_20_out[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[3]_i_1 
       (.I0(\s_alu_result[3]_i_2_n_0 ),
        .I1(\s_alu_result[3]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[3]_i_4_n_0 ),
        .I5(\s_alu_result[3]_i_5_n_0 ),
        .O(\s_alu_result[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[3]_i_10 
       (.I0(p_0_in5_in),
        .I1(p_3_in55_in),
        .O(\s_alu_result[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[3]_i_11 
       (.I0(p_0_in2_in),
        .I1(p_2_in),
        .O(\s_alu_result[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[3]_i_12 
       (.I0(p_0_in),
        .I1(p_1_in52_in),
        .O(\s_alu_result[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[3]_i_13 
       (.I0(\s_input_lat_reg_n_0_[0] ),
        .I1(\s_acc_reg_reg_n_0_[0] ),
        .O(\s_alu_result[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[3]_i_14 
       (.I0(p_3_in55_in),
        .I1(p_0_in5_in),
        .O(\s_alu_result[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[3]_i_15 
       (.I0(p_2_in),
        .I1(p_0_in2_in),
        .O(\s_alu_result[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[3]_i_16 
       (.I0(p_1_in52_in),
        .I1(p_0_in),
        .O(\s_alu_result[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[3]_i_17 
       (.I0(\s_acc_reg_reg_n_0_[0] ),
        .I1(\s_input_lat_reg_n_0_[0] ),
        .O(\s_alu_result[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[3]_i_2 
       (.I0(\s_alu_result[3]_i_6_n_0 ),
        .I1(data9[3]),
        .I2(p_4_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[3]),
        .O(\s_alu_result[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[3]_i_3 
       (.I0(p_3_in55_in),
        .I1(p_4_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in5_in),
        .O(\s_alu_result[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[3]_i_4 
       (.I0(\s_alu_result_reg[3]_i_8_n_4 ),
        .I1(p_0_in5_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_3_in55_in),
        .I5(\s_alu_result_reg[3]_i_9_n_4 ),
        .O(\s_alu_result[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[3]_i_5 
       (.I0(p_0_in5_in),
        .I1(p_3_in55_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_2_in),
        .O(\s_alu_result[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[3]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[3]),
        .I3(Q),
        .I4(p_3_in55_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[3]_i_7 
       (.I0(p_0_in5_in),
        .I1(p_20_out[4]),
        .O(p_20_out[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[4]_i_1 
       (.I0(\s_alu_result[4]_i_2_n_0 ),
        .I1(\s_alu_result[4]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[4]_i_4_n_0 ),
        .I5(\s_alu_result[4]_i_5_n_0 ),
        .O(\s_alu_result[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[4]_i_10 
       (.I0(p_4_in),
        .O(\s_alu_result[4]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[4]_i_11 
       (.I0(p_3_in55_in),
        .O(\s_alu_result[4]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[4]_i_12 
       (.I0(p_2_in),
        .O(\s_alu_result[4]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[4]_i_13 
       (.I0(p_1_in52_in),
        .O(\s_alu_result[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[4]_i_2 
       (.I0(\s_alu_result[4]_i_6_n_0 ),
        .I1(data9[4]),
        .I2(p_5_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[4]),
        .O(\s_alu_result[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[4]_i_3 
       (.I0(p_4_in),
        .I1(p_5_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in8_in),
        .O(\s_alu_result[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[4]_i_4 
       (.I0(\s_alu_result_reg[7]_i_8_n_7 ),
        .I1(p_0_in8_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_4_in),
        .I5(\s_alu_result_reg[7]_i_9_n_7 ),
        .O(\s_alu_result[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[4]_i_5 
       (.I0(p_0_in8_in),
        .I1(p_4_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_3_in55_in),
        .O(\s_alu_result[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[4]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[4]),
        .I3(Q),
        .I4(p_4_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \s_alu_result[4]_i_8 
       (.I0(p_0_in8_in),
        .I1(p_0_in14_in),
        .I2(p_0_in20_in),
        .I3(p_20_out[9]),
        .I4(p_0_in17_in),
        .I5(p_0_in11_in),
        .O(p_20_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[4]_i_9 
       (.I0(\s_acc_reg_reg_n_0_[0] ),
        .O(\s_alu_result[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[5]_i_1 
       (.I0(\s_alu_result[5]_i_2_n_0 ),
        .I1(\s_alu_result[5]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[5]_i_4_n_0 ),
        .I5(\s_alu_result[5]_i_5_n_0 ),
        .O(\s_alu_result[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[5]_i_2 
       (.I0(\s_alu_result[5]_i_6_n_0 ),
        .I1(data9[5]),
        .I2(p_6_in59_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[5]),
        .O(\s_alu_result[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[5]_i_3 
       (.I0(p_5_in),
        .I1(p_6_in59_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in11_in),
        .O(\s_alu_result[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[5]_i_4 
       (.I0(\s_alu_result_reg[7]_i_8_n_6 ),
        .I1(p_0_in11_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_5_in),
        .I5(\s_alu_result_reg[7]_i_9_n_6 ),
        .O(\s_alu_result[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[5]_i_5 
       (.I0(p_0_in11_in),
        .I1(p_5_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_4_in),
        .O(\s_alu_result[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[5]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[5]),
        .I3(Q),
        .I4(p_5_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_alu_result[5]_i_7 
       (.I0(p_0_in11_in),
        .I1(p_0_in17_in),
        .I2(p_20_out[9]),
        .I3(p_0_in20_in),
        .I4(p_0_in14_in),
        .O(p_20_out[5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[6]_i_1 
       (.I0(\s_alu_result[6]_i_2_n_0 ),
        .I1(\s_alu_result[6]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[6]_i_4_n_0 ),
        .I5(\s_alu_result[6]_i_5_n_0 ),
        .O(\s_alu_result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[6]_i_2 
       (.I0(\s_alu_result[6]_i_6_n_0 ),
        .I1(data9[6]),
        .I2(p_7_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[6]),
        .O(\s_alu_result[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[6]_i_3 
       (.I0(p_6_in59_in),
        .I1(p_7_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in14_in),
        .O(\s_alu_result[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[6]_i_4 
       (.I0(\s_alu_result_reg[7]_i_8_n_5 ),
        .I1(p_0_in14_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_6_in59_in),
        .I5(\s_alu_result_reg[7]_i_9_n_5 ),
        .O(\s_alu_result[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[6]_i_5 
       (.I0(p_0_in14_in),
        .I1(p_6_in59_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_5_in),
        .O(\s_alu_result[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[6]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[6]),
        .I3(Q),
        .I4(p_6_in59_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_alu_result[6]_i_7 
       (.I0(p_0_in14_in),
        .I1(p_0_in20_in),
        .I2(p_20_out[9]),
        .I3(p_0_in17_in),
        .O(p_20_out[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[7]_i_1 
       (.I0(\s_alu_result[7]_i_2_n_0 ),
        .I1(\s_alu_result[7]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[7]_i_4_n_0 ),
        .I5(\s_alu_result[7]_i_5_n_0 ),
        .O(\s_alu_result[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[7]_i_10 
       (.I0(p_0_in17_in),
        .I1(p_7_in),
        .O(\s_alu_result[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[7]_i_11 
       (.I0(p_0_in14_in),
        .I1(p_6_in59_in),
        .O(\s_alu_result[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[7]_i_12 
       (.I0(p_0_in11_in),
        .I1(p_5_in),
        .O(\s_alu_result[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[7]_i_13 
       (.I0(p_0_in8_in),
        .I1(p_4_in),
        .O(\s_alu_result[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[7]_i_14 
       (.I0(p_7_in),
        .I1(p_0_in17_in),
        .O(\s_alu_result[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[7]_i_15 
       (.I0(p_6_in59_in),
        .I1(p_0_in14_in),
        .O(\s_alu_result[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[7]_i_16 
       (.I0(p_5_in),
        .I1(p_0_in11_in),
        .O(\s_alu_result[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_alu_result[7]_i_17 
       (.I0(p_4_in),
        .I1(p_0_in8_in),
        .O(\s_alu_result[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[7]_i_2 
       (.I0(\s_alu_result[7]_i_6_n_0 ),
        .I1(data9[7]),
        .I2(p_8_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[7]),
        .O(\s_alu_result[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[7]_i_3 
       (.I0(p_7_in),
        .I1(p_8_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in17_in),
        .O(\s_alu_result[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[7]_i_4 
       (.I0(\s_alu_result_reg[7]_i_8_n_4 ),
        .I1(p_0_in17_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_7_in),
        .I5(\s_alu_result_reg[7]_i_9_n_4 ),
        .O(\s_alu_result[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[7]_i_5 
       (.I0(p_0_in17_in),
        .I1(p_7_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_6_in59_in),
        .O(\s_alu_result[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[7]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[7]),
        .I3(Q),
        .I4(p_7_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_alu_result[7]_i_7 
       (.I0(p_0_in17_in),
        .I1(p_20_out[9]),
        .I2(p_0_in20_in),
        .O(p_20_out[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[8]_i_1 
       (.I0(\s_alu_result[8]_i_2_n_0 ),
        .I1(\s_alu_result[8]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[8]_i_4_n_0 ),
        .I5(\s_alu_result[8]_i_5_n_0 ),
        .O(\s_alu_result[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[8]_i_10 
       (.I0(p_7_in),
        .O(\s_alu_result[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[8]_i_11 
       (.I0(p_6_in59_in),
        .O(\s_alu_result[8]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[8]_i_12 
       (.I0(p_5_in),
        .O(\s_alu_result[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[8]_i_2 
       (.I0(\s_alu_result[8]_i_6_n_0 ),
        .I1(data9[8]),
        .I2(p_9_in63_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[8]),
        .O(\s_alu_result[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[8]_i_3 
       (.I0(p_8_in),
        .I1(p_9_in63_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in20_in),
        .O(\s_alu_result[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[8]_i_4 
       (.I0(\s_alu_result_reg[11]_i_8_n_7 ),
        .I1(p_0_in20_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_8_in),
        .I5(\s_alu_result_reg[11]_i_9_n_7 ),
        .O(\s_alu_result[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[8]_i_5 
       (.I0(p_0_in20_in),
        .I1(p_8_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_7_in),
        .O(\s_alu_result[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[8]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[8]),
        .I3(Q),
        .I4(p_8_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_alu_result[8]_i_8 
       (.I0(p_0_in20_in),
        .I1(p_20_out[9]),
        .O(p_20_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_alu_result[8]_i_9 
       (.I0(p_8_in),
        .O(\s_alu_result[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s_alu_result[9]_i_1 
       (.I0(\s_alu_result[9]_i_2_n_0 ),
        .I1(\s_alu_result[9]_i_3_n_0 ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[2] ),
        .I4(\s_alu_result[9]_i_4_n_0 ),
        .I5(\s_alu_result[9]_i_5_n_0 ),
        .O(\s_alu_result[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEAAFAAAEEAAFA)) 
    \s_alu_result[9]_i_2 
       (.I0(\s_alu_result[9]_i_6_n_0 ),
        .I1(data9[9]),
        .I2(p_10_in),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(p_20_out[9]),
        .O(\s_alu_result[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \s_alu_result[9]_i_3 
       (.I0(p_9_in63_in),
        .I1(p_10_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_0_in23_in),
        .O(\s_alu_result[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAF0FA0C0AF00A0)) 
    \s_alu_result[9]_i_4 
       (.I0(\s_alu_result_reg[11]_i_8_n_6 ),
        .I1(p_0_in23_in),
        .I2(\s_alu_op_lat_reg_n_0_[0] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(p_9_in63_in),
        .I5(\s_alu_result_reg[11]_i_9_n_6 ),
        .O(\s_alu_result[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF63E063E)) 
    \s_alu_result[9]_i_5 
       (.I0(p_0_in23_in),
        .I1(p_9_in63_in),
        .I2(\s_alu_op_lat_reg_n_0_[1] ),
        .I3(\s_alu_op_lat_reg_n_0_[0] ),
        .I4(p_8_in),
        .O(\s_alu_result[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444000)) 
    \s_alu_result[9]_i_6 
       (.I0(\s_alu_op_lat_reg_n_0_[0] ),
        .I1(\s_alu_op_lat_reg_n_0_[1] ),
        .I2(data9[9]),
        .I3(Q),
        .I4(p_9_in63_in),
        .I5(\s_alu_result[0]_i_7_n_0 ),
        .O(\s_alu_result[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \s_alu_result[9]_i_7 
       (.I0(p_0_in23_in),
        .I1(p_0_in29_in),
        .I2(p_0_in35_in),
        .I3(p_20_out[14]),
        .I4(p_0_in32_in),
        .I5(p_0_in26_in),
        .O(p_20_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[0] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[0]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[10] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[10]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[10] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[11] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[11]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[11] ),
        .R(i_rst));
  CARRY4 \s_alu_result_reg[11]_i_8 
       (.CI(\s_alu_result_reg[7]_i_8_n_0 ),
        .CO({\s_alu_result_reg[11]_i_8_n_0 ,\s_alu_result_reg[11]_i_8_n_1 ,\s_alu_result_reg[11]_i_8_n_2 ,\s_alu_result_reg[11]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({p_11_in,p_10_in,p_9_in63_in,p_8_in}),
        .O({\s_alu_result_reg[11]_i_8_n_4 ,\s_alu_result_reg[11]_i_8_n_5 ,\s_alu_result_reg[11]_i_8_n_6 ,\s_alu_result_reg[11]_i_8_n_7 }),
        .S({\s_alu_result[11]_i_10_n_0 ,\s_alu_result[11]_i_11_n_0 ,\s_alu_result[11]_i_12_n_0 ,\s_alu_result[11]_i_13_n_0 }));
  CARRY4 \s_alu_result_reg[11]_i_9 
       (.CI(\s_alu_result_reg[7]_i_9_n_0 ),
        .CO({\s_alu_result_reg[11]_i_9_n_0 ,\s_alu_result_reg[11]_i_9_n_1 ,\s_alu_result_reg[11]_i_9_n_2 ,\s_alu_result_reg[11]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({p_11_in,p_10_in,p_9_in63_in,p_8_in}),
        .O({\s_alu_result_reg[11]_i_9_n_4 ,\s_alu_result_reg[11]_i_9_n_5 ,\s_alu_result_reg[11]_i_9_n_6 ,\s_alu_result_reg[11]_i_9_n_7 }),
        .S({\s_alu_result[11]_i_14_n_0 ,\s_alu_result[11]_i_15_n_0 ,\s_alu_result[11]_i_16_n_0 ,\s_alu_result[11]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[12] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[12]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[12] ),
        .R(i_rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_alu_result_reg[12]_i_7 
       (.CI(\s_alu_result_reg[8]_i_7_n_0 ),
        .CO({\s_alu_result_reg[12]_i_7_n_0 ,\s_alu_result_reg[12]_i_7_n_1 ,\s_alu_result_reg[12]_i_7_n_2 ,\s_alu_result_reg[12]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data9[12:9]),
        .S({\s_alu_result[12]_i_9_n_0 ,\s_alu_result[12]_i_10_n_0 ,\s_alu_result[12]_i_11_n_0 ,\s_alu_result[12]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[13] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[13]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[13] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[14] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[14]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[14] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[15] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[15]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[15] ),
        .R(i_rst));
  CARRY4 \s_alu_result_reg[15]_i_8 
       (.CI(\s_alu_result_reg[11]_i_8_n_0 ),
        .CO({\s_alu_result_reg[15]_i_8_n_0 ,\s_alu_result_reg[15]_i_8_n_1 ,\s_alu_result_reg[15]_i_8_n_2 ,\s_alu_result_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({p_15_in71_in,p_14_in,p_13_in,p_12_in67_in}),
        .O({\s_alu_result_reg[15]_i_8_n_4 ,\s_alu_result_reg[15]_i_8_n_5 ,\s_alu_result_reg[15]_i_8_n_6 ,\s_alu_result_reg[15]_i_8_n_7 }),
        .S({\s_alu_result[15]_i_10_n_0 ,\s_alu_result[15]_i_11_n_0 ,\s_alu_result[15]_i_12_n_0 ,\s_alu_result[15]_i_13_n_0 }));
  CARRY4 \s_alu_result_reg[15]_i_9 
       (.CI(\s_alu_result_reg[11]_i_9_n_0 ),
        .CO({\s_alu_result_reg[15]_i_9_n_0 ,\s_alu_result_reg[15]_i_9_n_1 ,\s_alu_result_reg[15]_i_9_n_2 ,\s_alu_result_reg[15]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({p_15_in71_in,p_14_in,p_13_in,p_12_in67_in}),
        .O({\s_alu_result_reg[15]_i_9_n_4 ,\s_alu_result_reg[15]_i_9_n_5 ,\s_alu_result_reg[15]_i_9_n_6 ,\s_alu_result_reg[15]_i_9_n_7 }),
        .S({\s_alu_result[15]_i_14_n_0 ,\s_alu_result[15]_i_15_n_0 ,\s_alu_result[15]_i_16_n_0 ,\s_alu_result[15]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[16] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[16]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[16] ),
        .R(i_rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_alu_result_reg[16]_i_8 
       (.CI(\s_alu_result_reg[12]_i_7_n_0 ),
        .CO({\s_alu_result_reg[16]_i_8_n_0 ,\s_alu_result_reg[16]_i_8_n_1 ,\s_alu_result_reg[16]_i_8_n_2 ,\s_alu_result_reg[16]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data9[16:13]),
        .S({\s_alu_result[16]_i_9_n_0 ,\s_alu_result[16]_i_10_n_0 ,\s_alu_result[16]_i_11_n_0 ,\s_alu_result[16]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[17] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[17]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[18] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[18]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[18] ),
        .R(i_rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_alu_result_reg[18]_i_8 
       (.CI(\s_alu_result_reg[16]_i_8_n_0 ),
        .CO({\NLW_s_alu_result_reg[18]_i_8_CO_UNCONNECTED [3:2],\s_alu_result_reg[18]_i_8_n_2 ,\s_alu_result_reg[18]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_alu_result_reg[18]_i_8_O_UNCONNECTED [3],data9[19:17]}),
        .S({1'b0,\s_alu_result[18]_i_9_n_0 ,\s_alu_result[18]_i_10_n_0 ,\s_alu_result[18]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[19] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[19]_i_2_n_0 ),
        .Q(\s_alu_result_reg_n_0_[19] ),
        .R(i_rst));
  CARRY4 \s_alu_result_reg[19]_i_6 
       (.CI(\s_alu_result_reg[15]_i_8_n_0 ),
        .CO({\s_alu_result_reg[19]_i_6_n_0 ,\s_alu_result_reg[19]_i_6_n_1 ,\s_alu_result_reg[19]_i_6_n_2 ,\s_alu_result_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({Q,p_18_in75_in,p_17_in,p_16_in}),
        .O({\s_alu_result_reg[19]_i_6_n_4 ,\s_alu_result_reg[19]_i_6_n_5 ,\s_alu_result_reg[19]_i_6_n_6 ,\s_alu_result_reg[19]_i_6_n_7 }),
        .S({\s_alu_result[19]_i_9_n_0 ,\s_alu_result[19]_i_10_n_0 ,\s_alu_result[19]_i_11_n_0 ,\s_alu_result[19]_i_12_n_0 }));
  CARRY4 \s_alu_result_reg[19]_i_7 
       (.CI(\s_alu_result_reg[15]_i_9_n_0 ),
        .CO({\s_alu_result_reg[19]_i_7_n_0 ,\s_alu_result_reg[19]_i_7_n_1 ,\s_alu_result_reg[19]_i_7_n_2 ,\s_alu_result_reg[19]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({Q,p_18_in75_in,p_17_in,p_16_in}),
        .O({\s_alu_result_reg[19]_i_7_n_4 ,\s_alu_result_reg[19]_i_7_n_5 ,\s_alu_result_reg[19]_i_7_n_6 ,\s_alu_result_reg[19]_i_7_n_7 }),
        .S({\s_alu_result[19]_i_13_n_0 ,\s_alu_result[19]_i_14_n_0 ,\s_alu_result[19]_i_15_n_0 ,\s_alu_result[19]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[1] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[1]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[2] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[2]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[3] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[3]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[3] ),
        .R(i_rst));
  CARRY4 \s_alu_result_reg[3]_i_8 
       (.CI(1'b0),
        .CO({\s_alu_result_reg[3]_i_8_n_0 ,\s_alu_result_reg[3]_i_8_n_1 ,\s_alu_result_reg[3]_i_8_n_2 ,\s_alu_result_reg[3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({p_3_in55_in,p_2_in,p_1_in52_in,\s_acc_reg_reg_n_0_[0] }),
        .O({\s_alu_result_reg[3]_i_8_n_4 ,\s_alu_result_reg[3]_i_8_n_5 ,\s_alu_result_reg[3]_i_8_n_6 ,\s_alu_result_reg[3]_i_8_n_7 }),
        .S({\s_alu_result[3]_i_10_n_0 ,\s_alu_result[3]_i_11_n_0 ,\s_alu_result[3]_i_12_n_0 ,\s_alu_result[3]_i_13_n_0 }));
  CARRY4 \s_alu_result_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\s_alu_result_reg[3]_i_9_n_0 ,\s_alu_result_reg[3]_i_9_n_1 ,\s_alu_result_reg[3]_i_9_n_2 ,\s_alu_result_reg[3]_i_9_n_3 }),
        .CYINIT(1'b1),
        .DI({p_3_in55_in,p_2_in,p_1_in52_in,\s_acc_reg_reg_n_0_[0] }),
        .O({\s_alu_result_reg[3]_i_9_n_4 ,\s_alu_result_reg[3]_i_9_n_5 ,\s_alu_result_reg[3]_i_9_n_6 ,\s_alu_result_reg[3]_i_9_n_7 }),
        .S({\s_alu_result[3]_i_14_n_0 ,\s_alu_result[3]_i_15_n_0 ,\s_alu_result[3]_i_16_n_0 ,\s_alu_result[3]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[4] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[4]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[4] ),
        .R(i_rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_alu_result_reg[4]_i_7 
       (.CI(1'b0),
        .CO({\s_alu_result_reg[4]_i_7_n_0 ,\s_alu_result_reg[4]_i_7_n_1 ,\s_alu_result_reg[4]_i_7_n_2 ,\s_alu_result_reg[4]_i_7_n_3 }),
        .CYINIT(\s_alu_result[4]_i_9_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data9[4:1]),
        .S({\s_alu_result[4]_i_10_n_0 ,\s_alu_result[4]_i_11_n_0 ,\s_alu_result[4]_i_12_n_0 ,\s_alu_result[4]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[5] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[5]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[6] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[6]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[7] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[7]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[7] ),
        .R(i_rst));
  CARRY4 \s_alu_result_reg[7]_i_8 
       (.CI(\s_alu_result_reg[3]_i_8_n_0 ),
        .CO({\s_alu_result_reg[7]_i_8_n_0 ,\s_alu_result_reg[7]_i_8_n_1 ,\s_alu_result_reg[7]_i_8_n_2 ,\s_alu_result_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({p_7_in,p_6_in59_in,p_5_in,p_4_in}),
        .O({\s_alu_result_reg[7]_i_8_n_4 ,\s_alu_result_reg[7]_i_8_n_5 ,\s_alu_result_reg[7]_i_8_n_6 ,\s_alu_result_reg[7]_i_8_n_7 }),
        .S({\s_alu_result[7]_i_10_n_0 ,\s_alu_result[7]_i_11_n_0 ,\s_alu_result[7]_i_12_n_0 ,\s_alu_result[7]_i_13_n_0 }));
  CARRY4 \s_alu_result_reg[7]_i_9 
       (.CI(\s_alu_result_reg[3]_i_9_n_0 ),
        .CO({\s_alu_result_reg[7]_i_9_n_0 ,\s_alu_result_reg[7]_i_9_n_1 ,\s_alu_result_reg[7]_i_9_n_2 ,\s_alu_result_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({p_7_in,p_6_in59_in,p_5_in,p_4_in}),
        .O({\s_alu_result_reg[7]_i_9_n_4 ,\s_alu_result_reg[7]_i_9_n_5 ,\s_alu_result_reg[7]_i_9_n_6 ,\s_alu_result_reg[7]_i_9_n_7 }),
        .S({\s_alu_result[7]_i_14_n_0 ,\s_alu_result[7]_i_15_n_0 ,\s_alu_result[7]_i_16_n_0 ,\s_alu_result[7]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[8] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[8]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[8] ),
        .R(i_rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_alu_result_reg[8]_i_7 
       (.CI(\s_alu_result_reg[4]_i_7_n_0 ),
        .CO({\s_alu_result_reg[8]_i_7_n_0 ,\s_alu_result_reg[8]_i_7_n_1 ,\s_alu_result_reg[8]_i_7_n_2 ,\s_alu_result_reg[8]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data9[8:5]),
        .S({\s_alu_result[8]_i_9_n_0 ,\s_alu_result[8]_i_10_n_0 ,\s_alu_result[8]_i_11_n_0 ,\s_alu_result[8]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_alu_result_reg[9] 
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(\s_alu_result[9]_i_1_n_0 ),
        .Q(\s_alu_result_reg_n_0_[9] ),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    s_c_reg_i_1
       (.I0(s_carry_out),
        .I1(o_t18),
        .I2(o_phi2),
        .I3(o_word_type),
        .I4(s_flags_we_lat),
        .I5(s_flag_c),
        .O(s_c_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_c_reg_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_c_reg_i_1_n_0),
        .Q(s_flag_c),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h0003010000000100)) 
    s_carry_out_i_1
       (.I0(s_carry_out_reg_i_2_n_3),
        .I1(\s_alu_op_lat_reg_n_0_[2] ),
        .I2(\s_alu_op_lat_reg_n_0_[3] ),
        .I3(\s_alu_op_lat_reg_n_0_[1] ),
        .I4(\s_alu_op_lat_reg_n_0_[0] ),
        .I5(s_carry_out_reg_i_3_n_3),
        .O(s_carry_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_carry_out_reg
       (.C(i_clk_master),
        .CE(s_alu_result0),
        .D(s_carry_out_i_1_n_0),
        .Q(s_carry_out),
        .R(i_rst));
  CARRY4 s_carry_out_reg_i_2
       (.CI(\s_alu_result_reg[19]_i_7_n_0 ),
        .CO({NLW_s_carry_out_reg_i_2_CO_UNCONNECTED[3:1],s_carry_out_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_carry_out_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 s_carry_out_reg_i_3
       (.CI(\s_alu_result_reg[19]_i_6_n_0 ),
        .CO({NLW_s_carry_out_reg_i_3_CO_UNCONNECTED[3:1],s_carry_out_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_carry_out_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    s_compute_done_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_acc_reg15_out),
        .Q(s_compute_done),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hFFFFAAA8FFFF5757)) 
    \s_cw_bit_cnt[0]_i_1 
       (.I0(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[0] ),
        .O(\s_cw_bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF55000002AA)) 
    \s_cw_bit_cnt[1]_i_1 
       (.I0(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[1] ),
        .O(\s_cw_bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h00F70008)) 
    \s_cw_bit_cnt[2]_i_1 
       (.I0(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I3(o_t0),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .O(\s_cw_bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF7F00000080)) 
    \s_cw_bit_cnt[3]_i_1 
       (.I0(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[3] ),
        .O(\s_cw_bit_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00008000)) 
    \s_cw_bit_cnt[4]_i_2 
       (.I0(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[4] ),
        .O(\s_cw_bit_cnt[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_bit_cnt_reg[0] 
       (.C(i_clk_master),
        .CE(\s_cw_bit_cnt_reg[4]_0 ),
        .D(\s_cw_bit_cnt[0]_i_1_n_0 ),
        .Q(\s_cw_bit_cnt_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_bit_cnt_reg[1] 
       (.C(i_clk_master),
        .CE(\s_cw_bit_cnt_reg[4]_0 ),
        .D(\s_cw_bit_cnt[1]_i_1_n_0 ),
        .Q(\s_cw_bit_cnt_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_bit_cnt_reg[2] 
       (.C(i_clk_master),
        .CE(\s_cw_bit_cnt_reg[4]_0 ),
        .D(\s_cw_bit_cnt[2]_i_1_n_0 ),
        .Q(\s_cw_bit_cnt_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_bit_cnt_reg[3] 
       (.C(i_clk_master),
        .CE(\s_cw_bit_cnt_reg[4]_0 ),
        .D(\s_cw_bit_cnt[3]_i_1_n_0 ),
        .Q(\s_cw_bit_cnt_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_bit_cnt_reg[4] 
       (.C(i_clk_master),
        .CE(\s_cw_bit_cnt_reg[4]_0 ),
        .D(\s_cw_bit_cnt[4]_i_2_n_0 ),
        .Q(\s_cw_bit_cnt_reg_n_0_[4] ),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h8F80)) 
    \s_cw_sr[0]_i_1__0 
       (.I0(\s_cw_sr[3]_i_4_n_0 ),
        .I1(\s_cw_sr[4]_i_2_n_0 ),
        .I2(\s_cw_sr[0]_i_2_n_0 ),
        .I3(\s_cw_sr_reg_n_0_[0] ),
        .O(\s_cw_sr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A2A0A0A0A0)) 
    \s_cw_sr[0]_i_2 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_sr[6]_i_6_n_0 ),
        .O(\s_cw_sr[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \s_cw_sr[1]_i_1__0 
       (.I0(\s_cw_sr[3]_i_4_n_0 ),
        .I1(\s_cw_sr[5]_i_2_n_0 ),
        .I2(\s_cw_sr[1]_i_2_n_0 ),
        .I3(\s_cw_sr_reg_n_0_[1] ),
        .O(\s_cw_sr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A8A0A0A0A0)) 
    \s_cw_sr[1]_i_2 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_sr[6]_i_6_n_0 ),
        .O(\s_cw_sr[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \s_cw_sr[2]_i_1__0 
       (.I0(\s_cw_sr[3]_i_4_n_0 ),
        .I1(\s_cw_sr[6]_i_3_n_0 ),
        .I2(\s_cw_sr[2]_i_2_n_0 ),
        .I3(\s_cw_sr_reg_n_0_[2] ),
        .O(\s_cw_sr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A2A0A0A0A0A0)) 
    \s_cw_sr[2]_i_2 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_sr[6]_i_6_n_0 ),
        .O(\s_cw_sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40FFFFFF40000000)) 
    \s_cw_sr[3]_i_1__0 
       (.I0(\s_cw_sr[3]_i_2_n_0 ),
        .I1(s_cw_bit),
        .I2(\s_cw_sr[3]_i_4_n_0 ),
        .I3(\s_cw_bit_cnt_reg[4]_0 ),
        .I4(\s_cw_sr[3]_i_5_n_0 ),
        .I5(\s_cw_sr_reg_n_0_[3] ),
        .O(\s_cw_sr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \s_cw_sr[3]_i_2 
       (.I0(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I1(o_t0),
        .I2(\s_cw_bit_cnt_reg_n_0_[1] ),
        .O(\s_cw_sr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hCCCD)) 
    \s_cw_sr[3]_i_4 
       (.I0(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I1(o_t0),
        .I2(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[2] ),
        .O(\s_cw_sr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0008)) 
    \s_cw_sr[3]_i_5 
       (.I0(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[3] ),
        .O(\s_cw_sr[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \s_cw_sr[4]_i_1__0 
       (.I0(\s_cw_sr[6]_i_2_n_0 ),
        .I1(\s_cw_sr[4]_i_2_n_0 ),
        .I2(\s_cw_sr[6]_i_4_n_0 ),
        .I3(\s_cw_sr[4]_i_3_n_0 ),
        .I4(p_0_in__0),
        .O(\s_cw_sr[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'hCC00CC50)) 
    \s_cw_sr[4]_i_2 
       (.I0(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I1(\s_cw_sr_reg[4]_0 [0]),
        .I2(\s_cw_sr_reg[4]_0 [1]),
        .I3(o_t0),
        .I4(\s_cw_bit_cnt_reg_n_0_[0] ),
        .O(\s_cw_sr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A2A0A0A0A0A0A0)) 
    \s_cw_sr[4]_i_3 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_sr[6]_i_6_n_0 ),
        .O(\s_cw_sr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \s_cw_sr[5]_i_1__0 
       (.I0(\s_cw_sr[6]_i_2_n_0 ),
        .I1(\s_cw_sr[5]_i_2_n_0 ),
        .I2(\s_cw_sr[6]_i_4_n_0 ),
        .I3(\s_cw_sr[5]_i_3_n_0 ),
        .I4(\s_cw_sr_reg_n_0_[5] ),
        .O(\s_cw_sr[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \s_cw_sr[5]_i_2 
       (.I0(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I1(\s_cw_sr_reg[4]_0 [1]),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[0] ),
        .O(\s_cw_sr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A8A0A0A0A0A0A0)) 
    \s_cw_sr[5]_i_3 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_sr[6]_i_6_n_0 ),
        .O(\s_cw_sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \s_cw_sr[6]_i_1__0 
       (.I0(\s_cw_sr[6]_i_2_n_0 ),
        .I1(\s_cw_sr[6]_i_3_n_0 ),
        .I2(\s_cw_sr[6]_i_4_n_0 ),
        .I3(\s_cw_sr[6]_i_5_n_0 ),
        .I4(\s_cw_sr_reg_n_0_[6] ),
        .O(\s_cw_sr[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_cw_sr[6]_i_2 
       (.I0(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I1(o_t0),
        .I2(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[3] ),
        .O(\s_cw_sr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_cw_sr[6]_i_3 
       (.I0(\s_cw_sr_reg[4]_0 [1]),
        .I1(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[0] ),
        .O(\s_cw_sr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0111FFFF1111)) 
    \s_cw_sr[6]_i_4 
       (.I0(\s_cw_bit_cnt_reg_n_0_[3] ),
        .I1(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I2(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(o_t0),
        .I5(\s_cw_bit_cnt_reg_n_0_[0] ),
        .O(\s_cw_sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2A0A0A0A0A0A0A0)) 
    \s_cw_sr[6]_i_5 
       (.I0(\s_cw_bit_cnt_reg[4]_0 ),
        .I1(\s_cw_bit_cnt_reg_n_0_[0] ),
        .I2(o_t0),
        .I3(\s_cw_bit_cnt_reg_n_0_[1] ),
        .I4(\s_cw_bit_cnt_reg_n_0_[2] ),
        .I5(\s_cw_sr[6]_i_6_n_0 ),
        .O(\s_cw_sr[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \s_cw_sr[6]_i_6 
       (.I0(\s_cw_bit_cnt_reg_n_0_[4] ),
        .I1(o_t0),
        .I2(\s_cw_bit_cnt_reg_n_0_[3] ),
        .O(\s_cw_sr[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[0] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[0]_i_1__0_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[1] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[1]_i_1__0_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[2] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[2]_i_1__0_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[3] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[3]_i_1__0_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[4] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[4]_i_1__0_n_0 ),
        .Q(p_0_in__0),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[5] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[5]_i_1__0_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_cw_sr_reg[6] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\s_cw_sr[6]_i_1__0_n_0 ),
        .Q(\s_cw_sr_reg_n_0_[6] ),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_flags_we_lat_i_1
       (.I0(\s_cw_sr_reg_n_0_[6] ),
        .I1(s_acc_we_lat4_out),
        .I2(s_flags_we_lat),
        .O(s_flags_we_lat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_flags_we_lat_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_flags_we_lat_i_1_n_0),
        .Q(s_flags_we_lat),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[0] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[1]),
        .Q(\s_input_lat_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[10] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[11]),
        .Q(p_0_in26_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[11] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[12]),
        .Q(p_0_in29_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[12] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[13]),
        .Q(p_0_in32_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[13] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[14]),
        .Q(p_0_in35_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[14] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[15]),
        .Q(p_0_in38_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[15] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[16]),
        .Q(p_0_in41_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[16] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[17]),
        .Q(p_0_in44_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[17] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[18]),
        .Q(p_0_in47_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[18] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[19]),
        .Q(\s_input_lat_reg_n_0_[18] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[19] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(\s_input_sr_reg[19]_0 ),
        .Q(p_1_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[1] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[2]),
        .Q(p_0_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[2] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[3]),
        .Q(p_0_in2_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[3] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[4]),
        .Q(p_0_in5_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[4] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[5]),
        .Q(p_0_in8_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[5] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[6]),
        .Q(p_0_in11_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[6] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[7]),
        .Q(p_0_in14_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[7] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[8]),
        .Q(p_0_in17_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[8] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[9]),
        .Q(p_0_in20_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_lat_reg[9] 
       (.C(i_clk_master),
        .CE(\s_input_lat_reg[19]_0 ),
        .D(s_input_sr[10]),
        .Q(p_0_in23_in),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[10] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[11]),
        .Q(s_input_sr[10]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[11] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[12]),
        .Q(s_input_sr[11]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[12] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[13]),
        .Q(s_input_sr[12]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[13] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[14]),
        .Q(s_input_sr[13]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[14] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[15]),
        .Q(s_input_sr[14]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[15] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[16]),
        .Q(s_input_sr[15]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[16] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[17]),
        .Q(s_input_sr[16]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[17] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[18]),
        .Q(s_input_sr[17]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[18] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[19]),
        .Q(s_input_sr[18]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[19] 
       (.C(i_clk_master),
        .CE(E),
        .D(\s_input_sr_reg[19]_0 ),
        .Q(s_input_sr[19]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[1] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[2]),
        .Q(s_input_sr[1]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[2] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[3]),
        .Q(s_input_sr[2]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[3] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[4]),
        .Q(s_input_sr[3]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[4] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[5]),
        .Q(s_input_sr[4]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[5] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[6]),
        .Q(s_input_sr[5]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[6] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[7]),
        .Q(s_input_sr[6]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[7] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[8]),
        .Q(s_input_sr[7]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[8] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[9]),
        .Q(s_input_sr[8]),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_sr_reg[9] 
       (.C(i_clk_master),
        .CE(E),
        .D(s_input_sr[10]),
        .Q(s_input_sr[9]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_mcand_lat_i_1
       (.I0(s_acc_out_sr[0]),
        .I1(o_t0),
        .I2(s_acc_out_sr[1]),
        .O(D));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_mplier_lat[19]_i_2 
       (.I0(\s_tmp_out_sr_reg_n_0_[0] ),
        .I1(o_t0),
        .I2(\s_tmp_out_sr_reg_n_0_[1] ),
        .O(A));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    s_n_reg_i_1
       (.I0(\s_alu_result_reg_n_0_[19] ),
        .I1(o_t18),
        .I2(o_phi2),
        .I3(o_word_type),
        .I4(s_flags_we_lat),
        .I5(s_flag_n),
        .O(s_n_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_n_reg_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_n_reg_i_1_n_0),
        .Q(s_flag_n),
        .R(i_rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[0]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[1] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[0] ),
        .O(\s_tmp_out_sr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[10]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[11] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[10] ),
        .O(\s_tmp_out_sr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[11]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[12] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[11] ),
        .O(\s_tmp_out_sr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[12]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[13] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[12] ),
        .O(\s_tmp_out_sr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[13]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[14] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[13] ),
        .O(\s_tmp_out_sr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[14]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[15] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[14] ),
        .O(\s_tmp_out_sr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[15]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[16] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[15] ),
        .O(\s_tmp_out_sr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[16]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[17] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[16] ),
        .O(\s_tmp_out_sr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[17]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[18] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[17] ),
        .O(\s_tmp_out_sr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[18]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[19] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[18] ),
        .O(\s_tmp_out_sr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[1]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[2] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[1] ),
        .O(\s_tmp_out_sr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[2]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[3] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[2] ),
        .O(\s_tmp_out_sr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[3]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[4] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[3] ),
        .O(\s_tmp_out_sr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[4]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[5] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[4] ),
        .O(\s_tmp_out_sr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[5]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[6] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[5] ),
        .O(\s_tmp_out_sr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[6]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[7] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[6] ),
        .O(\s_tmp_out_sr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[7]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[8] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[7] ),
        .O(\s_tmp_out_sr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[8]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[9] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[8] ),
        .O(\s_tmp_out_sr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_tmp_out_sr[9]_i_1 
       (.I0(\s_tmp_out_sr_reg_n_0_[10] ),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(\s_tmp_reg_reg_n_0_[9] ),
        .O(\s_tmp_out_sr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[0] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[0]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[10] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[10]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[10] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[11] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[11]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[11] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[12] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[12]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[12] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[13] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[13]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[13] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[14] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[14]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[14] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[15] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[15]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[15] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[16] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[16]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[16] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[17] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[17]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[18] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[18]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[18] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[19] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr_reg[19]_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[19] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[1] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[1]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[2] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[2]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[3] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[3]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[4] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[4]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[5] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[5]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[6] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[6]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[7] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[7]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[8] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[8]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[8] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_out_sr_reg[9] 
       (.C(i_clk_master),
        .CE(\s_acc_out_sr_reg[19]_0 ),
        .D(\s_tmp_out_sr[9]_i_1_n_0 ),
        .Q(\s_tmp_out_sr_reg_n_0_[9] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[0] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(\s_acc_reg_reg_n_0_[0] ),
        .Q(\s_tmp_reg_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[10] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_10_in),
        .Q(\s_tmp_reg_reg_n_0_[10] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[11] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_11_in),
        .Q(\s_tmp_reg_reg_n_0_[11] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[12] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_12_in67_in),
        .Q(\s_tmp_reg_reg_n_0_[12] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[13] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_13_in),
        .Q(\s_tmp_reg_reg_n_0_[13] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[14] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_14_in),
        .Q(\s_tmp_reg_reg_n_0_[14] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[15] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_15_in71_in),
        .Q(\s_tmp_reg_reg_n_0_[15] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[16] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_16_in),
        .Q(\s_tmp_reg_reg_n_0_[16] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[17] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_17_in),
        .Q(\s_tmp_reg_reg_n_0_[17] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[18] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_18_in75_in),
        .Q(\s_tmp_reg_reg_n_0_[18] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[19] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(Q),
        .Q(\s_tmp_reg_reg[19]_0 ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[1] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_1_in52_in),
        .Q(\s_tmp_reg_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[2] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_2_in),
        .Q(\s_tmp_reg_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[3] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_3_in55_in),
        .Q(\s_tmp_reg_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[4] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_4_in),
        .Q(\s_tmp_reg_reg_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[5] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_5_in),
        .Q(\s_tmp_reg_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[6] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_6_in59_in),
        .Q(\s_tmp_reg_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[7] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_7_in),
        .Q(\s_tmp_reg_reg_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[8] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_8_in),
        .Q(\s_tmp_reg_reg_n_0_[8] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_reg_reg[9] 
       (.C(i_clk_master),
        .CE(\s_tmp_reg_reg[19]_1 ),
        .D(p_9_in63_in),
        .Q(\s_tmp_reg_reg_n_0_[9] ),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_tmp_we_lat_i_1
       (.I0(\s_cw_sr_reg_n_0_[5] ),
        .I1(s_acc_we_lat4_out),
        .I2(s_tmp_we_lat),
        .O(s_tmp_we_lat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_tmp_we_lat_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_tmp_we_lat_i_1_n_0),
        .Q(s_tmp_we_lat),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    s_z_reg_i_1
       (.I0(s_z_reg),
        .I1(o_t18),
        .I2(o_phi2),
        .I3(o_word_type),
        .I4(s_flags_we_lat),
        .I5(s_flag_z),
        .O(s_z_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \s_z_reg_inferred__0/s_z_reg_i_2 
       (.I0(\s_z_reg_inferred__0/s_z_reg_i_3_n_0 ),
        .I1(\s_z_reg_inferred__0/s_z_reg_i_4_n_0 ),
        .I2(\s_z_reg_inferred__0/s_z_reg_i_5_n_0 ),
        .I3(\s_alu_result_reg_n_0_[0] ),
        .I4(\s_alu_result_reg_n_0_[1] ),
        .O(s_z_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_z_reg_inferred__0/s_z_reg_i_3 
       (.I0(\s_alu_result_reg_n_0_[16] ),
        .I1(\s_alu_result_reg_n_0_[17] ),
        .I2(\s_alu_result_reg_n_0_[14] ),
        .I3(\s_alu_result_reg_n_0_[15] ),
        .I4(\s_alu_result_reg_n_0_[19] ),
        .I5(\s_alu_result_reg_n_0_[18] ),
        .O(\s_z_reg_inferred__0/s_z_reg_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_z_reg_inferred__0/s_z_reg_i_4 
       (.I0(\s_alu_result_reg_n_0_[4] ),
        .I1(\s_alu_result_reg_n_0_[5] ),
        .I2(\s_alu_result_reg_n_0_[2] ),
        .I3(\s_alu_result_reg_n_0_[3] ),
        .I4(\s_alu_result_reg_n_0_[7] ),
        .I5(\s_alu_result_reg_n_0_[6] ),
        .O(\s_z_reg_inferred__0/s_z_reg_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_z_reg_inferred__0/s_z_reg_i_5 
       (.I0(\s_alu_result_reg_n_0_[10] ),
        .I1(\s_alu_result_reg_n_0_[11] ),
        .I2(\s_alu_result_reg_n_0_[8] ),
        .I3(\s_alu_result_reg_n_0_[9] ),
        .I4(\s_alu_result_reg_n_0_[13] ),
        .I5(\s_alu_result_reg_n_0_[12] ),
        .O(\s_z_reg_inferred__0/s_z_reg_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    s_z_reg_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_z_reg_i_1_n_0),
        .Q(s_flag_z),
        .R(i_rst));
endmodule

(* ORIG_REF_NAME = "timing_generator" *) 
module cadc_system_cadc_top_0_0_timing_generator
   (\FSM_onehot_s_phase_cnt_reg[3]_0 ,
    s_frame_mark,
    s_phi2_reg_reg_0,
    o_phi2,
    s_word_type_reg_reg_0,
    s_phi2_reg_reg_1,
    D,
    o_t0,
    s_t0_reg_reg_0,
    o_word_type,
    \s_acc_reg_reg[19] ,
    \s_tmp_reg_reg[19] ,
    E,
    s_t18_reg_reg_0,
    o_t18,
    s_acc_reg15_out,
    s_word_type_reg_reg_1,
    o_t19,
    s_word_type_reg_reg_2,
    s_t0_reg_reg_1,
    s_t0_reg_reg_2,
    s_word_type_reg_reg_3,
    s_phi2_reg_reg_2,
    s_phi2_reg_reg_3,
    \s_micro_pc_reg_rep[8] ,
    s_state,
    Q,
    s_compute_done,
    \s_acc_out_sr_reg[19] ,
    \s_tmp_out_sr_reg[19] ,
    s_tmp_we_lat,
    s_busy_reg,
    s_pdu_busy,
    \s_const_sr_reg[14] ,
    i_rst,
    i_clk_master);
  output \FSM_onehot_s_phase_cnt_reg[3]_0 ;
  output s_frame_mark;
  output s_phi2_reg_reg_0;
  output o_phi2;
  output s_word_type_reg_reg_0;
  output s_phi2_reg_reg_1;
  output [0:0]D;
  output o_t0;
  output [0:0]s_t0_reg_reg_0;
  output o_word_type;
  output [0:0]\s_acc_reg_reg[19] ;
  output [0:0]\s_tmp_reg_reg[19] ;
  output [0:0]E;
  output [0:0]s_t18_reg_reg_0;
  output o_t18;
  output s_acc_reg15_out;
  output [0:0]s_word_type_reg_reg_1;
  output o_t19;
  output s_word_type_reg_reg_2;
  output [0:0]s_t0_reg_reg_1;
  output [0:0]s_t0_reg_reg_2;
  output [14:0]s_word_type_reg_reg_3;
  output [0:0]s_phi2_reg_reg_2;
  output [0:0]s_phi2_reg_reg_3;
  input \s_micro_pc_reg_rep[8] ;
  input [2:0]s_state;
  input [0:0]Q;
  input s_compute_done;
  input [0:0]\s_acc_out_sr_reg[19] ;
  input [0:0]\s_tmp_out_sr_reg[19] ;
  input s_tmp_we_lat;
  input s_busy_reg;
  input s_pdu_busy;
  input [14:0]\s_const_sr_reg[14] ;
  input i_rst;
  input i_clk_master;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_s_phase_cnt_reg[3]_0 ;
  wire \FSM_onehot_s_phase_cnt_reg_n_0_[1] ;
  wire \FSM_onehot_s_phase_cnt_reg_n_0_[2] ;
  wire [0:0]Q;
  wire i_clk_master;
  wire i_rst;
  wire o_phi2;
  wire o_t0;
  wire o_t18;
  wire o_t19;
  wire o_word_type;
  wire [0:0]\s_acc_out_sr_reg[19] ;
  wire s_acc_reg15_out;
  wire [0:0]\s_acc_reg_reg[19] ;
  wire s_bit_clk;
  wire [0:0]s_bit_cnt;
  wire \s_bit_cnt[0]_i_1_n_0 ;
  wire \s_bit_cnt[1]_i_1_n_0 ;
  wire \s_bit_cnt[2]_i_1_n_0 ;
  wire \s_bit_cnt[3]_i_1_n_0 ;
  wire \s_bit_cnt[4]_i_1_n_0 ;
  wire \s_bit_cnt_reg_n_0_[0] ;
  wire \s_bit_cnt_reg_n_0_[1] ;
  wire \s_bit_cnt_reg_n_0_[2] ;
  wire \s_bit_cnt_reg_n_0_[3] ;
  wire \s_bit_cnt_reg_n_0_[4] ;
  wire s_busy_reg;
  wire s_compute_done;
  wire [14:0]\s_const_sr_reg[14] ;
  wire s_frame_mark;
  wire \s_micro_pc_reg_rep[8] ;
  wire \s_micro_pc_rep_rep[8]_i_4_n_0 ;
  wire [0:0]s_op_cnt;
  wire \s_op_cnt[8]_i_3_n_0 ;
  wire \s_op_cnt[8]_i_4_n_0 ;
  wire [8:0]s_op_cnt__0;
  wire \s_op_cnt_reg_n_0_[0] ;
  wire \s_op_cnt_reg_n_0_[1] ;
  wire \s_op_cnt_reg_n_0_[2] ;
  wire \s_op_cnt_reg_n_0_[3] ;
  wire \s_op_cnt_reg_n_0_[4] ;
  wire \s_op_cnt_reg_n_0_[5] ;
  wire \s_op_cnt_reg_n_0_[6] ;
  wire \s_op_cnt_reg_n_0_[7] ;
  wire \s_op_cnt_reg_n_0_[8] ;
  wire s_pdu_busy;
  wire s_phi2_reg_reg_0;
  wire s_phi2_reg_reg_1;
  wire [0:0]s_phi2_reg_reg_2;
  wire [0:0]s_phi2_reg_reg_3;
  wire [2:0]s_state;
  wire s_t0_reg_i_1_n_0;
  wire [0:0]s_t0_reg_reg_0;
  wire [0:0]s_t0_reg_reg_1;
  wire [0:0]s_t0_reg_reg_2;
  wire s_t18_reg_i_1_n_0;
  wire [0:0]s_t18_reg_reg_0;
  wire s_t19_reg;
  wire [0:0]\s_tmp_out_sr_reg[19] ;
  wire [0:0]\s_tmp_reg_reg[19] ;
  wire s_tmp_we_lat;
  wire s_word_sel_i_1_n_0;
  wire s_word_sel_reg_n_0;
  wire s_word_type_reg_reg_0;
  wire [0:0]s_word_type_reg_reg_1;
  wire s_word_type_reg_reg_2;
  wire [14:0]s_word_type_reg_reg_3;

  (* FSM_ENCODED_STATES = "\"00\":0001,\"01\":0010,\"10\":0100,\"11\":1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_s_phase_cnt_reg[0] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_bit_cnt),
        .Q(s_bit_clk),
        .S(i_rst));
  (* FSM_ENCODED_STATES = "\"00\":0001,\"01\":0010,\"10\":0100,\"11\":1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_phase_cnt_reg[1] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_bit_clk),
        .Q(\FSM_onehot_s_phase_cnt_reg_n_0_[1] ),
        .R(i_rst));
  (* FSM_ENCODED_STATES = "\"00\":0001,\"01\":0010,\"10\":0100,\"11\":1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_phase_cnt_reg[2] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\FSM_onehot_s_phase_cnt_reg_n_0_[1] ),
        .Q(\FSM_onehot_s_phase_cnt_reg_n_0_[2] ),
        .R(i_rst));
  (* FSM_ENCODED_STATES = "\"00\":0001,\"01\":0010,\"10\":0100,\"11\":1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_s_phase_cnt_reg[3] 
       (.C(i_clk_master),
        .CE(1'b1),
        .D(\FSM_onehot_s_phase_cnt_reg_n_0_[2] ),
        .Q(s_bit_cnt),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hFC04)) 
    \FSM_onehot_s_state[1]_i_1 
       (.I0(o_phi2),
        .I1(s_state[1]),
        .I2(s_word_type_reg_reg_0),
        .I3(s_state[0]),
        .O(s_phi2_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hCFC8)) 
    \FSM_onehot_s_state[2]_i_1 
       (.I0(o_phi2),
        .I1(s_state[1]),
        .I2(s_word_type_reg_reg_0),
        .I3(s_state[2]),
        .O(s_phi2_reg_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \FSM_onehot_s_state[2]_i_2 
       (.I0(o_word_type),
        .I1(o_phi2),
        .I2(s_state[0]),
        .I3(o_t0),
        .I4(s_busy_reg),
        .I5(s_state[2]),
        .O(s_word_type_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    \s_acc_out_sr[19]_i_1 
       (.I0(o_t0),
        .I1(o_word_type),
        .I2(o_phi2),
        .I3(s_compute_done),
        .O(s_t0_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_acc_out_sr[19]_i_2 
       (.I0(\s_acc_out_sr_reg[19] ),
        .I1(o_phi2),
        .I2(o_word_type),
        .O(\s_acc_reg_reg[19] ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_bit_cnt[0]_i_1 
       (.I0(\s_bit_cnt_reg_n_0_[0] ),
        .O(\s_bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_bit_cnt[1]_i_1 
       (.I0(\s_bit_cnt_reg_n_0_[1] ),
        .I1(\s_bit_cnt_reg_n_0_[0] ),
        .O(\s_bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h77778808)) 
    \s_bit_cnt[2]_i_1 
       (.I0(\s_bit_cnt_reg_n_0_[0] ),
        .I1(\s_bit_cnt_reg_n_0_[1] ),
        .I2(\s_bit_cnt_reg_n_0_[4] ),
        .I3(\s_bit_cnt_reg_n_0_[3] ),
        .I4(\s_bit_cnt_reg_n_0_[2] ),
        .O(\s_bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_bit_cnt[3]_i_1 
       (.I0(\s_bit_cnt_reg_n_0_[2] ),
        .I1(\s_bit_cnt_reg_n_0_[0] ),
        .I2(\s_bit_cnt_reg_n_0_[1] ),
        .I3(\s_bit_cnt_reg_n_0_[3] ),
        .O(\s_bit_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h68AAAAAA)) 
    \s_bit_cnt[4]_i_1 
       (.I0(\s_bit_cnt_reg_n_0_[4] ),
        .I1(\s_bit_cnt_reg_n_0_[3] ),
        .I2(\s_bit_cnt_reg_n_0_[2] ),
        .I3(\s_bit_cnt_reg_n_0_[0] ),
        .I4(\s_bit_cnt_reg_n_0_[1] ),
        .O(\s_bit_cnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bit_cnt_reg[0] 
       (.C(i_clk_master),
        .CE(s_bit_cnt),
        .D(\s_bit_cnt[0]_i_1_n_0 ),
        .Q(\s_bit_cnt_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_bit_cnt_reg[1] 
       (.C(i_clk_master),
        .CE(s_bit_cnt),
        .D(\s_bit_cnt[1]_i_1_n_0 ),
        .Q(\s_bit_cnt_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_bit_cnt_reg[2] 
       (.C(i_clk_master),
        .CE(s_bit_cnt),
        .D(\s_bit_cnt[2]_i_1_n_0 ),
        .Q(\s_bit_cnt_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_bit_cnt_reg[3] 
       (.C(i_clk_master),
        .CE(s_bit_cnt),
        .D(\s_bit_cnt[3]_i_1_n_0 ),
        .Q(\s_bit_cnt_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_bit_cnt_reg[4] 
       (.C(i_clk_master),
        .CE(s_bit_cnt),
        .D(\s_bit_cnt[4]_i_1_n_0 ),
        .Q(\s_bit_cnt_reg_n_0_[4] ),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    s_busy_i_1
       (.I0(o_word_type),
        .I1(o_phi2),
        .I2(s_state[0]),
        .I3(o_t0),
        .I4(s_word_type_reg_reg_0),
        .I5(s_pdu_busy),
        .O(s_word_type_reg_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_compute_done_i_1
       (.I0(o_word_type),
        .I1(o_phi2),
        .I2(o_t18),
        .O(s_acc_reg15_out));
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[0]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [0]),
        .O(s_word_type_reg_reg_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[10]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [10]),
        .O(s_word_type_reg_reg_3[10]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[11]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [11]),
        .O(s_word_type_reg_reg_3[11]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[12]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [12]),
        .O(s_word_type_reg_reg_3[12]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[13]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [13]),
        .O(s_word_type_reg_reg_3[13]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[14]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [14]),
        .O(s_word_type_reg_reg_3[14]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \s_const_sr[17]_i_1 
       (.I0(o_t0),
        .I1(o_phi2),
        .I2(o_t19),
        .I3(o_word_type),
        .O(s_t0_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[1]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [1]),
        .O(s_word_type_reg_reg_3[1]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[2]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [2]),
        .O(s_word_type_reg_reg_3[2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[3]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [3]),
        .O(s_word_type_reg_reg_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[4]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [4]),
        .O(s_word_type_reg_reg_3[4]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[5]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [5]),
        .O(s_word_type_reg_reg_3[5]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[6]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [6]),
        .O(s_word_type_reg_reg_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[7]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [7]),
        .O(s_word_type_reg_reg_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[8]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [8]),
        .O(s_word_type_reg_reg_3[8]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_const_sr[9]_i_1 
       (.I0(o_word_type),
        .I1(\s_const_sr_reg[14] [9]),
        .O(s_word_type_reg_reg_3[9]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hC004)) 
    \s_cw_sr[43]_i_1 
       (.I0(o_t0),
        .I1(o_phi2),
        .I2(o_t19),
        .I3(o_word_type),
        .O(s_t0_reg_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_divisor_lat[19]_i_1 
       (.I0(o_word_type),
        .I1(o_phi2),
        .I2(o_t19),
        .O(s_word_type_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_input_sr[19]_i_1 
       (.I0(o_word_type),
        .I1(o_phi2),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \s_io_in_sr[19]_i_1 
       (.I0(o_t0),
        .I1(Q),
        .O(D));
  LUT2 #(
    .INIT(4'h1)) 
    \s_micro_pc_rep_rep[8]_i_1 
       (.I0(s_frame_mark),
        .I1(\s_micro_pc_reg_rep[8] ),
        .O(\FSM_onehot_s_phase_cnt_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \s_micro_pc_rep_rep[8]_i_2 
       (.I0(s_t19_reg),
        .I1(s_bit_cnt),
        .I2(s_word_sel_reg_n_0),
        .I3(\s_op_cnt_reg_n_0_[8] ),
        .I4(\s_micro_pc_rep_rep[8]_i_4_n_0 ),
        .O(s_frame_mark));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \s_micro_pc_rep_rep[8]_i_4 
       (.I0(\s_op_cnt_reg_n_0_[6] ),
        .I1(\s_op_cnt[8]_i_4_n_0 ),
        .I2(\s_op_cnt_reg_n_0_[7] ),
        .O(\s_micro_pc_rep_rep[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \s_mplier_lat[19]_i_1 
       (.I0(o_phi2),
        .I1(o_t19),
        .I2(o_word_type),
        .O(s_phi2_reg_reg_2));
  LUT1 #(
    .INIT(2'h1)) 
    \s_op_cnt[0]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[0] ),
        .O(s_op_cnt__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_op_cnt[1]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[0] ),
        .I1(\s_op_cnt_reg_n_0_[1] ),
        .O(s_op_cnt__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_op_cnt[2]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[1] ),
        .I1(\s_op_cnt_reg_n_0_[0] ),
        .I2(\s_op_cnt_reg_n_0_[2] ),
        .O(s_op_cnt__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_op_cnt[3]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[2] ),
        .I1(\s_op_cnt_reg_n_0_[0] ),
        .I2(\s_op_cnt_reg_n_0_[1] ),
        .I3(\s_op_cnt_reg_n_0_[3] ),
        .O(s_op_cnt__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \s_op_cnt[4]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[3] ),
        .I1(\s_op_cnt_reg_n_0_[1] ),
        .I2(\s_op_cnt_reg_n_0_[0] ),
        .I3(\s_op_cnt_reg_n_0_[2] ),
        .I4(\s_op_cnt_reg_n_0_[4] ),
        .O(s_op_cnt__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \s_op_cnt[5]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[4] ),
        .I1(\s_op_cnt_reg_n_0_[2] ),
        .I2(\s_op_cnt_reg_n_0_[0] ),
        .I3(\s_op_cnt_reg_n_0_[1] ),
        .I4(\s_op_cnt_reg_n_0_[3] ),
        .I5(\s_op_cnt_reg_n_0_[5] ),
        .O(s_op_cnt__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \s_op_cnt[6]_i_1 
       (.I0(\s_op_cnt[8]_i_4_n_0 ),
        .I1(\s_op_cnt_reg_n_0_[6] ),
        .O(s_op_cnt__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \s_op_cnt[7]_i_1 
       (.I0(\s_op_cnt_reg_n_0_[6] ),
        .I1(\s_op_cnt[8]_i_4_n_0 ),
        .I2(\s_op_cnt_reg_n_0_[7] ),
        .O(s_op_cnt__0[7]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \s_op_cnt[8]_i_1 
       (.I0(s_bit_cnt),
        .I1(s_word_sel_reg_n_0),
        .I2(\s_op_cnt[8]_i_3_n_0 ),
        .I3(\s_bit_cnt_reg_n_0_[4] ),
        .I4(\s_bit_cnt_reg_n_0_[3] ),
        .I5(\s_bit_cnt_reg_n_0_[2] ),
        .O(s_op_cnt));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \s_op_cnt[8]_i_2 
       (.I0(\s_op_cnt_reg_n_0_[7] ),
        .I1(\s_op_cnt[8]_i_4_n_0 ),
        .I2(\s_op_cnt_reg_n_0_[6] ),
        .I3(\s_op_cnt_reg_n_0_[8] ),
        .O(s_op_cnt__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_op_cnt[8]_i_3 
       (.I0(\s_bit_cnt_reg_n_0_[0] ),
        .I1(\s_bit_cnt_reg_n_0_[1] ),
        .O(\s_op_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \s_op_cnt[8]_i_4 
       (.I0(\s_op_cnt_reg_n_0_[4] ),
        .I1(\s_op_cnt_reg_n_0_[2] ),
        .I2(\s_op_cnt_reg_n_0_[0] ),
        .I3(\s_op_cnt_reg_n_0_[1] ),
        .I4(\s_op_cnt_reg_n_0_[3] ),
        .I5(\s_op_cnt_reg_n_0_[5] ),
        .O(\s_op_cnt[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[0] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[0]),
        .Q(\s_op_cnt_reg_n_0_[0] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[1] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[1]),
        .Q(\s_op_cnt_reg_n_0_[1] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[2] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[2]),
        .Q(\s_op_cnt_reg_n_0_[2] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[3] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[3]),
        .Q(\s_op_cnt_reg_n_0_[3] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[4] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[4]),
        .Q(\s_op_cnt_reg_n_0_[4] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[5] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[5]),
        .Q(\s_op_cnt_reg_n_0_[5] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[6] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[6]),
        .Q(\s_op_cnt_reg_n_0_[6] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[7] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[7]),
        .Q(\s_op_cnt_reg_n_0_[7] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_op_cnt_reg[8] 
       (.C(i_clk_master),
        .CE(s_op_cnt),
        .D(s_op_cnt__0[8]),
        .Q(\s_op_cnt_reg_n_0_[8] ),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    s_phi2_reg_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_bit_cnt),
        .Q(o_phi2),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s_product_sr[19]_i_1 
       (.I0(o_phi2),
        .I1(o_t0),
        .I2(o_word_type),
        .O(s_phi2_reg_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    s_t0_reg_i_1
       (.I0(\s_bit_cnt_reg_n_0_[0] ),
        .I1(\s_bit_cnt_reg_n_0_[1] ),
        .I2(\s_bit_cnt_reg_n_0_[2] ),
        .I3(\s_bit_cnt_reg_n_0_[4] ),
        .I4(\s_bit_cnt_reg_n_0_[3] ),
        .O(s_t0_reg_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    s_t0_reg_reg
       (.C(i_clk_master),
        .CE(\FSM_onehot_s_phase_cnt_reg_n_0_[2] ),
        .D(s_t0_reg_i_1_n_0),
        .Q(o_t0),
        .S(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    s_t18_reg_i_1
       (.I0(\s_bit_cnt_reg_n_0_[0] ),
        .I1(\s_bit_cnt_reg_n_0_[1] ),
        .I2(\s_bit_cnt_reg_n_0_[2] ),
        .I3(\s_bit_cnt_reg_n_0_[3] ),
        .I4(\s_bit_cnt_reg_n_0_[4] ),
        .O(s_t18_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_t18_reg_reg
       (.C(i_clk_master),
        .CE(\FSM_onehot_s_phase_cnt_reg_n_0_[2] ),
        .D(s_t18_reg_i_1_n_0),
        .Q(o_t18),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    s_t19_reg_i_1
       (.I0(\s_bit_cnt_reg_n_0_[2] ),
        .I1(\s_bit_cnt_reg_n_0_[3] ),
        .I2(\s_bit_cnt_reg_n_0_[4] ),
        .I3(\s_bit_cnt_reg_n_0_[1] ),
        .I4(\s_bit_cnt_reg_n_0_[0] ),
        .O(s_t19_reg));
  FDRE #(
    .INIT(1'b0)) 
    s_t19_reg_reg
       (.C(i_clk_master),
        .CE(\FSM_onehot_s_phase_cnt_reg_n_0_[2] ),
        .D(s_t19_reg),
        .Q(o_t19),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_tmp_out_sr[19]_i_1 
       (.I0(\s_tmp_out_sr_reg[19] ),
        .I1(o_phi2),
        .I2(o_word_type),
        .O(\s_tmp_reg_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_tmp_reg[19]_i_1 
       (.I0(o_t18),
        .I1(o_phi2),
        .I2(o_word_type),
        .I3(s_tmp_we_lat),
        .O(s_t18_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000200)) 
    s_word_sel_i_1
       (.I0(s_bit_cnt),
        .I1(\s_bit_cnt_reg_n_0_[2] ),
        .I2(\s_bit_cnt_reg_n_0_[3] ),
        .I3(\s_bit_cnt_reg_n_0_[4] ),
        .I4(\s_op_cnt[8]_i_3_n_0 ),
        .I5(s_word_sel_reg_n_0),
        .O(s_word_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_word_sel_reg
       (.C(i_clk_master),
        .CE(1'b1),
        .D(s_word_sel_i_1_n_0),
        .Q(s_word_sel_reg_n_0),
        .R(i_rst));
  FDRE #(
    .INIT(1'b0)) 
    s_word_type_reg_reg
       (.C(i_clk_master),
        .CE(\FSM_onehot_s_phase_cnt_reg_n_0_[2] ),
        .D(s_word_sel_reg_n_0),
        .Q(o_word_type),
        .R(i_rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
