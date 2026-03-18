-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Mar 18 14:55:00 2026
-- Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_artys7/cadc_artys7.gen/sources_1/bd/cadc_system/ip/cadc_system_cadc_top_0_0/cadc_system_cadc_top_0_0_stub.vhdl
-- Design      : cadc_system_cadc_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cadc_system_cadc_top_0_0 is
  Port ( 
    i_clk_master : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_sensor_ps : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_qc : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_tat : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_analog : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_digital : in STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_mach : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_alt : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_airspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_vspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_wing : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_flap : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_glove : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_bit_status : out STD_LOGIC;
    i_channel_active : in STD_LOGIC;
    o_fail_detect : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cadc_system_cadc_top_0_0 : entity is "cadc_system_cadc_top_0_0,cadc_wrapper,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of cadc_system_cadc_top_0_0 : entity is "cadc_system_cadc_top_0_0,cadc_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cadc_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cadc_system_cadc_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cadc_system_cadc_top_0_0 : entity is "module_ref";
end cadc_system_cadc_top_0_0;

architecture stub of cadc_system_cadc_top_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "i_clk_master,i_rst,i_sensor_ps[19:0],i_sensor_qc[19:0],i_sensor_tat[19:0],i_sensor_analog[19:0],i_sensor_digital[19:0],o_out_mach[19:0],o_out_alt[19:0],o_out_airspd[19:0],o_out_vspd[19:0],o_out_wing[19:0],o_out_flap[19:0],o_out_glove[19:0],o_bit_status,i_channel_active,o_fail_detect";
  attribute x_interface_info : string;
  attribute x_interface_info of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of i_rst : signal is "slave i_rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "cadc_wrapper,Vivado 2025.2";
begin
end;
