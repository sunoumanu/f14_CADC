// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Apr 12 12:13:18 2026
// Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_axi_protocol_0_0/cadc_system_axi_protocol_0_0_sim_netlist.v
// Design      : cadc_system_axi_protocol_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cadc_system_axi_protocol_0_0,axi_protocol_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axi_protocol_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module cadc_system_axi_protocol_0_0
   (clk,
    rst_n,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_mode = "slave rst_n" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_mode = "slave s_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_mode = "master m_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) (* x_interface_mode = "master m_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [31:0]m_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [3:0]m_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [31:0]m_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [31:0]m_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) output m_axi_rready;

  wire \<const0> ;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [2:2]\^m_axi_wstrb ;
  wire m_axi_wvalid;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst_n;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = m_axi_arvalid;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = m_axi_awvalid;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_wstrb[3] = \^m_axi_wstrb [2];
  assign m_axi_wstrb[2] = \^m_axi_wstrb [2];
  assign m_axi_wstrb[1] = \^m_axi_wstrb [2];
  assign m_axi_wstrb[0] = \^m_axi_wstrb [2];
  GND GND
       (.G(\<const0> ));
  cadc_system_axi_protocol_0_0_axi_protocol_wrapper U0
       (.clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(\^m_axi_wstrb ),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol" *) 
module cadc_system_axi_protocol_0_0_axi_protocol
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axi_awaddr,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_rready,
    rst_n,
    s_axis_tvalid,
    s_axis_tdata,
    clk,
    m_axi_wready,
    m_axi_bvalid,
    m_axis_tready,
    m_axi_rdata,
    m_axi_awready,
    m_axi_arready,
    m_axi_rvalid);
  output s_axis_tready;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  output [31:0]m_axi_awaddr;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [0:0]m_axi_wstrb;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output m_axi_wvalid;
  output m_axi_bready;
  output m_axi_rready;
  input rst_n;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input clk;
  input m_axi_wready;
  input m_axi_bvalid;
  input m_axis_tready;
  input [31:0]m_axi_rdata;
  input m_axi_awready;
  input m_axi_arready;
  input m_axi_rvalid;

  wire \FSM_onehot_read_state[2]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_1_n_0 ;
  wire \FSM_onehot_read_state[4]_i_1_n_0 ;
  wire \FSM_onehot_read_state[4]_i_2_n_0 ;
  wire \FSM_onehot_read_state_reg_n_0_[0] ;
  wire \FSM_onehot_read_state_reg_n_0_[1] ;
  wire \FSM_onehot_read_state_reg_n_0_[2] ;
  wire \FSM_onehot_read_state_reg_n_0_[3] ;
  wire \FSM_onehot_read_state_reg_n_0_[4] ;
  wire \FSM_sequential_s_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_s_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_10_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_6_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_7_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_8_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_9_n_0 ;
  wire \FSM_sequential_write_state[0]_i_1_n_0 ;
  wire \FSM_sequential_write_state[1]_i_1_n_0 ;
  wire \FSM_sequential_write_state[2]_i_1_n_0 ;
  wire \axi_araddr[0]_i_1_n_0 ;
  wire \axi_araddr[10]_i_1_n_0 ;
  wire \axi_araddr[11]_i_1_n_0 ;
  wire \axi_araddr[12]_i_1_n_0 ;
  wire \axi_araddr[13]_i_1_n_0 ;
  wire \axi_araddr[14]_i_1_n_0 ;
  wire \axi_araddr[15]_i_1_n_0 ;
  wire \axi_araddr[16]_i_1_n_0 ;
  wire \axi_araddr[17]_i_1_n_0 ;
  wire \axi_araddr[18]_i_1_n_0 ;
  wire \axi_araddr[19]_i_1_n_0 ;
  wire \axi_araddr[1]_i_1_n_0 ;
  wire \axi_araddr[20]_i_1_n_0 ;
  wire \axi_araddr[21]_i_1_n_0 ;
  wire \axi_araddr[22]_i_1_n_0 ;
  wire \axi_araddr[23]_i_1_n_0 ;
  wire \axi_araddr[24]_i_1_n_0 ;
  wire \axi_araddr[25]_i_1_n_0 ;
  wire \axi_araddr[26]_i_1_n_0 ;
  wire \axi_araddr[27]_i_1_n_0 ;
  wire \axi_araddr[28]_i_1_n_0 ;
  wire \axi_araddr[29]_i_1_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[30]_i_1_n_0 ;
  wire \axi_araddr[31]_i_1_n_0 ;
  wire \axi_araddr[31]_i_2_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire [31:0]axi_awaddr0_in;
  wire \axi_awaddr[31]_i_1_n_0 ;
  wire \axi_awprot[1]_i_1_n_0 ;
  wire axi_bready_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [0:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_4_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst_n;
  wire [31:0]s_address;
  wire \s_address[31]_i_1_n_0 ;
  wire [31:0]s_axil_data;
  wire s_axil_data0;
  wire \s_axil_data[31]_i_1_n_0 ;
  wire [31:0]s_axil_idata;
  wire s_axil_idata0;
  wire s_axil_valid_i_1_n_0;
  wire s_axil_valid_i_2_n_0;
  wire s_axil_valid_reg_n_0;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire s_buf_cnt0;
  wire \s_buf_cnt[0]_i_1_n_0 ;
  wire \s_buf_cnt[1]_i_1_n_0 ;
  wire \s_buf_cnt[2]_i_1_n_0 ;
  wire \s_buf_cnt[3]_i_1_n_0 ;
  wire \s_buf_cnt[4]_i_1_n_0 ;
  wire \s_buf_cnt[5]_i_1_n_0 ;
  wire \s_buf_cnt[6]_i_1_n_0 ;
  wire \s_buf_cnt[6]_i_3_n_0 ;
  wire \s_buf_cnt[6]_i_4_n_0 ;
  wire \s_buf_cnt[6]_i_5_n_0 ;
  wire \s_buf_cnt[6]_i_6_n_0 ;
  wire \s_buf_cnt[7]_i_1_n_0 ;
  wire \s_buf_cnt[7]_i_2_n_0 ;
  wire \s_buf_cnt_reg_n_0_[0] ;
  wire \s_buf_cnt_reg_n_0_[1] ;
  wire \s_buf_cnt_reg_n_0_[2] ;
  wire \s_buf_cnt_reg_n_0_[3] ;
  wire \s_buf_cnt_reg_n_0_[4] ;
  wire \s_buf_cnt_reg_n_0_[5] ;
  wire \s_buf_cnt_reg_n_0_[6] ;
  wire \s_buf_cnt_reg_n_0_[7] ;
  wire \s_byte_pos[0]_i_1_n_0 ;
  wire \s_byte_pos[0]_i_2_n_0 ;
  wire \s_byte_pos[1]_i_1_n_0 ;
  wire \s_byte_pos[1]_i_2_n_0 ;
  wire \s_byte_pos[2]_i_1_n_0 ;
  wire \s_byte_pos[2]_i_2_n_0 ;
  wire \s_byte_pos[2]_i_3_n_0 ;
  wire \s_byte_pos[2]_i_4_n_0 ;
  wire \s_byte_pos[2]_i_5_n_0 ;
  wire \s_byte_pos[2]_i_6_n_0 ;
  wire \s_byte_pos[2]_i_7_n_0 ;
  wire \s_byte_pos_reg_n_0_[0] ;
  wire \s_byte_pos_reg_n_0_[1] ;
  wire \s_byte_pos_reg_n_0_[2] ;
  wire s_command0;
  wire \s_command[7]_i_2_n_0 ;
  wire \s_command[7]_i_3_n_0 ;
  wire \s_command_reg_n_0_[0] ;
  wire \s_command_reg_n_0_[1] ;
  wire \s_command_reg_n_0_[2] ;
  wire \s_command_reg_n_0_[3] ;
  wire \s_command_reg_n_0_[4] ;
  wire \s_command_reg_n_0_[5] ;
  wire \s_command_reg_n_0_[6] ;
  wire \s_command_reg_n_0_[7] ;
  wire s_current_state0;
  wire [2:0]s_current_state__0;
  wire s_length0;
  wire \s_length_reg_n_0_[0] ;
  wire \s_length_reg_n_0_[1] ;
  wire \s_length_reg_n_0_[2] ;
  wire \s_length_reg_n_0_[3] ;
  wire \s_length_reg_n_0_[4] ;
  wire \s_length_reg_n_0_[5] ;
  wire \s_length_reg_n_0_[6] ;
  wire \s_length_reg_n_0_[7] ;
  wire s_m_axis_tvalid_i_1_n_0;
  wire s_m_axis_tvalid_i_2_n_0;
  wire \s_num_bytes[2]_i_1_n_0 ;
  wire \s_num_bytes[2]_i_2_n_0 ;
  wire \s_num_bytes_reg_n_0_[2] ;
  wire \s_op_byte[0]_i_1_n_0 ;
  wire \s_op_byte[1]_i_1_n_0 ;
  wire \s_op_byte[2]_i_1_n_0 ;
  wire \s_op_byte[2]_i_2_n_0 ;
  wire \s_op_byte_reg_n_0_[0] ;
  wire \s_op_byte_reg_n_0_[1] ;
  wire \s_op_byte_reg_n_0_[2] ;
  wire \s_op_state[0]_i_1_n_0 ;
  wire \s_op_state[0]_i_2_n_0 ;
  wire \s_op_state[1]_i_1_n_0 ;
  wire \s_op_state[1]_i_2_n_0 ;
  wire [1:0]s_op_state__0;
  wire [6:0]s_opptr;
  wire \s_opptr[1]_i_1_n_0 ;
  wire \s_opptr[5]_i_2_n_0 ;
  wire \s_opptr[7]_i_2_n_0 ;
  wire \s_opptr[7]_i_3_n_0 ;
  wire \s_opptr[7]_i_4_n_0 ;
  wire [0:0]s_opptr_0;
  wire \s_opptr_reg_n_0_[0] ;
  wire \s_opptr_reg_n_0_[1] ;
  wire \s_opptr_reg_n_0_[2] ;
  wire \s_opptr_reg_n_0_[3] ;
  wire \s_opptr_reg_n_0_[4] ;
  wire \s_opptr_reg_n_0_[5] ;
  wire \s_opptr_reg_n_0_[6] ;
  wire \s_opptr_reg_n_0_[7] ;
  wire \s_read_buffer[0][31]_i_1_n_0 ;
  wire [31:0]\s_read_buffer_reg[0] ;
  wire [23:0]s_read_buffer_temp;
  wire s_read_buffer_temp0;
  wire \s_read_buffer_temp[31]_i_1_n_0 ;
  wire \s_read_buffer_temp_reg_n_0_[0] ;
  wire \s_read_buffer_temp_reg_n_0_[10] ;
  wire \s_read_buffer_temp_reg_n_0_[11] ;
  wire \s_read_buffer_temp_reg_n_0_[12] ;
  wire \s_read_buffer_temp_reg_n_0_[13] ;
  wire \s_read_buffer_temp_reg_n_0_[14] ;
  wire \s_read_buffer_temp_reg_n_0_[15] ;
  wire \s_read_buffer_temp_reg_n_0_[16] ;
  wire \s_read_buffer_temp_reg_n_0_[17] ;
  wire \s_read_buffer_temp_reg_n_0_[18] ;
  wire \s_read_buffer_temp_reg_n_0_[19] ;
  wire \s_read_buffer_temp_reg_n_0_[1] ;
  wire \s_read_buffer_temp_reg_n_0_[20] ;
  wire \s_read_buffer_temp_reg_n_0_[21] ;
  wire \s_read_buffer_temp_reg_n_0_[22] ;
  wire \s_read_buffer_temp_reg_n_0_[23] ;
  wire \s_read_buffer_temp_reg_n_0_[24] ;
  wire \s_read_buffer_temp_reg_n_0_[25] ;
  wire \s_read_buffer_temp_reg_n_0_[26] ;
  wire \s_read_buffer_temp_reg_n_0_[27] ;
  wire \s_read_buffer_temp_reg_n_0_[28] ;
  wire \s_read_buffer_temp_reg_n_0_[29] ;
  wire \s_read_buffer_temp_reg_n_0_[2] ;
  wire \s_read_buffer_temp_reg_n_0_[30] ;
  wire \s_read_buffer_temp_reg_n_0_[31] ;
  wire \s_read_buffer_temp_reg_n_0_[3] ;
  wire \s_read_buffer_temp_reg_n_0_[4] ;
  wire \s_read_buffer_temp_reg_n_0_[5] ;
  wire \s_read_buffer_temp_reg_n_0_[6] ;
  wire \s_read_buffer_temp_reg_n_0_[7] ;
  wire \s_read_buffer_temp_reg_n_0_[8] ;
  wire \s_read_buffer_temp_reg_n_0_[9] ;
  wire s_s_tready;
  wire s_s_tready_i_2_n_0;
  wire s_s_tready_i_3_n_0;
  wire s_s_tready_i_4_n_0;
  wire s_s_tready_i_5_n_0;
  wire s_s_tready_i_6_n_0;
  wire s_s_tready_i_7_n_0;
  wire s_s_tready_i_8_n_0;
  wire s_s_tready_i_9_n_0;
  wire s_start_i_1_n_0;
  wire s_start_reg_n_0;
  wire \s_write_buffer[0][31]_i_2_n_0 ;
  wire [31:0]\s_write_buffer_reg[0] ;
  wire \s_write_buffer_reg[0]0 ;
  wire [31:0]s_write_buffer_temp;
  wire s_write_buffer_temp0;
  wire \s_write_buffer_temp[31]_i_2_n_0 ;
  wire start_read;
  wire start_read_i_2_n_0;
  wire start_read_i_3_n_0;
  wire start_read_i_4_n_0;
  wire start_read_i_5_n_0;
  wire start_read_i_6_n_0;
  wire start_read_reg_n_0;
  wire start_write;
  wire start_write_reg_n_0;
  wire [2:0]write_state;
  wire [1:1]write_state__0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_read_state[2]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(m_axi_arready),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .O(\FSM_onehot_read_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_read_state[3]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I1(m_axi_arready),
        .I2(m_axi_rvalid),
        .I3(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(\FSM_onehot_read_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \FSM_onehot_read_state[4]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_read_state_reg_n_0_[0] ),
        .I5(start_read_reg_n_0),
        .O(\FSM_onehot_read_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_read_state[4]_i_2 
       (.I0(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I1(m_axi_rvalid),
        .O(\FSM_onehot_read_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_read_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_read_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_read_state_reg_n_0_[4] ),
        .PRE(s_s_tready_i_2_n_0),
        .Q(\FSM_onehot_read_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_read_state[4]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_onehot_read_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_read_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_read_state[4]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_onehot_read_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_read_state[4]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_read_state[4]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_onehot_read_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_s_current_state[0]_i_1 
       (.I0(s_current_state__0[2]),
        .I1(s_current_state0),
        .I2(s_current_state__0[0]),
        .O(\FSM_sequential_s_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01FFCC00)) 
    \FSM_sequential_s_current_state[1]_i_1 
       (.I0(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I1(s_current_state__0[0]),
        .I2(s_current_state__0[2]),
        .I3(s_current_state0),
        .I4(s_current_state__0[1]),
        .O(\FSM_sequential_s_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30FFC800)) 
    \FSM_sequential_s_current_state[2]_i_1 
       (.I0(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I1(s_current_state__0[1]),
        .I2(s_current_state__0[0]),
        .I3(s_current_state0),
        .I4(s_current_state__0[2]),
        .O(\FSM_sequential_s_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_sequential_s_current_state[2]_i_10 
       (.I0(\s_byte_pos_reg_n_0_[0] ),
        .I1(\s_byte_pos_reg_n_0_[1] ),
        .I2(\s_byte_pos_reg_n_0_[2] ),
        .I3(s_current_state__0[2]),
        .I4(s_current_state__0[1]),
        .I5(s_current_state__0[0]),
        .O(\FSM_sequential_s_current_state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_current_state[2]_i_2 
       (.I0(start_read_i_2_n_0),
        .I1(start_read_i_3_n_0),
        .I2(start_read_i_4_n_0),
        .I3(start_read_i_5_n_0),
        .O(\FSM_sequential_s_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAAAEEEEEEEEE)) 
    \FSM_sequential_s_current_state[2]_i_3 
       (.I0(\FSM_sequential_s_current_state[2]_i_4_n_0 ),
        .I1(rst_n),
        .I2(s_current_state__0[2]),
        .I3(\FSM_sequential_s_current_state[2]_i_5_n_0 ),
        .I4(start_read),
        .I5(\FSM_sequential_s_current_state[2]_i_6_n_0 ),
        .O(s_current_state0));
  LUT6 #(
    .INIT(64'h0000000055555575)) 
    \FSM_sequential_s_current_state[2]_i_4 
       (.I0(s_current_state__0[0]),
        .I1(s_current_state__0[1]),
        .I2(\FSM_sequential_s_current_state[2]_i_7_n_0 ),
        .I3(s_s_tready_i_7_n_0),
        .I4(s_s_tready_i_6_n_0),
        .I5(\FSM_sequential_s_current_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_s_current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FFAACFFFFFAACF)) 
    \FSM_sequential_s_current_state[2]_i_5 
       (.I0(\s_byte_pos[2]_i_5_n_0 ),
        .I1(\s_command[7]_i_3_n_0 ),
        .I2(\FSM_sequential_s_current_state[2]_i_9_n_0 ),
        .I3(s_current_state__0[0]),
        .I4(s_current_state__0[1]),
        .I5(\FSM_onehot_read_state_reg_n_0_[4] ),
        .O(\FSM_sequential_s_current_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_sequential_s_current_state[2]_i_6 
       (.I0(\s_command_reg_n_0_[3] ),
        .I1(\s_command_reg_n_0_[1] ),
        .I2(\s_command_reg_n_0_[0] ),
        .I3(\s_command_reg_n_0_[2] ),
        .I4(start_read_i_5_n_0),
        .I5(\FSM_sequential_s_current_state[2]_i_10_n_0 ),
        .O(\FSM_sequential_s_current_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_s_current_state[2]_i_7 
       (.I0(\s_buf_cnt_reg_n_0_[6] ),
        .I1(\s_length_reg_n_0_[6] ),
        .I2(\s_buf_cnt_reg_n_0_[7] ),
        .I3(\s_length_reg_n_0_[7] ),
        .O(\FSM_sequential_s_current_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F5555FFFFFFFF)) 
    \FSM_sequential_s_current_state[2]_i_8 
       (.I0(s_current_state__0[2]),
        .I1(write_state[0]),
        .I2(write_state[2]),
        .I3(write_state[1]),
        .I4(s_current_state__0[1]),
        .I5(rst_n),
        .O(\FSM_sequential_s_current_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_s_current_state[2]_i_9 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tdata[4]),
        .O(\FSM_sequential_s_current_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,address:001,length:010,write_axil:110,read_payload:100,write_payload:101,read_axil:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_current_state[0]_i_1_n_0 ),
        .Q(s_current_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:000,address:001,length:010,write_axil:110,read_payload:100,write_payload:101,read_axil:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_current_state[1]_i_1_n_0 ),
        .Q(s_current_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:000,address:001,length:010,write_axil:110,read_payload:100,write_payload:101,read_axil:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_current_state[2]_i_1_n_0 ),
        .Q(s_current_state__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F000000A0ACFC0)) 
    \FSM_sequential_write_state[0]_i_1 
       (.I0(m_axi_wready),
        .I1(m_axi_bvalid),
        .I2(write_state[2]),
        .I3(start_write_reg_n_0),
        .I4(write_state[1]),
        .I5(write_state[0]),
        .O(\FSM_sequential_write_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h9C)) 
    \FSM_sequential_write_state[1]_i_1 
       (.I0(write_state[2]),
        .I1(write_state[1]),
        .I2(write_state[0]),
        .O(\FSM_sequential_write_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \FSM_sequential_write_state[2]_i_1 
       (.I0(write_state[2]),
        .I1(write_state[1]),
        .I2(write_state[0]),
        .O(\FSM_sequential_write_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,start:001,check_resp:100,done:101,check_addr_resp:010,write_data:010,resp_ready:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_sequential_write_state[0]_i_1_n_0 ),
        .Q(write_state[0]));
  (* FSM_ENCODED_STATES = "idle:000,start:001,check_resp:100,done:101,check_addr_resp:010,write_data:010,resp_ready:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_sequential_write_state[1]_i_1_n_0 ),
        .Q(write_state[1]));
  (* FSM_ENCODED_STATES = "idle:000,start:001,check_resp:100,done:101,check_addr_resp:010,write_data:010,resp_ready:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_sequential_write_state[2]_i_1_n_0 ),
        .Q(write_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[0]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[0]),
        .O(\axi_araddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[10]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[10]),
        .O(\axi_araddr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[11]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[11]),
        .O(\axi_araddr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[12]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[12]),
        .O(\axi_araddr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[13]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[13]),
        .O(\axi_araddr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[14]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[14]),
        .O(\axi_araddr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[15]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[15]),
        .O(\axi_araddr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[16]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[16]),
        .O(\axi_araddr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[17]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[17]),
        .O(\axi_araddr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[18]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[18]),
        .O(\axi_araddr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[19]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[19]),
        .O(\axi_araddr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[1]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[1]),
        .O(\axi_araddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[20]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[20]),
        .O(\axi_araddr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[21]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[21]),
        .O(\axi_araddr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[22]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[22]),
        .O(\axi_araddr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[23]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[23]),
        .O(\axi_araddr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[24]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[24]),
        .O(\axi_araddr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[25]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[25]),
        .O(\axi_araddr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[26]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[26]),
        .O(\axi_araddr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[27]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[27]),
        .O(\axi_araddr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[28]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[28]),
        .O(\axi_araddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[29]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[29]),
        .O(\axi_araddr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[2]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[30]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[30]),
        .O(\axi_araddr[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \axi_araddr[31]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I2(m_axi_arready),
        .O(\axi_araddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[31]_i_2 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[31]),
        .O(\axi_araddr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[4]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[5]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[5]),
        .O(\axi_araddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[6]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[6]),
        .O(\axi_araddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[7]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[7]),
        .O(\axi_araddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[8]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[8]),
        .O(\axi_araddr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[9]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s_address[9]),
        .O(\axi_araddr[9]_i_1_n_0 ));
  FDCE \axi_araddr_reg[0] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[0]_i_1_n_0 ),
        .Q(m_axi_araddr[0]));
  FDCE \axi_araddr_reg[10] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[10]_i_1_n_0 ),
        .Q(m_axi_araddr[10]));
  FDCE \axi_araddr_reg[11] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[11]_i_1_n_0 ),
        .Q(m_axi_araddr[11]));
  FDCE \axi_araddr_reg[12] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[12]_i_1_n_0 ),
        .Q(m_axi_araddr[12]));
  FDCE \axi_araddr_reg[13] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[13]_i_1_n_0 ),
        .Q(m_axi_araddr[13]));
  FDCE \axi_araddr_reg[14] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[14]_i_1_n_0 ),
        .Q(m_axi_araddr[14]));
  FDCE \axi_araddr_reg[15] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[15]_i_1_n_0 ),
        .Q(m_axi_araddr[15]));
  FDCE \axi_araddr_reg[16] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[16]_i_1_n_0 ),
        .Q(m_axi_araddr[16]));
  FDCE \axi_araddr_reg[17] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[17]_i_1_n_0 ),
        .Q(m_axi_araddr[17]));
  FDCE \axi_araddr_reg[18] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[18]_i_1_n_0 ),
        .Q(m_axi_araddr[18]));
  FDCE \axi_araddr_reg[19] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[19]_i_1_n_0 ),
        .Q(m_axi_araddr[19]));
  FDCE \axi_araddr_reg[1] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[1]_i_1_n_0 ),
        .Q(m_axi_araddr[1]));
  FDCE \axi_araddr_reg[20] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[20]_i_1_n_0 ),
        .Q(m_axi_araddr[20]));
  FDCE \axi_araddr_reg[21] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[21]_i_1_n_0 ),
        .Q(m_axi_araddr[21]));
  FDCE \axi_araddr_reg[22] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[22]_i_1_n_0 ),
        .Q(m_axi_araddr[22]));
  FDCE \axi_araddr_reg[23] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[23]_i_1_n_0 ),
        .Q(m_axi_araddr[23]));
  FDCE \axi_araddr_reg[24] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[24]_i_1_n_0 ),
        .Q(m_axi_araddr[24]));
  FDCE \axi_araddr_reg[25] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[25]_i_1_n_0 ),
        .Q(m_axi_araddr[25]));
  FDCE \axi_araddr_reg[26] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[26]_i_1_n_0 ),
        .Q(m_axi_araddr[26]));
  FDCE \axi_araddr_reg[27] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[27]_i_1_n_0 ),
        .Q(m_axi_araddr[27]));
  FDCE \axi_araddr_reg[28] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[28]_i_1_n_0 ),
        .Q(m_axi_araddr[28]));
  FDCE \axi_araddr_reg[29] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[29]_i_1_n_0 ),
        .Q(m_axi_araddr[29]));
  FDCE \axi_araddr_reg[2] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(m_axi_araddr[2]));
  FDCE \axi_araddr_reg[30] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[30]_i_1_n_0 ),
        .Q(m_axi_araddr[30]));
  FDCE \axi_araddr_reg[31] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[31]_i_2_n_0 ),
        .Q(m_axi_araddr[31]));
  FDCE \axi_araddr_reg[3] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(m_axi_araddr[3]));
  FDCE \axi_araddr_reg[4] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(m_axi_araddr[4]));
  FDCE \axi_araddr_reg[5] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(m_axi_araddr[5]));
  FDCE \axi_araddr_reg[6] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(m_axi_araddr[6]));
  FDCE \axi_araddr_reg[7] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(m_axi_araddr[7]));
  FDCE \axi_araddr_reg[8] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(m_axi_araddr[8]));
  FDCE \axi_araddr_reg[9] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_araddr[9]_i_1_n_0 ),
        .Q(m_axi_araddr[9]));
  FDCE \axi_arprot_reg[1] 
       (.C(clk),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\FSM_onehot_read_state_reg_n_0_[1] ),
        .Q(m_axi_arvalid));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[0]_i_1 
       (.I0(s_address[0]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[10]_i_1 
       (.I0(s_address[10]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[11]_i_1 
       (.I0(s_address[11]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[12]_i_1 
       (.I0(s_address[12]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[13]_i_1 
       (.I0(s_address[13]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[14]_i_1 
       (.I0(s_address[14]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[15]_i_1 
       (.I0(s_address[15]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[16]_i_1 
       (.I0(s_address[16]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[17]_i_1 
       (.I0(s_address[17]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[18]_i_1 
       (.I0(s_address[18]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[19]_i_1 
       (.I0(s_address[19]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[1]_i_1 
       (.I0(s_address[1]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[20]_i_1 
       (.I0(s_address[20]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[21]_i_1 
       (.I0(s_address[21]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[22]_i_1 
       (.I0(s_address[22]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[23]_i_1 
       (.I0(s_address[23]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[24]_i_1 
       (.I0(s_address[24]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[25]_i_1 
       (.I0(s_address[25]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[26]_i_1 
       (.I0(s_address[26]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[27]_i_1 
       (.I0(s_address[27]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[28]_i_1 
       (.I0(s_address[28]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[29]_i_1 
       (.I0(s_address[29]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_address[2]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[30]_i_1 
       (.I0(s_address[30]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[30]));
  LUT4 #(
    .INIT(16'h1210)) 
    \axi_awaddr[31]_i_1 
       (.I0(write_state[1]),
        .I1(write_state[2]),
        .I2(write_state[0]),
        .I3(m_axi_awready),
        .O(\axi_awaddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[31]_i_2 
       (.I0(s_address[31]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_address[3]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[4]_i_1 
       (.I0(s_address[4]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[5]_i_1 
       (.I0(s_address[5]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[6]_i_1 
       (.I0(s_address[6]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[7]_i_1 
       (.I0(s_address[7]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[8]_i_1 
       (.I0(s_address[8]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[9]_i_1 
       (.I0(s_address[9]),
        .I1(write_state[1]),
        .O(axi_awaddr0_in[9]));
  FDCE \axi_awaddr_reg[0] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[0]),
        .Q(m_axi_awaddr[0]));
  FDCE \axi_awaddr_reg[10] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[10]),
        .Q(m_axi_awaddr[10]));
  FDCE \axi_awaddr_reg[11] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[11]),
        .Q(m_axi_awaddr[11]));
  FDCE \axi_awaddr_reg[12] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[12]),
        .Q(m_axi_awaddr[12]));
  FDCE \axi_awaddr_reg[13] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[13]),
        .Q(m_axi_awaddr[13]));
  FDCE \axi_awaddr_reg[14] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[14]),
        .Q(m_axi_awaddr[14]));
  FDCE \axi_awaddr_reg[15] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[15]),
        .Q(m_axi_awaddr[15]));
  FDCE \axi_awaddr_reg[16] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[16]),
        .Q(m_axi_awaddr[16]));
  FDCE \axi_awaddr_reg[17] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[17]),
        .Q(m_axi_awaddr[17]));
  FDCE \axi_awaddr_reg[18] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[18]),
        .Q(m_axi_awaddr[18]));
  FDCE \axi_awaddr_reg[19] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[19]),
        .Q(m_axi_awaddr[19]));
  FDCE \axi_awaddr_reg[1] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[1]),
        .Q(m_axi_awaddr[1]));
  FDCE \axi_awaddr_reg[20] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[20]),
        .Q(m_axi_awaddr[20]));
  FDCE \axi_awaddr_reg[21] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[21]),
        .Q(m_axi_awaddr[21]));
  FDCE \axi_awaddr_reg[22] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[22]),
        .Q(m_axi_awaddr[22]));
  FDCE \axi_awaddr_reg[23] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[23]),
        .Q(m_axi_awaddr[23]));
  FDCE \axi_awaddr_reg[24] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[24]),
        .Q(m_axi_awaddr[24]));
  FDCE \axi_awaddr_reg[25] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[25]),
        .Q(m_axi_awaddr[25]));
  FDCE \axi_awaddr_reg[26] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[26]),
        .Q(m_axi_awaddr[26]));
  FDCE \axi_awaddr_reg[27] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[27]),
        .Q(m_axi_awaddr[27]));
  FDCE \axi_awaddr_reg[28] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[28]),
        .Q(m_axi_awaddr[28]));
  FDCE \axi_awaddr_reg[29] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[29]),
        .Q(m_axi_awaddr[29]));
  FDCE \axi_awaddr_reg[2] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[2]),
        .Q(m_axi_awaddr[2]));
  FDCE \axi_awaddr_reg[30] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[30]),
        .Q(m_axi_awaddr[30]));
  FDCE \axi_awaddr_reg[31] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[31]),
        .Q(m_axi_awaddr[31]));
  FDCE \axi_awaddr_reg[3] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[3]),
        .Q(m_axi_awaddr[3]));
  FDCE \axi_awaddr_reg[4] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[4]),
        .Q(m_axi_awaddr[4]));
  FDCE \axi_awaddr_reg[5] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[5]),
        .Q(m_axi_awaddr[5]));
  FDCE \axi_awaddr_reg[6] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[6]),
        .Q(m_axi_awaddr[6]));
  FDCE \axi_awaddr_reg[7] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[7]),
        .Q(m_axi_awaddr[7]));
  FDCE \axi_awaddr_reg[8] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[8]),
        .Q(m_axi_awaddr[8]));
  FDCE \axi_awaddr_reg[9] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_awaddr0_in[9]),
        .Q(m_axi_awaddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awprot[1]_i_1 
       (.I0(write_state[1]),
        .O(\axi_awprot[1]_i_1_n_0 ));
  FDCE \axi_awprot_reg[1] 
       (.C(clk),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\axi_awprot[1]_i_1_n_0 ),
        .Q(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEFFF0088)) 
    axi_bready_i_1
       (.I0(write_state[0]),
        .I1(write_state[1]),
        .I2(m_axi_bvalid),
        .I3(write_state[2]),
        .I4(m_axi_bready),
        .O(axi_bready_i_1_n_0));
  FDCE axi_bready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_bready_i_1_n_0),
        .Q(m_axi_bready));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    axi_rready_i_1
       (.I0(m_axi_rready),
        .I1(\FSM_onehot_read_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(axi_rready_i_1_n_0));
  FDCE axi_rready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_rready_i_1_n_0),
        .Q(m_axi_rready));
  LUT3 #(
    .INIT(8'h14)) 
    \axi_wdata[31]_i_1 
       (.I0(write_state[2]),
        .I1(write_state[0]),
        .I2(write_state[1]),
        .O(write_state__0));
  FDCE \axi_wdata_reg[0] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[0]),
        .Q(m_axi_wdata[0]));
  FDCE \axi_wdata_reg[10] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[10]),
        .Q(m_axi_wdata[10]));
  FDCE \axi_wdata_reg[11] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[11]),
        .Q(m_axi_wdata[11]));
  FDCE \axi_wdata_reg[12] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[12]),
        .Q(m_axi_wdata[12]));
  FDCE \axi_wdata_reg[13] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[13]),
        .Q(m_axi_wdata[13]));
  FDCE \axi_wdata_reg[14] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[14]),
        .Q(m_axi_wdata[14]));
  FDCE \axi_wdata_reg[15] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[15]),
        .Q(m_axi_wdata[15]));
  FDCE \axi_wdata_reg[16] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[16]),
        .Q(m_axi_wdata[16]));
  FDCE \axi_wdata_reg[17] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[17]),
        .Q(m_axi_wdata[17]));
  FDCE \axi_wdata_reg[18] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[18]),
        .Q(m_axi_wdata[18]));
  FDCE \axi_wdata_reg[19] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[19]),
        .Q(m_axi_wdata[19]));
  FDCE \axi_wdata_reg[1] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[1]),
        .Q(m_axi_wdata[1]));
  FDCE \axi_wdata_reg[20] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[20]),
        .Q(m_axi_wdata[20]));
  FDCE \axi_wdata_reg[21] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[21]),
        .Q(m_axi_wdata[21]));
  FDCE \axi_wdata_reg[22] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[22]),
        .Q(m_axi_wdata[22]));
  FDCE \axi_wdata_reg[23] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[23]),
        .Q(m_axi_wdata[23]));
  FDCE \axi_wdata_reg[24] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[24]),
        .Q(m_axi_wdata[24]));
  FDCE \axi_wdata_reg[25] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[25]),
        .Q(m_axi_wdata[25]));
  FDCE \axi_wdata_reg[26] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[26]),
        .Q(m_axi_wdata[26]));
  FDCE \axi_wdata_reg[27] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[27]),
        .Q(m_axi_wdata[27]));
  FDCE \axi_wdata_reg[28] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[28]),
        .Q(m_axi_wdata[28]));
  FDCE \axi_wdata_reg[29] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[29]),
        .Q(m_axi_wdata[29]));
  FDCE \axi_wdata_reg[2] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[2]),
        .Q(m_axi_wdata[2]));
  FDCE \axi_wdata_reg[30] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[30]),
        .Q(m_axi_wdata[30]));
  FDCE \axi_wdata_reg[31] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[31]),
        .Q(m_axi_wdata[31]));
  FDCE \axi_wdata_reg[3] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[3]),
        .Q(m_axi_wdata[3]));
  FDCE \axi_wdata_reg[4] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[4]),
        .Q(m_axi_wdata[4]));
  FDCE \axi_wdata_reg[5] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[5]),
        .Q(m_axi_wdata[5]));
  FDCE \axi_wdata_reg[6] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[6]),
        .Q(m_axi_wdata[6]));
  FDCE \axi_wdata_reg[7] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[7]),
        .Q(m_axi_wdata[7]));
  FDCE \axi_wdata_reg[8] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[8]),
        .Q(m_axi_wdata[8]));
  FDCE \axi_wdata_reg[9] 
       (.C(clk),
        .CE(write_state__0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_axil_idata[9]),
        .Q(m_axi_wdata[9]));
  FDCE \axi_wstrb_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(write_state__0),
        .Q(m_axi_wstrb));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBF14)) 
    axi_wvalid_i_1
       (.I0(write_state[2]),
        .I1(write_state[0]),
        .I2(write_state[1]),
        .I3(m_axi_wvalid),
        .O(axi_wvalid_i_1_n_0));
  FDCE axi_wvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(axi_wvalid_i_1_n_0),
        .Q(m_axi_wvalid));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[7]_i_1 
       (.I0(s_op_state__0[1]),
        .I1(s_op_state__0[0]),
        .I2(\m_axis_tdata[7]_i_2_n_0 ),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \m_axis_tdata[7]_i_2 
       (.I0(\s_length_reg_n_0_[6] ),
        .I1(\s_opptr_reg_n_0_[6] ),
        .I2(\s_length_reg_n_0_[7] ),
        .I3(\s_opptr_reg_n_0_[7] ),
        .I4(\m_axis_tdata[7]_i_3_n_0 ),
        .I5(\m_axis_tdata[7]_i_4_n_0 ),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \m_axis_tdata[7]_i_3 
       (.I0(\s_opptr_reg_n_0_[0] ),
        .I1(\s_length_reg_n_0_[0] ),
        .I2(\s_length_reg_n_0_[2] ),
        .I3(\s_opptr_reg_n_0_[2] ),
        .I4(\s_length_reg_n_0_[1] ),
        .I5(\s_opptr_reg_n_0_[1] ),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \m_axis_tdata[7]_i_4 
       (.I0(\s_opptr_reg_n_0_[3] ),
        .I1(\s_length_reg_n_0_[3] ),
        .I2(\s_length_reg_n_0_[4] ),
        .I3(\s_opptr_reg_n_0_[4] ),
        .I4(\s_length_reg_n_0_[5] ),
        .I5(\s_opptr_reg_n_0_[5] ),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  FDCE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[0] ),
        .Q(m_axis_tdata[0]));
  FDCE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[1] ),
        .Q(m_axis_tdata[1]));
  FDCE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[2] ),
        .Q(m_axis_tdata[2]));
  FDCE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[3] ),
        .Q(m_axis_tdata[3]));
  FDCE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[4] ),
        .Q(m_axis_tdata[4]));
  FDCE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[5] ),
        .Q(m_axis_tdata[5]));
  FDCE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[6] ),
        .Q(m_axis_tdata[6]));
  FDCE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_read_buffer_temp_reg_n_0_[7] ),
        .Q(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \s_address[31]_i_1 
       (.I0(rst_n),
        .I1(s_current_state__0[2]),
        .I2(s_current_state__0[0]),
        .I3(s_current_state__0[1]),
        .I4(\s_byte_pos[2]_i_4_n_0 ),
        .I5(\s_byte_pos[2]_i_5_n_0 ),
        .O(\s_address[31]_i_1_n_0 ));
  FDRE \s_address_reg[0] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(s_address[0]),
        .R(1'b0));
  FDRE \s_address_reg[10] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[2]),
        .Q(s_address[10]),
        .R(1'b0));
  FDRE \s_address_reg[11] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[3]),
        .Q(s_address[11]),
        .R(1'b0));
  FDRE \s_address_reg[12] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[4]),
        .Q(s_address[12]),
        .R(1'b0));
  FDRE \s_address_reg[13] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[5]),
        .Q(s_address[13]),
        .R(1'b0));
  FDRE \s_address_reg[14] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[6]),
        .Q(s_address[14]),
        .R(1'b0));
  FDRE \s_address_reg[15] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[7]),
        .Q(s_address[15]),
        .R(1'b0));
  FDRE \s_address_reg[16] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[8]),
        .Q(s_address[16]),
        .R(1'b0));
  FDRE \s_address_reg[17] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[9]),
        .Q(s_address[17]),
        .R(1'b0));
  FDRE \s_address_reg[18] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[10]),
        .Q(s_address[18]),
        .R(1'b0));
  FDRE \s_address_reg[19] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[11]),
        .Q(s_address[19]),
        .R(1'b0));
  FDRE \s_address_reg[1] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(s_address[1]),
        .R(1'b0));
  FDRE \s_address_reg[20] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[12]),
        .Q(s_address[20]),
        .R(1'b0));
  FDRE \s_address_reg[21] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[13]),
        .Q(s_address[21]),
        .R(1'b0));
  FDRE \s_address_reg[22] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[14]),
        .Q(s_address[22]),
        .R(1'b0));
  FDRE \s_address_reg[23] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[15]),
        .Q(s_address[23]),
        .R(1'b0));
  FDRE \s_address_reg[24] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[16]),
        .Q(s_address[24]),
        .R(1'b0));
  FDRE \s_address_reg[25] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[17]),
        .Q(s_address[25]),
        .R(1'b0));
  FDRE \s_address_reg[26] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[18]),
        .Q(s_address[26]),
        .R(1'b0));
  FDRE \s_address_reg[27] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[19]),
        .Q(s_address[27]),
        .R(1'b0));
  FDRE \s_address_reg[28] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[20]),
        .Q(s_address[28]),
        .R(1'b0));
  FDRE \s_address_reg[29] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[21]),
        .Q(s_address[29]),
        .R(1'b0));
  FDRE \s_address_reg[2] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(s_address[2]),
        .R(1'b0));
  FDRE \s_address_reg[30] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[22]),
        .Q(s_address[30]),
        .R(1'b0));
  FDRE \s_address_reg[31] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[23]),
        .Q(s_address[31]),
        .R(1'b0));
  FDRE \s_address_reg[3] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(s_address[3]),
        .R(1'b0));
  FDRE \s_address_reg[4] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(s_address[4]),
        .R(1'b0));
  FDRE \s_address_reg[5] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(s_address[5]),
        .R(1'b0));
  FDRE \s_address_reg[6] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(s_address[6]),
        .R(1'b0));
  FDRE \s_address_reg[7] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(s_address[7]),
        .R(1'b0));
  FDRE \s_address_reg[8] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[0]),
        .Q(s_address[8]),
        .R(1'b0));
  FDRE \s_address_reg[9] 
       (.C(clk),
        .CE(\s_address[31]_i_1_n_0 ),
        .D(s_address[1]),
        .Q(s_address[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \s_axil_data[31]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[4] ),
        .I1(rst_n),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(\s_axil_data[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \s_axil_data[31]_i_2 
       (.I0(rst_n),
        .I1(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[4] ),
        .O(s_axil_data0));
  FDRE \s_axil_data_reg[0] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[0]),
        .Q(s_axil_data[0]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[10] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[10]),
        .Q(s_axil_data[10]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[11] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[11]),
        .Q(s_axil_data[11]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[12] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[12]),
        .Q(s_axil_data[12]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[13] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[13]),
        .Q(s_axil_data[13]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[14] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[14]),
        .Q(s_axil_data[14]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[15] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[15]),
        .Q(s_axil_data[15]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[16] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[16]),
        .Q(s_axil_data[16]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[17] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[17]),
        .Q(s_axil_data[17]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[18] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[18]),
        .Q(s_axil_data[18]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[19] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[19]),
        .Q(s_axil_data[19]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[1] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[1]),
        .Q(s_axil_data[1]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[20] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[20]),
        .Q(s_axil_data[20]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[21] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[21]),
        .Q(s_axil_data[21]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[22] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[22]),
        .Q(s_axil_data[22]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[23] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[23]),
        .Q(s_axil_data[23]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[24] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[24]),
        .Q(s_axil_data[24]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[25] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[25]),
        .Q(s_axil_data[25]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[26] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[26]),
        .Q(s_axil_data[26]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[27] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[27]),
        .Q(s_axil_data[27]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[28] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[28]),
        .Q(s_axil_data[28]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[29] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[29]),
        .Q(s_axil_data[29]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[2] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[2]),
        .Q(s_axil_data[2]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[30] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[30]),
        .Q(s_axil_data[30]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[31] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[31]),
        .Q(s_axil_data[31]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[3] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[3]),
        .Q(s_axil_data[3]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[4] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[4]),
        .Q(s_axil_data[4]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[5] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[5]),
        .Q(s_axil_data[5]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[6] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[6]),
        .Q(s_axil_data[6]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[7] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[7]),
        .Q(s_axil_data[7]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[8] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[8]),
        .Q(s_axil_data[8]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  FDRE \s_axil_data_reg[9] 
       (.C(clk),
        .CE(s_axil_data0),
        .D(m_axi_rdata[9]),
        .Q(s_axil_data[9]),
        .R(\s_axil_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axil_idata[31]_i_1 
       (.I0(s_current_state__0[0]),
        .I1(s_current_state__0[1]),
        .I2(s_current_state__0[2]),
        .I3(rst_n),
        .O(s_axil_idata0));
  FDRE \s_axil_idata_reg[0] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [0]),
        .Q(s_axil_idata[0]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[10] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [10]),
        .Q(s_axil_idata[10]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[11] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [11]),
        .Q(s_axil_idata[11]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[12] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [12]),
        .Q(s_axil_idata[12]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[13] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [13]),
        .Q(s_axil_idata[13]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[14] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [14]),
        .Q(s_axil_idata[14]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[15] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [15]),
        .Q(s_axil_idata[15]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[16] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [16]),
        .Q(s_axil_idata[16]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[17] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [17]),
        .Q(s_axil_idata[17]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[18] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [18]),
        .Q(s_axil_idata[18]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[19] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [19]),
        .Q(s_axil_idata[19]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[1] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [1]),
        .Q(s_axil_idata[1]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[20] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [20]),
        .Q(s_axil_idata[20]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[21] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [21]),
        .Q(s_axil_idata[21]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[22] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [22]),
        .Q(s_axil_idata[22]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[23] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [23]),
        .Q(s_axil_idata[23]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[24] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [24]),
        .Q(s_axil_idata[24]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[25] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [25]),
        .Q(s_axil_idata[25]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[26] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [26]),
        .Q(s_axil_idata[26]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[27] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [27]),
        .Q(s_axil_idata[27]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[28] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [28]),
        .Q(s_axil_idata[28]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[29] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [29]),
        .Q(s_axil_idata[29]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[2] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [2]),
        .Q(s_axil_idata[2]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[30] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [30]),
        .Q(s_axil_idata[30]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[31] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [31]),
        .Q(s_axil_idata[31]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[3] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [3]),
        .Q(s_axil_idata[3]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[4] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [4]),
        .Q(s_axil_idata[4]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[5] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [5]),
        .Q(s_axil_idata[5]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[6] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [6]),
        .Q(s_axil_idata[6]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[7] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [7]),
        .Q(s_axil_idata[7]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[8] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [8]),
        .Q(s_axil_idata[8]),
        .R(1'b0));
  FDRE \s_axil_idata_reg[9] 
       (.C(clk),
        .CE(s_axil_idata0),
        .D(\s_write_buffer_reg[0] [9]),
        .Q(s_axil_idata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    s_axil_valid_i_1
       (.I0(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I1(m_axi_rvalid),
        .I2(rst_n),
        .I3(s_axil_valid_i_2_n_0),
        .I4(s_axil_valid_reg_n_0),
        .O(s_axil_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    s_axil_valid_i_2
       (.I0(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_read_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_read_state_reg_n_0_[2] ),
        .O(s_axil_valid_i_2_n_0));
  FDRE s_axil_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axil_valid_i_1_n_0),
        .Q(s_axil_valid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_buf_cnt[0]_i_1 
       (.I0(\s_buf_cnt_reg_n_0_[0] ),
        .O(\s_buf_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF4F0080)) 
    \s_buf_cnt[1]_i_1 
       (.I0(\s_buf_cnt_reg_n_0_[0] ),
        .I1(s_current_state__0[2]),
        .I2(rst_n),
        .I3(\s_buf_cnt[7]_i_2_n_0 ),
        .I4(\s_buf_cnt_reg_n_0_[1] ),
        .O(\s_buf_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_buf_cnt[2]_i_1 
       (.I0(\s_buf_cnt_reg_n_0_[2] ),
        .I1(\s_buf_cnt_reg_n_0_[0] ),
        .I2(\s_buf_cnt_reg_n_0_[1] ),
        .O(\s_buf_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_buf_cnt[3]_i_1 
       (.I0(\s_buf_cnt_reg_n_0_[3] ),
        .I1(\s_buf_cnt_reg_n_0_[2] ),
        .I2(\s_buf_cnt_reg_n_0_[1] ),
        .I3(\s_buf_cnt_reg_n_0_[0] ),
        .O(\s_buf_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s_buf_cnt[4]_i_1 
       (.I0(\s_buf_cnt_reg_n_0_[4] ),
        .I1(\s_buf_cnt_reg_n_0_[3] ),
        .I2(\s_buf_cnt_reg_n_0_[0] ),
        .I3(\s_buf_cnt_reg_n_0_[1] ),
        .I4(\s_buf_cnt_reg_n_0_[2] ),
        .O(\s_buf_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \s_buf_cnt[5]_i_1 
       (.I0(\s_buf_cnt_reg_n_0_[5] ),
        .I1(\s_buf_cnt_reg_n_0_[4] ),
        .I2(\s_buf_cnt_reg_n_0_[2] ),
        .I3(\s_buf_cnt_reg_n_0_[1] ),
        .I4(\s_buf_cnt_reg_n_0_[0] ),
        .I5(\s_buf_cnt_reg_n_0_[3] ),
        .O(\s_buf_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0B0000)) 
    \s_buf_cnt[6]_i_1 
       (.I0(\s_buf_cnt[6]_i_4_n_0 ),
        .I1(s_current_state__0[1]),
        .I2(s_current_state__0[0]),
        .I3(\s_buf_cnt[6]_i_5_n_0 ),
        .I4(rst_n),
        .I5(s_current_state__0[2]),
        .O(\s_buf_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A8888888A)) 
    \s_buf_cnt[6]_i_2 
       (.I0(rst_n),
        .I1(\s_buf_cnt[6]_i_5_n_0 ),
        .I2(s_current_state__0[2]),
        .I3(s_current_state__0[0]),
        .I4(s_current_state__0[1]),
        .I5(\s_buf_cnt[6]_i_4_n_0 ),
        .O(s_buf_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_buf_cnt[6]_i_3 
       (.I0(\s_buf_cnt_reg_n_0_[6] ),
        .I1(\s_buf_cnt[6]_i_6_n_0 ),
        .O(\s_buf_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \s_buf_cnt[6]_i_4 
       (.I0(\s_byte_pos[2]_i_5_n_0 ),
        .I1(\s_command_reg_n_0_[3] ),
        .I2(\s_command_reg_n_0_[1] ),
        .I3(\s_command_reg_n_0_[0] ),
        .I4(\s_command_reg_n_0_[2] ),
        .I5(start_read_i_5_n_0),
        .O(\s_buf_cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \s_buf_cnt[6]_i_5 
       (.I0(\s_byte_pos[2]_i_5_n_0 ),
        .I1(s_s_tready_i_4_n_0),
        .I2(s_current_state__0[2]),
        .I3(s_current_state__0[1]),
        .I4(s_current_state__0[0]),
        .O(\s_buf_cnt[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \s_buf_cnt[6]_i_6 
       (.I0(\s_buf_cnt_reg_n_0_[5] ),
        .I1(\s_buf_cnt_reg_n_0_[4] ),
        .I2(\s_buf_cnt_reg_n_0_[2] ),
        .I3(\s_buf_cnt_reg_n_0_[1] ),
        .I4(\s_buf_cnt_reg_n_0_[0] ),
        .I5(\s_buf_cnt_reg_n_0_[3] ),
        .O(\s_buf_cnt[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF70FF00008000)) 
    \s_buf_cnt[7]_i_1 
       (.I0(\s_buf_cnt[6]_i_6_n_0 ),
        .I1(\s_buf_cnt_reg_n_0_[6] ),
        .I2(s_current_state__0[2]),
        .I3(rst_n),
        .I4(\s_buf_cnt[7]_i_2_n_0 ),
        .I5(\s_buf_cnt_reg_n_0_[7] ),
        .O(\s_buf_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFCF3ECFFEC)) 
    \s_buf_cnt[7]_i_2 
       (.I0(\s_num_bytes[2]_i_2_n_0 ),
        .I1(s_current_state__0[0]),
        .I2(s_current_state__0[1]),
        .I3(s_current_state__0[2]),
        .I4(s_s_tready_i_4_n_0),
        .I5(\s_byte_pos[2]_i_5_n_0 ),
        .O(\s_buf_cnt[7]_i_2_n_0 ));
  FDRE \s_buf_cnt_reg[0] 
       (.C(clk),
        .CE(s_buf_cnt0),
        .D(\s_buf_cnt[0]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[0] ),
        .R(\s_buf_cnt[6]_i_1_n_0 ));
  FDRE \s_buf_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_buf_cnt[1]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \s_buf_cnt_reg[2] 
       (.C(clk),
        .CE(s_buf_cnt0),
        .D(\s_buf_cnt[2]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[2] ),
        .R(\s_buf_cnt[6]_i_1_n_0 ));
  FDRE \s_buf_cnt_reg[3] 
       (.C(clk),
        .CE(s_buf_cnt0),
        .D(\s_buf_cnt[3]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[3] ),
        .R(\s_buf_cnt[6]_i_1_n_0 ));
  FDRE \s_buf_cnt_reg[4] 
       (.C(clk),
        .CE(s_buf_cnt0),
        .D(\s_buf_cnt[4]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[4] ),
        .R(\s_buf_cnt[6]_i_1_n_0 ));
  FDRE \s_buf_cnt_reg[5] 
       (.C(clk),
        .CE(s_buf_cnt0),
        .D(\s_buf_cnt[5]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[5] ),
        .R(\s_buf_cnt[6]_i_1_n_0 ));
  FDRE \s_buf_cnt_reg[6] 
       (.C(clk),
        .CE(s_buf_cnt0),
        .D(\s_buf_cnt[6]_i_3_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[6] ),
        .R(\s_buf_cnt[6]_i_1_n_0 ));
  FDRE \s_buf_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_buf_cnt[7]_i_1_n_0 ),
        .Q(\s_buf_cnt_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFEEEAAAA0222)) 
    \s_byte_pos[0]_i_1 
       (.I0(\s_byte_pos[0]_i_2_n_0 ),
        .I1(\s_byte_pos[2]_i_3_n_0 ),
        .I2(\s_byte_pos[2]_i_4_n_0 ),
        .I3(\s_byte_pos[2]_i_5_n_0 ),
        .I4(\s_byte_pos[2]_i_6_n_0 ),
        .I5(\s_byte_pos_reg_n_0_[0] ),
        .O(\s_byte_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE0FEF0)) 
    \s_byte_pos[0]_i_2 
       (.I0(\s_byte_pos_reg_n_0_[1] ),
        .I1(\s_byte_pos_reg_n_0_[2] ),
        .I2(s_current_state__0[0]),
        .I3(s_current_state__0[1]),
        .I4(s_current_state__0[2]),
        .I5(\s_byte_pos_reg_n_0_[0] ),
        .O(\s_byte_pos[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEEEAAAA0222)) 
    \s_byte_pos[1]_i_1 
       (.I0(\s_byte_pos[1]_i_2_n_0 ),
        .I1(\s_byte_pos[2]_i_3_n_0 ),
        .I2(\s_byte_pos[2]_i_4_n_0 ),
        .I3(\s_byte_pos[2]_i_5_n_0 ),
        .I4(\s_byte_pos[2]_i_6_n_0 ),
        .I5(\s_byte_pos_reg_n_0_[1] ),
        .O(\s_byte_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEE0000E0)) 
    \s_byte_pos[1]_i_2 
       (.I0(s_current_state__0[1]),
        .I1(s_current_state__0[0]),
        .I2(\s_byte_pos_reg_n_0_[2] ),
        .I3(\s_byte_pos_reg_n_0_[1] ),
        .I4(\s_byte_pos_reg_n_0_[0] ),
        .O(\s_byte_pos[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEEEAAAA0222)) 
    \s_byte_pos[2]_i_1 
       (.I0(\s_byte_pos[2]_i_2_n_0 ),
        .I1(\s_byte_pos[2]_i_3_n_0 ),
        .I2(\s_byte_pos[2]_i_4_n_0 ),
        .I3(\s_byte_pos[2]_i_5_n_0 ),
        .I4(\s_byte_pos[2]_i_6_n_0 ),
        .I5(\s_byte_pos_reg_n_0_[2] ),
        .O(\s_byte_pos[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3C0C0C0D7D7D7D7)) 
    \s_byte_pos[2]_i_2 
       (.I0(s_current_state__0[1]),
        .I1(\s_byte_pos_reg_n_0_[2] ),
        .I2(\s_byte_pos[2]_i_7_n_0 ),
        .I3(\s_num_bytes_reg_n_0_[2] ),
        .I4(s_current_state__0[2]),
        .I5(s_current_state__0[0]),
        .O(\s_byte_pos[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3FAFFFAFFFFFFFF)) 
    \s_byte_pos[2]_i_3 
       (.I0(s_s_tready_i_8_n_0),
        .I1(s_current_state__0[0]),
        .I2(s_current_state__0[1]),
        .I3(s_current_state__0[2]),
        .I4(s_s_tready_i_4_n_0),
        .I5(rst_n),
        .O(\s_byte_pos[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_byte_pos[2]_i_4 
       (.I0(s_axis_tready),
        .I1(s_axis_tvalid),
        .O(\s_byte_pos[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \s_byte_pos[2]_i_5 
       (.I0(\s_byte_pos_reg_n_0_[2] ),
        .I1(\s_byte_pos_reg_n_0_[1] ),
        .I2(\s_byte_pos_reg_n_0_[0] ),
        .O(\s_byte_pos[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \s_byte_pos[2]_i_6 
       (.I0(s_length0),
        .I1(\s_buf_cnt[6]_i_4_n_0 ),
        .I2(rst_n),
        .I3(s_current_state__0[2]),
        .I4(s_current_state__0[1]),
        .I5(s_current_state__0[0]),
        .O(\s_byte_pos[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s_byte_pos[2]_i_7 
       (.I0(\s_byte_pos_reg_n_0_[0] ),
        .I1(\s_byte_pos_reg_n_0_[1] ),
        .O(\s_byte_pos[2]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_byte_pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_byte_pos[0]_i_1_n_0 ),
        .Q(\s_byte_pos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_byte_pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_byte_pos[1]_i_1_n_0 ),
        .Q(\s_byte_pos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_byte_pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_byte_pos[2]_i_1_n_0 ),
        .Q(\s_byte_pos_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \s_command[7]_i_1 
       (.I0(\s_command[7]_i_2_n_0 ),
        .I1(s_current_state__0[1]),
        .I2(rst_n),
        .I3(s_current_state__0[2]),
        .I4(s_current_state__0[0]),
        .O(s_command0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_command[7]_i_2 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(\s_command[7]_i_3_n_0 ),
        .O(\s_command[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF77F)) 
    \s_command[7]_i_3 
       (.I0(s_axis_tready),
        .I1(s_axis_tvalid),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[5]),
        .I5(s_axis_tdata[7]),
        .O(\s_command[7]_i_3_n_0 ));
  FDRE \s_command_reg[0] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[0]),
        .Q(\s_command_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \s_command_reg[1] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[1]),
        .Q(\s_command_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \s_command_reg[2] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[2]),
        .Q(\s_command_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \s_command_reg[3] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[3]),
        .Q(\s_command_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \s_command_reg[4] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[4]),
        .Q(\s_command_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \s_command_reg[5] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[5]),
        .Q(\s_command_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \s_command_reg[6] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[6]),
        .Q(\s_command_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \s_command_reg[7] 
       (.C(clk),
        .CE(s_command0),
        .D(s_axis_tdata[7]),
        .Q(\s_command_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \s_length[7]_i_1 
       (.I0(s_current_state__0[0]),
        .I1(s_current_state__0[1]),
        .I2(s_current_state__0[2]),
        .I3(rst_n),
        .I4(\s_byte_pos[2]_i_5_n_0 ),
        .I5(\s_byte_pos[2]_i_4_n_0 ),
        .O(s_length0));
  FDRE \s_length_reg[0] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[0]),
        .Q(\s_length_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \s_length_reg[1] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[1]),
        .Q(\s_length_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \s_length_reg[2] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[2]),
        .Q(\s_length_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \s_length_reg[3] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[3]),
        .Q(\s_length_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \s_length_reg[4] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[4]),
        .Q(\s_length_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \s_length_reg[5] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[5]),
        .Q(\s_length_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \s_length_reg[6] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[6]),
        .Q(\s_length_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \s_length_reg[7] 
       (.C(clk),
        .CE(s_length0),
        .D(s_axis_tdata[7]),
        .Q(\s_length_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCC400040)) 
    s_m_axis_tvalid_i_1
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(s_op_state__0[0]),
        .I2(s_m_axis_tvalid_i_2_n_0),
        .I3(s_op_state__0[1]),
        .I4(m_axis_tvalid),
        .O(s_m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    s_m_axis_tvalid_i_2
       (.I0(m_axis_tready),
        .I1(\s_op_byte_reg_n_0_[0] ),
        .I2(\s_op_byte_reg_n_0_[1] ),
        .I3(\s_op_byte_reg_n_0_[2] ),
        .O(s_m_axis_tvalid_i_2_n_0));
  FDCE s_m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid));
  LUT6 #(
    .INIT(64'hFFFFFFFF0002000A)) 
    \s_num_bytes[2]_i_1 
       (.I0(rst_n),
        .I1(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I2(start_read_i_6_n_0),
        .I3(\s_byte_pos[2]_i_5_n_0 ),
        .I4(\s_num_bytes[2]_i_2_n_0 ),
        .I5(\s_num_bytes_reg_n_0_[2] ),
        .O(\s_num_bytes[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \s_num_bytes[2]_i_2 
       (.I0(start_read_i_5_n_0),
        .I1(\s_command_reg_n_0_[2] ),
        .I2(\s_command_reg_n_0_[0] ),
        .I3(\s_command_reg_n_0_[1] ),
        .I4(\s_command_reg_n_0_[3] ),
        .O(\s_num_bytes[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_num_bytes_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_num_bytes[2]_i_1_n_0 ),
        .Q(\s_num_bytes_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0333A888)) 
    \s_op_byte[0]_i_1 
       (.I0(\s_opptr[7]_i_3_n_0 ),
        .I1(s_opptr_0),
        .I2(\m_axis_tdata[7]_i_1_n_0 ),
        .I3(m_axis_tready),
        .I4(\s_op_byte_reg_n_0_[0] ),
        .O(\s_op_byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F8F22202020)) 
    \s_op_byte[1]_i_1 
       (.I0(\s_opptr[7]_i_3_n_0 ),
        .I1(\s_op_byte_reg_n_0_[0] ),
        .I2(s_opptr_0),
        .I3(\m_axis_tdata[7]_i_1_n_0 ),
        .I4(m_axis_tready),
        .I5(\s_op_byte_reg_n_0_[1] ),
        .O(\s_op_byte[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_op_byte[2]_i_1 
       (.I0(\s_op_byte[2]_i_2_n_0 ),
        .I1(s_opptr_0),
        .I2(\m_axis_tdata[7]_i_1_n_0 ),
        .I3(m_axis_tready),
        .I4(\s_op_byte_reg_n_0_[2] ),
        .O(\s_op_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE2E2E22A)) 
    \s_op_byte[2]_i_2 
       (.I0(\s_num_bytes_reg_n_0_[2] ),
        .I1(s_op_state__0[0]),
        .I2(\s_op_byte_reg_n_0_[2] ),
        .I3(\s_op_byte_reg_n_0_[0] ),
        .I4(\s_op_byte_reg_n_0_[1] ),
        .O(\s_op_byte[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_op_byte_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_op_byte[0]_i_1_n_0 ),
        .Q(\s_op_byte_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_op_byte_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_op_byte[1]_i_1_n_0 ),
        .Q(\s_op_byte_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b0)) 
    \s_op_byte_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_op_byte[2]_i_1_n_0 ),
        .PRE(s_s_tready_i_2_n_0),
        .Q(\s_op_byte_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hFAF8FA58)) 
    \s_op_state[0]_i_1 
       (.I0(rst_n),
        .I1(s_start_reg_n_0),
        .I2(s_op_state__0[0]),
        .I3(s_op_state__0[1]),
        .I4(\s_op_state[0]_i_2_n_0 ),
        .O(\s_op_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000001FF)) 
    \s_op_state[0]_i_2 
       (.I0(\s_op_byte_reg_n_0_[2] ),
        .I1(\s_op_byte_reg_n_0_[1] ),
        .I2(\s_op_byte_reg_n_0_[0] ),
        .I3(m_axis_tready),
        .I4(\m_axis_tdata[7]_i_2_n_0 ),
        .O(\s_op_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777FFFF0A080000)) 
    \s_op_state[1]_i_1 
       (.I0(rst_n),
        .I1(\s_op_state[1]_i_2_n_0 ),
        .I2(\m_axis_tdata[7]_i_2_n_0 ),
        .I3(s_m_axis_tvalid_i_2_n_0),
        .I4(s_op_state__0[0]),
        .I5(s_op_state__0[1]),
        .O(\s_op_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h3F22)) 
    \s_op_state[1]_i_2 
       (.I0(s_start_reg_n_0),
        .I1(s_op_state__0[0]),
        .I2(m_axis_tready),
        .I3(s_op_state__0[1]),
        .O(\s_op_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "output:01,check:11,delay:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_op_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_op_state[0]_i_1_n_0 ),
        .Q(s_op_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "output:01,check:11,delay:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_op_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_op_state[1]_i_1_n_0 ),
        .Q(s_op_state__0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_opptr[0]_i_1 
       (.I0(s_op_state__0[0]),
        .I1(\s_opptr_reg_n_0_[0] ),
        .O(s_opptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \s_opptr[1]_i_1 
       (.I0(\s_opptr_reg_n_0_[0] ),
        .I1(\s_opptr_reg_n_0_[1] ),
        .I2(s_op_state__0[0]),
        .O(\s_opptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \s_opptr[2]_i_1 
       (.I0(s_op_state__0[0]),
        .I1(\s_opptr_reg_n_0_[1] ),
        .I2(\s_opptr_reg_n_0_[0] ),
        .I3(\s_opptr_reg_n_0_[2] ),
        .O(s_opptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \s_opptr[3]_i_1 
       (.I0(s_op_state__0[0]),
        .I1(\s_opptr_reg_n_0_[0] ),
        .I2(\s_opptr_reg_n_0_[1] ),
        .I3(\s_opptr_reg_n_0_[2] ),
        .I4(\s_opptr_reg_n_0_[3] ),
        .O(s_opptr[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \s_opptr[4]_i_1 
       (.I0(s_op_state__0[0]),
        .I1(\s_opptr_reg_n_0_[2] ),
        .I2(\s_opptr_reg_n_0_[1] ),
        .I3(\s_opptr_reg_n_0_[0] ),
        .I4(\s_opptr_reg_n_0_[3] ),
        .I5(\s_opptr_reg_n_0_[4] ),
        .O(s_opptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \s_opptr[5]_i_1 
       (.I0(s_op_state__0[0]),
        .I1(\s_opptr[5]_i_2_n_0 ),
        .I2(\s_opptr_reg_n_0_[5] ),
        .O(s_opptr[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_opptr[5]_i_2 
       (.I0(\s_opptr_reg_n_0_[3] ),
        .I1(\s_opptr_reg_n_0_[0] ),
        .I2(\s_opptr_reg_n_0_[1] ),
        .I3(\s_opptr_reg_n_0_[2] ),
        .I4(\s_opptr_reg_n_0_[4] ),
        .O(\s_opptr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s_opptr[6]_i_1 
       (.I0(s_op_state__0[0]),
        .I1(\s_opptr[7]_i_4_n_0 ),
        .I2(\s_opptr_reg_n_0_[6] ),
        .O(s_opptr[6]));
  LUT5 #(
    .INIT(32'h00000074)) 
    \s_opptr[7]_i_1 
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(s_op_state__0[0]),
        .I2(s_start_reg_n_0),
        .I3(\s_opptr[7]_i_3_n_0 ),
        .I4(s_op_state__0[1]),
        .O(s_opptr_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \s_opptr[7]_i_2 
       (.I0(\s_opptr[7]_i_4_n_0 ),
        .I1(\s_opptr_reg_n_0_[6] ),
        .I2(\s_opptr_reg_n_0_[7] ),
        .I3(s_op_state__0[0]),
        .O(\s_opptr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \s_opptr[7]_i_3 
       (.I0(s_op_state__0[0]),
        .I1(\s_op_byte_reg_n_0_[0] ),
        .I2(\s_op_byte_reg_n_0_[1] ),
        .I3(\s_op_byte_reg_n_0_[2] ),
        .O(\s_opptr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \s_opptr[7]_i_4 
       (.I0(\s_opptr_reg_n_0_[5] ),
        .I1(\s_opptr_reg_n_0_[4] ),
        .I2(\s_opptr_reg_n_0_[2] ),
        .I3(\s_opptr_reg_n_0_[1] ),
        .I4(\s_opptr_reg_n_0_[0] ),
        .I5(\s_opptr_reg_n_0_[3] ),
        .O(\s_opptr[7]_i_4_n_0 ));
  FDCE \s_opptr_reg[0] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_opptr[0]),
        .Q(\s_opptr_reg_n_0_[0] ));
  FDCE \s_opptr_reg[1] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_opptr[1]_i_1_n_0 ),
        .Q(\s_opptr_reg_n_0_[1] ));
  FDCE \s_opptr_reg[2] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_opptr[2]),
        .Q(\s_opptr_reg_n_0_[2] ));
  FDCE \s_opptr_reg[3] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_opptr[3]),
        .Q(\s_opptr_reg_n_0_[3] ));
  FDCE \s_opptr_reg[4] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_opptr[4]),
        .Q(\s_opptr_reg_n_0_[4] ));
  FDCE \s_opptr_reg[5] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_opptr[5]),
        .Q(\s_opptr_reg_n_0_[5] ));
  FDCE \s_opptr_reg[6] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_opptr[6]),
        .Q(\s_opptr_reg_n_0_[6] ));
  FDCE \s_opptr_reg[7] 
       (.C(clk),
        .CE(s_opptr_0),
        .CLR(s_s_tready_i_2_n_0),
        .D(\s_opptr[7]_i_2_n_0 ),
        .Q(\s_opptr_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \s_read_buffer[0][31]_i_1 
       (.I0(s_current_state__0[0]),
        .I1(s_axil_valid_reg_n_0),
        .I2(s_current_state__0[2]),
        .I3(s_current_state__0[1]),
        .I4(rst_n),
        .O(\s_read_buffer[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][0] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[0]),
        .Q(\s_read_buffer_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][10] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[10]),
        .Q(\s_read_buffer_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][11] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[11]),
        .Q(\s_read_buffer_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][12] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[12]),
        .Q(\s_read_buffer_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][13] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[13]),
        .Q(\s_read_buffer_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][14] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[14]),
        .Q(\s_read_buffer_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][15] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[15]),
        .Q(\s_read_buffer_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][16] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[16]),
        .Q(\s_read_buffer_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][17] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[17]),
        .Q(\s_read_buffer_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][18] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[18]),
        .Q(\s_read_buffer_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][19] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[19]),
        .Q(\s_read_buffer_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][1] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[1]),
        .Q(\s_read_buffer_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][20] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[20]),
        .Q(\s_read_buffer_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][21] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[21]),
        .Q(\s_read_buffer_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][22] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[22]),
        .Q(\s_read_buffer_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][23] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[23]),
        .Q(\s_read_buffer_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][24] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[24]),
        .Q(\s_read_buffer_reg[0] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][25] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[25]),
        .Q(\s_read_buffer_reg[0] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][26] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[26]),
        .Q(\s_read_buffer_reg[0] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][27] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[27]),
        .Q(\s_read_buffer_reg[0] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][28] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[28]),
        .Q(\s_read_buffer_reg[0] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][29] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[29]),
        .Q(\s_read_buffer_reg[0] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][2] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[2]),
        .Q(\s_read_buffer_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][30] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[30]),
        .Q(\s_read_buffer_reg[0] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][31] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[31]),
        .Q(\s_read_buffer_reg[0] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][3] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[3]),
        .Q(\s_read_buffer_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][4] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[4]),
        .Q(\s_read_buffer_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][5] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[5]),
        .Q(\s_read_buffer_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][6] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[6]),
        .Q(\s_read_buffer_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][7] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[7]),
        .Q(\s_read_buffer_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][8] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[8]),
        .Q(\s_read_buffer_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_read_buffer_reg[0][9] 
       (.C(clk),
        .CE(\s_read_buffer[0][31]_i_1_n_0 ),
        .D(s_axil_data[9]),
        .Q(\s_read_buffer_reg[0] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[0]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[8] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [0]),
        .O(s_read_buffer_temp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[10]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[18] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [10]),
        .O(s_read_buffer_temp[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[11]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[19] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [11]),
        .O(s_read_buffer_temp[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[12]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[20] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [12]),
        .O(s_read_buffer_temp[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[13]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[21] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [13]),
        .O(s_read_buffer_temp[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[14]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[22] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [14]),
        .O(s_read_buffer_temp[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[15]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[23] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [15]),
        .O(s_read_buffer_temp[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[16]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[24] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [16]),
        .O(s_read_buffer_temp[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[17]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[25] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [17]),
        .O(s_read_buffer_temp[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[18]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[26] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [18]),
        .O(s_read_buffer_temp[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[19]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[27] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [19]),
        .O(s_read_buffer_temp[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[1]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[9] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [1]),
        .O(s_read_buffer_temp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[20]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[28] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [20]),
        .O(s_read_buffer_temp[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[21]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[29] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [21]),
        .O(s_read_buffer_temp[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[22]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[30] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [22]),
        .O(s_read_buffer_temp[22]));
  LUT6 #(
    .INIT(64'h0000000073400000)) 
    \s_read_buffer_temp[23]_i_1 
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(s_op_state__0[0]),
        .I2(s_m_axis_tvalid_i_2_n_0),
        .I3(s_start_reg_n_0),
        .I4(rst_n),
        .I5(s_op_state__0[1]),
        .O(s_read_buffer_temp0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[23]_i_2 
       (.I0(\s_read_buffer_temp_reg_n_0_[31] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [23]),
        .O(s_read_buffer_temp[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[2]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[10] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [2]),
        .O(s_read_buffer_temp[2]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \s_read_buffer_temp[31]_i_1 
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(s_op_state__0[0]),
        .I2(s_op_state__0[1]),
        .I3(rst_n),
        .I4(s_m_axis_tvalid_i_2_n_0),
        .O(\s_read_buffer_temp[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[3]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[11] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [3]),
        .O(s_read_buffer_temp[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[4]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[12] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [4]),
        .O(s_read_buffer_temp[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[5]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[13] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [5]),
        .O(s_read_buffer_temp[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[6]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[14] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [6]),
        .O(s_read_buffer_temp[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[7]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[15] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [7]),
        .O(s_read_buffer_temp[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[8]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[16] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [8]),
        .O(s_read_buffer_temp[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_read_buffer_temp[9]_i_1 
       (.I0(\s_read_buffer_temp_reg_n_0_[17] ),
        .I1(s_op_state__0[0]),
        .I2(\s_read_buffer_reg[0] [9]),
        .O(s_read_buffer_temp[9]));
  FDRE \s_read_buffer_temp_reg[0] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[0]),
        .Q(\s_read_buffer_temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[10] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[10]),
        .Q(\s_read_buffer_temp_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[11] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[11]),
        .Q(\s_read_buffer_temp_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[12] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[12]),
        .Q(\s_read_buffer_temp_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[13] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[13]),
        .Q(\s_read_buffer_temp_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[14] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[14]),
        .Q(\s_read_buffer_temp_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[15] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[15]),
        .Q(\s_read_buffer_temp_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[16] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[16]),
        .Q(\s_read_buffer_temp_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[17] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[17]),
        .Q(\s_read_buffer_temp_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[18] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[18]),
        .Q(\s_read_buffer_temp_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[19] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[19]),
        .Q(\s_read_buffer_temp_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[1] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[1]),
        .Q(\s_read_buffer_temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[20] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[20]),
        .Q(\s_read_buffer_temp_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[21] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[21]),
        .Q(\s_read_buffer_temp_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[22] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[22]),
        .Q(\s_read_buffer_temp_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[23] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[23]),
        .Q(\s_read_buffer_temp_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[24] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [24]),
        .Q(\s_read_buffer_temp_reg_n_0_[24] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[25] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [25]),
        .Q(\s_read_buffer_temp_reg_n_0_[25] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[26] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [26]),
        .Q(\s_read_buffer_temp_reg_n_0_[26] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[27] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [27]),
        .Q(\s_read_buffer_temp_reg_n_0_[27] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[28] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [28]),
        .Q(\s_read_buffer_temp_reg_n_0_[28] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[29] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [29]),
        .Q(\s_read_buffer_temp_reg_n_0_[29] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[2] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[2]),
        .Q(\s_read_buffer_temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[30] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [30]),
        .Q(\s_read_buffer_temp_reg_n_0_[30] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[31] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(\s_read_buffer_reg[0] [31]),
        .Q(\s_read_buffer_temp_reg_n_0_[31] ),
        .R(\s_read_buffer_temp[31]_i_1_n_0 ));
  FDRE \s_read_buffer_temp_reg[3] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[3]),
        .Q(\s_read_buffer_temp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[4] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[4]),
        .Q(\s_read_buffer_temp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[5] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[5]),
        .Q(\s_read_buffer_temp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[6] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[6]),
        .Q(\s_read_buffer_temp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[7] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[7]),
        .Q(\s_read_buffer_temp_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[8] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[8]),
        .Q(\s_read_buffer_temp_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \s_read_buffer_temp_reg[9] 
       (.C(clk),
        .CE(s_read_buffer_temp0),
        .D(s_read_buffer_temp[9]),
        .Q(\s_read_buffer_temp_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF90B09090)) 
    s_s_tready_i_1
       (.I0(s_current_state__0[0]),
        .I1(s_current_state__0[1]),
        .I2(s_current_state__0[2]),
        .I3(s_s_tready_i_3_n_0),
        .I4(s_s_tready_i_4_n_0),
        .I5(s_s_tready_i_5_n_0),
        .O(s_s_tready));
  LUT1 #(
    .INIT(2'h1)) 
    s_s_tready_i_2
       (.I0(rst_n),
        .O(s_s_tready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10001111)) 
    s_s_tready_i_3
       (.I0(\s_byte_pos_reg_n_0_[1] ),
        .I1(\s_byte_pos_reg_n_0_[2] ),
        .I2(s_axis_tready),
        .I3(s_axis_tvalid),
        .I4(\s_byte_pos_reg_n_0_[0] ),
        .O(s_s_tready_i_3_n_0));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    s_s_tready_i_4
       (.I0(s_s_tready_i_6_n_0),
        .I1(s_s_tready_i_7_n_0),
        .I2(\s_length_reg_n_0_[7] ),
        .I3(\s_buf_cnt_reg_n_0_[7] ),
        .I4(\s_length_reg_n_0_[6] ),
        .I5(\s_buf_cnt_reg_n_0_[6] ),
        .O(s_s_tready_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FF0FDDCC)) 
    s_s_tready_i_5
       (.I0(s_s_tready_i_3_n_0),
        .I1(s_s_tready_i_8_n_0),
        .I2(s_s_tready_i_9_n_0),
        .I3(s_current_state__0[0]),
        .I4(s_current_state__0[1]),
        .I5(s_current_state__0[2]),
        .O(s_s_tready_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    s_s_tready_i_6
       (.I0(\s_buf_cnt_reg_n_0_[0] ),
        .I1(\s_length_reg_n_0_[0] ),
        .I2(\s_length_reg_n_0_[2] ),
        .I3(\s_buf_cnt_reg_n_0_[2] ),
        .I4(\s_length_reg_n_0_[1] ),
        .I5(\s_buf_cnt_reg_n_0_[1] ),
        .O(s_s_tready_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    s_s_tready_i_7
       (.I0(\s_buf_cnt_reg_n_0_[3] ),
        .I1(\s_length_reg_n_0_[3] ),
        .I2(\s_length_reg_n_0_[5] ),
        .I3(\s_buf_cnt_reg_n_0_[5] ),
        .I4(\s_length_reg_n_0_[4] ),
        .I5(\s_buf_cnt_reg_n_0_[4] ),
        .O(s_s_tready_i_7_n_0));
  LUT6 #(
    .INIT(64'h5555555555555455)) 
    s_s_tready_i_8
       (.I0(s_current_state__0[0]),
        .I1(\s_command[7]_i_3_n_0 ),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[6]),
        .I5(s_axis_tdata[4]),
        .O(s_s_tready_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8888888F)) 
    s_s_tready_i_9
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(\s_byte_pos_reg_n_0_[0] ),
        .I3(\s_byte_pos_reg_n_0_[1] ),
        .I4(\s_byte_pos_reg_n_0_[2] ),
        .O(s_s_tready_i_9_n_0));
  FDCE s_s_tready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(s_s_tready),
        .Q(s_axis_tready));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    s_start_i_1
       (.I0(s_current_state__0[1]),
        .I1(s_current_state__0[2]),
        .I2(s_axil_valid_reg_n_0),
        .I3(s_current_state__0[0]),
        .I4(rst_n),
        .I5(s_start_reg_n_0),
        .O(s_start_i_1_n_0));
  FDRE s_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_start_i_1_n_0),
        .Q(s_start_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \s_write_buffer[0][31]_i_1 
       (.I0(\s_buf_cnt[6]_i_5_n_0 ),
        .I1(\s_write_buffer[0][31]_i_2_n_0 ),
        .I2(\s_buf_cnt_reg_n_0_[7] ),
        .I3(\s_buf_cnt_reg_n_0_[2] ),
        .I4(rst_n),
        .O(\s_write_buffer_reg[0]0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_write_buffer[0][31]_i_2 
       (.I0(\s_buf_cnt_reg_n_0_[0] ),
        .I1(\s_buf_cnt_reg_n_0_[1] ),
        .I2(\s_buf_cnt_reg_n_0_[3] ),
        .I3(\s_buf_cnt_reg_n_0_[5] ),
        .I4(\s_buf_cnt_reg_n_0_[4] ),
        .I5(\s_buf_cnt_reg_n_0_[6] ),
        .O(\s_write_buffer[0][31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][0] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[0]),
        .Q(\s_write_buffer_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][10] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[10]),
        .Q(\s_write_buffer_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][11] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[11]),
        .Q(\s_write_buffer_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][12] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[12]),
        .Q(\s_write_buffer_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][13] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[13]),
        .Q(\s_write_buffer_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][14] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[14]),
        .Q(\s_write_buffer_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][15] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[15]),
        .Q(\s_write_buffer_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][16] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[16]),
        .Q(\s_write_buffer_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][17] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[17]),
        .Q(\s_write_buffer_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][18] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[18]),
        .Q(\s_write_buffer_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][19] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[19]),
        .Q(\s_write_buffer_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][1] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[1]),
        .Q(\s_write_buffer_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][20] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[20]),
        .Q(\s_write_buffer_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][21] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[21]),
        .Q(\s_write_buffer_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][22] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[22]),
        .Q(\s_write_buffer_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][23] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[23]),
        .Q(\s_write_buffer_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][24] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[24]),
        .Q(\s_write_buffer_reg[0] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][25] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[25]),
        .Q(\s_write_buffer_reg[0] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][26] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[26]),
        .Q(\s_write_buffer_reg[0] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][27] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[27]),
        .Q(\s_write_buffer_reg[0] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][28] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[28]),
        .Q(\s_write_buffer_reg[0] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][29] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[29]),
        .Q(\s_write_buffer_reg[0] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][2] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[2]),
        .Q(\s_write_buffer_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][30] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[30]),
        .Q(\s_write_buffer_reg[0] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][31] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[31]),
        .Q(\s_write_buffer_reg[0] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][3] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[3]),
        .Q(\s_write_buffer_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][4] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[4]),
        .Q(\s_write_buffer_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][5] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[5]),
        .Q(\s_write_buffer_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][6] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[6]),
        .Q(\s_write_buffer_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][7] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[7]),
        .Q(\s_write_buffer_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][8] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[8]),
        .Q(\s_write_buffer_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_write_buffer_reg[0][9] 
       (.C(clk),
        .CE(\s_write_buffer_reg[0]0 ),
        .D(s_write_buffer_temp[9]),
        .Q(\s_write_buffer_reg[0] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_write_buffer_temp[31]_i_1 
       (.I0(s_s_tready_i_4_n_0),
        .I1(rst_n),
        .I2(s_current_state__0[2]),
        .I3(\s_write_buffer_temp[31]_i_2_n_0 ),
        .I4(s_current_state__0[1]),
        .I5(s_current_state__0[0]),
        .O(s_write_buffer_temp0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    \s_write_buffer_temp[31]_i_2 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(\s_byte_pos_reg_n_0_[0] ),
        .I3(\s_byte_pos_reg_n_0_[1] ),
        .I4(\s_byte_pos_reg_n_0_[2] ),
        .O(\s_write_buffer_temp[31]_i_2_n_0 ));
  FDRE \s_write_buffer_temp_reg[0] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[0]),
        .Q(s_write_buffer_temp[0]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[10] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[2]),
        .Q(s_write_buffer_temp[10]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[11] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[3]),
        .Q(s_write_buffer_temp[11]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[12] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[4]),
        .Q(s_write_buffer_temp[12]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[13] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[5]),
        .Q(s_write_buffer_temp[13]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[14] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[6]),
        .Q(s_write_buffer_temp[14]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[15] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[7]),
        .Q(s_write_buffer_temp[15]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[16] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[8]),
        .Q(s_write_buffer_temp[16]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[17] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[9]),
        .Q(s_write_buffer_temp[17]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[18] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[10]),
        .Q(s_write_buffer_temp[18]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[19] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[11]),
        .Q(s_write_buffer_temp[19]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[1] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[1]),
        .Q(s_write_buffer_temp[1]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[20] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[12]),
        .Q(s_write_buffer_temp[20]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[21] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[13]),
        .Q(s_write_buffer_temp[21]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[22] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[14]),
        .Q(s_write_buffer_temp[22]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[23] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[15]),
        .Q(s_write_buffer_temp[23]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[24] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[16]),
        .Q(s_write_buffer_temp[24]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[25] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[17]),
        .Q(s_write_buffer_temp[25]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[26] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[18]),
        .Q(s_write_buffer_temp[26]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[27] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[19]),
        .Q(s_write_buffer_temp[27]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[28] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[20]),
        .Q(s_write_buffer_temp[28]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[29] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[21]),
        .Q(s_write_buffer_temp[29]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[2] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[2]),
        .Q(s_write_buffer_temp[2]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[30] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[22]),
        .Q(s_write_buffer_temp[30]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[31] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[23]),
        .Q(s_write_buffer_temp[31]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[3] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[3]),
        .Q(s_write_buffer_temp[3]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[4] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[4]),
        .Q(s_write_buffer_temp[4]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[5] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[5]),
        .Q(s_write_buffer_temp[5]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[6] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[6]),
        .Q(s_write_buffer_temp[6]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[7] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_axis_tdata[7]),
        .Q(s_write_buffer_temp[7]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[8] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[0]),
        .Q(s_write_buffer_temp[8]),
        .R(1'b0));
  FDRE \s_write_buffer_temp_reg[9] 
       (.C(clk),
        .CE(s_write_buffer_temp0),
        .D(s_write_buffer_temp[1]),
        .Q(s_write_buffer_temp[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    start_read_i_1
       (.I0(start_read_i_2_n_0),
        .I1(start_read_i_3_n_0),
        .I2(start_read_i_4_n_0),
        .I3(start_read_i_5_n_0),
        .I4(start_read_i_6_n_0),
        .I5(\s_byte_pos[2]_i_5_n_0 ),
        .O(start_read));
  LUT4 #(
    .INIT(16'hFFF7)) 
    start_read_i_2
       (.I0(\s_command_reg_n_0_[2] ),
        .I1(\s_command_reg_n_0_[0] ),
        .I2(\s_command_reg_n_0_[3] ),
        .I3(\s_length_reg_n_0_[5] ),
        .O(start_read_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    start_read_i_3
       (.I0(\s_length_reg_n_0_[0] ),
        .I1(\s_command_reg_n_0_[1] ),
        .I2(\s_length_reg_n_0_[1] ),
        .I3(\s_length_reg_n_0_[7] ),
        .O(start_read_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    start_read_i_4
       (.I0(\s_length_reg_n_0_[6] ),
        .I1(\s_length_reg_n_0_[2] ),
        .I2(\s_length_reg_n_0_[4] ),
        .I3(\s_length_reg_n_0_[3] ),
        .O(start_read_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    start_read_i_5
       (.I0(\s_command_reg_n_0_[6] ),
        .I1(\s_command_reg_n_0_[4] ),
        .I2(\s_command_reg_n_0_[7] ),
        .I3(\s_command_reg_n_0_[5] ),
        .O(start_read_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    start_read_i_6
       (.I0(s_current_state__0[0]),
        .I1(s_current_state__0[1]),
        .I2(s_current_state__0[2]),
        .O(start_read_i_6_n_0));
  FDCE start_read_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(start_read),
        .Q(start_read_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3400)) 
    start_write_i_1
       (.I0(s_s_tready_i_4_n_0),
        .I1(s_current_state__0[0]),
        .I2(s_current_state__0[1]),
        .I3(s_current_state__0[2]),
        .O(start_write));
  FDCE start_write_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_s_tready_i_2_n_0),
        .D(start_write),
        .Q(start_write_reg_n_0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_wrapper" *) 
module cadc_system_axi_protocol_0_0_axi_protocol_wrapper
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axi_awaddr,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_rready,
    rst_n,
    s_axis_tvalid,
    s_axis_tdata,
    clk,
    m_axi_wready,
    m_axi_bvalid,
    m_axis_tready,
    m_axi_rdata,
    m_axi_awready,
    m_axi_arready,
    m_axi_rvalid);
  output s_axis_tready;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  output [31:0]m_axi_awaddr;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [0:0]m_axi_wstrb;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output m_axi_wvalid;
  output m_axi_bready;
  output m_axi_rready;
  input rst_n;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input clk;
  input m_axi_wready;
  input m_axi_bvalid;
  input m_axis_tready;
  input [31:0]m_axi_rdata;
  input m_axi_awready;
  input m_axi_arready;
  input m_axi_rvalid;

  wire clk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [0:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst_n;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  cadc_system_axi_protocol_0_0_axi_protocol u_axi_protocol
       (.clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
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
