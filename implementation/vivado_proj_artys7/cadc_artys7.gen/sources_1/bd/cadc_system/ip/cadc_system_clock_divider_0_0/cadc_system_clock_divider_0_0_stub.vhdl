-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Mar 18 14:54:49 2026
-- Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_artys7/cadc_artys7.gen/sources_1/bd/cadc_system/ip/cadc_system_clock_divider_0_0/cadc_system_clock_divider_0_0_stub.vhdl
-- Design      : cadc_system_clock_divider_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cadc_system_clock_divider_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rst_n : in STD_LOGIC;
    o_clk_div : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cadc_system_clock_divider_0_0 : entity is "cadc_system_clock_divider_0_0,clock_divider,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of cadc_system_clock_divider_0_0 : entity is "cadc_system_clock_divider_0_0,clock_divider,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=clock_divider,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,g_DIV_RATIO=4}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cadc_system_clock_divider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cadc_system_clock_divider_0_0 : entity is "module_ref";
end cadc_system_clock_divider_0_0;

architecture stub of cadc_system_clock_divider_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "i_clk,i_rst_n,o_clk_div";
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of i_clk : signal is "slave i_clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst_n, FREQ_HZ 6000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of i_rst_n : signal is "xilinx.com:signal:reset:1.0 i_rst_n RST";
  attribute x_interface_mode of i_rst_n : signal is "slave i_rst_n";
  attribute x_interface_parameter of i_rst_n : signal is "XIL_INTERFACENAME i_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "clock_divider,Vivado 2025.2";
begin
end;
