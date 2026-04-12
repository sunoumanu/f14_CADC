// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Apr 12 13:01:22 2026
// Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_uart_0_0/cadc_system_uart_0_0_sim_netlist.v
// Design      : cadc_system_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cadc_system_uart_0_0,uart,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module cadc_system_uart_0_0
   (clk,
    reset,
    rx,
    tx,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tvalid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_mode = "slave reset" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input rx;
  output tx;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* x_interface_mode = "master m_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* x_interface_mode = "slave s_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;

  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire reset;
  wire rx;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tx;

  cadc_system_uart_0_0_uart U0
       (.\FSM_onehot_current_state_reg[0]_0 (s_axis_tready),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .reset(reset),
        .rx(rx),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "uart" *) 
module cadc_system_uart_0_0_uart
   (\FSM_onehot_current_state_reg[0]_0 ,
    tx,
    m_axis_tdata,
    m_axis_tvalid,
    clk,
    m_axis_tready,
    s_axis_tdata,
    rx,
    s_axis_tvalid,
    reset);
  output \FSM_onehot_current_state_reg[0]_0 ;
  output tx;
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  input clk;
  input m_axis_tready;
  input [7:0]s_axis_tdata;
  input rx;
  input s_axis_tvalid;
  input reset;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[0]_i_3_n_0 ;
  wire \FSM_onehot_current_state[0]_i_4_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_4_n_0 ;
  wire [7:0]a;
  wire [9:0]baud_counter;
  wire \baud_counter[0]_i_1_n_0 ;
  wire \baud_counter[1]_i_1_n_0 ;
  wire \baud_counter[2]_i_1_n_0 ;
  wire \baud_counter[3]_i_1_n_0 ;
  wire \baud_counter[4]_i_1_n_0 ;
  wire \baud_counter[5]_i_1_n_0 ;
  wire \baud_counter[6]_i_1_n_0 ;
  wire \baud_counter[6]_i_2_n_0 ;
  wire \baud_counter[7]_i_1_n_0 ;
  wire \baud_counter[8]_i_1_n_0 ;
  wire \baud_counter[8]_i_2_n_0 ;
  wire \baud_counter[9]_i_1_n_0 ;
  wire \baud_counter[9]_i_2_n_0 ;
  wire \baud_counter[9]_i_3_n_0 ;
  wire \baud_counter[9]_i_4_n_0 ;
  wire baud_en1_out;
  wire baud_en_reg_n_0;
  wire [9:0]bit_count;
  wire \bit_count[7]_i_2_n_0 ;
  wire \bit_count[9]_i_3_n_0 ;
  wire \bit_count[9]_i_4_n_0 ;
  wire [0:0]bit_count_1;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire \bit_count_reg_n_0_[4] ;
  wire \bit_count_reg_n_0_[5] ;
  wire \bit_count_reg_n_0_[6] ;
  wire \bit_count_reg_n_0_[7] ;
  wire \bit_count_reg_n_0_[8] ;
  wire \bit_count_reg_n_0_[9] ;
  wire [7:0]capture;
  wire \capture[7]_i_3_n_0 ;
  wire \capture[7]_i_4_n_0 ;
  wire [0:0]capture_0;
  wire \capture_reg_n_0_[0] ;
  wire \capture_reg_n_0_[1] ;
  wire \capture_reg_n_0_[2] ;
  wire \capture_reg_n_0_[3] ;
  wire \capture_reg_n_0_[4] ;
  wire \capture_reg_n_0_[5] ;
  wire \capture_reg_n_0_[6] ;
  wire \capture_reg_n_0_[7] ;
  wire clk;
  wire load_tx_i_1_n_0;
  wire load_tx_reg_n_0;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire \meta_reg_reg_n_0_[0] ;
  wire \meta_reg_reg_n_0_[1] ;
  wire \meta_reg_reg_n_0_[2] ;
  wire [7:7]p_0_in;
  wire [0:0]pos_count;
  wire \pos_count[0]_i_1_n_0 ;
  wire \pos_count[1]_i_1_n_0 ;
  wire \pos_count[2]_i_1_n_0 ;
  wire \pos_count[3]_i_2_n_0 ;
  wire \pos_count[3]_i_3_n_0 ;
  wire \pos_count_reg_n_0_[0] ;
  wire \pos_count_reg_n_0_[1] ;
  wire \pos_count_reg_n_0_[2] ;
  wire \pos_count_reg_n_0_[3] ;
  wire reset;
  wire rx;
  wire [2:0]rx_state;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [0:0]tmr_reg;
  wire \tmr_reg[10]_i_1_n_0 ;
  wire \tmr_reg[11]_i_1_n_0 ;
  wire \tmr_reg[1]_i_1_n_0 ;
  wire \tmr_reg[2]_i_1_n_0 ;
  wire \tmr_reg[3]_i_1_n_0 ;
  wire \tmr_reg[4]_i_1_n_0 ;
  wire \tmr_reg[5]_i_1_n_0 ;
  wire \tmr_reg[6]_i_1_n_0 ;
  wire \tmr_reg[7]_i_1_n_0 ;
  wire \tmr_reg[8]_i_1_n_0 ;
  wire \tmr_reg[9]_i_1_n_0 ;
  wire \tmr_reg_reg_n_0_[0] ;
  wire \tmr_reg_reg_n_0_[10] ;
  wire \tmr_reg_reg_n_0_[11] ;
  wire \tmr_reg_reg_n_0_[1] ;
  wire \tmr_reg_reg_n_0_[2] ;
  wire \tmr_reg_reg_n_0_[3] ;
  wire \tmr_reg_reg_n_0_[4] ;
  wire \tmr_reg_reg_n_0_[5] ;
  wire \tmr_reg_reg_n_0_[6] ;
  wire \tmr_reg_reg_n_0_[7] ;
  wire \tmr_reg_reg_n_0_[8] ;
  wire \tmr_reg_reg_n_0_[9] ;
  wire tx;
  wire \tx_reg[0]_i_2_n_0 ;
  wire \tx_reg[0]_i_3_n_0 ;
  wire \tx_reg[10]_i_1_n_0 ;
  wire \tx_reg[1]_i_1_n_0 ;
  wire \tx_reg[2]_i_1_n_0 ;
  wire \tx_reg[3]_i_1_n_0 ;
  wire \tx_reg[4]_i_1_n_0 ;
  wire \tx_reg[5]_i_1_n_0 ;
  wire \tx_reg[6]_i_1_n_0 ;
  wire \tx_reg[7]_i_1_n_0 ;
  wire \tx_reg[8]_i_1_n_0 ;
  wire \tx_reg[9]_i_1_n_0 ;
  wire \tx_reg[9]_i_2_n_0 ;
  wire \tx_reg[9]_i_3_n_0 ;
  wire \tx_reg_reg_n_0_[10] ;
  wire \tx_reg_reg_n_0_[11] ;
  wire \tx_reg_reg_n_0_[1] ;
  wire \tx_reg_reg_n_0_[2] ;
  wire \tx_reg_reg_n_0_[3] ;
  wire \tx_reg_reg_n_0_[4] ;
  wire \tx_reg_reg_n_0_[5] ;
  wire \tx_reg_reg_n_0_[6] ;
  wire \tx_reg_reg_n_0_[7] ;
  wire \tx_reg_reg_n_0_[8] ;
  wire \tx_reg_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg[0]_0 ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg[0]_0 ),
        .I2(s_axis_tvalid),
        .I3(\FSM_onehot_current_state[0]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state[0]_i_4_n_0 ),
        .I5(\tmr_reg_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_current_state[0]_i_3 
       (.I0(\tmr_reg_reg_n_0_[3] ),
        .I1(\tmr_reg_reg_n_0_[4] ),
        .I2(\tmr_reg_reg_n_0_[1] ),
        .I3(\tmr_reg_reg_n_0_[2] ),
        .I4(\tmr_reg_reg_n_0_[6] ),
        .I5(\tmr_reg_reg_n_0_[5] ),
        .O(\FSM_onehot_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_current_state[0]_i_4 
       (.I0(\tmr_reg_reg_n_0_[9] ),
        .I1(\tmr_reg_reg_n_0_[10] ),
        .I2(\tmr_reg_reg_n_0_[7] ),
        .I3(\tmr_reg_reg_n_0_[8] ),
        .I4(\tmr_reg_reg_n_0_[11] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,set_tx:010,wait_tx:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\FSM_onehot_current_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,set_tx:010,wait_tx:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,set_tx:010,wait_tx:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000FFFF04550000)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(rx_state[2]),
        .I1(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I3(rx_state[1]),
        .I4(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(\pos_count_reg_n_0_[3] ),
        .I1(\pos_count_reg_n_0_[2] ),
        .I2(\pos_count_reg_n_0_[1] ),
        .I3(\pos_count_reg_n_0_[0] ),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFBB0000)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_rx_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_rx_state[2]_i_3_n_0 ),
        .I5(\FSM_sequential_rx_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_rx_state[0]_i_4 
       (.I0(\bit_count_reg_n_0_[6] ),
        .I1(\bit_count_reg_n_0_[9] ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[4] ),
        .O(\FSM_sequential_rx_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_rx_state[0]_i_5 
       (.I0(rx_state[1]),
        .I1(m_axis_tready),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .O(\FSM_sequential_rx_state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h333F0080)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[2]_i_3_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33C033C070007300)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[2]_i_3_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(m_axis_tready),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[3] ),
        .I2(\bit_count_reg_n_0_[9] ),
        .I3(\bit_count_reg_n_0_[6] ),
        .I4(\FSM_sequential_rx_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55554544)) 
    \FSM_sequential_rx_state[2]_i_3 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(\meta_reg_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FSM_sequential_rx_state[2]_i_4 
       (.I0(\bit_count_reg_n_0_[8] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[7] ),
        .I3(\bit_count_reg_n_0_[5] ),
        .I4(\bit_count_reg_n_0_[0] ),
        .I5(\bit_count_reg_n_0_[1] ),
        .O(\FSM_sequential_rx_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,start:001,wait_axis:100,sample:010,check:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]));
  (* FSM_ENCODED_STATES = "idle:000,start:001,wait_axis:100,sample:010,check:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]));
  (* FSM_ENCODED_STATES = "idle:000,start:001,wait_axis:100,sample:010,check:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \baud_counter[0]_i_1 
       (.I0(baud_counter[0]),
        .I1(load_tx_reg_n_0),
        .O(\baud_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \baud_counter[1]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[1]),
        .I3(baud_counter[0]),
        .O(\baud_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \baud_counter[2]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[2]),
        .I3(baud_counter[0]),
        .I4(baud_counter[1]),
        .O(\baud_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \baud_counter[3]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[3]),
        .I3(baud_counter[2]),
        .I4(baud_counter[1]),
        .I5(baud_counter[0]),
        .O(\baud_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404004404040)) 
    \baud_counter[4]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[4]),
        .I3(baud_counter[3]),
        .I4(baud_counter[2]),
        .I5(\baud_counter[6]_i_2_n_0 ),
        .O(\baud_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \baud_counter[5]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[5]),
        .I3(\baud_counter[9]_i_3_n_0 ),
        .I4(baud_counter[1]),
        .I5(baud_counter[0]),
        .O(\baud_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404004404040)) 
    \baud_counter[6]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[6]),
        .I3(\baud_counter[9]_i_3_n_0 ),
        .I4(baud_counter[5]),
        .I5(\baud_counter[6]_i_2_n_0 ),
        .O(\baud_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \baud_counter[6]_i_2 
       (.I0(baud_counter[0]),
        .I1(baud_counter[1]),
        .O(\baud_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40400440)) 
    \baud_counter[7]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[7]),
        .I3(\baud_counter[9]_i_3_n_0 ),
        .I4(\baud_counter[8]_i_2_n_0 ),
        .O(\baud_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404004404040)) 
    \baud_counter[8]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[8]),
        .I3(baud_counter[7]),
        .I4(\baud_counter[9]_i_3_n_0 ),
        .I5(\baud_counter[8]_i_2_n_0 ),
        .O(\baud_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \baud_counter[8]_i_2 
       (.I0(baud_counter[5]),
        .I1(baud_counter[0]),
        .I2(baud_counter[1]),
        .I3(baud_counter[6]),
        .O(\baud_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040404004404040)) 
    \baud_counter[9]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\baud_counter[9]_i_2_n_0 ),
        .I2(baud_counter[9]),
        .I3(baud_counter[7]),
        .I4(\baud_counter[9]_i_3_n_0 ),
        .I5(\baud_counter[9]_i_4_n_0 ),
        .O(\baud_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \baud_counter[9]_i_2 
       (.I0(baud_counter[3]),
        .I1(baud_counter[4]),
        .I2(baud_counter[9]),
        .I3(baud_counter[7]),
        .I4(baud_counter[2]),
        .I5(\baud_counter[9]_i_4_n_0 ),
        .O(\baud_counter[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \baud_counter[9]_i_3 
       (.I0(baud_counter[3]),
        .I1(baud_counter[2]),
        .I2(baud_counter[4]),
        .O(\baud_counter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \baud_counter[9]_i_4 
       (.I0(baud_counter[6]),
        .I1(baud_counter[1]),
        .I2(baud_counter[0]),
        .I3(baud_counter[5]),
        .I4(baud_counter[8]),
        .O(\baud_counter[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[0]_i_1_n_0 ),
        .Q(baud_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[1]_i_1_n_0 ),
        .Q(baud_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[2]_i_1_n_0 ),
        .Q(baud_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[3]_i_1_n_0 ),
        .Q(baud_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[4]_i_1_n_0 ),
        .Q(baud_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[5]_i_1_n_0 ),
        .Q(baud_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[6]_i_1_n_0 ),
        .Q(baud_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[7]_i_1_n_0 ),
        .Q(baud_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[8]_i_1_n_0 ),
        .Q(baud_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \baud_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\baud_counter[9]_i_1_n_0 ),
        .Q(baud_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    baud_en_i_1
       (.I0(\baud_counter[9]_i_2_n_0 ),
        .I1(load_tx_reg_n_0),
        .O(baud_en1_out));
  FDCE #(
    .INIT(1'b0)) 
    baud_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(baud_en1_out),
        .Q(baud_en_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_count[0]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[0] ),
        .O(bit_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .O(bit_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .O(bit_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bit_count[3]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(bit_count[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \bit_count[4]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .I5(\bit_count_reg_n_0_[4] ),
        .O(bit_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \bit_count[5]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count[7]_i_2_n_0 ),
        .I2(\bit_count_reg_n_0_[4] ),
        .I3(\bit_count_reg_n_0_[5] ),
        .O(bit_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \bit_count[6]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[4] ),
        .I2(\bit_count_reg_n_0_[5] ),
        .I3(\bit_count[7]_i_2_n_0 ),
        .I4(\bit_count_reg_n_0_[6] ),
        .O(bit_count[6]));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \bit_count[7]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count[7]_i_2_n_0 ),
        .I2(\bit_count_reg_n_0_[5] ),
        .I3(\bit_count_reg_n_0_[4] ),
        .I4(\bit_count_reg_n_0_[6] ),
        .I5(\bit_count_reg_n_0_[7] ),
        .O(bit_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bit_count[7]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \bit_count[8]_i_1 
       (.I0(\bit_count[9]_i_4_n_0 ),
        .I1(\bit_count_reg_n_0_[7] ),
        .I2(\bit_count_reg_n_0_[6] ),
        .I3(\bit_count[9]_i_3_n_0 ),
        .I4(\bit_count_reg_n_0_[8] ),
        .O(bit_count[8]));
  LUT5 #(
    .INIT(32'h000F0F02)) 
    \bit_count[9]_i_1 
       (.I0(p_0_in),
        .I1(\meta_reg_reg_n_0_[2] ),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(bit_count_1));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \bit_count[9]_i_2 
       (.I0(\bit_count[9]_i_3_n_0 ),
        .I1(\bit_count_reg_n_0_[6] ),
        .I2(\bit_count_reg_n_0_[7] ),
        .I3(\bit_count_reg_n_0_[8] ),
        .I4(\bit_count_reg_n_0_[9] ),
        .I5(\bit_count[9]_i_4_n_0 ),
        .O(bit_count[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bit_count[9]_i_3 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[5] ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[0] ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5055555540444044)) 
    \bit_count[9]_i_4 
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_rx_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I5(rx_state[1]),
        .O(\bit_count[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[0]),
        .Q(\bit_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[1]),
        .Q(\bit_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[2]),
        .Q(\bit_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[3]),
        .Q(\bit_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[4]),
        .Q(\bit_count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[5] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[5]),
        .Q(\bit_count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[6] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[6]),
        .Q(\bit_count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[7] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[7]),
        .Q(\bit_count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[8] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[8]),
        .Q(\bit_count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_count_reg[9] 
       (.C(clk),
        .CE(bit_count_1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(bit_count[9]),
        .Q(\bit_count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[0]_i_1 
       (.I0(\capture_reg_n_0_[1] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[1]_i_1 
       (.I0(\capture_reg_n_0_[2] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[2]_i_1 
       (.I0(\capture_reg_n_0_[3] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[3]_i_1 
       (.I0(\capture_reg_n_0_[4] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[4]_i_1 
       (.I0(\capture_reg_n_0_[5] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[5]_i_1 
       (.I0(\capture_reg_n_0_[6] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[6]_i_1 
       (.I0(\capture_reg_n_0_[7] ),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[6]));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \capture[7]_i_1 
       (.I0(\pos_count[3]_i_3_n_0 ),
        .I1(\bit_count_reg_n_0_[9] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[6] ),
        .I4(\capture[7]_i_3_n_0 ),
        .I5(rx_state[1]),
        .O(capture_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \capture[7]_i_2 
       (.I0(p_0_in),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .O(capture[7]));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \capture[7]_i_3 
       (.I0(\bit_count_reg_n_0_[5] ),
        .I1(\bit_count_reg_n_0_[4] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[8] ),
        .I4(\capture[7]_i_4_n_0 ),
        .O(\capture[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \capture[7]_i_4 
       (.I0(\bit_count_reg_n_0_[3] ),
        .I1(\pos_count_reg_n_0_[3] ),
        .I2(\bit_count_reg_n_0_[7] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .O(\capture[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[0] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[0]),
        .Q(\capture_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[1] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[1]),
        .Q(\capture_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[2] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[2]),
        .Q(\capture_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[3] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[3]),
        .Q(\capture_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[4] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[4]),
        .Q(\capture_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[5] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[5]),
        .Q(\capture_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[6] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[6]),
        .Q(\capture_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \capture_reg[7] 
       (.C(clk),
        .CE(capture_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(capture[7]),
        .Q(\capture_reg_n_0_[7] ));
  LUT2 #(
    .INIT(4'h8)) 
    load_tx_i_1
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(s_axis_tvalid),
        .O(load_tx_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    load_tx_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(load_tx_i_1_n_0),
        .Q(load_tx_reg_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \m_axis_tdata[7]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  FDCE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[0] ),
        .Q(m_axis_tdata[0]));
  FDCE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[1] ),
        .Q(m_axis_tdata[1]));
  FDCE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[2] ),
        .Q(m_axis_tdata[2]));
  FDCE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[3] ),
        .Q(m_axis_tdata[3]));
  FDCE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[4] ),
        .Q(m_axis_tdata[4]));
  FDCE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[5] ),
        .Q(m_axis_tdata[5]));
  FDCE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[6] ),
        .Q(m_axis_tdata[6]));
  FDCE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\capture_reg_n_0_[7] ),
        .Q(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFBFA00A0)) 
    m_axis_tvalid_i_1
       (.I0(rx_state[0]),
        .I1(m_axis_tready),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(m_axis_tvalid),
        .O(m_axis_tvalid_i_1_n_0));
  FDCE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid));
  FDPE #(
    .INIT(1'b0)) 
    \meta_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\meta_reg_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b0)) 
    \meta_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\meta_reg_reg_n_0_[0] ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\meta_reg_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b0)) 
    \meta_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\meta_reg_reg_n_0_[1] ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\meta_reg_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b0)) 
    \meta_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\meta_reg_reg_n_0_[2] ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[0] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(a[0]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[1] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(a[1]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[2] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(a[2]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[3] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(a[3]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[4] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(a[4]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[5] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(a[5]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[6] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(a[6]));
  FDCE #(
    .INIT(1'b0)) 
    \payload_reg[7] 
       (.C(clk),
        .CE(load_tx_i_1_n_0),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(a[7]));
  LUT3 #(
    .INIT(8'h04)) 
    \pos_count[0]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(\pos_count_reg_n_0_[0] ),
        .O(\pos_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \pos_count[1]_i_1 
       (.I0(rx_state[1]),
        .I1(rx_state[2]),
        .I2(\pos_count_reg_n_0_[0] ),
        .I3(\pos_count_reg_n_0_[1] ),
        .O(\pos_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \pos_count[2]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(\pos_count_reg_n_0_[2] ),
        .I3(\pos_count_reg_n_0_[1] ),
        .I4(\pos_count_reg_n_0_[0] ),
        .O(\pos_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA222)) 
    \pos_count[3]_i_1 
       (.I0(\pos_count[3]_i_3_n_0 ),
        .I1(rx_state[1]),
        .I2(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .O(pos_count));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \pos_count[3]_i_2 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(\pos_count_reg_n_0_[3] ),
        .I3(\pos_count_reg_n_0_[2] ),
        .I4(\pos_count_reg_n_0_[0] ),
        .I5(\pos_count_reg_n_0_[1] ),
        .O(\pos_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000F2)) 
    \pos_count[3]_i_3 
       (.I0(p_0_in),
        .I1(\meta_reg_reg_n_0_[2] ),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(rx_state[0]),
        .O(\pos_count[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_count_reg[0] 
       (.C(clk),
        .CE(pos_count),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\pos_count[0]_i_1_n_0 ),
        .Q(\pos_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_count_reg[1] 
       (.C(clk),
        .CE(pos_count),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\pos_count[1]_i_1_n_0 ),
        .Q(\pos_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_count_reg[2] 
       (.C(clk),
        .CE(pos_count),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\pos_count[2]_i_1_n_0 ),
        .Q(\pos_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_count_reg[3] 
       (.C(clk),
        .CE(pos_count),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\pos_count[3]_i_2_n_0 ),
        .Q(\pos_count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[10]_i_1 
       (.I0(\tmr_reg_reg_n_0_[9] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[11]_i_1 
       (.I0(\tmr_reg_reg_n_0_[10] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[1]_i_1 
       (.I0(\tmr_reg_reg_n_0_[0] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[2]_i_1 
       (.I0(\tmr_reg_reg_n_0_[1] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[3]_i_1 
       (.I0(\tmr_reg_reg_n_0_[2] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[4]_i_1 
       (.I0(\tmr_reg_reg_n_0_[3] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[5]_i_1 
       (.I0(\tmr_reg_reg_n_0_[4] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[6]_i_1 
       (.I0(\tmr_reg_reg_n_0_[5] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[7]_i_1 
       (.I0(\tmr_reg_reg_n_0_[6] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[8]_i_1 
       (.I0(\tmr_reg_reg_n_0_[7] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tmr_reg[9]_i_1 
       (.I0(\tmr_reg_reg_n_0_[8] ),
        .I1(load_tx_reg_n_0),
        .O(\tmr_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[0] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(load_tx_reg_n_0),
        .Q(\tmr_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[10] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[10]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[11] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[11]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[1] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[1]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[2] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[2]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[3] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[3]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[4] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[4]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[5] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[5]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[6] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[6]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[7] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[7]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[8] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[8]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmr_reg_reg[9] 
       (.C(clk),
        .CE(tmr_reg),
        .CLR(\tx_reg[0]_i_3_n_0 ),
        .D(\tmr_reg[9]_i_1_n_0 ),
        .Q(\tmr_reg_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_reg[0]_i_1 
       (.I0(baud_en_reg_n_0),
        .I1(load_tx_reg_n_0),
        .O(tmr_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_reg[0]_i_2 
       (.I0(\tx_reg_reg_n_0_[1] ),
        .I1(load_tx_reg_n_0),
        .O(\tx_reg[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tx_reg[0]_i_3 
       (.I0(reset),
        .O(\tx_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_reg[10]_i_1 
       (.I0(load_tx_reg_n_0),
        .I1(\tx_reg_reg_n_0_[11] ),
        .O(\tx_reg[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[1]_i_1 
       (.I0(a[0]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[2] ),
        .O(\tx_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[2]_i_1 
       (.I0(a[1]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[3] ),
        .O(\tx_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[3]_i_1 
       (.I0(a[2]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[4] ),
        .O(\tx_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[4]_i_1 
       (.I0(a[3]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[5] ),
        .O(\tx_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[5]_i_1 
       (.I0(a[4]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[6] ),
        .O(\tx_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[6]_i_1 
       (.I0(a[5]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[7] ),
        .O(\tx_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[7]_i_1 
       (.I0(a[6]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[8] ),
        .O(\tx_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[8]_i_1 
       (.I0(a[7]),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg_reg_n_0_[9] ),
        .O(\tx_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \tx_reg[9]_i_1 
       (.I0(\tx_reg_reg_n_0_[10] ),
        .I1(load_tx_reg_n_0),
        .I2(\tx_reg[9]_i_2_n_0 ),
        .I3(\tx_reg[9]_i_3_n_0 ),
        .O(\tx_reg[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tx_reg[9]_i_2 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[4]),
        .O(\tx_reg[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tx_reg[9]_i_3 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .O(\tx_reg[9]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[0]_i_2_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(tx));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[10] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[10]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[10] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[11] 
       (.C(clk),
        .CE(tmr_reg),
        .D(1'b1),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[11] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[1]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[2]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[3]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[4]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[5]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[6]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[7]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[8] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[8]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[8] ));
  FDPE #(
    .INIT(1'b0)) 
    \tx_reg_reg[9] 
       (.C(clk),
        .CE(tmr_reg),
        .D(\tx_reg[9]_i_1_n_0 ),
        .PRE(\tx_reg[0]_i_3_n_0 ),
        .Q(\tx_reg_reg_n_0_[9] ));
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
