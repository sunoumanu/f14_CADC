-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sun Apr 12 12:13:16 2026
-- Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_clock_divider_0_0/cadc_system_clock_divider_0_0_sim_netlist.vhdl
-- Design      : cadc_system_clock_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_clock_divider_0_0_clock_divider is
  port (
    o_clk_div : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_clock_divider_0_0_clock_divider : entity is "clock_divider";
end cadc_system_clock_divider_0_0_clock_divider;

architecture STRUCTURE of cadc_system_clock_divider_0_0_clock_divider is
  signal clk_reg_i_1_n_0 : STD_LOGIC;
  signal clk_reg_i_2_n_0 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \^o_clk_div\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
begin
  o_clk_div <= \^o_clk_div\;
clk_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \^o_clk_div\,
      O => clk_reg_i_1_n_0
    );
clk_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_n,
      O => clk_reg_i_2_n_0
    );
clk_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => clk_reg_i_2_n_0,
      D => clk_reg_i_1_n_0,
      Q => \^o_clk_div\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => clk_reg_i_2_n_0,
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg_n_0_[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_clock_divider_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rst_n : in STD_LOGIC;
    o_clk_div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cadc_system_clock_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cadc_system_clock_divider_0_0 : entity is "cadc_system_clock_divider_0_0,clock_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cadc_system_clock_divider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cadc_system_clock_divider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of cadc_system_clock_divider_0_0 : entity is "clock_divider,Vivado 2025.2";
end cadc_system_clock_divider_0_0;

architecture STRUCTURE of cadc_system_clock_divider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of i_clk : signal is "slave i_clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst_n, FREQ_HZ 6000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of i_rst_n : signal is "xilinx.com:signal:reset:1.0 i_rst_n RST";
  attribute x_interface_mode of i_rst_n : signal is "slave i_rst_n";
  attribute x_interface_parameter of i_rst_n : signal is "XIL_INTERFACENAME i_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.cadc_system_clock_divider_0_0_clock_divider
     port map (
      i_clk => i_clk,
      i_rst_n => i_rst_n,
      o_clk_div => o_clk_div
    );
end STRUCTURE;
