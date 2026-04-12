// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Apr 12 12:13:16 2026
// Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_clock_divider_0_0/cadc_system_clock_divider_0_0_sim_netlist.v
// Design      : cadc_system_clock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cadc_system_clock_divider_0_0,clock_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clock_divider,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module cadc_system_clock_divider_0_0
   (i_clk,
    i_rst_n,
    o_clk_div);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_mode = "slave i_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst_n, FREQ_HZ 6000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_rst_n RST" *) (* x_interface_mode = "slave i_rst_n" *) (* x_interface_parameter = "XIL_INTERFACENAME i_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rst_n;
  output o_clk_div;

  wire i_clk;
  wire i_rst_n;
  wire o_clk_div;

  cadc_system_clock_divider_0_0_clock_divider U0
       (.i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .o_clk_div(o_clk_div));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module cadc_system_clock_divider_0_0_clock_divider
   (o_clk_div,
    i_clk,
    i_rst_n);
  output o_clk_div;
  input i_clk;
  input i_rst_n;

  wire clk_reg_i_1_n_0;
  wire clk_reg_i_2_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire i_clk;
  wire i_rst_n;
  wire o_clk_div;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    clk_reg_i_1
       (.I0(\counter_reg_n_0_[0] ),
        .I1(o_clk_div),
        .O(clk_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_reg_i_2
       (.I0(i_rst_n),
        .O(clk_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_reg_reg
       (.C(i_clk),
        .CE(1'b1),
        .CLR(clk_reg_i_2_n_0),
        .D(clk_reg_i_1_n_0),
        .Q(o_clk_div));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(clk_reg_i_2_n_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
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
