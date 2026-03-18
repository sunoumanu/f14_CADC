-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Mar 18 14:55:00 2026
-- Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_artys7/cadc_artys7.gen/sources_1/bd/cadc_system/ip/cadc_system_cadc_top_0_0/cadc_system_cadc_top_0_0_sim_netlist.vhdl
-- Design      : cadc_system_cadc_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_control_rom_sequencer is
  port (
    \s_micro_pc_reg_rep_rep[8]_0\ : out STD_LOGIC;
    \s_io_out_sr_reg[0]\ : out STD_LOGIC;
    \s_cw_sr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_micro_pc_reg_rep[8]_0\ : out STD_LOGIC;
    s_cw_bit : out STD_LOGIC;
    \s_micro_pc_reg_rep_rep[8]_1\ : out STD_LOGIC;
    \s_micro_pc_reg_rep_rep[8]_2\ : out STD_LOGIC;
    \s_const_sr_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_micro_pc_reg_rep_rep[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep_rep[9]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep_rep[9]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep_rep[9]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep_rep[9]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_sensor_digital[19]\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \s_micro_pc_reg_rep_rep[9]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep_rep[9]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep_rep[9]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_frame_mark : in STD_LOGIC;
    \s_micro_pc_reg_rep_rep[4]_0\ : in STD_LOGIC;
    s_flag_z : in STD_LOGIC;
    s_flag_n : in STD_LOGIC;
    o_word_type : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_reg_bit : in STD_LOGIC;
    \s_micro_pc_reg_rep[8]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pdu_busy : in STD_LOGIC;
    s_flag_c : in STD_LOGIC;
    o_t0 : in STD_LOGIC;
    \s_sel_out1_reg[0]\ : in STD_LOGIC;
    s_sel_out1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_rst : in STD_LOGIC;
    i_clk_master : in STD_LOGIC;
    \s_cw_sr_reg[43]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_const_sr_reg[17]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 14 downto 0 );
    i_sensor_digital : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_analog : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_ps : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_tat : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_qc : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_control_rom_sequencer : entity is "control_rom_sequencer";
end cadc_system_cadc_top_0_0_control_rom_sequencer;

architecture STRUCTURE of cadc_system_cadc_top_0_0_control_rom_sequencer is
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s_const_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_const_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_10_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_5_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_6_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_7_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_8_n_0\ : STD_LOGIC;
  signal \s_const_sr[17]_i_9_n_0\ : STD_LOGIC;
  signal \s_const_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_const_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_cw_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_cw_sr[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[32]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[33]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[34]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[35]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[36]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[37]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[38]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[39]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[40]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[41]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[42]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[43]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[43]_i_4_n_0\ : STD_LOGIC;
  signal \s_cw_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_cw_sr_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_cw_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[31]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[32]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[33]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[34]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[35]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[36]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[37]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[38]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[39]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[40]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[41]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[42]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[43]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \s_latched_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_10_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_11_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_12_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_5_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_6_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_7_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_8_n_0\ : STD_LOGIC;
  signal \s_latched_data[19]_i_9_n_0\ : STD_LOGIC;
  signal \s_latched_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_latched_data[9]_i_2_n_0\ : STD_LOGIC;
  signal s_micro_pc : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s_micro_pc_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[7]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[8]\ : STD_LOGIC;
  signal \s_micro_pc_reg_rep_n_0_[9]\ : STD_LOGIC;
  signal \^s_micro_pc_reg_rep_rep[8]_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[4]_i_9_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_10_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_11_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_12_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[5]_i_9_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[8]_i_7_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[8]_i_8_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_10_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_11_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_12_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_13_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_14_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_15_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_16_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_17_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_18_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_19_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_5_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_6_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_7_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_8_n_0\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[9]_i_9_n_0\ : STD_LOGIC;
  signal s_next_pc : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s_ret_stack[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \s_ret_stack[1][9]_i_1_n_0\ : STD_LOGIC;
  signal \s_ret_stack[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \s_ret_stack[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \s_ret_stack[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \s_ret_stack[2][9]_i_1_n_0\ : STD_LOGIC;
  signal \s_ret_stack[2][9]_i_3_n_0\ : STD_LOGIC;
  signal \s_ret_stack[2][9]_i_4_n_0\ : STD_LOGIC;
  signal \s_ret_stack_reg[0]_2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s_ret_stack_reg[1]_1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s_ret_stack_reg[2]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s_sel_out1[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_sel_out1[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_sel_out1[2]_i_3_n_0\ : STD_LOGIC;
  signal s_stack_ptr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_stack_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_stack_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_stack_ptr[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_stack_ptr[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_stack_ptr[1]_i_5_n_0\ : STD_LOGIC;
  signal s_stack_ptr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \s_cw_sr[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \s_cw_sr[10]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \s_cw_sr[11]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \s_cw_sr[12]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \s_cw_sr[13]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \s_cw_sr[14]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \s_cw_sr[15]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \s_cw_sr[16]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \s_cw_sr[17]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \s_cw_sr[18]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \s_cw_sr[19]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \s_cw_sr[1]_i_3\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \s_cw_sr[20]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \s_cw_sr[21]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \s_cw_sr[22]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \s_cw_sr[23]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \s_cw_sr[24]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \s_cw_sr[25]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \s_cw_sr[26]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \s_cw_sr[27]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \s_cw_sr[28]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \s_cw_sr[29]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \s_cw_sr[2]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \s_cw_sr[30]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \s_cw_sr[31]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \s_cw_sr[32]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \s_cw_sr[33]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \s_cw_sr[34]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \s_cw_sr[35]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_cw_sr[36]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_cw_sr[37]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \s_cw_sr[38]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \s_cw_sr[39]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \s_cw_sr[3]_i_3\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \s_cw_sr[3]_i_3__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \s_cw_sr[40]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \s_cw_sr[41]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \s_cw_sr[42]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \s_cw_sr[43]_i_4\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \s_cw_sr[4]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \s_cw_sr[6]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \s_cw_sr[7]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \s_cw_sr[8]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \s_latched_data[10]_i_2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \s_latched_data[11]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \s_latched_data[12]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \s_latched_data[13]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \s_latched_data[14]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \s_latched_data[15]_i_2\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_latched_data[16]_i_2\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_latched_data[17]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_latched_data[18]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_latched_data[19]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \s_latched_data[19]_i_7\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_latched_data[19]_i_8\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_latched_data[1]_i_2\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \s_latched_data[2]_i_2\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \s_latched_data[3]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \s_latched_data[4]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \s_latched_data[5]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \s_latched_data[6]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \s_latched_data[7]_i_2\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_latched_data[8]_i_2\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_latched_data[9]_i_2\ : label is "soft_lutpair120";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \s_micro_pc_reg_rep_rep[9]\ : label is "no";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[0]_i_4\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[0]_i_5\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[0]_i_6\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[1]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[1]_i_5\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[1]_i_6\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[3]_i_5\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[3]_i_6\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[4]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[4]_i_7\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[5]_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[5]_i_8\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[7]_i_2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[8]_i_7\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[8]_i_8\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[9]_i_10\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[9]_i_11\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[9]_i_12\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[9]_i_19\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_reg_airspd[19]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \s_reg_alt[19]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \s_reg_flap[19]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \s_reg_glove[19]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \s_reg_mach[19]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \s_reg_vspd[19]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \s_reg_wing[19]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \s_ret_stack[2][0]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \s_ret_stack[2][1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_ret_stack[2][2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \s_ret_stack[2][3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_ret_stack[2][4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_ret_stack[2][6]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \s_ret_stack[2][7]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_ret_stack[2][8]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \s_ret_stack[2][9]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \s_stack_ptr[0]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_stack_ptr[1]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \s_stack_ptr[1]_i_4\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s_stack_ptr[1]_i_5\ : label is "soft_lutpair97";
begin
  \s_cw_sr_reg[1]_0\(1 downto 0) <= \^s_cw_sr_reg[1]_0\(1 downto 0);
  \s_micro_pc_reg_rep_rep[8]_0\ <= \^s_micro_pc_reg_rep_rep[8]_0\;
\s_const_sr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B888888"
    )
        port map (
      I0 => \s_const_sr_reg_n_0_[16]\,
      I1 => o_word_type,
      I2 => \s_const_sr[17]_i_6_n_0\,
      I3 => \s_const_sr[17]_i_5_n_0\,
      I4 => \s_const_sr[17]_i_4_n_0\,
      I5 => \s_const_sr[17]_i_3_n_0\,
      O => \s_const_sr[15]_i_1_n_0\
    );
\s_const_sr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888888B"
    )
        port map (
      I0 => \s_const_sr_reg_n_0_[17]\,
      I1 => o_word_type,
      I2 => \s_const_sr[17]_i_6_n_0\,
      I3 => \s_const_sr[17]_i_5_n_0\,
      I4 => \s_const_sr[17]_i_3_n_0\,
      O => \s_const_sr[16]_i_1_n_0\
    );
\s_const_sr[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"074002002A180000"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(0),
      I2 => s_micro_pc(3),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(4),
      I5 => s_micro_pc(1),
      O => \s_const_sr[17]_i_10_n_0\
    );
\s_const_sr[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000014"
    )
        port map (
      I0 => \s_const_sr[17]_i_3_n_0\,
      I1 => \s_const_sr[17]_i_4_n_0\,
      I2 => \s_const_sr[17]_i_5_n_0\,
      I3 => \s_const_sr[17]_i_6_n_0\,
      I4 => o_word_type,
      O => \s_const_sr[17]_i_2_n_0\
    );
\s_const_sr[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_const_sr[17]_i_7_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_const_sr[17]_i_3_n_0\
    );
\s_const_sr[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_const_sr[17]_i_8_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_const_sr[17]_i_4_n_0\
    );
\s_const_sr[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_const_sr[17]_i_9_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_const_sr[17]_i_5_n_0\
    );
\s_const_sr[17]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_const_sr[17]_i_10_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_const_sr[17]_i_6_n_0\
    );
\s_const_sr[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"320141003A000000"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(3),
      I2 => s_micro_pc(1),
      I3 => s_micro_pc(4),
      I4 => s_micro_pc(5),
      I5 => s_micro_pc(0),
      O => \s_const_sr[17]_i_7_n_0\
    );
\s_const_sr[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000011288080000"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(5),
      I2 => s_micro_pc(4),
      I3 => s_micro_pc(0),
      I4 => s_micro_pc(1),
      I5 => s_micro_pc(3),
      O => \s_const_sr[17]_i_8_n_0\
    );
\s_const_sr[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000090280000008"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(1),
      I2 => s_micro_pc(5),
      I3 => s_micro_pc(4),
      I4 => s_micro_pc(0),
      I5 => s_micro_pc(3),
      O => \s_const_sr[17]_i_9_n_0\
    );
\s_const_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(0),
      Q => \s_const_sr_reg[15]_0\(0),
      R => i_rst
    );
\s_const_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(10),
      Q => \s_const_sr_reg[15]_0\(10),
      R => i_rst
    );
\s_const_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(11),
      Q => \s_const_sr_reg[15]_0\(11),
      R => i_rst
    );
\s_const_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(12),
      Q => \s_const_sr_reg[15]_0\(12),
      R => i_rst
    );
\s_const_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(13),
      Q => \s_const_sr_reg[15]_0\(13),
      R => i_rst
    );
\s_const_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(14),
      Q => \s_const_sr_reg[15]_0\(14),
      R => i_rst
    );
\s_const_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => \s_const_sr[15]_i_1_n_0\,
      Q => \s_const_sr_reg[15]_0\(15),
      R => i_rst
    );
\s_const_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => \s_const_sr[16]_i_1_n_0\,
      Q => \s_const_sr_reg_n_0_[16]\,
      R => i_rst
    );
\s_const_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => \s_const_sr[17]_i_2_n_0\,
      Q => \s_const_sr_reg_n_0_[17]\,
      R => i_rst
    );
\s_const_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(1),
      Q => \s_const_sr_reg[15]_0\(1),
      R => i_rst
    );
\s_const_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(2),
      Q => \s_const_sr_reg[15]_0\(2),
      R => i_rst
    );
\s_const_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(3),
      Q => \s_const_sr_reg[15]_0\(3),
      R => i_rst
    );
\s_const_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(4),
      Q => \s_const_sr_reg[15]_0\(4),
      R => i_rst
    );
\s_const_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(5),
      Q => \s_const_sr_reg[15]_0\(5),
      R => i_rst
    );
\s_const_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(6),
      Q => \s_const_sr_reg[15]_0\(6),
      R => i_rst
    );
\s_const_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(7),
      Q => \s_const_sr_reg[15]_0\(7),
      R => i_rst
    );
\s_const_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(8),
      Q => \s_const_sr_reg[15]_0\(8),
      R => i_rst
    );
\s_const_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_const_sr_reg[17]_0\(0),
      D => D(9),
      Q => \s_const_sr_reg[15]_0\(9),
      R => i_rst
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001E00A7"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I3 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => s_next_pc(5),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I2 => \s_cw_sr[1]_i_3_n_0\,
      I3 => s_next_pc(5),
      I4 => s_next_pc(0),
      I5 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200060106"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000009208"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I2 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I3 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I4 => s_next_pc(5),
      I5 => s_next_pc(0),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"048000A001000600"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400F0002000A440"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02007A2041000800"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I3 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => s_next_pc(5),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FA8041000C00"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I3 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => s_next_pc(5),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200F0A02000A040"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054080408"
    )
        port map (
      I0 => s_next_pc(0),
      I1 => \s_cw_sr[3]_i_3__0_n_0\,
      I2 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I3 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I4 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0\,
      I5 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018E2000805A060"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I2 => s_next_pc(0),
      I3 => s_next_pc(5),
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100700C04110088"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I3 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I5 => s_next_pc(5),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0620040000A001C8"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8880000"
    )
        port map (
      I0 => \s_cw_sr[43]_i_4_n_0\,
      I1 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I2 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I3 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5_n_0\,
      I4 => s_next_pc(5),
      I5 => s_next_pc(0),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_5_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010A00000E06"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I2 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I4 => s_next_pc(9),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040600000708"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I1 => s_next_pc(0),
      I2 => s_next_pc(5),
      I3 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I4 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D08D484"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      I1 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0\,
      I2 => s_next_pc(0),
      I3 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4_n_0\,
      I4 => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      I5 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I2 => s_next_pc(5),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_3_n_0\
    );
\s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I2 => s_next_pc(5),
      O => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_4_n_0\
    );
\s_cw_sr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[0]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \^s_cw_sr_reg[1]_0\(1),
      O => \s_cw_sr[0]_i_1_n_0\
    );
\s_cw_sr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[11]\,
      I1 => o_word_type,
      O => \s_cw_sr[10]_i_1_n_0\
    );
\s_cw_sr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[12]\,
      I1 => o_word_type,
      O => \s_cw_sr[11]_i_1_n_0\
    );
\s_cw_sr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[13]\,
      I1 => o_word_type,
      O => \s_cw_sr[12]_i_1_n_0\
    );
\s_cw_sr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[14]\,
      I1 => o_word_type,
      O => \s_cw_sr[13]_i_1_n_0\
    );
\s_cw_sr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[15]\,
      I1 => o_word_type,
      O => \s_cw_sr[14]_i_1_n_0\
    );
\s_cw_sr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[16]\,
      I1 => o_word_type,
      O => \s_cw_sr[15]_i_1_n_0\
    );
\s_cw_sr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[17]\,
      I1 => o_word_type,
      O => \s_cw_sr[16]_i_1_n_0\
    );
\s_cw_sr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[18]\,
      I1 => o_word_type,
      O => \s_cw_sr[17]_i_1_n_0\
    );
\s_cw_sr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[19]\,
      I1 => o_word_type,
      O => \s_cw_sr[18]_i_1_n_0\
    );
\s_cw_sr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[20]\,
      I1 => o_word_type,
      O => \s_cw_sr[19]_i_1_n_0\
    );
\s_cw_sr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[1]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I3 => s_next_pc(9),
      I4 => o_word_type,
      I5 => \s_cw_sr_reg_n_0_[2]\,
      O => \s_cw_sr[1]_i_1_n_0\
    );
\s_cw_sr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      O => \s_cw_sr[1]_i_3_n_0\
    );
\s_cw_sr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[21]\,
      I1 => o_word_type,
      O => \s_cw_sr[20]_i_1_n_0\
    );
\s_cw_sr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[22]\,
      I1 => o_word_type,
      O => \s_cw_sr[21]_i_1_n_0\
    );
\s_cw_sr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[23]\,
      I1 => o_word_type,
      O => \s_cw_sr[22]_i_1_n_0\
    );
\s_cw_sr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[24]\,
      I1 => o_word_type,
      O => \s_cw_sr[23]_i_1_n_0\
    );
\s_cw_sr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[25]\,
      I1 => o_word_type,
      O => \s_cw_sr[24]_i_1_n_0\
    );
\s_cw_sr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[26]\,
      I1 => o_word_type,
      O => \s_cw_sr[25]_i_1_n_0\
    );
\s_cw_sr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[27]\,
      I1 => o_word_type,
      O => \s_cw_sr[26]_i_1_n_0\
    );
\s_cw_sr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[28]\,
      I1 => o_word_type,
      O => \s_cw_sr[27]_i_1_n_0\
    );
\s_cw_sr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[29]\,
      I1 => o_word_type,
      O => \s_cw_sr[28]_i_1_n_0\
    );
\s_cw_sr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[30]\,
      I1 => o_word_type,
      O => \s_cw_sr[29]_i_1_n_0\
    );
\s_cw_sr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[2]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[3]\,
      O => \s_cw_sr[2]_i_1_n_0\
    );
\s_cw_sr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[31]\,
      I1 => o_word_type,
      O => \s_cw_sr[30]_i_1_n_0\
    );
\s_cw_sr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[32]\,
      I1 => o_word_type,
      O => \s_cw_sr[31]_i_1_n_0\
    );
\s_cw_sr[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[32]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[33]\,
      O => \s_cw_sr[32]_i_1_n_0\
    );
\s_cw_sr[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[33]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[34]\,
      O => \s_cw_sr[33]_i_1_n_0\
    );
\s_cw_sr[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[34]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[35]\,
      O => \s_cw_sr[34]_i_1_n_0\
    );
\s_cw_sr[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[35]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[36]\,
      O => \s_cw_sr[35]_i_1_n_0\
    );
\s_cw_sr[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[36]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[37]\,
      O => \s_cw_sr[36]_i_1_n_0\
    );
\s_cw_sr[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[37]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[38]\,
      O => \s_cw_sr[37]_i_1_n_0\
    );
\s_cw_sr[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[39]\,
      I1 => o_word_type,
      O => \s_cw_sr[38]_i_1_n_0\
    );
\s_cw_sr[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[40]\,
      I1 => o_word_type,
      O => \s_cw_sr[39]_i_1_n_0\
    );
\s_cw_sr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[3]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I3 => s_next_pc(9),
      I4 => o_word_type,
      I5 => \s_cw_sr_reg_n_0_[4]\,
      O => \s_cw_sr[3]_i_1_n_0\
    );
\s_cw_sr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s_cw_sr_reg[1]_0\(0),
      I1 => o_t0,
      I2 => \^s_cw_sr_reg[1]_0\(1),
      O => s_cw_bit
    );
\s_cw_sr[3]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      I1 => s_next_pc(5),
      O => \s_cw_sr[3]_i_3__0_n_0\
    );
\s_cw_sr[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[40]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[41]\,
      O => \s_cw_sr[40]_i_1_n_0\
    );
\s_cw_sr[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[41]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[42]\,
      O => \s_cw_sr[41]_i_1_n_0\
    );
\s_cw_sr[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[42]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[43]\,
      O => \s_cw_sr[42]_i_1_n_0\
    );
\s_cw_sr[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => o_word_type,
      I1 => s_next_pc(9),
      I2 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I3 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[43]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      I5 => \s_micro_pc_reg_rep[8]_1\,
      O => \s_cw_sr[43]_i_2_n_0\
    );
\s_cw_sr[43]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      O => \s_cw_sr[43]_i_4_n_0\
    );
\s_cw_sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[4]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[5]\,
      O => \s_cw_sr[4]_i_1_n_0\
    );
\s_cw_sr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[5]_i_2_n_0\,
      I2 => s_next_pc(9),
      I3 => o_word_type,
      I4 => \s_cw_sr_reg_n_0_[6]\,
      O => \s_cw_sr[5]_i_1_n_0\
    );
\s_cw_sr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[7]\,
      I1 => o_word_type,
      O => \s_cw_sr[6]_i_1_n_0\
    );
\s_cw_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[7]_i_2_n_0\,
      I1 => o_word_type,
      I2 => \s_cw_sr_reg_n_0_[8]\,
      O => \s_cw_sr[7]_i_1_n_0\
    );
\s_cw_sr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[9]\,
      I1 => o_word_type,
      O => \s_cw_sr[8]_i_1_n_0\
    );
\s_cw_sr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \s_micro_pc_reg_rep[8]_1\,
      I1 => \s_ctrl_rom[0]_inferred__0/s_cw_sr[9]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      I3 => s_next_pc(9),
      I4 => o_word_type,
      I5 => \s_cw_sr_reg_n_0_[10]\,
      O => \s_cw_sr[9]_i_1_n_0\
    );
\s_cw_sr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[0]_i_1_n_0\,
      Q => \^s_cw_sr_reg[1]_0\(0),
      S => i_rst
    );
\s_cw_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[10]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[10]\,
      R => i_rst
    );
\s_cw_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[11]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[11]\,
      R => i_rst
    );
\s_cw_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[12]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[12]\,
      R => i_rst
    );
\s_cw_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[13]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[13]\,
      R => i_rst
    );
\s_cw_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[14]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[14]\,
      R => i_rst
    );
\s_cw_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[15]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[15]\,
      R => i_rst
    );
\s_cw_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[16]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[16]\,
      R => i_rst
    );
\s_cw_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[17]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[17]\,
      R => i_rst
    );
\s_cw_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[18]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[18]\,
      R => i_rst
    );
\s_cw_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[19]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[19]\,
      R => i_rst
    );
\s_cw_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[1]_i_1_n_0\,
      Q => \^s_cw_sr_reg[1]_0\(1),
      R => i_rst
    );
\s_cw_sr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[20]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[20]\,
      R => i_rst
    );
\s_cw_sr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[21]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[21]\,
      R => i_rst
    );
\s_cw_sr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[22]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[22]\,
      R => i_rst
    );
\s_cw_sr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[23]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[23]\,
      R => i_rst
    );
\s_cw_sr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[24]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[24]\,
      R => i_rst
    );
\s_cw_sr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[25]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[25]\,
      R => i_rst
    );
\s_cw_sr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[26]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[26]\,
      R => i_rst
    );
\s_cw_sr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[27]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[27]\,
      R => i_rst
    );
\s_cw_sr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[28]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[28]\,
      R => i_rst
    );
\s_cw_sr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[29]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[29]\,
      R => i_rst
    );
\s_cw_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[2]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[2]\,
      R => i_rst
    );
\s_cw_sr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[30]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[30]\,
      R => i_rst
    );
\s_cw_sr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[31]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[31]\,
      R => i_rst
    );
\s_cw_sr_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[32]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[32]\,
      R => i_rst
    );
\s_cw_sr_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[33]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[33]\,
      R => i_rst
    );
\s_cw_sr_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[34]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[34]\,
      R => i_rst
    );
\s_cw_sr_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[35]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[35]\,
      R => i_rst
    );
\s_cw_sr_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[36]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[36]\,
      R => i_rst
    );
\s_cw_sr_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[37]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[37]\,
      R => i_rst
    );
\s_cw_sr_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[38]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[38]\,
      R => i_rst
    );
\s_cw_sr_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[39]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[39]\,
      R => i_rst
    );
\s_cw_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[3]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[3]\,
      R => i_rst
    );
\s_cw_sr_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[40]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[40]\,
      R => i_rst
    );
\s_cw_sr_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[41]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[41]\,
      R => i_rst
    );
\s_cw_sr_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[42]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[42]\,
      R => i_rst
    );
\s_cw_sr_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[43]_i_2_n_0\,
      Q => \s_cw_sr_reg_n_0_[43]\,
      R => i_rst
    );
\s_cw_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[4]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[4]\,
      R => i_rst
    );
\s_cw_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[5]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[5]\,
      R => i_rst
    );
\s_cw_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[6]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[6]\,
      R => i_rst
    );
\s_cw_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[7]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[7]\,
      R => i_rst
    );
\s_cw_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[8]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[8]\,
      R => i_rst
    );
\s_cw_sr_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_sr_reg[43]_0\(0),
      D => \s_cw_sr[9]_i_1_n_0\,
      Q => \s_cw_sr_reg_n_0_[9]\,
      S => i_rst
    );
\s_latched_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(0),
      I1 => i_sensor_analog(0),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[0]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(0),
      O => \i_sensor_digital[19]\(0)
    );
\s_latched_data[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(0),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(0),
      O => \s_latched_data[0]_i_2_n_0\
    );
\s_latched_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(10),
      I1 => i_sensor_analog(10),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[10]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(10),
      O => \i_sensor_digital[19]\(10)
    );
\s_latched_data[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(10),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(10),
      O => \s_latched_data[10]_i_2_n_0\
    );
\s_latched_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(11),
      I1 => i_sensor_analog(11),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[11]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(11),
      O => \i_sensor_digital[19]\(11)
    );
\s_latched_data[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(11),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(11),
      O => \s_latched_data[11]_i_2_n_0\
    );
\s_latched_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(12),
      I1 => i_sensor_analog(12),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[12]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(12),
      O => \i_sensor_digital[19]\(12)
    );
\s_latched_data[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(12),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(12),
      O => \s_latched_data[12]_i_2_n_0\
    );
\s_latched_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(13),
      I1 => i_sensor_analog(13),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[13]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(13),
      O => \i_sensor_digital[19]\(13)
    );
\s_latched_data[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(13),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(13),
      O => \s_latched_data[13]_i_2_n_0\
    );
\s_latched_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(14),
      I1 => i_sensor_analog(14),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[14]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(14),
      O => \i_sensor_digital[19]\(14)
    );
\s_latched_data[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(14),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(14),
      O => \s_latched_data[14]_i_2_n_0\
    );
\s_latched_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(15),
      I1 => i_sensor_analog(15),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[15]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(15),
      O => \i_sensor_digital[19]\(15)
    );
\s_latched_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(15),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(15),
      O => \s_latched_data[15]_i_2_n_0\
    );
\s_latched_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(16),
      I1 => i_sensor_analog(16),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[16]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(16),
      O => \i_sensor_digital[19]\(16)
    );
\s_latched_data[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(16),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(16),
      O => \s_latched_data[16]_i_2_n_0\
    );
\s_latched_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(17),
      I1 => i_sensor_analog(17),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[17]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(17),
      O => \i_sensor_digital[19]\(17)
    );
\s_latched_data[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(17),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(17),
      O => \s_latched_data[17]_i_2_n_0\
    );
\s_latched_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(18),
      I1 => i_sensor_analog(18),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[18]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(18),
      O => \i_sensor_digital[19]\(18)
    );
\s_latched_data[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(18),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(18),
      O => \s_latched_data[18]_i_2_n_0\
    );
\s_latched_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1154"
    )
        port map (
      I0 => \s_latched_data[19]_i_3_n_0\,
      I1 => \s_latched_data[19]_i_4_n_0\,
      I2 => \s_latched_data[19]_i_5_n_0\,
      I3 => \s_latched_data[19]_i_6_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_0\(0)
    );
\s_latched_data[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(3),
      I1 => s_micro_pc(0),
      I2 => s_micro_pc(4),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(1),
      I5 => s_micro_pc(2),
      O => \s_latched_data[19]_i_10_n_0\
    );
\s_latched_data[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001A000000E7"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(0),
      I2 => s_micro_pc(3),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(4),
      I5 => s_micro_pc(1),
      O => \s_latched_data[19]_i_11_n_0\
    );
\s_latched_data[19]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000020005010A"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(3),
      I2 => s_micro_pc(5),
      I3 => s_micro_pc(4),
      I4 => s_micro_pc(0),
      I5 => s_micro_pc(1),
      O => \s_latched_data[19]_i_12_n_0\
    );
\s_latched_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(19),
      I1 => i_sensor_analog(19),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[19]_i_7_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(19),
      O => \i_sensor_digital[19]\(19)
    );
\s_latched_data[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_latched_data[19]_i_9_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => o_word_type,
      O => \s_latched_data[19]_i_3_n_0\
    );
\s_latched_data[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_latched_data[19]_i_10_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => o_word_type,
      O => \s_latched_data[19]_i_4_n_0\
    );
\s_latched_data[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_latched_data[19]_i_11_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => o_word_type,
      O => \s_latched_data[19]_i_5_n_0\
    );
\s_latched_data[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_latched_data[19]_i_12_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => o_word_type,
      O => \s_latched_data[19]_i_6_n_0\
    );
\s_latched_data[19]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(19),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(19),
      O => \s_latched_data[19]_i_7_n_0\
    );
\s_latched_data[19]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_latched_data[19]_i_5_n_0\,
      I1 => \s_latched_data[19]_i_6_n_0\,
      I2 => \s_latched_data[19]_i_4_n_0\,
      O => \s_latched_data[19]_i_8_n_0\
    );
\s_latched_data[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000040000003C"
    )
        port map (
      I0 => s_micro_pc(3),
      I1 => s_micro_pc(2),
      I2 => s_micro_pc(0),
      I3 => s_micro_pc(4),
      I4 => s_micro_pc(5),
      I5 => s_micro_pc(1),
      O => \s_latched_data[19]_i_9_n_0\
    );
\s_latched_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(1),
      I1 => i_sensor_analog(1),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[1]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(1),
      O => \i_sensor_digital[19]\(1)
    );
\s_latched_data[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(1),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(1),
      O => \s_latched_data[1]_i_2_n_0\
    );
\s_latched_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(2),
      I1 => i_sensor_analog(2),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[2]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(2),
      O => \i_sensor_digital[19]\(2)
    );
\s_latched_data[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(2),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(2),
      O => \s_latched_data[2]_i_2_n_0\
    );
\s_latched_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(3),
      I1 => i_sensor_analog(3),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[3]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(3),
      O => \i_sensor_digital[19]\(3)
    );
\s_latched_data[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(3),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(3),
      O => \s_latched_data[3]_i_2_n_0\
    );
\s_latched_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(4),
      I1 => i_sensor_analog(4),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[4]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(4),
      O => \i_sensor_digital[19]\(4)
    );
\s_latched_data[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(4),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(4),
      O => \s_latched_data[4]_i_2_n_0\
    );
\s_latched_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(5),
      I1 => i_sensor_analog(5),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[5]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(5),
      O => \i_sensor_digital[19]\(5)
    );
\s_latched_data[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(5),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(5),
      O => \s_latched_data[5]_i_2_n_0\
    );
\s_latched_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(6),
      I1 => i_sensor_analog(6),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[6]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(6),
      O => \i_sensor_digital[19]\(6)
    );
\s_latched_data[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(6),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(6),
      O => \s_latched_data[6]_i_2_n_0\
    );
\s_latched_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(7),
      I1 => i_sensor_analog(7),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[7]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(7),
      O => \i_sensor_digital[19]\(7)
    );
\s_latched_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(7),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(7),
      O => \s_latched_data[7]_i_2_n_0\
    );
\s_latched_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(8),
      I1 => i_sensor_analog(8),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[8]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(8),
      O => \i_sensor_digital[19]\(8)
    );
\s_latched_data[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(8),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(8),
      O => \s_latched_data[8]_i_2_n_0\
    );
\s_latched_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_sensor_digital(9),
      I1 => i_sensor_analog(9),
      I2 => \s_latched_data[19]_i_6_n_0\,
      I3 => \s_latched_data[9]_i_2_n_0\,
      I4 => \s_latched_data[19]_i_8_n_0\,
      I5 => i_sensor_ps(9),
      O => \i_sensor_digital[19]\(9)
    );
\s_latched_data[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_sensor_tat(9),
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => i_sensor_qc(9),
      O => \s_latched_data[9]_i_2_n_0\
    );
\s_micro_pc_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_next_pc(0),
      Q => \s_micro_pc_reg_rep_n_0_[0]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      Q => \s_micro_pc_reg_rep_n_0_[1]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      Q => \s_micro_pc_reg_rep_n_0_[2]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      Q => \s_micro_pc_reg_rep_n_0_[3]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      Q => \s_micro_pc_reg_rep_n_0_[4]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_next_pc(5),
      Q => \s_micro_pc_reg_rep_n_0_[5]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      Q => \s_micro_pc_reg_rep_n_0_[6]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      Q => \s_micro_pc_reg_rep_n_0_[7]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_reg_rep[8]_1\,
      Q => \s_micro_pc_reg_rep_n_0_[8]\,
      R => i_rst
    );
\s_micro_pc_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_next_pc(9),
      Q => \s_micro_pc_reg_rep_n_0_[9]\,
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_next_pc(0),
      Q => s_micro_pc(0),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[1]_i_1_n_0\,
      Q => s_micro_pc(1),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[2]_i_1_n_0\,
      Q => s_micro_pc(2),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[3]_i_1_n_0\,
      Q => s_micro_pc(3),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[4]_i_1_n_0\,
      Q => s_micro_pc(4),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_next_pc(5),
      Q => s_micro_pc(5),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[6]_i_1_n_0\,
      Q => s_micro_pc(6),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_rep_rep[7]_i_1_n_0\,
      Q => s_micro_pc(7),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_micro_pc_reg_rep[8]_1\,
      Q => s_micro_pc(8),
      R => i_rst
    );
\s_micro_pc_reg_rep_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_next_pc(9),
      Q => s_micro_pc(9),
      R => i_rst
    );
\s_micro_pc_rep_rep[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[0]_i_2_n_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I2 => \s_micro_pc_rep_rep[0]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I4 => \s_micro_pc_reg_rep_n_0_[0]\,
      I5 => s_frame_mark,
      O => s_next_pc(0)
    );
\s_micro_pc_rep_rep[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30FF11FF000F00EE"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[0]_i_4_n_0\,
      I1 => \s_micro_pc_rep_rep[0]_i_5_n_0\,
      I2 => \s_micro_pc_rep_rep[0]_i_6_n_0\,
      I3 => \s_micro_pc_reg_rep_n_0_[0]\,
      I4 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I5 => \s_const_sr[17]_i_5_n_0\,
      O => \s_micro_pc_rep_rep[0]_i_2_n_0\
    );
\s_micro_pc_rep_rep[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB3088FC88FCBB"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[0]_i_7_n_0\,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I2 => \s_const_sr[17]_i_5_n_0\,
      I3 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I4 => s_pdu_busy,
      I5 => \s_micro_pc_reg_rep_n_0_[0]\,
      O => \s_micro_pc_rep_rep[0]_i_3_n_0\
    );
\s_micro_pc_rep_rep[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I1 => s_flag_z,
      I2 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[0]_i_4_n_0\
    );
\s_micro_pc_rep_rep[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_flag_n,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[0]_i_5_n_0\
    );
\s_micro_pc_rep_rep[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3022"
    )
        port map (
      I0 => s_flag_c,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => s_pdu_busy,
      I3 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[0]_i_6_n_0\
    );
\s_micro_pc_rep_rep[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CC00AAF0CCFF"
    )
        port map (
      I0 => \s_ret_stack_reg[2]_0\(0),
      I1 => \s_ret_stack_reg[1]_1\(0),
      I2 => \s_ret_stack_reg[0]_2\(0),
      I3 => s_stack_ptr_reg(1),
      I4 => s_stack_ptr_reg(0),
      I5 => \s_micro_pc_reg_rep_n_0_[0]\,
      O => \s_micro_pc_rep_rep[0]_i_7_n_0\
    );
\s_micro_pc_rep_rep[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000550455555555"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[1]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[1]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[1]_i_4_n_0\,
      I5 => \s_micro_pc_rep_rep[1]_i_5_n_0\,
      O => \s_micro_pc_rep_rep[1]_i_1_n_0\
    );
\s_micro_pc_rep_rep[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFAEAFAEFAAEAAA"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[4]_i_7_n_0\,
      I1 => \s_ret_stack_reg[2]_0\(1),
      I2 => s_stack_ptr_reg(1),
      I3 => s_stack_ptr_reg(0),
      I4 => \s_ret_stack_reg[0]_2\(1),
      I5 => \s_ret_stack_reg[1]_1\(1),
      O => \s_micro_pc_rep_rep[1]_i_2_n_0\
    );
\s_micro_pc_rep_rep[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002F2"
    )
        port map (
      I0 => s_pdu_busy,
      I1 => \s_micro_pc_reg_rep_n_0_[1]\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_const_sr[17]_i_4_n_0\,
      I4 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[1]_i_3_n_0\
    );
\s_micro_pc_rep_rep[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09009999FFFFFFFF"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[0]\,
      I1 => \s_micro_pc_reg_rep_n_0_[1]\,
      I2 => \s_micro_pc_rep_rep[1]_i_6_n_0\,
      I3 => \s_micro_pc_reg_rep_rep[4]_0\,
      I4 => \s_micro_pc_rep_rep[8]_i_7_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      O => \s_micro_pc_rep_rep[1]_i_4_n_0\
    );
\s_micro_pc_rep_rep[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEBFFEB"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I1 => \s_micro_pc_reg_rep_n_0_[1]\,
      I2 => \s_micro_pc_reg_rep_n_0_[0]\,
      I3 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I4 => \s_const_sr[17]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[1]_i_5_n_0\
    );
\s_micro_pc_rep_rep[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I1 => \s_const_sr[17]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[1]_i_6_n_0\
    );
\s_micro_pc_rep_rep[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040055555555"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[2]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[2]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I4 => \s_micro_pc_rep_rep[2]_i_4_n_0\,
      I5 => \s_micro_pc_rep_rep[2]_i_5_n_0\,
      O => \s_micro_pc_rep_rep[2]_i_1_n_0\
    );
\s_micro_pc_rep_rep[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEAAAAAAAA"
    )
        port map (
      I0 => \s_ret_stack[2][2]_i_1_n_0\,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I2 => s_pdu_busy,
      I3 => \s_const_sr[17]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I5 => \s_micro_pc_rep_rep[8]_i_7_n_0\,
      O => \s_micro_pc_rep_rep[2]_i_2_n_0\
    );
\s_micro_pc_rep_rep[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000002F2"
    )
        port map (
      I0 => s_pdu_busy,
      I1 => \s_micro_pc_reg_rep_n_0_[2]\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_const_sr[17]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I5 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[2]_i_3_n_0\
    );
\s_micro_pc_rep_rep[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200A2A0A20AA2AAA"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_8_n_0\,
      I1 => \s_ret_stack_reg[2]_0\(2),
      I2 => s_stack_ptr_reg(0),
      I3 => s_stack_ptr_reg(1),
      I4 => \s_ret_stack_reg[1]_1\(2),
      I5 => \s_ret_stack_reg[0]_2\(2),
      O => \s_micro_pc_rep_rep[2]_i_4_n_0\
    );
\s_micro_pc_rep_rep[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0095FF95"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[2]\,
      I1 => \s_micro_pc_reg_rep_n_0_[1]\,
      I2 => \s_micro_pc_reg_rep_n_0_[0]\,
      I3 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I4 => \s_const_sr[17]_i_3_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      O => \s_micro_pc_rep_rep[2]_i_5_n_0\
    );
\s_micro_pc_rep_rep[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05450040"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[3]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I3 => \s_micro_pc_rep_rep[3]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[3]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[3]_i_1_n_0\
    );
\s_micro_pc_rep_rep[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I1 => \s_micro_pc_rep_rep[4]_i_7_n_0\,
      I2 => \s_micro_pc_rep_rep[3]_i_5_n_0\,
      I3 => \s_micro_pc_rep_rep[3]_i_6_n_0\,
      O => \s_micro_pc_rep_rep[3]_i_2_n_0\
    );
\s_micro_pc_rep_rep[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055575757"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[8]_i_7_n_0\,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I2 => s_pdu_busy,
      I3 => \s_const_sr[17]_i_6_n_0\,
      I4 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I5 => \s_ret_stack[2][3]_i_1_n_0\,
      O => \s_micro_pc_rep_rep[3]_i_3_n_0\
    );
\s_micro_pc_rep_rep[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \s_const_sr[17]_i_6_n_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I2 => \s_micro_pc_reg_rep_n_0_[3]\,
      I3 => \s_micro_pc_reg_rep_n_0_[2]\,
      I4 => \s_micro_pc_reg_rep_n_0_[0]\,
      I5 => \s_micro_pc_reg_rep_n_0_[1]\,
      O => \s_micro_pc_rep_rep[3]_i_4_n_0\
    );
\s_micro_pc_rep_rep[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => \s_ret_stack_reg[0]_2\(3),
      I1 => \s_ret_stack_reg[1]_1\(3),
      I2 => s_stack_ptr_reg(1),
      I3 => s_stack_ptr_reg(0),
      I4 => \s_ret_stack_reg[2]_0\(3),
      O => \s_micro_pc_rep_rep[3]_i_5_n_0\
    );
\s_micro_pc_rep_rep[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD0D"
    )
        port map (
      I0 => s_pdu_busy,
      I1 => \s_micro_pc_reg_rep_n_0_[3]\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_const_sr[17]_i_6_n_0\,
      I4 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[3]_i_6_n_0\
    );
\s_micro_pc_rep_rep[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000550455555555"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[4]_i_2_n_0\,
      I2 => \s_micro_pc_rep_rep[4]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[4]_i_4_n_0\,
      I5 => \s_micro_pc_rep_rep[4]_i_5_n_0\,
      O => \s_micro_pc_rep_rep[4]_i_1_n_0\
    );
\s_micro_pc_rep_rep[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD0D"
    )
        port map (
      I0 => s_pdu_busy,
      I1 => \s_micro_pc_reg_rep_n_0_[4]\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_micro_pc_rep_rep[4]_i_6_n_0\,
      I4 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[4]_i_2_n_0\
    );
\s_micro_pc_rep_rep[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1005150510551555"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[4]_i_7_n_0\,
      I1 => \s_ret_stack_reg[2]_0\(4),
      I2 => s_stack_ptr_reg(1),
      I3 => s_stack_ptr_reg(0),
      I4 => \s_ret_stack_reg[0]_2\(4),
      I5 => \s_ret_stack_reg[1]_1\(4),
      O => \s_micro_pc_rep_rep[4]_i_3_n_0\
    );
\s_micro_pc_rep_rep[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15005555FFFFFFFF"
    )
        port map (
      I0 => \s_ret_stack[2][4]_i_1_n_0\,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => \s_micro_pc_rep_rep[4]_i_6_n_0\,
      I3 => \s_micro_pc_reg_rep_rep[4]_0\,
      I4 => \s_micro_pc_rep_rep[8]_i_7_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      O => \s_micro_pc_rep_rep[4]_i_4_n_0\
    );
\s_micro_pc_rep_rep[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I1 => \s_ret_stack[2][4]_i_1_n_0\,
      I2 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I3 => \s_micro_pc_rep_rep[4]_i_6_n_0\,
      O => \s_micro_pc_rep_rep[4]_i_5_n_0\
    );
\s_micro_pc_rep_rep[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_micro_pc_rep_rep[4]_i_9_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_micro_pc_rep_rep[4]_i_6_n_0\
    );
\s_micro_pc_rep_rep[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF57"
    )
        port map (
      I0 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I1 => s_stack_ptr_reg(1),
      I2 => s_stack_ptr_reg(0),
      I3 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[4]_i_7_n_0\
    );
\s_micro_pc_rep_rep[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"324320003A040000"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(3),
      I2 => s_micro_pc(1),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(4),
      I5 => s_micro_pc(0),
      O => \s_micro_pc_rep_rep[4]_i_9_n_0\
    );
\s_micro_pc_rep_rep[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEAE"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_2_n_0\,
      I1 => \s_micro_pc_rep_rep[5]_i_3_n_0\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_micro_pc_rep_rep[5]_i_5_n_0\,
      I4 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I5 => \s_micro_pc_rep_rep[5]_i_7_n_0\,
      O => s_next_pc(5)
    );
\s_micro_pc_rep_rep[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3201224208842004"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(3),
      I2 => s_micro_pc(1),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(4),
      I5 => s_micro_pc(0),
      O => \s_micro_pc_rep_rep[5]_i_10_n_0\
    );
\s_micro_pc_rep_rep[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02002000F0A0A040"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(0),
      I2 => s_micro_pc(5),
      I3 => s_micro_pc(4),
      I4 => s_micro_pc(1),
      I5 => s_micro_pc(3),
      O => \s_micro_pc_rep_rep[5]_i_11_n_0\
    );
\s_micro_pc_rep_rep[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1003024230400404"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(3),
      I2 => s_micro_pc(1),
      I3 => s_micro_pc(4),
      I4 => s_micro_pc(5),
      I5 => s_micro_pc(0),
      O => \s_micro_pc_rep_rep[5]_i_12_n_0\
    );
\s_micro_pc_rep_rep[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4FFF4F"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[8]_i_7_n_0\,
      I1 => data0(5),
      I2 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I3 => \s_micro_pc_rep_rep[5]_i_8_n_0\,
      I4 => \s_micro_pc_rep_rep[5]_i_9_n_0\,
      O => \s_micro_pc_rep_rep[5]_i_2_n_0\
    );
\s_micro_pc_rep_rep[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCE0ACE"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I1 => data0(5),
      I2 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I3 => s_pdu_busy,
      I4 => \s_micro_pc_reg_rep_n_0_[5]\,
      O => \s_micro_pc_rep_rep[5]_i_3_n_0\
    );
\s_micro_pc_rep_rep[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_micro_pc_rep_rep[5]_i_10_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_micro_pc_rep_rep[5]_i_4_n_0\
    );
\s_micro_pc_rep_rep[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_micro_pc_rep_rep[5]_i_11_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_micro_pc_rep_rep[5]_i_5_n_0\
    );
\s_micro_pc_rep_rep[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_micro_pc_rep_rep[5]_i_12_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \^s_micro_pc_reg_rep_rep[8]_0\
    );
\s_micro_pc_rep_rep[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[5]_i_5_n_0\,
      I2 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I3 => data0(5),
      I4 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      O => \s_micro_pc_rep_rep[5]_i_7_n_0\
    );
\s_micro_pc_rep_rep[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100000"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => s_stack_ptr_reg(0),
      I3 => s_stack_ptr_reg(1),
      I4 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[5]_i_8_n_0\
    );
\s_micro_pc_rep_rep[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"053FF53F"
    )
        port map (
      I0 => \s_ret_stack_reg[0]_2\(5),
      I1 => \s_ret_stack_reg[1]_1\(5),
      I2 => s_stack_ptr_reg(1),
      I3 => s_stack_ptr_reg(0),
      I4 => \s_ret_stack_reg[2]_0\(5),
      O => \s_micro_pc_rep_rep[5]_i_9_n_0\
    );
\s_micro_pc_rep_rep[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5501000155010501"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I2 => \s_micro_pc_rep_rep[6]_i_2_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I4 => \s_micro_pc_rep_rep[6]_i_3_n_0\,
      I5 => \s_micro_pc_rep_rep[7]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[6]_i_1_n_0\
    );
\s_micro_pc_rep_rep[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[6]\,
      I1 => \s_ret_stack[2][9]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[6]_i_2_n_0\
    );
\s_micro_pc_rep_rep[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I3 => s_pdu_busy,
      I4 => \s_micro_pc_reg_rep_n_0_[6]\,
      I5 => \s_micro_pc_rep_rep[6]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[6]_i_3_n_0\
    );
\s_micro_pc_rep_rep[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA080A08A008000"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_8_n_0\,
      I1 => \s_ret_stack_reg[2]_0\(6),
      I2 => s_stack_ptr_reg(0),
      I3 => s_stack_ptr_reg(1),
      I4 => \s_ret_stack_reg[1]_1\(6),
      I5 => \s_ret_stack_reg[0]_2\(6),
      O => \s_micro_pc_rep_rep[6]_i_4_n_0\
    );
\s_micro_pc_rep_rep[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5501000155010501"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I2 => \s_micro_pc_rep_rep[7]_i_2_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I4 => \s_micro_pc_rep_rep[7]_i_3_n_0\,
      I5 => \s_micro_pc_rep_rep[7]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[7]_i_1_n_0\
    );
\s_micro_pc_rep_rep[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[7]\,
      I1 => \s_micro_pc_reg_rep_n_0_[6]\,
      I2 => \s_ret_stack[2][9]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[7]_i_2_n_0\
    );
\s_micro_pc_rep_rep[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[7]_i_5_n_0\,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I4 => s_pdu_busy,
      I5 => \s_micro_pc_reg_rep_n_0_[7]\,
      O => \s_micro_pc_rep_rep[7]_i_3_n_0\
    );
\s_micro_pc_rep_rep[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000E0F0F0F00"
    )
        port map (
      I0 => s_stack_ptr_reg(1),
      I1 => s_stack_ptr_reg(0),
      I2 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I4 => s_pdu_busy,
      I5 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[7]_i_4_n_0\
    );
\s_micro_pc_rep_rep[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA080A08A008000"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_8_n_0\,
      I1 => \s_ret_stack_reg[2]_0\(7),
      I2 => s_stack_ptr_reg(0),
      I3 => s_stack_ptr_reg(1),
      I4 => \s_ret_stack_reg[1]_1\(7),
      I5 => \s_ret_stack_reg[0]_2\(7),
      O => \s_micro_pc_rep_rep[7]_i_5_n_0\
    );
\s_micro_pc_rep_rep[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22FF22FF20FF2000"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[8]_i_5_n_0\,
      I1 => \s_micro_pc_rep_rep[8]_i_6_n_0\,
      I2 => \s_micro_pc_rep_rep[8]_i_7_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I4 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I5 => \s_micro_pc_rep_rep[8]_i_8_n_0\,
      O => \s_micro_pc_reg_rep[8]_0\
    );
\s_micro_pc_rep_rep[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFDFCFDFC"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[8]\,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I3 => s_pdu_busy,
      I4 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I5 => \s_micro_pc_rep_rep[8]_i_8_n_0\,
      O => \s_micro_pc_rep_rep[8]_i_5_n_0\
    );
\s_micro_pc_rep_rep[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA08A0080A08000"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_8_n_0\,
      I1 => \s_ret_stack_reg[2]_0\(8),
      I2 => s_stack_ptr_reg(0),
      I3 => s_stack_ptr_reg(1),
      I4 => \s_ret_stack_reg[0]_2\(8),
      I5 => \s_ret_stack_reg[1]_1\(8),
      O => \s_micro_pc_rep_rep[8]_i_6_n_0\
    );
\s_micro_pc_rep_rep[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11105555"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => s_stack_ptr_reg(0),
      I3 => s_stack_ptr_reg(1),
      I4 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[8]_i_7_n_0\
    );
\s_micro_pc_rep_rep[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[8]\,
      I1 => \s_ret_stack[2][9]_i_4_n_0\,
      I2 => \s_micro_pc_reg_rep_n_0_[6]\,
      I3 => \s_micro_pc_reg_rep_n_0_[7]\,
      O => \s_micro_pc_rep_rep[8]_i_8_n_0\
    );
\s_micro_pc_rep_rep[9]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_stack_ptr_reg(1),
      I1 => s_stack_ptr_reg(0),
      O => \s_micro_pc_rep_rep[9]_i_10_n_0\
    );
\s_micro_pc_rep_rep[9]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[9]\,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[9]_i_11_n_0\
    );
\s_micro_pc_rep_rep[9]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I1 => s_pdu_busy,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      O => \s_micro_pc_rep_rep[9]_i_12_n_0\
    );
\s_micro_pc_rep_rep[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101110FFFFFFFF"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_19_n_0\,
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => s_stack_ptr_reg(1),
      I3 => s_stack_ptr_reg(0),
      I4 => \s_ret_stack_reg[0]_2\(9),
      I5 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_micro_pc_rep_rep[9]_i_13_n_0\
    );
\s_micro_pc_rep_rep[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_micro_pc_rep_rep[5]_i_12_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => s_flag_n,
      O => \s_micro_pc_rep_rep[9]_i_14_n_0\
    );
\s_micro_pc_rep_rep[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_micro_pc_rep_rep[5]_i_12_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => s_flag_c,
      O => \s_micro_pc_rep_rep[9]_i_15_n_0\
    );
\s_micro_pc_rep_rep[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_micro_pc_rep_rep[5]_i_12_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => s_flag_z,
      O => \s_micro_pc_rep_rep[9]_i_16_n_0\
    );
\s_micro_pc_rep_rep[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_micro_pc(9),
      I1 => s_micro_pc(6),
      I2 => \s_micro_pc_rep_rep[5]_i_12_n_0\,
      I3 => s_micro_pc(7),
      I4 => s_micro_pc(8),
      I5 => s_pdu_busy,
      O => \s_micro_pc_rep_rep[9]_i_17_n_0\
    );
\s_micro_pc_rep_rep[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000A00"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(1),
      I2 => s_micro_pc(4),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(0),
      I5 => s_micro_pc(3),
      O => \s_micro_pc_rep_rep[9]_i_18_n_0\
    );
\s_micro_pc_rep_rep[9]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_ret_stack_reg[1]_1\(9),
      I1 => s_stack_ptr_reg(1),
      I2 => s_stack_ptr_reg(0),
      I3 => \s_ret_stack_reg[2]_0\(9),
      O => \s_micro_pc_rep_rep[9]_i_19_n_0\
    );
\s_micro_pc_rep_rep[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F100F1000000F0"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_4_n_0\,
      I2 => data0(9),
      I3 => \s_micro_pc_rep_rep[9]_i_5_n_0\,
      I4 => \s_micro_pc_rep_rep[9]_i_6_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      O => s_next_pc(9)
    );
\s_micro_pc_rep_rep[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_micro_pc_rep_rep[9]_i_8_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_micro_pc_rep_rep[9]_i_3_n_0\
    );
\s_micro_pc_rep_rep[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF77FFFFF077"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[9]\,
      I1 => s_pdu_busy,
      I2 => \s_micro_pc_rep_rep[9]_i_9_n_0\,
      I3 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I4 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_10_n_0\,
      O => \s_micro_pc_rep_rep[9]_i_4_n_0\
    );
\s_micro_pc_rep_rep[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => s_frame_mark,
      I1 => \s_micro_pc_rep_rep[9]_i_11_n_0\,
      I2 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I4 => \s_micro_pc_rep_rep[9]_i_12_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_13_n_0\,
      O => \s_micro_pc_rep_rep[9]_i_5_n_0\
    );
\s_micro_pc_rep_rep[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000535003035350"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[9]_i_14_n_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_15_n_0\,
      I2 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I3 => \s_micro_pc_rep_rep[9]_i_16_n_0\,
      I4 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I5 => \s_micro_pc_rep_rep[9]_i_17_n_0\,
      O => \s_micro_pc_rep_rep[9]_i_6_n_0\
    );
\s_micro_pc_rep_rep[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => s_micro_pc(7),
      I2 => \s_micro_pc_rep_rep[9]_i_18_n_0\,
      I3 => s_micro_pc(6),
      I4 => s_micro_pc(9),
      O => \s_micro_pc_rep_rep[9]_i_7_n_0\
    );
\s_micro_pc_rep_rep[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0248004022003024"
    )
        port map (
      I0 => s_micro_pc(2),
      I1 => s_micro_pc(3),
      I2 => s_micro_pc(0),
      I3 => s_micro_pc(5),
      I4 => s_micro_pc(4),
      I5 => s_micro_pc(1),
      O => \s_micro_pc_rep_rep[9]_i_8_n_0\
    );
\s_micro_pc_rep_rep[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300110003331100"
    )
        port map (
      I0 => \s_ret_stack_reg[0]_2\(9),
      I1 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I2 => \s_ret_stack_reg[2]_0\(9),
      I3 => s_stack_ptr_reg(0),
      I4 => s_stack_ptr_reg(1),
      I5 => \s_ret_stack_reg[1]_1\(9),
      O => \s_micro_pc_rep_rep[9]_i_9_n_0\
    );
\s_reg_airspd[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \s_latched_data[19]_i_5_n_0\,
      I1 => \s_latched_data[19]_i_6_n_0\,
      I2 => \s_latched_data[19]_i_3_n_0\,
      I3 => \s_latched_data[19]_i_4_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_3\(0)
    );
\s_reg_alt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \s_latched_data[19]_i_6_n_0\,
      I1 => \s_latched_data[19]_i_3_n_0\,
      I2 => \s_latched_data[19]_i_5_n_0\,
      I3 => \s_latched_data[19]_i_4_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_5\(0)
    );
s_reg_bit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => Q(0),
      I1 => \s_latched_data[19]_i_6_n_0\,
      I2 => \s_latched_data[19]_i_4_n_0\,
      I3 => \s_latched_data[19]_i_5_n_0\,
      I4 => \s_latched_data[19]_i_3_n_0\,
      I5 => s_reg_bit,
      O => \s_io_out_sr_reg[0]\
    );
\s_reg_flap[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \s_latched_data[19]_i_3_n_0\,
      I1 => \s_latched_data[19]_i_6_n_0\,
      I2 => \s_latched_data[19]_i_5_n_0\,
      I3 => \s_latched_data[19]_i_4_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_7\(0)
    );
\s_reg_glove[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \s_latched_data[19]_i_5_n_0\,
      I1 => \s_latched_data[19]_i_4_n_0\,
      I2 => \s_latched_data[19]_i_3_n_0\,
      I3 => \s_latched_data[19]_i_6_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_4\(0)
    );
\s_reg_mach[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \s_latched_data[19]_i_3_n_0\,
      I1 => \s_latched_data[19]_i_5_n_0\,
      I2 => \s_latched_data[19]_i_4_n_0\,
      I3 => \s_latched_data[19]_i_6_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_1\(0)
    );
\s_reg_vspd[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \s_latched_data[19]_i_4_n_0\,
      I1 => \s_latched_data[19]_i_6_n_0\,
      I2 => \s_latched_data[19]_i_5_n_0\,
      I3 => \s_latched_data[19]_i_3_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_6\(0)
    );
\s_reg_wing[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \s_latched_data[19]_i_5_n_0\,
      I1 => \s_latched_data[19]_i_6_n_0\,
      I2 => \s_latched_data[19]_i_4_n_0\,
      I3 => \s_latched_data[19]_i_3_n_0\,
      O => \s_micro_pc_reg_rep_rep[9]_2\(0)
    );
\s_ret_stack[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_stack_ptr_reg(0),
      I1 => s_stack_ptr_reg(1),
      I2 => \s_ret_stack[2][9]_i_3_n_0\,
      O => \s_ret_stack[0][9]_i_1_n_0\
    );
\s_ret_stack[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_stack_ptr_reg(0),
      I1 => s_stack_ptr_reg(1),
      I2 => \s_ret_stack[2][9]_i_3_n_0\,
      O => \s_ret_stack[1][9]_i_1_n_0\
    );
\s_ret_stack[2][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[0]\,
      O => data0(0)
    );
\s_ret_stack[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[0]\,
      I1 => \s_micro_pc_reg_rep_n_0_[1]\,
      O => data0(1)
    );
\s_ret_stack[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[2]\,
      I1 => \s_micro_pc_reg_rep_n_0_[1]\,
      I2 => \s_micro_pc_reg_rep_n_0_[0]\,
      O => \s_ret_stack[2][2]_i_1_n_0\
    );
\s_ret_stack[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[3]\,
      I1 => \s_micro_pc_reg_rep_n_0_[2]\,
      I2 => \s_micro_pc_reg_rep_n_0_[0]\,
      I3 => \s_micro_pc_reg_rep_n_0_[1]\,
      O => \s_ret_stack[2][3]_i_1_n_0\
    );
\s_ret_stack[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[4]\,
      I1 => \s_micro_pc_reg_rep_n_0_[3]\,
      I2 => \s_micro_pc_reg_rep_n_0_[1]\,
      I3 => \s_micro_pc_reg_rep_n_0_[0]\,
      I4 => \s_micro_pc_reg_rep_n_0_[2]\,
      O => \s_ret_stack[2][4]_i_1_n_0\
    );
\s_ret_stack[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[5]\,
      I1 => \s_micro_pc_reg_rep_n_0_[3]\,
      I2 => \s_micro_pc_reg_rep_n_0_[1]\,
      I3 => \s_micro_pc_reg_rep_n_0_[0]\,
      I4 => \s_micro_pc_reg_rep_n_0_[2]\,
      I5 => \s_micro_pc_reg_rep_n_0_[4]\,
      O => data0(5)
    );
\s_ret_stack[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_ret_stack[2][9]_i_4_n_0\,
      I1 => \s_micro_pc_reg_rep_n_0_[6]\,
      O => data0(6)
    );
\s_ret_stack[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \s_ret_stack[2][9]_i_4_n_0\,
      I1 => \s_micro_pc_reg_rep_n_0_[6]\,
      I2 => \s_micro_pc_reg_rep_n_0_[7]\,
      O => data0(7)
    );
\s_ret_stack[2][8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[7]\,
      I1 => \s_micro_pc_reg_rep_n_0_[6]\,
      I2 => \s_ret_stack[2][9]_i_4_n_0\,
      I3 => \s_micro_pc_reg_rep_n_0_[8]\,
      O => data0(8)
    );
\s_ret_stack[2][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_stack_ptr_reg(1),
      I1 => s_stack_ptr_reg(0),
      I2 => \s_ret_stack[2][9]_i_3_n_0\,
      O => \s_ret_stack[2][9]_i_1_n_0\
    );
\s_ret_stack[2][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[9]\,
      I1 => \s_micro_pc_reg_rep_n_0_[8]\,
      I2 => \s_micro_pc_reg_rep_n_0_[7]\,
      I3 => \s_micro_pc_reg_rep_n_0_[6]\,
      I4 => \s_ret_stack[2][9]_i_4_n_0\,
      O => data0(9)
    );
\s_ret_stack[2][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => E(0),
      I1 => s_frame_mark,
      I2 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I3 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I4 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I5 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_ret_stack[2][9]_i_3_n_0\
    );
\s_ret_stack[2][9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \s_micro_pc_reg_rep_n_0_[4]\,
      I1 => \s_micro_pc_reg_rep_n_0_[2]\,
      I2 => \s_micro_pc_reg_rep_n_0_[0]\,
      I3 => \s_micro_pc_reg_rep_n_0_[1]\,
      I4 => \s_micro_pc_reg_rep_n_0_[3]\,
      I5 => \s_micro_pc_reg_rep_n_0_[5]\,
      O => \s_ret_stack[2][9]_i_4_n_0\
    );
\s_ret_stack_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(0),
      Q => \s_ret_stack_reg[0]_2\(0),
      R => i_rst
    );
\s_ret_stack_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(1),
      Q => \s_ret_stack_reg[0]_2\(1),
      R => i_rst
    );
\s_ret_stack_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => \s_ret_stack[2][2]_i_1_n_0\,
      Q => \s_ret_stack_reg[0]_2\(2),
      R => i_rst
    );
\s_ret_stack_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => \s_ret_stack[2][3]_i_1_n_0\,
      Q => \s_ret_stack_reg[0]_2\(3),
      R => i_rst
    );
\s_ret_stack_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => \s_ret_stack[2][4]_i_1_n_0\,
      Q => \s_ret_stack_reg[0]_2\(4),
      R => i_rst
    );
\s_ret_stack_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(5),
      Q => \s_ret_stack_reg[0]_2\(5),
      R => i_rst
    );
\s_ret_stack_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(6),
      Q => \s_ret_stack_reg[0]_2\(6),
      R => i_rst
    );
\s_ret_stack_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(7),
      Q => \s_ret_stack_reg[0]_2\(7),
      R => i_rst
    );
\s_ret_stack_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(8),
      Q => \s_ret_stack_reg[0]_2\(8),
      R => i_rst
    );
\s_ret_stack_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[0][9]_i_1_n_0\,
      D => data0(9),
      Q => \s_ret_stack_reg[0]_2\(9),
      R => i_rst
    );
\s_ret_stack_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(0),
      Q => \s_ret_stack_reg[1]_1\(0),
      R => i_rst
    );
\s_ret_stack_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(1),
      Q => \s_ret_stack_reg[1]_1\(1),
      R => i_rst
    );
\s_ret_stack_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => \s_ret_stack[2][2]_i_1_n_0\,
      Q => \s_ret_stack_reg[1]_1\(2),
      R => i_rst
    );
\s_ret_stack_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => \s_ret_stack[2][3]_i_1_n_0\,
      Q => \s_ret_stack_reg[1]_1\(3),
      R => i_rst
    );
\s_ret_stack_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => \s_ret_stack[2][4]_i_1_n_0\,
      Q => \s_ret_stack_reg[1]_1\(4),
      R => i_rst
    );
\s_ret_stack_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(5),
      Q => \s_ret_stack_reg[1]_1\(5),
      R => i_rst
    );
\s_ret_stack_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(6),
      Q => \s_ret_stack_reg[1]_1\(6),
      R => i_rst
    );
\s_ret_stack_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(7),
      Q => \s_ret_stack_reg[1]_1\(7),
      R => i_rst
    );
\s_ret_stack_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(8),
      Q => \s_ret_stack_reg[1]_1\(8),
      R => i_rst
    );
\s_ret_stack_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[1][9]_i_1_n_0\,
      D => data0(9),
      Q => \s_ret_stack_reg[1]_1\(9),
      R => i_rst
    );
\s_ret_stack_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(0),
      Q => \s_ret_stack_reg[2]_0\(0),
      R => i_rst
    );
\s_ret_stack_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(1),
      Q => \s_ret_stack_reg[2]_0\(1),
      R => i_rst
    );
\s_ret_stack_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => \s_ret_stack[2][2]_i_1_n_0\,
      Q => \s_ret_stack_reg[2]_0\(2),
      R => i_rst
    );
\s_ret_stack_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => \s_ret_stack[2][3]_i_1_n_0\,
      Q => \s_ret_stack_reg[2]_0\(3),
      R => i_rst
    );
\s_ret_stack_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => \s_ret_stack[2][4]_i_1_n_0\,
      Q => \s_ret_stack_reg[2]_0\(4),
      R => i_rst
    );
\s_ret_stack_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(5),
      Q => \s_ret_stack_reg[2]_0\(5),
      R => i_rst
    );
\s_ret_stack_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(6),
      Q => \s_ret_stack_reg[2]_0\(6),
      R => i_rst
    );
\s_ret_stack_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(7),
      Q => \s_ret_stack_reg[2]_0\(7),
      R => i_rst
    );
\s_ret_stack_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(8),
      Q => \s_ret_stack_reg[2]_0\(8),
      R => i_rst
    );
\s_ret_stack_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_ret_stack[2][9]_i_1_n_0\,
      D => data0(9),
      Q => \s_ret_stack_reg[2]_0\(9),
      R => i_rst
    );
\s_sel_out1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => \s_sel_out1[0]_i_2_n_0\,
      I2 => s_micro_pc(6),
      I3 => s_micro_pc(9),
      I4 => \s_sel_out1_reg[0]\,
      I5 => s_sel_out1(0),
      O => \s_micro_pc_reg_rep_rep[8]_1\
    );
\s_sel_out1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000448C480"
    )
        port map (
      I0 => s_micro_pc(1),
      I1 => \s_sel_out1[2]_i_3_n_0\,
      I2 => s_micro_pc(0),
      I3 => s_micro_pc(3),
      I4 => s_micro_pc(2),
      I5 => s_micro_pc(7),
      O => \s_sel_out1[0]_i_2_n_0\
    );
\s_sel_out1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => s_micro_pc(8),
      I1 => \s_sel_out1[2]_i_2_n_0\,
      I2 => s_micro_pc(6),
      I3 => s_micro_pc(9),
      I4 => \s_sel_out1_reg[0]\,
      I5 => s_sel_out1(1),
      O => \s_micro_pc_reg_rep_rep[8]_2\
    );
\s_sel_out1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004400884"
    )
        port map (
      I0 => s_micro_pc(0),
      I1 => \s_sel_out1[2]_i_3_n_0\,
      I2 => s_micro_pc(1),
      I3 => s_micro_pc(3),
      I4 => s_micro_pc(2),
      I5 => s_micro_pc(7),
      O => \s_sel_out1[2]_i_2_n_0\
    );
\s_sel_out1[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_micro_pc(4),
      I1 => s_micro_pc(5),
      O => \s_sel_out1[2]_i_3_n_0\
    );
\s_stack_ptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_stack_ptr(0),
      I1 => s_stack_ptr_reg(0),
      O => \s_stack_ptr[0]_i_1_n_0\
    );
\s_stack_ptr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FFFF40BF0000"
    )
        port map (
      I0 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I2 => \s_stack_ptr[1]_i_2_n_0\,
      I3 => s_stack_ptr_reg(0),
      I4 => s_stack_ptr(0),
      I5 => s_stack_ptr_reg(1),
      O => \s_stack_ptr[1]_i_1_n_0\
    );
\s_stack_ptr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      O => \s_stack_ptr[1]_i_2_n_0\
    );
\s_stack_ptr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \s_stack_ptr[1]_i_4_n_0\,
      I1 => \s_micro_pc_rep_rep[9]_i_7_n_0\,
      I2 => \s_micro_pc_rep_rep[9]_i_3_n_0\,
      I3 => s_frame_mark,
      I4 => E(0),
      I5 => \s_stack_ptr[1]_i_5_n_0\,
      O => s_stack_ptr(0)
    );
\s_stack_ptr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      I1 => \^s_micro_pc_reg_rep_rep[8]_0\,
      O => \s_stack_ptr[1]_i_4_n_0\
    );
\s_stack_ptr[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA02"
    )
        port map (
      I0 => \^s_micro_pc_reg_rep_rep[8]_0\,
      I1 => s_stack_ptr_reg(1),
      I2 => s_stack_ptr_reg(0),
      I3 => \s_micro_pc_rep_rep[5]_i_4_n_0\,
      O => \s_stack_ptr[1]_i_5_n_0\
    );
\s_stack_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_stack_ptr[0]_i_1_n_0\,
      Q => s_stack_ptr_reg(0),
      R => i_rst
    );
\s_stack_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_stack_ptr[1]_i_1_n_0\,
      Q => s_stack_ptr_reg(1),
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_io_bridge is
  port (
    s_reg_bit : out STD_LOGIC;
    o_out_mach : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_alt : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_airspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_vspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_wing : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_flap : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_glove : out STD_LOGIC_VECTOR ( 19 downto 0 );
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_bit_status : out STD_LOGIC;
    i_rst : in STD_LOGIC;
    s_reg_bit_reg_0 : in STD_LOGIC;
    i_clk_master : in STD_LOGIC;
    i_channel_active : in STD_LOGIC;
    o_t0 : in STD_LOGIC;
    \s_io_in_sr_reg[18]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_latched_data_reg[19]_0\ : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \s_reg_mach_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_flap_reg[19]_0\ : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \s_reg_alt_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_airspd_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_vspd_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_wing_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_flap_reg[19]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_glove_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_io_bridge : entity is "io_bridge";
end cadc_system_cadc_top_0_0_io_bridge;

architecture STRUCTURE of cadc_system_cadc_top_0_0_io_bridge is
  signal s_io_data_out_par : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal s_reg_airspd : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s_reg_alt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^s_reg_bit\ : STD_LOGIC;
  signal s_reg_flap : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s_reg_glove : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s_reg_mach : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s_reg_vspd : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s_reg_wing : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_out_airspd[0]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_out_airspd[10]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_out_airspd[11]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_out_airspd[12]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_out_airspd[13]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_out_airspd[14]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \o_out_airspd[15]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \o_out_airspd[16]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_out_airspd[17]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_out_airspd[18]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_out_airspd[19]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_out_airspd[1]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_out_airspd[2]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_out_airspd[3]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_out_airspd[4]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_out_airspd[5]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_out_airspd[6]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_out_airspd[7]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_out_airspd[8]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_out_airspd[9]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_out_alt[0]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_out_alt[10]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_out_alt[11]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_out_alt[12]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_out_alt[13]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_out_alt[14]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \o_out_alt[15]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \o_out_alt[16]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_out_alt[17]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_out_alt[18]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_out_alt[19]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_out_alt[1]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_out_alt[2]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_out_alt[3]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_out_alt[4]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_out_alt[5]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_out_alt[6]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_out_alt[7]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_out_alt[8]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_out_alt[9]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_out_flap[0]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_out_flap[10]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_out_flap[11]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_out_flap[12]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_out_flap[13]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_out_flap[14]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_out_flap[15]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_out_flap[16]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_out_flap[17]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_out_flap[18]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_out_flap[19]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_out_flap[1]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_out_flap[2]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_out_flap[3]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_out_flap[4]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_out_flap[5]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_out_flap[6]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_out_flap[7]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_out_flap[8]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_out_flap[9]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_out_glove[0]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_out_glove[10]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \o_out_glove[11]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \o_out_glove[12]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \o_out_glove[13]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \o_out_glove[14]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \o_out_glove[15]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \o_out_glove[16]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \o_out_glove[17]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \o_out_glove[18]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \o_out_glove[19]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \o_out_glove[1]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_out_glove[2]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_out_glove[3]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_out_glove[4]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_out_glove[5]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_out_glove[6]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_out_glove[7]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_out_glove[8]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \o_out_glove[9]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \o_out_mach[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_out_mach[10]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_out_mach[11]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_out_mach[12]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_out_mach[13]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_out_mach[14]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_out_mach[15]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_out_mach[16]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_out_mach[17]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_out_mach[18]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_out_mach[19]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_out_mach[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_out_mach[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_out_mach[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_out_mach[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_out_mach[5]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_out_mach[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_out_mach[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_out_mach[8]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_out_mach[9]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_out_vspd[0]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_out_vspd[10]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_out_vspd[11]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_out_vspd[12]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_out_vspd[13]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_out_vspd[14]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_out_vspd[15]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_out_vspd[16]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_out_vspd[17]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_out_vspd[18]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_out_vspd[19]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_out_vspd[1]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_out_vspd[2]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_out_vspd[3]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_out_vspd[4]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \o_out_vspd[5]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \o_out_vspd[6]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_out_vspd[7]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_out_vspd[8]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_out_vspd[9]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_out_wing[0]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_out_wing[10]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_out_wing[11]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_out_wing[12]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_out_wing[13]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_out_wing[14]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_out_wing[15]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_out_wing[16]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_out_wing[17]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_out_wing[18]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_out_wing[19]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_out_wing[1]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_out_wing[2]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \o_out_wing[3]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \o_out_wing[4]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \o_out_wing[5]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \o_out_wing[6]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \o_out_wing[7]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \o_out_wing[8]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_out_wing[9]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_io_in_sr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_io_in_sr[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_io_in_sr[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_io_in_sr[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_io_in_sr[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_io_in_sr[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_io_in_sr[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_io_in_sr[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_io_in_sr[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_io_in_sr[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_io_in_sr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_io_in_sr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_io_in_sr[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_io_in_sr[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_io_in_sr[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_io_in_sr[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_io_in_sr[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_io_in_sr[9]_i_1\ : label is "soft_lutpair4";
begin
  s_reg_bit <= \^s_reg_bit\;
o_bit_status_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => \^s_reg_bit\,
      O => o_bit_status
    );
\o_out_airspd[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(0),
      O => o_out_airspd(0)
    );
\o_out_airspd[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(10),
      O => o_out_airspd(10)
    );
\o_out_airspd[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(11),
      O => o_out_airspd(11)
    );
\o_out_airspd[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(12),
      O => o_out_airspd(12)
    );
\o_out_airspd[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(13),
      O => o_out_airspd(13)
    );
\o_out_airspd[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(14),
      O => o_out_airspd(14)
    );
\o_out_airspd[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(15),
      O => o_out_airspd(15)
    );
\o_out_airspd[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(16),
      O => o_out_airspd(16)
    );
\o_out_airspd[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(17),
      O => o_out_airspd(17)
    );
\o_out_airspd[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(18),
      O => o_out_airspd(18)
    );
\o_out_airspd[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(19),
      O => o_out_airspd(19)
    );
\o_out_airspd[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(1),
      O => o_out_airspd(1)
    );
\o_out_airspd[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(2),
      O => o_out_airspd(2)
    );
\o_out_airspd[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(3),
      O => o_out_airspd(3)
    );
\o_out_airspd[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(4),
      O => o_out_airspd(4)
    );
\o_out_airspd[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(5),
      O => o_out_airspd(5)
    );
\o_out_airspd[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(6),
      O => o_out_airspd(6)
    );
\o_out_airspd[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(7),
      O => o_out_airspd(7)
    );
\o_out_airspd[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(8),
      O => o_out_airspd(8)
    );
\o_out_airspd[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_airspd(9),
      O => o_out_airspd(9)
    );
\o_out_alt[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(0),
      O => o_out_alt(0)
    );
\o_out_alt[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(10),
      O => o_out_alt(10)
    );
\o_out_alt[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(11),
      O => o_out_alt(11)
    );
\o_out_alt[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(12),
      O => o_out_alt(12)
    );
\o_out_alt[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(13),
      O => o_out_alt(13)
    );
\o_out_alt[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(14),
      O => o_out_alt(14)
    );
\o_out_alt[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(15),
      O => o_out_alt(15)
    );
\o_out_alt[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(16),
      O => o_out_alt(16)
    );
\o_out_alt[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(17),
      O => o_out_alt(17)
    );
\o_out_alt[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(18),
      O => o_out_alt(18)
    );
\o_out_alt[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(19),
      O => o_out_alt(19)
    );
\o_out_alt[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(1),
      O => o_out_alt(1)
    );
\o_out_alt[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(2),
      O => o_out_alt(2)
    );
\o_out_alt[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(3),
      O => o_out_alt(3)
    );
\o_out_alt[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(4),
      O => o_out_alt(4)
    );
\o_out_alt[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(5),
      O => o_out_alt(5)
    );
\o_out_alt[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(6),
      O => o_out_alt(6)
    );
\o_out_alt[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(7),
      O => o_out_alt(7)
    );
\o_out_alt[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(8),
      O => o_out_alt(8)
    );
\o_out_alt[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_alt(9),
      O => o_out_alt(9)
    );
\o_out_flap[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(0),
      O => o_out_flap(0)
    );
\o_out_flap[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(10),
      O => o_out_flap(10)
    );
\o_out_flap[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(11),
      O => o_out_flap(11)
    );
\o_out_flap[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(12),
      O => o_out_flap(12)
    );
\o_out_flap[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(13),
      O => o_out_flap(13)
    );
\o_out_flap[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(14),
      O => o_out_flap(14)
    );
\o_out_flap[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(15),
      O => o_out_flap(15)
    );
\o_out_flap[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(16),
      O => o_out_flap(16)
    );
\o_out_flap[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(17),
      O => o_out_flap(17)
    );
\o_out_flap[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(18),
      O => o_out_flap(18)
    );
\o_out_flap[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(19),
      O => o_out_flap(19)
    );
\o_out_flap[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(1),
      O => o_out_flap(1)
    );
\o_out_flap[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(2),
      O => o_out_flap(2)
    );
\o_out_flap[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(3),
      O => o_out_flap(3)
    );
\o_out_flap[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(4),
      O => o_out_flap(4)
    );
\o_out_flap[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(5),
      O => o_out_flap(5)
    );
\o_out_flap[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(6),
      O => o_out_flap(6)
    );
\o_out_flap[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(7),
      O => o_out_flap(7)
    );
\o_out_flap[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(8),
      O => o_out_flap(8)
    );
\o_out_flap[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_flap(9),
      O => o_out_flap(9)
    );
\o_out_glove[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(0),
      O => o_out_glove(0)
    );
\o_out_glove[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(10),
      O => o_out_glove(10)
    );
\o_out_glove[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(11),
      O => o_out_glove(11)
    );
\o_out_glove[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(12),
      O => o_out_glove(12)
    );
\o_out_glove[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(13),
      O => o_out_glove(13)
    );
\o_out_glove[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(14),
      O => o_out_glove(14)
    );
\o_out_glove[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(15),
      O => o_out_glove(15)
    );
\o_out_glove[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(16),
      O => o_out_glove(16)
    );
\o_out_glove[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(17),
      O => o_out_glove(17)
    );
\o_out_glove[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(18),
      O => o_out_glove(18)
    );
\o_out_glove[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(19),
      O => o_out_glove(19)
    );
\o_out_glove[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(1),
      O => o_out_glove(1)
    );
\o_out_glove[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(2),
      O => o_out_glove(2)
    );
\o_out_glove[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(3),
      O => o_out_glove(3)
    );
\o_out_glove[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(4),
      O => o_out_glove(4)
    );
\o_out_glove[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(5),
      O => o_out_glove(5)
    );
\o_out_glove[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(6),
      O => o_out_glove(6)
    );
\o_out_glove[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(7),
      O => o_out_glove(7)
    );
\o_out_glove[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(8),
      O => o_out_glove(8)
    );
\o_out_glove[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_glove(9),
      O => o_out_glove(9)
    );
\o_out_mach[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(0),
      O => o_out_mach(0)
    );
\o_out_mach[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(10),
      O => o_out_mach(10)
    );
\o_out_mach[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(11),
      O => o_out_mach(11)
    );
\o_out_mach[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(12),
      O => o_out_mach(12)
    );
\o_out_mach[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(13),
      O => o_out_mach(13)
    );
\o_out_mach[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(14),
      O => o_out_mach(14)
    );
\o_out_mach[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(15),
      O => o_out_mach(15)
    );
\o_out_mach[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(16),
      O => o_out_mach(16)
    );
\o_out_mach[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(17),
      O => o_out_mach(17)
    );
\o_out_mach[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(18),
      O => o_out_mach(18)
    );
\o_out_mach[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(19),
      O => o_out_mach(19)
    );
\o_out_mach[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(1),
      O => o_out_mach(1)
    );
\o_out_mach[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(2),
      O => o_out_mach(2)
    );
\o_out_mach[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(3),
      O => o_out_mach(3)
    );
\o_out_mach[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(4),
      O => o_out_mach(4)
    );
\o_out_mach[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(5),
      O => o_out_mach(5)
    );
\o_out_mach[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(6),
      O => o_out_mach(6)
    );
\o_out_mach[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(7),
      O => o_out_mach(7)
    );
\o_out_mach[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(8),
      O => o_out_mach(8)
    );
\o_out_mach[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_mach(9),
      O => o_out_mach(9)
    );
\o_out_vspd[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(0),
      O => o_out_vspd(0)
    );
\o_out_vspd[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(10),
      O => o_out_vspd(10)
    );
\o_out_vspd[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(11),
      O => o_out_vspd(11)
    );
\o_out_vspd[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(12),
      O => o_out_vspd(12)
    );
\o_out_vspd[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(13),
      O => o_out_vspd(13)
    );
\o_out_vspd[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(14),
      O => o_out_vspd(14)
    );
\o_out_vspd[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(15),
      O => o_out_vspd(15)
    );
\o_out_vspd[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(16),
      O => o_out_vspd(16)
    );
\o_out_vspd[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(17),
      O => o_out_vspd(17)
    );
\o_out_vspd[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(18),
      O => o_out_vspd(18)
    );
\o_out_vspd[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(19),
      O => o_out_vspd(19)
    );
\o_out_vspd[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(1),
      O => o_out_vspd(1)
    );
\o_out_vspd[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(2),
      O => o_out_vspd(2)
    );
\o_out_vspd[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(3),
      O => o_out_vspd(3)
    );
\o_out_vspd[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(4),
      O => o_out_vspd(4)
    );
\o_out_vspd[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(5),
      O => o_out_vspd(5)
    );
\o_out_vspd[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(6),
      O => o_out_vspd(6)
    );
\o_out_vspd[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(7),
      O => o_out_vspd(7)
    );
\o_out_vspd[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(8),
      O => o_out_vspd(8)
    );
\o_out_vspd[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_vspd(9),
      O => o_out_vspd(9)
    );
\o_out_wing[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(0),
      O => o_out_wing(0)
    );
\o_out_wing[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(10),
      O => o_out_wing(10)
    );
\o_out_wing[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(11),
      O => o_out_wing(11)
    );
\o_out_wing[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(12),
      O => o_out_wing(12)
    );
\o_out_wing[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(13),
      O => o_out_wing(13)
    );
\o_out_wing[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(14),
      O => o_out_wing(14)
    );
\o_out_wing[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(15),
      O => o_out_wing(15)
    );
\o_out_wing[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(16),
      O => o_out_wing(16)
    );
\o_out_wing[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(17),
      O => o_out_wing(17)
    );
\o_out_wing[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(18),
      O => o_out_wing(18)
    );
\o_out_wing[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(19),
      O => o_out_wing(19)
    );
\o_out_wing[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(1),
      O => o_out_wing(1)
    );
\o_out_wing[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(2),
      O => o_out_wing(2)
    );
\o_out_wing[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(3),
      O => o_out_wing(3)
    );
\o_out_wing[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(4),
      O => o_out_wing(4)
    );
\o_out_wing[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(5),
      O => o_out_wing(5)
    );
\o_out_wing[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(6),
      O => o_out_wing(6)
    );
\o_out_wing[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(7),
      O => o_out_wing(7)
    );
\o_out_wing[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(8),
      O => o_out_wing(8)
    );
\o_out_wing[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_channel_active,
      I1 => s_reg_wing(9),
      O => o_out_wing(9)
    );
\s_io_in_sr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(0),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(0),
      O => D(0)
    );
\s_io_in_sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(10),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(10),
      O => D(10)
    );
\s_io_in_sr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(11),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(11),
      O => D(11)
    );
\s_io_in_sr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(12),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(12),
      O => D(12)
    );
\s_io_in_sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(13),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(13),
      O => D(13)
    );
\s_io_in_sr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(14),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(14),
      O => D(14)
    );
\s_io_in_sr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(15),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(15),
      O => D(15)
    );
\s_io_in_sr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(16),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(16),
      O => D(16)
    );
\s_io_in_sr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(17),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(17),
      O => D(17)
    );
\s_io_in_sr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(18),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(18),
      O => D(18)
    );
\s_io_in_sr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(1),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(1),
      O => D(1)
    );
\s_io_in_sr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(2),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(2),
      O => D(2)
    );
\s_io_in_sr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(3),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(3),
      O => D(3)
    );
\s_io_in_sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(4),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(4),
      O => D(4)
    );
\s_io_in_sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(5),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(5),
      O => D(5)
    );
\s_io_in_sr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(6),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(6),
      O => D(6)
    );
\s_io_in_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(7),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(7),
      O => D(7)
    );
\s_io_in_sr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(8),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(8),
      O => D(8)
    );
\s_io_in_sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_io_data_out_par(9),
      I1 => o_t0,
      I2 => \s_io_in_sr_reg[18]\(9),
      O => D(9)
    );
\s_latched_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(0),
      Q => s_io_data_out_par(0),
      R => i_rst
    );
\s_latched_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(10),
      Q => s_io_data_out_par(10),
      R => i_rst
    );
\s_latched_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(11),
      Q => s_io_data_out_par(11),
      R => i_rst
    );
\s_latched_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(12),
      Q => s_io_data_out_par(12),
      R => i_rst
    );
\s_latched_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(13),
      Q => s_io_data_out_par(13),
      R => i_rst
    );
\s_latched_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(14),
      Q => s_io_data_out_par(14),
      R => i_rst
    );
\s_latched_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(15),
      Q => s_io_data_out_par(15),
      R => i_rst
    );
\s_latched_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(16),
      Q => s_io_data_out_par(16),
      R => i_rst
    );
\s_latched_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(17),
      Q => s_io_data_out_par(17),
      R => i_rst
    );
\s_latched_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(18),
      Q => s_io_data_out_par(18),
      R => i_rst
    );
\s_latched_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(19),
      Q => Q(0),
      R => i_rst
    );
\s_latched_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(1),
      Q => s_io_data_out_par(1),
      R => i_rst
    );
\s_latched_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(2),
      Q => s_io_data_out_par(2),
      R => i_rst
    );
\s_latched_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(3),
      Q => s_io_data_out_par(3),
      R => i_rst
    );
\s_latched_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(4),
      Q => s_io_data_out_par(4),
      R => i_rst
    );
\s_latched_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(5),
      Q => s_io_data_out_par(5),
      R => i_rst
    );
\s_latched_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(6),
      Q => s_io_data_out_par(6),
      R => i_rst
    );
\s_latched_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(7),
      Q => s_io_data_out_par(7),
      R => i_rst
    );
\s_latched_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(8),
      Q => s_io_data_out_par(8),
      R => i_rst
    );
\s_latched_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_latched_data_reg[19]_0\(9),
      Q => s_io_data_out_par(9),
      R => i_rst
    );
\s_reg_airspd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_airspd(0),
      R => i_rst
    );
\s_reg_airspd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_airspd(10),
      R => i_rst
    );
\s_reg_airspd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_airspd(11),
      R => i_rst
    );
\s_reg_airspd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_airspd(12),
      R => i_rst
    );
\s_reg_airspd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_airspd(13),
      R => i_rst
    );
\s_reg_airspd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_airspd(14),
      R => i_rst
    );
\s_reg_airspd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_airspd(15),
      R => i_rst
    );
\s_reg_airspd_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_airspd(16),
      R => i_rst
    );
\s_reg_airspd_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_airspd(17),
      R => i_rst
    );
\s_reg_airspd_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_airspd(18),
      R => i_rst
    );
\s_reg_airspd_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_airspd(19),
      R => i_rst
    );
\s_reg_airspd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_airspd(1),
      R => i_rst
    );
\s_reg_airspd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_airspd(2),
      R => i_rst
    );
\s_reg_airspd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_airspd(3),
      R => i_rst
    );
\s_reg_airspd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_airspd(4),
      R => i_rst
    );
\s_reg_airspd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_airspd(5),
      R => i_rst
    );
\s_reg_airspd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_airspd(6),
      R => i_rst
    );
\s_reg_airspd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_airspd(7),
      R => i_rst
    );
\s_reg_airspd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_airspd(8),
      R => i_rst
    );
\s_reg_airspd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_airspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_airspd(9),
      R => i_rst
    );
\s_reg_alt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_alt(0),
      R => i_rst
    );
\s_reg_alt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_alt(10),
      R => i_rst
    );
\s_reg_alt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_alt(11),
      R => i_rst
    );
\s_reg_alt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_alt(12),
      R => i_rst
    );
\s_reg_alt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_alt(13),
      R => i_rst
    );
\s_reg_alt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_alt(14),
      R => i_rst
    );
\s_reg_alt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_alt(15),
      R => i_rst
    );
\s_reg_alt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_alt(16),
      R => i_rst
    );
\s_reg_alt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_alt(17),
      R => i_rst
    );
\s_reg_alt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_alt(18),
      R => i_rst
    );
\s_reg_alt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_alt(19),
      R => i_rst
    );
\s_reg_alt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_alt(1),
      R => i_rst
    );
\s_reg_alt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_alt(2),
      R => i_rst
    );
\s_reg_alt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_alt(3),
      R => i_rst
    );
\s_reg_alt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_alt(4),
      R => i_rst
    );
\s_reg_alt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_alt(5),
      R => i_rst
    );
\s_reg_alt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_alt(6),
      R => i_rst
    );
\s_reg_alt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_alt(7),
      R => i_rst
    );
\s_reg_alt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_alt(8),
      R => i_rst
    );
\s_reg_alt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_alt_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_alt(9),
      R => i_rst
    );
s_reg_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_reg_bit_reg_0,
      Q => \^s_reg_bit\,
      R => i_rst
    );
\s_reg_flap_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_flap(0),
      R => i_rst
    );
\s_reg_flap_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_flap(10),
      R => i_rst
    );
\s_reg_flap_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_flap(11),
      R => i_rst
    );
\s_reg_flap_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_flap(12),
      R => i_rst
    );
\s_reg_flap_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_flap(13),
      R => i_rst
    );
\s_reg_flap_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_flap(14),
      R => i_rst
    );
\s_reg_flap_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_flap(15),
      R => i_rst
    );
\s_reg_flap_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_flap(16),
      R => i_rst
    );
\s_reg_flap_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_flap(17),
      R => i_rst
    );
\s_reg_flap_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_flap(18),
      R => i_rst
    );
\s_reg_flap_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_flap(19),
      R => i_rst
    );
\s_reg_flap_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_flap(1),
      R => i_rst
    );
\s_reg_flap_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_flap(2),
      R => i_rst
    );
\s_reg_flap_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_flap(3),
      R => i_rst
    );
\s_reg_flap_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_flap(4),
      R => i_rst
    );
\s_reg_flap_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_flap(5),
      R => i_rst
    );
\s_reg_flap_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_flap(6),
      R => i_rst
    );
\s_reg_flap_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_flap(7),
      R => i_rst
    );
\s_reg_flap_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_flap(8),
      R => i_rst
    );
\s_reg_flap_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_flap_reg[19]_1\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_flap(9),
      R => i_rst
    );
\s_reg_glove_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_glove(0),
      R => i_rst
    );
\s_reg_glove_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_glove(10),
      R => i_rst
    );
\s_reg_glove_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_glove(11),
      R => i_rst
    );
\s_reg_glove_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_glove(12),
      R => i_rst
    );
\s_reg_glove_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_glove(13),
      R => i_rst
    );
\s_reg_glove_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_glove(14),
      R => i_rst
    );
\s_reg_glove_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_glove(15),
      R => i_rst
    );
\s_reg_glove_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_glove(16),
      R => i_rst
    );
\s_reg_glove_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_glove(17),
      R => i_rst
    );
\s_reg_glove_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_glove(18),
      R => i_rst
    );
\s_reg_glove_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_glove(19),
      R => i_rst
    );
\s_reg_glove_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_glove(1),
      R => i_rst
    );
\s_reg_glove_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_glove(2),
      R => i_rst
    );
\s_reg_glove_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_glove(3),
      R => i_rst
    );
\s_reg_glove_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_glove(4),
      R => i_rst
    );
\s_reg_glove_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_glove(5),
      R => i_rst
    );
\s_reg_glove_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_glove(6),
      R => i_rst
    );
\s_reg_glove_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_glove(7),
      R => i_rst
    );
\s_reg_glove_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_glove(8),
      R => i_rst
    );
\s_reg_glove_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_glove_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_glove(9),
      R => i_rst
    );
\s_reg_mach_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_mach(0),
      R => i_rst
    );
\s_reg_mach_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_mach(10),
      R => i_rst
    );
\s_reg_mach_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_mach(11),
      R => i_rst
    );
\s_reg_mach_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_mach(12),
      R => i_rst
    );
\s_reg_mach_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_mach(13),
      R => i_rst
    );
\s_reg_mach_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_mach(14),
      R => i_rst
    );
\s_reg_mach_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_mach(15),
      R => i_rst
    );
\s_reg_mach_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_mach(16),
      R => i_rst
    );
\s_reg_mach_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_mach(17),
      R => i_rst
    );
\s_reg_mach_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_mach(18),
      R => i_rst
    );
\s_reg_mach_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_mach(19),
      R => i_rst
    );
\s_reg_mach_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_mach(1),
      R => i_rst
    );
\s_reg_mach_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_mach(2),
      R => i_rst
    );
\s_reg_mach_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_mach(3),
      R => i_rst
    );
\s_reg_mach_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_mach(4),
      R => i_rst
    );
\s_reg_mach_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_mach(5),
      R => i_rst
    );
\s_reg_mach_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_mach(6),
      R => i_rst
    );
\s_reg_mach_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_mach(7),
      R => i_rst
    );
\s_reg_mach_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_mach(8),
      R => i_rst
    );
\s_reg_mach_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_mach_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_mach(9),
      R => i_rst
    );
\s_reg_vspd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_vspd(0),
      R => i_rst
    );
\s_reg_vspd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_vspd(10),
      R => i_rst
    );
\s_reg_vspd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_vspd(11),
      R => i_rst
    );
\s_reg_vspd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_vspd(12),
      R => i_rst
    );
\s_reg_vspd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_vspd(13),
      R => i_rst
    );
\s_reg_vspd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_vspd(14),
      R => i_rst
    );
\s_reg_vspd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_vspd(15),
      R => i_rst
    );
\s_reg_vspd_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_vspd(16),
      R => i_rst
    );
\s_reg_vspd_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_vspd(17),
      R => i_rst
    );
\s_reg_vspd_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_vspd(18),
      R => i_rst
    );
\s_reg_vspd_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_vspd(19),
      R => i_rst
    );
\s_reg_vspd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_vspd(1),
      R => i_rst
    );
\s_reg_vspd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_vspd(2),
      R => i_rst
    );
\s_reg_vspd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_vspd(3),
      R => i_rst
    );
\s_reg_vspd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_vspd(4),
      R => i_rst
    );
\s_reg_vspd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_vspd(5),
      R => i_rst
    );
\s_reg_vspd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_vspd(6),
      R => i_rst
    );
\s_reg_vspd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_vspd(7),
      R => i_rst
    );
\s_reg_vspd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_vspd(8),
      R => i_rst
    );
\s_reg_vspd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_vspd_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_vspd(9),
      R => i_rst
    );
\s_reg_wing_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(0),
      Q => s_reg_wing(0),
      R => i_rst
    );
\s_reg_wing_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(10),
      Q => s_reg_wing(10),
      R => i_rst
    );
\s_reg_wing_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(11),
      Q => s_reg_wing(11),
      R => i_rst
    );
\s_reg_wing_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(12),
      Q => s_reg_wing(12),
      R => i_rst
    );
\s_reg_wing_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(13),
      Q => s_reg_wing(13),
      R => i_rst
    );
\s_reg_wing_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(14),
      Q => s_reg_wing(14),
      R => i_rst
    );
\s_reg_wing_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(15),
      Q => s_reg_wing(15),
      R => i_rst
    );
\s_reg_wing_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(16),
      Q => s_reg_wing(16),
      R => i_rst
    );
\s_reg_wing_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(17),
      Q => s_reg_wing(17),
      R => i_rst
    );
\s_reg_wing_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(18),
      Q => s_reg_wing(18),
      R => i_rst
    );
\s_reg_wing_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(19),
      Q => s_reg_wing(19),
      R => i_rst
    );
\s_reg_wing_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(1),
      Q => s_reg_wing(1),
      R => i_rst
    );
\s_reg_wing_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(2),
      Q => s_reg_wing(2),
      R => i_rst
    );
\s_reg_wing_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(3),
      Q => s_reg_wing(3),
      R => i_rst
    );
\s_reg_wing_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(4),
      Q => s_reg_wing(4),
      R => i_rst
    );
\s_reg_wing_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(5),
      Q => s_reg_wing(5),
      R => i_rst
    );
\s_reg_wing_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(6),
      Q => s_reg_wing(6),
      R => i_rst
    );
\s_reg_wing_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(7),
      Q => s_reg_wing(7),
      R => i_rst
    );
\s_reg_wing_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(8),
      Q => s_reg_wing(8),
      R => i_rst
    );
\s_reg_wing_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_reg_wing_reg[19]_0\(0),
      D => \s_reg_flap_reg[19]_0\(9),
      Q => s_reg_wing(9),
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_pdu is
  port (
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_pdu_busy : out STD_LOGIC;
    s_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_divisor_lat_reg[1]_0\ : out STD_LOGIC;
    s_busy_reg_0 : out STD_LOGIC;
    i_rst : in STD_LOGIC;
    s_mcand_sr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_divisor_sr_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_clk_master : in STD_LOGIC;
    s_busy_reg_1 : in STD_LOGIC;
    o_phi2 : in STD_LOGIC;
    \FSM_onehot_s_state_reg[0]_0\ : in STD_LOGIC;
    \s_micro_pc_rep_rep[1]_i_4\ : in STD_LOGIC;
    \FSM_onehot_s_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_onehot_s_state_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_pdu : entity is "pdu";
end cadc_system_cadc_top_0_0_pdu;

architecture STRUCTURE of cadc_system_cadc_top_0_0_pdu is
  signal \^d\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \FSM_onehot_s_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s_state[2]_i_7_n_0\ : STD_LOGIC;
  signal s_divisor_lat : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^s_pdu_busy\ : STD_LOGIC;
  signal \^s_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_state_reg[0]\ : label is "idle:001,setup:010,dividing:010,correction:011,done:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_state_reg[1]\ : label is "idle:001,setup:010,dividing:010,correction:011,done:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_state_reg[2]\ : label is "idle:001,setup:010,dividing:010,correction:011,done:100,";
begin
  D(18 downto 0) <= \^d\(18 downto 0);
  s_pdu_busy <= \^s_pdu_busy\;
  s_state(2 downto 0) <= \^s_state\(2 downto 0);
\FSM_onehot_s_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF07F800"
    )
        port map (
      I0 => o_phi2,
      I1 => \^s_state\(1),
      I2 => \FSM_onehot_s_state_reg[0]_0\,
      I3 => \^s_state\(2),
      I4 => \^s_state\(0),
      O => \FSM_onehot_s_state[0]_i_1_n_0\
    );
\FSM_onehot_s_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_divisor_lat(1),
      I1 => s_divisor_lat(0),
      I2 => s_divisor_lat(3),
      I3 => s_divisor_lat(2),
      I4 => \FSM_onehot_s_state[2]_i_4_n_0\,
      I5 => \FSM_onehot_s_state[2]_i_5_n_0\,
      O => \s_divisor_lat_reg[1]_0\
    );
\FSM_onehot_s_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_divisor_lat(14),
      I1 => s_divisor_lat(15),
      I2 => s_divisor_lat(12),
      I3 => s_divisor_lat(13),
      I4 => \FSM_onehot_s_state[2]_i_6_n_0\,
      O => \FSM_onehot_s_state[2]_i_4_n_0\
    );
\FSM_onehot_s_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_divisor_lat(6),
      I1 => s_divisor_lat(7),
      I2 => s_divisor_lat(4),
      I3 => s_divisor_lat(5),
      I4 => \FSM_onehot_s_state[2]_i_7_n_0\,
      O => \FSM_onehot_s_state[2]_i_5_n_0\
    );
\FSM_onehot_s_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_divisor_lat(17),
      I1 => s_divisor_lat(16),
      I2 => s_divisor_lat(19),
      I3 => s_divisor_lat(18),
      O => \FSM_onehot_s_state[2]_i_6_n_0\
    );
\FSM_onehot_s_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_divisor_lat(9),
      I1 => s_divisor_lat(8),
      I2 => s_divisor_lat(11),
      I3 => s_divisor_lat(10),
      O => \FSM_onehot_s_state[2]_i_7_n_0\
    );
\FSM_onehot_s_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \FSM_onehot_s_state[0]_i_1_n_0\,
      Q => \^s_state\(0),
      S => i_rst
    );
\FSM_onehot_s_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \FSM_onehot_s_state_reg[1]_0\,
      Q => \^s_state\(1),
      R => i_rst
    );
\FSM_onehot_s_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \FSM_onehot_s_state_reg[2]_0\,
      Q => \^s_state\(2),
      R => i_rst
    );
s_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_busy_reg_1,
      Q => \^s_pdu_busy\,
      R => i_rst
    );
\s_divisor_lat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(0),
      Q => s_divisor_lat(0),
      R => i_rst
    );
\s_divisor_lat_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(10),
      Q => s_divisor_lat(10),
      R => i_rst
    );
\s_divisor_lat_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(11),
      Q => s_divisor_lat(11),
      R => i_rst
    );
\s_divisor_lat_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(12),
      Q => s_divisor_lat(12),
      R => i_rst
    );
\s_divisor_lat_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(13),
      Q => s_divisor_lat(13),
      R => i_rst
    );
\s_divisor_lat_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(14),
      Q => s_divisor_lat(14),
      R => i_rst
    );
\s_divisor_lat_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(15),
      Q => s_divisor_lat(15),
      R => i_rst
    );
\s_divisor_lat_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(16),
      Q => s_divisor_lat(16),
      R => i_rst
    );
\s_divisor_lat_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(17),
      Q => s_divisor_lat(17),
      R => i_rst
    );
\s_divisor_lat_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(18),
      Q => s_divisor_lat(18),
      R => i_rst
    );
\s_divisor_lat_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_divisor_sr_reg[19]_0\(0),
      Q => s_divisor_lat(19),
      R => i_rst
    );
\s_divisor_lat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(1),
      Q => s_divisor_lat(1),
      R => i_rst
    );
\s_divisor_lat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(2),
      Q => s_divisor_lat(2),
      R => i_rst
    );
\s_divisor_lat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(3),
      Q => s_divisor_lat(3),
      R => i_rst
    );
\s_divisor_lat_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(4),
      Q => s_divisor_lat(4),
      R => i_rst
    );
\s_divisor_lat_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(5),
      Q => s_divisor_lat(5),
      R => i_rst
    );
\s_divisor_lat_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(6),
      Q => s_divisor_lat(6),
      R => i_rst
    );
\s_divisor_lat_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(7),
      Q => s_divisor_lat(7),
      R => i_rst
    );
\s_divisor_lat_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(8),
      Q => s_divisor_lat(8),
      R => i_rst
    );
\s_divisor_lat_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \^d\(9),
      Q => s_divisor_lat(9),
      R => i_rst
    );
\s_divisor_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(10),
      Q => \^d\(9),
      R => i_rst
    );
\s_divisor_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(11),
      Q => \^d\(10),
      R => i_rst
    );
\s_divisor_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(12),
      Q => \^d\(11),
      R => i_rst
    );
\s_divisor_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(13),
      Q => \^d\(12),
      R => i_rst
    );
\s_divisor_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(14),
      Q => \^d\(13),
      R => i_rst
    );
\s_divisor_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(15),
      Q => \^d\(14),
      R => i_rst
    );
\s_divisor_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(16),
      Q => \^d\(15),
      R => i_rst
    );
\s_divisor_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(17),
      Q => \^d\(16),
      R => i_rst
    );
\s_divisor_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(18),
      Q => \^d\(17),
      R => i_rst
    );
\s_divisor_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \s_divisor_sr_reg[19]_0\(0),
      Q => \^d\(18),
      R => i_rst
    );
\s_divisor_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(1),
      Q => \^d\(0),
      R => i_rst
    );
\s_divisor_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(2),
      Q => \^d\(1),
      R => i_rst
    );
\s_divisor_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(3),
      Q => \^d\(2),
      R => i_rst
    );
\s_divisor_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(4),
      Q => \^d\(3),
      R => i_rst
    );
\s_divisor_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(5),
      Q => \^d\(4),
      R => i_rst
    );
\s_divisor_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(6),
      Q => \^d\(5),
      R => i_rst
    );
\s_divisor_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(7),
      Q => \^d\(6),
      R => i_rst
    );
\s_divisor_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(8),
      Q => \^d\(7),
      R => i_rst
    );
\s_divisor_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => \^d\(9),
      Q => \^d\(8),
      R => i_rst
    );
\s_micro_pc_rep_rep[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_pdu_busy\,
      I1 => \s_micro_pc_rep_rep[1]_i_4\,
      O => s_busy_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_pmu is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_word_type : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_clk_master : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_mcand_sr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \main_proc.v_product_201_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_product_sr_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_pmu : entity is "pmu";
end cadc_system_cadc_top_0_0_pmu;

architecture STRUCTURE of cadc_system_cadc_top_0_0_pmu is
  signal L : STD_LOGIC_VECTOR ( 38 downto 19 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \main_proc.v_product_201__0\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \main_proc.v_product_201_n_100\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_101\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_102\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_103\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_104\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_105\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_58\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_59\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_60\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_61\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_62\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_63\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_64\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_65\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_66\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_67\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_68\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_69\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_70\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_71\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_72\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_73\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_74\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_75\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_76\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_77\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_78\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_79\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_80\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_81\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_82\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_83\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_84\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_85\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_86\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_87\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_88\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_89\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_90\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_91\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_92\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_93\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_94\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_95\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_96\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_97\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_98\ : STD_LOGIC;
  signal \main_proc.v_product_201_n_99\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \s_mcand_lat_reg__0_n_0\ : STD_LOGIC;
  signal \s_mcand_lat_reg__1_n_0\ : STD_LOGIC;
  signal s_mcand_lat_reg_n_0 : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_mplier_lat_reg_n_0_[9]\ : STD_LOGIC;
  signal \s_product_sr[11]_i_11_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_12_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_13_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_14_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_16_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_17_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_18_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_19_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_20_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_21_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_22_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_23_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_24_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_25_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_26_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_27_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_5_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_7_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_8_n_0\ : STD_LOGIC;
  signal \s_product_sr[11]_i_9_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_11_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_12_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_13_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_14_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_16_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_17_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_18_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_19_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_20_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_21_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_22_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_23_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_24_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_25_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_26_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_27_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_7_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_8_n_0\ : STD_LOGIC;
  signal \s_product_sr[15]_i_9_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_12_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_13_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_14_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_15_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_16_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_17_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_20_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_21_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_22_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_23_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_24_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_25_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_26_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_27_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_28_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_29_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_30_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_31_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_32_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_33_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_34_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_5_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_6_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_7_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_8_n_0\ : STD_LOGIC;
  signal \s_product_sr[19]_i_9_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_11_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_12_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_13_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_14_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_16_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_17_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_18_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_19_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_20_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_21_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_22_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_23_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_product_sr[3]_i_9_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_14_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_16_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_17_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_18_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_19_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_20_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_21_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_22_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_23_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_24_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_25_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_26_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_27_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_product_sr[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_10_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_10_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_10_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_10_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_15_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_15_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_15_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_15_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \s_product_sr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_10_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_15_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_15_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_15_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_15_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \s_product_sr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_10_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_11_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_11_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_11_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_11_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_18_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_19_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_19_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_19_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_19_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_4\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \s_product_sr_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_10_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_10_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_10_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_15_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_15_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_15_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \s_product_sr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_15_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_15_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_15_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \s_product_sr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_main_proc.v_product_201_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_main_proc.v_product_201_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_main_proc.v_product_201_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_main_proc.v_product_201_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_s_product_sr_reg[19]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_product_sr_reg[19]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_product_sr_reg[19]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_product_sr_reg[19]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_product_sr_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_product_sr_reg[3]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \main_proc.v_product_201\ : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_product_sr[11]_i_24\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_product_sr[11]_i_25\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_product_sr[11]_i_26\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_product_sr[11]_i_27\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_product_sr[15]_i_24\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_product_sr[15]_i_25\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_product_sr[15]_i_26\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_product_sr[15]_i_27\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_product_sr[19]_i_32\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_product_sr[19]_i_33\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_product_sr[19]_i_34\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_product_sr[3]_i_23\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_product_sr[7]_i_24\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_product_sr[7]_i_25\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_product_sr[7]_i_26\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_product_sr[7]_i_27\ : label is "soft_lutpair79";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \s_product_sr_reg[11]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \s_product_sr_reg[15]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \s_product_sr_reg[19]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \s_product_sr_reg[19]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \s_product_sr_reg[3]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \s_product_sr_reg[7]_i_10\ : label is 35;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\main_proc.v_product_201\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(19),
      A(28) => A(19),
      A(27) => A(19),
      A(26) => A(19),
      A(25) => A(19),
      A(24) => A(19),
      A(23) => A(19),
      A(22) => A(19),
      A(21) => A(19),
      A(20) => A(19),
      A(19 downto 0) => A(19 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_main_proc.v_product_201_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => D(0),
      B(15 downto 0) => \main_proc.v_product_201_0\(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_main_proc.v_product_201_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_main_proc.v_product_201_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_main_proc.v_product_201_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => s_mcand_sr(0),
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => i_clk_master,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_main_proc.v_product_201_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_main_proc.v_product_201_OVERFLOW_UNCONNECTED\,
      P(47) => \main_proc.v_product_201_n_58\,
      P(46) => \main_proc.v_product_201_n_59\,
      P(45) => \main_proc.v_product_201_n_60\,
      P(44) => \main_proc.v_product_201_n_61\,
      P(43) => \main_proc.v_product_201_n_62\,
      P(42) => \main_proc.v_product_201_n_63\,
      P(41) => \main_proc.v_product_201_n_64\,
      P(40) => \main_proc.v_product_201_n_65\,
      P(39) => \main_proc.v_product_201_n_66\,
      P(38) => \main_proc.v_product_201_n_67\,
      P(37) => \main_proc.v_product_201_n_68\,
      P(36) => \main_proc.v_product_201_n_69\,
      P(35) => \main_proc.v_product_201_n_70\,
      P(34) => \main_proc.v_product_201_n_71\,
      P(33) => \main_proc.v_product_201_n_72\,
      P(32) => \main_proc.v_product_201_n_73\,
      P(31) => \main_proc.v_product_201_n_74\,
      P(30) => \main_proc.v_product_201_n_75\,
      P(29) => \main_proc.v_product_201_n_76\,
      P(28) => \main_proc.v_product_201_n_77\,
      P(27) => \main_proc.v_product_201_n_78\,
      P(26) => \main_proc.v_product_201_n_79\,
      P(25) => \main_proc.v_product_201_n_80\,
      P(24) => \main_proc.v_product_201_n_81\,
      P(23) => \main_proc.v_product_201_n_82\,
      P(22) => \main_proc.v_product_201_n_83\,
      P(21) => \main_proc.v_product_201_n_84\,
      P(20) => \main_proc.v_product_201_n_85\,
      P(19) => \main_proc.v_product_201_n_86\,
      P(18) => \main_proc.v_product_201_n_87\,
      P(17) => \main_proc.v_product_201_n_88\,
      P(16) => \main_proc.v_product_201_n_89\,
      P(15) => \main_proc.v_product_201_n_90\,
      P(14) => \main_proc.v_product_201_n_91\,
      P(13) => \main_proc.v_product_201_n_92\,
      P(12) => \main_proc.v_product_201_n_93\,
      P(11) => \main_proc.v_product_201_n_94\,
      P(10) => \main_proc.v_product_201_n_95\,
      P(9) => \main_proc.v_product_201_n_96\,
      P(8) => \main_proc.v_product_201_n_97\,
      P(7) => \main_proc.v_product_201_n_98\,
      P(6) => \main_proc.v_product_201_n_99\,
      P(5) => \main_proc.v_product_201_n_100\,
      P(4) => \main_proc.v_product_201_n_101\,
      P(3) => \main_proc.v_product_201_n_102\,
      P(2) => \main_proc.v_product_201_n_103\,
      P(1) => \main_proc.v_product_201_n_104\,
      P(0) => \main_proc.v_product_201_n_105\,
      PATTERNBDETECT => \NLW_main_proc.v_product_201_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_main_proc.v_product_201_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_main_proc.v_product_201_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => i_rst,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => i_rst,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_main_proc.v_product_201_UNDERFLOW_UNCONNECTED\
    );
s_mcand_lat_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk_master,
      CE => E(0),
      D => D(2),
      Q => s_mcand_lat_reg_n_0,
      R => i_rst
    );
\s_mcand_lat_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => i_clk_master,
      CE => E(0),
      D => D(1),
      Q => \s_mcand_lat_reg__0_n_0\,
      R => i_rst
    );
\s_mcand_lat_reg__1\: unisim.vcomponents.FDRE
     port map (
      C => i_clk_master,
      CE => E(0),
      D => D(0),
      Q => \s_mcand_lat_reg__1_n_0\,
      R => i_rst
    );
\s_mplier_lat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(0),
      Q => \s_mplier_lat_reg_n_0_[0]\,
      R => i_rst
    );
\s_mplier_lat_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(10),
      Q => \s_mplier_lat_reg_n_0_[10]\,
      R => i_rst
    );
\s_mplier_lat_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(11),
      Q => \s_mplier_lat_reg_n_0_[11]\,
      R => i_rst
    );
\s_mplier_lat_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(12),
      Q => \s_mplier_lat_reg_n_0_[12]\,
      R => i_rst
    );
\s_mplier_lat_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(13),
      Q => \s_mplier_lat_reg_n_0_[13]\,
      R => i_rst
    );
\s_mplier_lat_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(14),
      Q => \s_mplier_lat_reg_n_0_[14]\,
      R => i_rst
    );
\s_mplier_lat_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(15),
      Q => \s_mplier_lat_reg_n_0_[15]\,
      R => i_rst
    );
\s_mplier_lat_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(16),
      Q => \s_mplier_lat_reg_n_0_[16]\,
      R => i_rst
    );
\s_mplier_lat_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(17),
      Q => \s_mplier_lat_reg_n_0_[17]\,
      R => i_rst
    );
\s_mplier_lat_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(18),
      Q => \s_mplier_lat_reg_n_0_[18]\,
      R => i_rst
    );
\s_mplier_lat_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(19),
      Q => \s_mplier_lat_reg_n_0_[19]\,
      R => i_rst
    );
\s_mplier_lat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(1),
      Q => \s_mplier_lat_reg_n_0_[1]\,
      R => i_rst
    );
\s_mplier_lat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(2),
      Q => \s_mplier_lat_reg_n_0_[2]\,
      R => i_rst
    );
\s_mplier_lat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(3),
      Q => \s_mplier_lat_reg_n_0_[3]\,
      R => i_rst
    );
\s_mplier_lat_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(4),
      Q => \s_mplier_lat_reg_n_0_[4]\,
      R => i_rst
    );
\s_mplier_lat_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(5),
      Q => \s_mplier_lat_reg_n_0_[5]\,
      R => i_rst
    );
\s_mplier_lat_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(6),
      Q => \s_mplier_lat_reg_n_0_[6]\,
      R => i_rst
    );
\s_mplier_lat_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(7),
      Q => \s_mplier_lat_reg_n_0_[7]\,
      R => i_rst
    );
\s_mplier_lat_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(8),
      Q => \s_mplier_lat_reg_n_0_[8]\,
      R => i_rst
    );
\s_mplier_lat_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => A(9),
      Q => \s_mplier_lat_reg_n_0_[9]\,
      R => i_rst
    );
\s_product_sr[11]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_77\,
      I1 => \main_proc.v_product_201__0\(11),
      O => \s_product_sr[11]_i_11_n_0\
    );
\s_product_sr[11]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_78\,
      I1 => \main_proc.v_product_201__0\(10),
      O => \s_product_sr[11]_i_12_n_0\
    );
\s_product_sr[11]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_79\,
      I1 => \main_proc.v_product_201__0\(9),
      O => \s_product_sr[11]_i_13_n_0\
    );
\s_product_sr[11]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_80\,
      I1 => \main_proc.v_product_201__0\(8),
      O => \s_product_sr[11]_i_14_n_0\
    );
\s_product_sr[11]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[9]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[8]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[10]\,
      O => \s_product_sr[11]_i_16_n_0\
    );
\s_product_sr[11]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[8]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[7]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[9]\,
      O => \s_product_sr[11]_i_17_n_0\
    );
\s_product_sr[11]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[7]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[6]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[8]\,
      O => \s_product_sr[11]_i_18_n_0\
    );
\s_product_sr[11]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[6]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[5]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[7]\,
      O => \s_product_sr[11]_i_19_n_0\
    );
\s_product_sr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(30),
      I1 => o_word_type,
      O => \s_product_sr[11]_i_2_n_0\
    );
\s_product_sr[11]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[11]_i_16_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[10]\,
      I3 => \s_product_sr[11]_i_24_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[11]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[11]_i_20_n_0\
    );
\s_product_sr[11]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[11]_i_17_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[9]\,
      I3 => \s_product_sr[11]_i_25_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[10]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[11]_i_21_n_0\
    );
\s_product_sr[11]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[11]_i_18_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[8]\,
      I3 => \s_product_sr[11]_i_26_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[9]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[11]_i_22_n_0\
    );
\s_product_sr[11]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[11]_i_19_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[7]\,
      I3 => \s_product_sr[11]_i_27_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[8]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[11]_i_23_n_0\
    );
\s_product_sr[11]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[9]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[11]_i_24_n_0\
    );
\s_product_sr[11]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[8]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[11]_i_25_n_0\
    );
\s_product_sr[11]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[7]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[11]_i_26_n_0\
    );
\s_product_sr[11]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[6]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[11]_i_27_n_0\
    );
\s_product_sr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(29),
      I1 => o_word_type,
      O => \s_product_sr[11]_i_3_n_0\
    );
\s_product_sr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(28),
      I1 => o_word_type,
      O => \s_product_sr[11]_i_4_n_0\
    );
\s_product_sr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(27),
      I1 => o_word_type,
      O => \s_product_sr[11]_i_5_n_0\
    );
\s_product_sr[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(30),
      I1 => p_1_in(11),
      I2 => o_word_type,
      O => \s_product_sr[11]_i_6_n_0\
    );
\s_product_sr[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(29),
      I1 => p_1_in(10),
      I2 => o_word_type,
      O => \s_product_sr[11]_i_7_n_0\
    );
\s_product_sr[11]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(28),
      I1 => p_1_in(9),
      I2 => o_word_type,
      O => \s_product_sr[11]_i_8_n_0\
    );
\s_product_sr[11]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(27),
      I1 => p_1_in(8),
      I2 => o_word_type,
      O => \s_product_sr[11]_i_9_n_0\
    );
\s_product_sr[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_73\,
      I1 => \main_proc.v_product_201__0\(15),
      O => \s_product_sr[15]_i_11_n_0\
    );
\s_product_sr[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_74\,
      I1 => \main_proc.v_product_201__0\(14),
      O => \s_product_sr[15]_i_12_n_0\
    );
\s_product_sr[15]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_75\,
      I1 => \main_proc.v_product_201__0\(13),
      O => \s_product_sr[15]_i_13_n_0\
    );
\s_product_sr[15]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_76\,
      I1 => \main_proc.v_product_201__0\(12),
      O => \s_product_sr[15]_i_14_n_0\
    );
\s_product_sr[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[13]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[12]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[14]\,
      O => \s_product_sr[15]_i_16_n_0\
    );
\s_product_sr[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[12]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[11]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[13]\,
      O => \s_product_sr[15]_i_17_n_0\
    );
\s_product_sr[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[11]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[10]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[12]\,
      O => \s_product_sr[15]_i_18_n_0\
    );
\s_product_sr[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[10]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[9]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[11]\,
      O => \s_product_sr[15]_i_19_n_0\
    );
\s_product_sr[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(34),
      I1 => o_word_type,
      O => \s_product_sr[15]_i_2_n_0\
    );
\s_product_sr[15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[15]_i_16_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[14]\,
      I3 => \s_product_sr[15]_i_24_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[15]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[15]_i_20_n_0\
    );
\s_product_sr[15]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[15]_i_17_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[13]\,
      I3 => \s_product_sr[15]_i_25_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[14]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[15]_i_21_n_0\
    );
\s_product_sr[15]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[15]_i_18_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[12]\,
      I3 => \s_product_sr[15]_i_26_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[13]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[15]_i_22_n_0\
    );
\s_product_sr[15]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[15]_i_19_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[11]\,
      I3 => \s_product_sr[15]_i_27_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[12]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[15]_i_23_n_0\
    );
\s_product_sr[15]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[13]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[15]_i_24_n_0\
    );
\s_product_sr[15]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[12]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[15]_i_25_n_0\
    );
\s_product_sr[15]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[11]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[15]_i_26_n_0\
    );
\s_product_sr[15]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[10]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[15]_i_27_n_0\
    );
\s_product_sr[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(33),
      I1 => o_word_type,
      O => \s_product_sr[15]_i_3_n_0\
    );
\s_product_sr[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(32),
      I1 => o_word_type,
      O => \s_product_sr[15]_i_4_n_0\
    );
\s_product_sr[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(31),
      I1 => o_word_type,
      O => \s_product_sr[15]_i_5_n_0\
    );
\s_product_sr[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(34),
      I1 => p_1_in(15),
      I2 => o_word_type,
      O => \s_product_sr[15]_i_6_n_0\
    );
\s_product_sr[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(33),
      I1 => p_1_in(14),
      I2 => o_word_type,
      O => \s_product_sr[15]_i_7_n_0\
    );
\s_product_sr[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(32),
      I1 => p_1_in(13),
      I2 => o_word_type,
      O => \s_product_sr[15]_i_8_n_0\
    );
\s_product_sr[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(31),
      I1 => p_1_in(12),
      I2 => o_word_type,
      O => \s_product_sr[15]_i_9_n_0\
    );
\s_product_sr[19]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_67\,
      I1 => \main_proc.v_product_201__0\(21),
      O => \s_product_sr[19]_i_12_n_0\
    );
\s_product_sr[19]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_68\,
      I1 => \main_proc.v_product_201__0\(20),
      O => \s_product_sr[19]_i_13_n_0\
    );
\s_product_sr[19]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_69\,
      I1 => \main_proc.v_product_201__0\(19),
      O => \s_product_sr[19]_i_14_n_0\
    );
\s_product_sr[19]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_70\,
      I1 => \main_proc.v_product_201__0\(18),
      O => \s_product_sr[19]_i_15_n_0\
    );
\s_product_sr[19]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_71\,
      I1 => \main_proc.v_product_201__0\(17),
      O => \s_product_sr[19]_i_16_n_0\
    );
\s_product_sr[19]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_72\,
      I1 => \main_proc.v_product_201__0\(16),
      O => \s_product_sr[19]_i_17_n_0\
    );
\s_product_sr[19]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777700070007000"
    )
        port map (
      I0 => \s_mcand_lat_reg__1_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[19]\,
      I2 => \s_mplier_lat_reg_n_0_[17]\,
      I3 => s_mcand_lat_reg_n_0,
      I4 => \s_mplier_lat_reg_n_0_[18]\,
      I5 => \s_mcand_lat_reg__0_n_0\,
      O => \s_product_sr[19]_i_20_n_0\
    );
\s_product_sr[19]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FFDFFF"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[17]\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[18]\,
      I3 => s_mcand_lat_reg_n_0,
      I4 => \s_mplier_lat_reg_n_0_[19]\,
      O => \s_product_sr[19]_i_21_n_0\
    );
\s_product_sr[19]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59956A956A959595"
    )
        port map (
      I0 => \s_product_sr[19]_i_20_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[19]\,
      I3 => s_mcand_lat_reg_n_0,
      I4 => \s_mplier_lat_reg_n_0_[18]\,
      I5 => \s_mplier_lat_reg_n_0_[17]\,
      O => \s_product_sr[19]_i_22_n_0\
    );
\s_product_sr[19]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888877787778777"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[17]\,
      I1 => s_mcand_lat_reg_n_0,
      I2 => \s_mplier_lat_reg_n_0_[18]\,
      I3 => \s_mcand_lat_reg__0_n_0\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[19]\,
      O => \s_product_sr[19]_i_23_n_0\
    );
\s_product_sr[19]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[16]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[15]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[17]\,
      O => \s_product_sr[19]_i_24_n_0\
    );
\s_product_sr[19]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[15]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[14]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[16]\,
      O => \s_product_sr[19]_i_25_n_0\
    );
\s_product_sr[19]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[14]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[13]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[15]\,
      O => \s_product_sr[19]_i_26_n_0\
    );
\s_product_sr[19]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6A6A6A6A555555"
    )
        port map (
      I0 => \s_product_sr[19]_i_23_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[18]\,
      I2 => \s_mcand_lat_reg__1_n_0\,
      I3 => \s_mplier_lat_reg_n_0_[16]\,
      I4 => s_mcand_lat_reg_n_0,
      I5 => \s_product_sr[19]_i_31_n_0\,
      O => \s_product_sr[19]_i_27_n_0\
    );
\s_product_sr[19]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[19]_i_24_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[17]\,
      I3 => \s_product_sr[19]_i_32_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[18]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[19]_i_28_n_0\
    );
\s_product_sr[19]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[19]_i_25_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[16]\,
      I3 => \s_product_sr[19]_i_33_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[17]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[19]_i_29_n_0\
    );
\s_product_sr[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(37),
      I1 => o_word_type,
      O => \s_product_sr[19]_i_3_n_0\
    );
\s_product_sr[19]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[19]_i_26_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[15]\,
      I3 => \s_product_sr[19]_i_34_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[16]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[19]_i_30_n_0\
    );
\s_product_sr[19]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[17]\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      O => \s_product_sr[19]_i_31_n_0\
    );
\s_product_sr[19]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[16]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[19]_i_32_n_0\
    );
\s_product_sr[19]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[15]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[19]_i_33_n_0\
    );
\s_product_sr[19]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[14]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[19]_i_34_n_0\
    );
\s_product_sr[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(36),
      I1 => o_word_type,
      O => \s_product_sr[19]_i_4_n_0\
    );
\s_product_sr[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(35),
      I1 => o_word_type,
      O => \s_product_sr[19]_i_5_n_0\
    );
\s_product_sr[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(38),
      I1 => o_word_type,
      O => \s_product_sr[19]_i_6_n_0\
    );
\s_product_sr[19]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(37),
      I1 => p_1_in(18),
      I2 => o_word_type,
      O => \s_product_sr[19]_i_7_n_0\
    );
\s_product_sr[19]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(36),
      I1 => p_1_in(17),
      I2 => o_word_type,
      O => \s_product_sr[19]_i_8_n_0\
    );
\s_product_sr[19]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(35),
      I1 => p_1_in(16),
      I2 => o_word_type,
      O => \s_product_sr[19]_i_9_n_0\
    );
\s_product_sr[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_85\,
      I1 => \main_proc.v_product_201__0\(3),
      O => \s_product_sr[3]_i_11_n_0\
    );
\s_product_sr[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_86\,
      I1 => \main_proc.v_product_201__0\(2),
      O => \s_product_sr[3]_i_12_n_0\
    );
\s_product_sr[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_87\,
      I1 => \main_proc.v_product_201__0\(1),
      O => \s_product_sr[3]_i_13_n_0\
    );
\s_product_sr[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_88\,
      I1 => \main_proc.v_product_201__0\(0),
      O => \s_product_sr[3]_i_14_n_0\
    );
\s_product_sr[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => s_mcand_lat_reg_n_0,
      I1 => \s_mplier_lat_reg_n_0_[0]\,
      I2 => \s_mcand_lat_reg__0_n_0\,
      I3 => \s_mplier_lat_reg_n_0_[1]\,
      O => \s_product_sr[3]_i_16_n_0\
    );
\s_product_sr[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[1]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[0]\,
      O => \s_product_sr[3]_i_17_n_0\
    );
\s_product_sr[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_mcand_lat_reg__1_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[1]\,
      O => \s_product_sr[3]_i_18_n_0\
    );
\s_product_sr[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[3]_i_16_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[2]\,
      I3 => \s_product_sr[3]_i_23_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[3]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[3]_i_19_n_0\
    );
\s_product_sr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(22),
      I1 => o_word_type,
      O => \s_product_sr[3]_i_2_n_0\
    );
\s_product_sr[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[0]\,
      I1 => s_mcand_lat_reg_n_0,
      I2 => \s_mplier_lat_reg_n_0_[1]\,
      I3 => \s_mcand_lat_reg__0_n_0\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[2]\,
      O => \s_product_sr[3]_i_20_n_0\
    );
\s_product_sr[3]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \s_mcand_lat_reg__1_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[1]\,
      I2 => \s_mcand_lat_reg__0_n_0\,
      I3 => \s_mplier_lat_reg_n_0_[0]\,
      O => \s_product_sr[3]_i_21_n_0\
    );
\s_product_sr[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[0]\,
      I1 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[3]_i_22_n_0\
    );
\s_product_sr[3]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[1]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[3]_i_23_n_0\
    );
\s_product_sr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(21),
      I1 => o_word_type,
      O => \s_product_sr[3]_i_3_n_0\
    );
\s_product_sr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(20),
      I1 => o_word_type,
      O => \s_product_sr[3]_i_4_n_0\
    );
\s_product_sr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(19),
      I1 => o_word_type,
      O => \s_product_sr[3]_i_5_n_0\
    );
\s_product_sr[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(22),
      I1 => p_1_in(3),
      I2 => o_word_type,
      O => \s_product_sr[3]_i_6_n_0\
    );
\s_product_sr[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(21),
      I1 => p_1_in(2),
      I2 => o_word_type,
      O => \s_product_sr[3]_i_7_n_0\
    );
\s_product_sr[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(20),
      I1 => p_1_in(1),
      I2 => o_word_type,
      O => \s_product_sr[3]_i_8_n_0\
    );
\s_product_sr[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => L(19),
      I1 => p_0_in,
      I2 => o_word_type,
      I3 => \^q\(1),
      O => \s_product_sr[3]_i_9_n_0\
    );
\s_product_sr[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_81\,
      I1 => \main_proc.v_product_201__0\(7),
      O => \s_product_sr[7]_i_11_n_0\
    );
\s_product_sr[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_82\,
      I1 => \main_proc.v_product_201__0\(6),
      O => \s_product_sr[7]_i_12_n_0\
    );
\s_product_sr[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_83\,
      I1 => \main_proc.v_product_201__0\(5),
      O => \s_product_sr[7]_i_13_n_0\
    );
\s_product_sr[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \main_proc.v_product_201_n_84\,
      I1 => \main_proc.v_product_201__0\(4),
      O => \s_product_sr[7]_i_14_n_0\
    );
\s_product_sr[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[5]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[4]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[6]\,
      O => \s_product_sr[7]_i_16_n_0\
    );
\s_product_sr[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[4]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[3]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[5]\,
      O => \s_product_sr[7]_i_17_n_0\
    );
\s_product_sr[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[3]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[2]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[4]\,
      O => \s_product_sr[7]_i_18_n_0\
    );
\s_product_sr[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF088808880888"
    )
        port map (
      I0 => \s_mcand_lat_reg__0_n_0\,
      I1 => \s_mplier_lat_reg_n_0_[2]\,
      I2 => s_mcand_lat_reg_n_0,
      I3 => \s_mplier_lat_reg_n_0_[1]\,
      I4 => \s_mcand_lat_reg__1_n_0\,
      I5 => \s_mplier_lat_reg_n_0_[3]\,
      O => \s_product_sr[7]_i_19_n_0\
    );
\s_product_sr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(26),
      I1 => o_word_type,
      O => \s_product_sr[7]_i_2_n_0\
    );
\s_product_sr[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[7]_i_16_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[6]\,
      I3 => \s_product_sr[7]_i_24_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[7]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[7]_i_20_n_0\
    );
\s_product_sr[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[7]_i_17_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[5]\,
      I3 => \s_product_sr[7]_i_25_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[6]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[7]_i_21_n_0\
    );
\s_product_sr[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[7]_i_18_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[4]\,
      I3 => \s_product_sr[7]_i_26_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[5]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[7]_i_22_n_0\
    );
\s_product_sr[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \s_product_sr[7]_i_19_n_0\,
      I1 => \s_mcand_lat_reg__0_n_0\,
      I2 => \s_mplier_lat_reg_n_0_[3]\,
      I3 => \s_product_sr[7]_i_27_n_0\,
      I4 => \s_mplier_lat_reg_n_0_[4]\,
      I5 => \s_mcand_lat_reg__1_n_0\,
      O => \s_product_sr[7]_i_23_n_0\
    );
\s_product_sr[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[5]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[7]_i_24_n_0\
    );
\s_product_sr[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[4]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[7]_i_25_n_0\
    );
\s_product_sr[7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[3]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[7]_i_26_n_0\
    );
\s_product_sr[7]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_mplier_lat_reg_n_0_[2]\,
      I1 => s_mcand_lat_reg_n_0,
      O => \s_product_sr[7]_i_27_n_0\
    );
\s_product_sr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(25),
      I1 => o_word_type,
      O => \s_product_sr[7]_i_3_n_0\
    );
\s_product_sr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(24),
      I1 => o_word_type,
      O => \s_product_sr[7]_i_4_n_0\
    );
\s_product_sr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(23),
      I1 => o_word_type,
      O => \s_product_sr[7]_i_5_n_0\
    );
\s_product_sr[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(26),
      I1 => p_1_in(7),
      I2 => o_word_type,
      O => \s_product_sr[7]_i_6_n_0\
    );
\s_product_sr[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(25),
      I1 => p_1_in(6),
      I2 => o_word_type,
      O => \s_product_sr[7]_i_7_n_0\
    );
\s_product_sr[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(24),
      I1 => p_1_in(5),
      I2 => o_word_type,
      O => \s_product_sr[7]_i_8_n_0\
    );
\s_product_sr[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => L(23),
      I1 => p_1_in(4),
      I2 => o_word_type,
      O => \s_product_sr[7]_i_9_n_0\
    );
\s_product_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => i_rst
    );
\s_product_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[11]_i_1_n_5\,
      Q => p_1_in(9),
      R => i_rst
    );
\s_product_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[11]_i_1_n_4\,
      Q => p_1_in(10),
      R => i_rst
    );
\s_product_sr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[7]_i_1_n_0\,
      CO(3) => \s_product_sr_reg[11]_i_1_n_0\,
      CO(2) => \s_product_sr_reg[11]_i_1_n_1\,
      CO(1) => \s_product_sr_reg[11]_i_1_n_2\,
      CO(0) => \s_product_sr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[11]_i_2_n_0\,
      DI(2) => \s_product_sr[11]_i_3_n_0\,
      DI(1) => \s_product_sr[11]_i_4_n_0\,
      DI(0) => \s_product_sr[11]_i_5_n_0\,
      O(3) => \s_product_sr_reg[11]_i_1_n_4\,
      O(2) => \s_product_sr_reg[11]_i_1_n_5\,
      O(1) => \s_product_sr_reg[11]_i_1_n_6\,
      O(0) => \s_product_sr_reg[11]_i_1_n_7\,
      S(3) => \s_product_sr[11]_i_6_n_0\,
      S(2) => \s_product_sr[11]_i_7_n_0\,
      S(1) => \s_product_sr[11]_i_8_n_0\,
      S(0) => \s_product_sr[11]_i_9_n_0\
    );
\s_product_sr_reg[11]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[7]_i_10_n_0\,
      CO(3) => \s_product_sr_reg[11]_i_10_n_0\,
      CO(2) => \s_product_sr_reg[11]_i_10_n_1\,
      CO(1) => \s_product_sr_reg[11]_i_10_n_2\,
      CO(0) => \s_product_sr_reg[11]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \main_proc.v_product_201_n_77\,
      DI(2) => \main_proc.v_product_201_n_78\,
      DI(1) => \main_proc.v_product_201_n_79\,
      DI(0) => \main_proc.v_product_201_n_80\,
      O(3 downto 0) => L(28 downto 25),
      S(3) => \s_product_sr[11]_i_11_n_0\,
      S(2) => \s_product_sr[11]_i_12_n_0\,
      S(1) => \s_product_sr[11]_i_13_n_0\,
      S(0) => \s_product_sr[11]_i_14_n_0\
    );
\s_product_sr_reg[11]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[7]_i_15_n_0\,
      CO(3) => \s_product_sr_reg[11]_i_15_n_0\,
      CO(2) => \s_product_sr_reg[11]_i_15_n_1\,
      CO(1) => \s_product_sr_reg[11]_i_15_n_2\,
      CO(0) => \s_product_sr_reg[11]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[11]_i_16_n_0\,
      DI(2) => \s_product_sr[11]_i_17_n_0\,
      DI(1) => \s_product_sr[11]_i_18_n_0\,
      DI(0) => \s_product_sr[11]_i_19_n_0\,
      O(3 downto 0) => \main_proc.v_product_201__0\(11 downto 8),
      S(3) => \s_product_sr[11]_i_20_n_0\,
      S(2) => \s_product_sr[11]_i_21_n_0\,
      S(1) => \s_product_sr[11]_i_22_n_0\,
      S(0) => \s_product_sr[11]_i_23_n_0\
    );
\s_product_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[15]_i_1_n_7\,
      Q => p_1_in(11),
      R => i_rst
    );
\s_product_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[15]_i_1_n_6\,
      Q => p_1_in(12),
      R => i_rst
    );
\s_product_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[15]_i_1_n_5\,
      Q => p_1_in(13),
      R => i_rst
    );
\s_product_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[15]_i_1_n_4\,
      Q => p_1_in(14),
      R => i_rst
    );
\s_product_sr_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[11]_i_1_n_0\,
      CO(3) => \s_product_sr_reg[15]_i_1_n_0\,
      CO(2) => \s_product_sr_reg[15]_i_1_n_1\,
      CO(1) => \s_product_sr_reg[15]_i_1_n_2\,
      CO(0) => \s_product_sr_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[15]_i_2_n_0\,
      DI(2) => \s_product_sr[15]_i_3_n_0\,
      DI(1) => \s_product_sr[15]_i_4_n_0\,
      DI(0) => \s_product_sr[15]_i_5_n_0\,
      O(3) => \s_product_sr_reg[15]_i_1_n_4\,
      O(2) => \s_product_sr_reg[15]_i_1_n_5\,
      O(1) => \s_product_sr_reg[15]_i_1_n_6\,
      O(0) => \s_product_sr_reg[15]_i_1_n_7\,
      S(3) => \s_product_sr[15]_i_6_n_0\,
      S(2) => \s_product_sr[15]_i_7_n_0\,
      S(1) => \s_product_sr[15]_i_8_n_0\,
      S(0) => \s_product_sr[15]_i_9_n_0\
    );
\s_product_sr_reg[15]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[11]_i_10_n_0\,
      CO(3) => \s_product_sr_reg[15]_i_10_n_0\,
      CO(2) => \s_product_sr_reg[15]_i_10_n_1\,
      CO(1) => \s_product_sr_reg[15]_i_10_n_2\,
      CO(0) => \s_product_sr_reg[15]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \main_proc.v_product_201_n_73\,
      DI(2) => \main_proc.v_product_201_n_74\,
      DI(1) => \main_proc.v_product_201_n_75\,
      DI(0) => \main_proc.v_product_201_n_76\,
      O(3 downto 0) => L(32 downto 29),
      S(3) => \s_product_sr[15]_i_11_n_0\,
      S(2) => \s_product_sr[15]_i_12_n_0\,
      S(1) => \s_product_sr[15]_i_13_n_0\,
      S(0) => \s_product_sr[15]_i_14_n_0\
    );
\s_product_sr_reg[15]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[11]_i_15_n_0\,
      CO(3) => \s_product_sr_reg[15]_i_15_n_0\,
      CO(2) => \s_product_sr_reg[15]_i_15_n_1\,
      CO(1) => \s_product_sr_reg[15]_i_15_n_2\,
      CO(0) => \s_product_sr_reg[15]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[15]_i_16_n_0\,
      DI(2) => \s_product_sr[15]_i_17_n_0\,
      DI(1) => \s_product_sr[15]_i_18_n_0\,
      DI(0) => \s_product_sr[15]_i_19_n_0\,
      O(3 downto 0) => \main_proc.v_product_201__0\(15 downto 12),
      S(3) => \s_product_sr[15]_i_20_n_0\,
      S(2) => \s_product_sr[15]_i_21_n_0\,
      S(1) => \s_product_sr[15]_i_22_n_0\,
      S(0) => \s_product_sr[15]_i_23_n_0\
    );
\s_product_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[19]_i_2_n_7\,
      Q => p_1_in(15),
      R => i_rst
    );
\s_product_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[19]_i_2_n_6\,
      Q => p_1_in(16),
      R => i_rst
    );
\s_product_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[19]_i_2_n_5\,
      Q => p_1_in(17),
      R => i_rst
    );
\s_product_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[19]_i_2_n_4\,
      Q => p_1_in(18),
      R => i_rst
    );
\s_product_sr_reg[19]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[19]_i_11_n_0\,
      CO(3 downto 1) => \NLW_s_product_sr_reg[19]_i_10_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_product_sr_reg[19]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \main_proc.v_product_201_n_68\,
      O(3 downto 2) => \NLW_s_product_sr_reg[19]_i_10_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => L(38 downto 37),
      S(3 downto 2) => B"00",
      S(1) => \s_product_sr[19]_i_12_n_0\,
      S(0) => \s_product_sr[19]_i_13_n_0\
    );
\s_product_sr_reg[19]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[15]_i_10_n_0\,
      CO(3) => \s_product_sr_reg[19]_i_11_n_0\,
      CO(2) => \s_product_sr_reg[19]_i_11_n_1\,
      CO(1) => \s_product_sr_reg[19]_i_11_n_2\,
      CO(0) => \s_product_sr_reg[19]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \main_proc.v_product_201_n_69\,
      DI(2) => \main_proc.v_product_201_n_70\,
      DI(1) => \main_proc.v_product_201_n_71\,
      DI(0) => \main_proc.v_product_201_n_72\,
      O(3 downto 0) => L(36 downto 33),
      S(3) => \s_product_sr[19]_i_14_n_0\,
      S(2) => \s_product_sr[19]_i_15_n_0\,
      S(1) => \s_product_sr[19]_i_16_n_0\,
      S(0) => \s_product_sr[19]_i_17_n_0\
    );
\s_product_sr_reg[19]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[19]_i_19_n_0\,
      CO(3 downto 1) => \NLW_s_product_sr_reg[19]_i_18_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_product_sr_reg[19]_i_18_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_product_sr[19]_i_20_n_0\,
      O(3 downto 2) => \NLW_s_product_sr_reg[19]_i_18_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \main_proc.v_product_201__0\(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \s_product_sr[19]_i_21_n_0\,
      S(0) => \s_product_sr[19]_i_22_n_0\
    );
\s_product_sr_reg[19]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[15]_i_15_n_0\,
      CO(3) => \s_product_sr_reg[19]_i_19_n_0\,
      CO(2) => \s_product_sr_reg[19]_i_19_n_1\,
      CO(1) => \s_product_sr_reg[19]_i_19_n_2\,
      CO(0) => \s_product_sr_reg[19]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[19]_i_23_n_0\,
      DI(2) => \s_product_sr[19]_i_24_n_0\,
      DI(1) => \s_product_sr[19]_i_25_n_0\,
      DI(0) => \s_product_sr[19]_i_26_n_0\,
      O(3 downto 0) => \main_proc.v_product_201__0\(19 downto 16),
      S(3) => \s_product_sr[19]_i_27_n_0\,
      S(2) => \s_product_sr[19]_i_28_n_0\,
      S(1) => \s_product_sr[19]_i_29_n_0\,
      S(0) => \s_product_sr[19]_i_30_n_0\
    );
\s_product_sr_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[15]_i_1_n_0\,
      CO(3) => \NLW_s_product_sr_reg[19]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \s_product_sr_reg[19]_i_2_n_1\,
      CO(1) => \s_product_sr_reg[19]_i_2_n_2\,
      CO(0) => \s_product_sr_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \s_product_sr[19]_i_3_n_0\,
      DI(1) => \s_product_sr[19]_i_4_n_0\,
      DI(0) => \s_product_sr[19]_i_5_n_0\,
      O(3) => \s_product_sr_reg[19]_i_2_n_4\,
      O(2) => \s_product_sr_reg[19]_i_2_n_5\,
      O(1) => \s_product_sr_reg[19]_i_2_n_6\,
      O(0) => \s_product_sr_reg[19]_i_2_n_7\,
      S(3) => \s_product_sr[19]_i_6_n_0\,
      S(2) => \s_product_sr[19]_i_7_n_0\,
      S(1) => \s_product_sr[19]_i_8_n_0\,
      S(0) => \s_product_sr[19]_i_9_n_0\
    );
\s_product_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      R => i_rst
    );
\s_product_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[3]_i_1_n_5\,
      Q => p_1_in(1),
      R => i_rst
    );
\s_product_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[3]_i_1_n_4\,
      Q => p_1_in(2),
      R => i_rst
    );
\s_product_sr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_product_sr_reg[3]_i_1_n_0\,
      CO(2) => \s_product_sr_reg[3]_i_1_n_1\,
      CO(1) => \s_product_sr_reg[3]_i_1_n_2\,
      CO(0) => \s_product_sr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[3]_i_2_n_0\,
      DI(2) => \s_product_sr[3]_i_3_n_0\,
      DI(1) => \s_product_sr[3]_i_4_n_0\,
      DI(0) => \s_product_sr[3]_i_5_n_0\,
      O(3) => \s_product_sr_reg[3]_i_1_n_4\,
      O(2) => \s_product_sr_reg[3]_i_1_n_5\,
      O(1) => \s_product_sr_reg[3]_i_1_n_6\,
      O(0) => \s_product_sr_reg[3]_i_1_n_7\,
      S(3) => \s_product_sr[3]_i_6_n_0\,
      S(2) => \s_product_sr[3]_i_7_n_0\,
      S(1) => \s_product_sr[3]_i_8_n_0\,
      S(0) => \s_product_sr[3]_i_9_n_0\
    );
\s_product_sr_reg[3]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_product_sr_reg[3]_i_10_n_0\,
      CO(2) => \s_product_sr_reg[3]_i_10_n_1\,
      CO(1) => \s_product_sr_reg[3]_i_10_n_2\,
      CO(0) => \s_product_sr_reg[3]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \main_proc.v_product_201_n_85\,
      DI(2) => \main_proc.v_product_201_n_86\,
      DI(1) => \main_proc.v_product_201_n_87\,
      DI(0) => \main_proc.v_product_201_n_88\,
      O(3 downto 2) => L(20 downto 19),
      O(1) => p_0_in,
      O(0) => \NLW_s_product_sr_reg[3]_i_10_O_UNCONNECTED\(0),
      S(3) => \s_product_sr[3]_i_11_n_0\,
      S(2) => \s_product_sr[3]_i_12_n_0\,
      S(1) => \s_product_sr[3]_i_13_n_0\,
      S(0) => \s_product_sr[3]_i_14_n_0\
    );
\s_product_sr_reg[3]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_product_sr_reg[3]_i_15_n_0\,
      CO(2) => \s_product_sr_reg[3]_i_15_n_1\,
      CO(1) => \s_product_sr_reg[3]_i_15_n_2\,
      CO(0) => \s_product_sr_reg[3]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[3]_i_16_n_0\,
      DI(2) => \s_product_sr[3]_i_17_n_0\,
      DI(1) => \s_product_sr[3]_i_18_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \main_proc.v_product_201__0\(3 downto 0),
      S(3) => \s_product_sr[3]_i_19_n_0\,
      S(2) => \s_product_sr[3]_i_20_n_0\,
      S(1) => \s_product_sr[3]_i_21_n_0\,
      S(0) => \s_product_sr[3]_i_22_n_0\
    );
\s_product_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[7]_i_1_n_7\,
      Q => p_1_in(3),
      R => i_rst
    );
\s_product_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[7]_i_1_n_6\,
      Q => p_1_in(4),
      R => i_rst
    );
\s_product_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[7]_i_1_n_5\,
      Q => p_1_in(5),
      R => i_rst
    );
\s_product_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[7]_i_1_n_4\,
      Q => p_1_in(6),
      R => i_rst
    );
\s_product_sr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[3]_i_1_n_0\,
      CO(3) => \s_product_sr_reg[7]_i_1_n_0\,
      CO(2) => \s_product_sr_reg[7]_i_1_n_1\,
      CO(1) => \s_product_sr_reg[7]_i_1_n_2\,
      CO(0) => \s_product_sr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[7]_i_2_n_0\,
      DI(2) => \s_product_sr[7]_i_3_n_0\,
      DI(1) => \s_product_sr[7]_i_4_n_0\,
      DI(0) => \s_product_sr[7]_i_5_n_0\,
      O(3) => \s_product_sr_reg[7]_i_1_n_4\,
      O(2) => \s_product_sr_reg[7]_i_1_n_5\,
      O(1) => \s_product_sr_reg[7]_i_1_n_6\,
      O(0) => \s_product_sr_reg[7]_i_1_n_7\,
      S(3) => \s_product_sr[7]_i_6_n_0\,
      S(2) => \s_product_sr[7]_i_7_n_0\,
      S(1) => \s_product_sr[7]_i_8_n_0\,
      S(0) => \s_product_sr[7]_i_9_n_0\
    );
\s_product_sr_reg[7]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[3]_i_10_n_0\,
      CO(3) => \s_product_sr_reg[7]_i_10_n_0\,
      CO(2) => \s_product_sr_reg[7]_i_10_n_1\,
      CO(1) => \s_product_sr_reg[7]_i_10_n_2\,
      CO(0) => \s_product_sr_reg[7]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \main_proc.v_product_201_n_81\,
      DI(2) => \main_proc.v_product_201_n_82\,
      DI(1) => \main_proc.v_product_201_n_83\,
      DI(0) => \main_proc.v_product_201_n_84\,
      O(3 downto 0) => L(24 downto 21),
      S(3) => \s_product_sr[7]_i_11_n_0\,
      S(2) => \s_product_sr[7]_i_12_n_0\,
      S(1) => \s_product_sr[7]_i_13_n_0\,
      S(0) => \s_product_sr[7]_i_14_n_0\
    );
\s_product_sr_reg[7]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_product_sr_reg[3]_i_15_n_0\,
      CO(3) => \s_product_sr_reg[7]_i_15_n_0\,
      CO(2) => \s_product_sr_reg[7]_i_15_n_1\,
      CO(1) => \s_product_sr_reg[7]_i_15_n_2\,
      CO(0) => \s_product_sr_reg[7]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \s_product_sr[7]_i_16_n_0\,
      DI(2) => \s_product_sr[7]_i_17_n_0\,
      DI(1) => \s_product_sr[7]_i_18_n_0\,
      DI(0) => \s_product_sr[7]_i_19_n_0\,
      O(3 downto 0) => \main_proc.v_product_201__0\(7 downto 4),
      S(3) => \s_product_sr[7]_i_20_n_0\,
      S(2) => \s_product_sr[7]_i_21_n_0\,
      S(1) => \s_product_sr[7]_i_22_n_0\,
      S(0) => \s_product_sr[7]_i_23_n_0\
    );
\s_product_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[11]_i_1_n_7\,
      Q => p_1_in(7),
      R => i_rst
    );
\s_product_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_product_sr_reg[19]_0\(0),
      D => \s_product_sr_reg[11]_i_1_n_6\,
      Q => p_1_in(8),
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_sl is
  port (
    s_phi2_reg_reg : out STD_LOGIC;
    s_sel_out1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_phi2 : in STD_LOGIC;
    o_word_type : in STD_LOGIC;
    o_t0 : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    \s_sel_out1_reg[2]_0\ : in STD_LOGIC;
    i_clk_master : in STD_LOGIC;
    \s_sel_out1_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_input_sr_reg[19]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_input_sr_reg[19]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_sl : entity is "sl";
end cadc_system_cadc_top_0_0_sl;

architecture STRUCTURE of cadc_system_cadc_top_0_0_sl is
  signal \s_input_sr[19]_i_3_n_0\ : STD_LOGIC;
  signal \^s_sel_out1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  s_sel_out1(1 downto 0) <= \^s_sel_out1\(1 downto 0);
\s_input_sr[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s_input_sr[19]_i_3_n_0\,
      I1 => \^s_sel_out1\(1),
      I2 => \^s_sel_out1\(0),
      I3 => Q(1),
      I4 => o_t0,
      I5 => Q(0),
      O => D(0)
    );
\s_input_sr[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_input_sr_reg[19]\(0),
      I1 => \s_input_sr_reg[19]\(1),
      I2 => \^s_sel_out1\(0),
      I3 => \s_input_sr_reg[19]_0\(0),
      I4 => o_t0,
      I5 => \s_input_sr_reg[19]_0\(1),
      O => \s_input_sr[19]_i_3_n_0\
    );
s_sel_out10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => o_phi2,
      I1 => o_word_type,
      I2 => o_t0,
      O => s_phi2_reg_reg
    );
\s_sel_out1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_sel_out1_reg[0]_0\,
      Q => \^s_sel_out1\(0),
      R => i_rst
    );
\s_sel_out1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_sel_out1_reg[2]_0\,
      Q => \^s_sel_out1\(1),
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_slf is
  port (
    s_compute_done : out STD_LOGIC;
    s_tmp_we_lat : out STD_LOGIC;
    s_flag_z : out STD_LOGIC;
    s_flag_n : out STD_LOGIC;
    s_flag_c : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_tmp_reg_reg[19]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst : in STD_LOGIC;
    s_acc_reg15_out : in STD_LOGIC;
    i_clk_master : in STD_LOGIC;
    o_t0 : in STD_LOGIC;
    \s_cw_sr_reg[4]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_word_type : in STD_LOGIC;
    o_phi2 : in STD_LOGIC;
    o_t18 : in STD_LOGIC;
    \s_cw_bit_cnt_reg[4]_0\ : in STD_LOGIC;
    s_cw_bit : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_input_sr_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_input_lat_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_acc_out_sr_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_acc_out_sr_reg[19]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_tmp_reg_reg[19]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_tmp_out_sr_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_slf : entity is "slf";
end cadc_system_cadc_top_0_0_slf;

architecture STRUCTURE of cadc_system_cadc_top_0_0_slf is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data9 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in23_in : STD_LOGIC;
  signal p_0_in26_in : STD_LOGIC;
  signal p_0_in29_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in32_in : STD_LOGIC;
  signal p_0_in35_in : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_0_in41_in : STD_LOGIC;
  signal p_0_in44_in : STD_LOGIC;
  signal p_0_in47_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in67_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in71_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in75_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in52_in : STD_LOGIC;
  signal p_20_out : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal p_2_in : STD_LOGIC;
  signal p_3_in55_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in59_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in63_in : STD_LOGIC;
  signal s_acc_out_sr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_acc_out_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_acc_out_sr__0\ : STD_LOGIC_VECTOR ( 19 downto 2 );
  signal s_acc_reg : STD_LOGIC;
  signal \s_acc_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_acc_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_acc_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal s_acc_we_lat : STD_LOGIC;
  signal s_acc_we_lat4_out : STD_LOGIC;
  signal s_acc_we_lat_i_1_n_0 : STD_LOGIC;
  signal s_alu_op_lat : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_alu_op_lat_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_alu_op_lat_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_alu_op_lat_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_alu_op_lat_reg_n_0_[3]\ : STD_LOGIC;
  signal s_alu_result0 : STD_LOGIC;
  signal \s_alu_result[0]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result[0]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[10]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[10]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[10]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_13_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_14_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_15_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_16_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_17_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[12]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[13]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[13]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[13]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[14]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[14]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_13_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_14_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_15_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_16_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_17_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[16]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[17]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[17]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[18]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_13_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_14_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_15_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_16_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_17_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_18_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result[19]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_13_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_14_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_15_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_16_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_17_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_13_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[4]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_14_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_15_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_16_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_17_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_10_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_11_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_12_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result[8]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_alu_result[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_alu_result[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_alu_result[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_alu_result[9]_i_5_n_0\ : STD_LOGIC;
  signal \s_alu_result[9]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_8_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[11]_i_9_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[12]_i_7_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[12]_i_7_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[12]_i_7_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[12]_i_7_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_8_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[15]_i_9_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[16]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[16]_i_8_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[16]_i_8_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[16]_i_8_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[18]_i_8_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[18]_i_8_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[19]_i_7_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_8_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[3]_i_9_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[4]_i_7_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[4]_i_7_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[4]_i_7_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_8_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_4\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_5\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_6\ : STD_LOGIC;
  signal \s_alu_result_reg[7]_i_9_n_7\ : STD_LOGIC;
  signal \s_alu_result_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \s_alu_result_reg[8]_i_7_n_1\ : STD_LOGIC;
  signal \s_alu_result_reg[8]_i_7_n_2\ : STD_LOGIC;
  signal \s_alu_result_reg[8]_i_7_n_3\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_alu_result_reg_n_0_[9]\ : STD_LOGIC;
  signal s_c_reg_i_1_n_0 : STD_LOGIC;
  signal s_carry_out : STD_LOGIC;
  signal s_carry_out_i_1_n_0 : STD_LOGIC;
  signal s_carry_out_reg_i_2_n_3 : STD_LOGIC;
  signal s_carry_out_reg_i_3_n_3 : STD_LOGIC;
  signal \s_cw_bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_bit_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_cw_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_cw_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_cw_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_cw_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_cw_sr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_cw_sr[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_cw_sr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_cw_sr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_cw_sr[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_cw_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \^s_flag_c\ : STD_LOGIC;
  signal \^s_flag_n\ : STD_LOGIC;
  signal \^s_flag_z\ : STD_LOGIC;
  signal s_flags_we_lat : STD_LOGIC;
  signal s_flags_we_lat_i_1_n_0 : STD_LOGIC;
  signal \s_input_lat_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_input_lat_reg_n_0_[18]\ : STD_LOGIC;
  signal s_input_sr : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal s_n_reg_i_1_n_0 : STD_LOGIC;
  signal \s_tmp_out_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_tmp_out_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_tmp_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^s_tmp_we_lat\ : STD_LOGIC;
  signal s_tmp_we_lat_i_1_n_0 : STD_LOGIC;
  signal s_z_reg : STD_LOGIC;
  signal s_z_reg_i_1_n_0 : STD_LOGIC;
  signal \s_z_reg_inferred__0/s_z_reg_i_3_n_0\ : STD_LOGIC;
  signal \s_z_reg_inferred__0/s_z_reg_i_4_n_0\ : STD_LOGIC;
  signal \s_z_reg_inferred__0/s_z_reg_i_5_n_0\ : STD_LOGIC;
  signal \NLW_s_alu_result_reg[18]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_alu_result_reg[18]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_s_carry_out_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_s_carry_out_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_carry_out_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_s_carry_out_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_acc_reg[19]_i_2\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \s_acc_reg[19]_i_3\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \s_alu_result[0]_i_10\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \s_alu_result[0]_i_3\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \s_alu_result[0]_i_4\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \s_alu_result[10]_i_7\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \s_alu_result[11]_i_7\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \s_alu_result[12]_i_8\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \s_alu_result[13]_i_7\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \s_alu_result[15]_i_7\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \s_alu_result[16]_i_3\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \s_alu_result[16]_i_7\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \s_alu_result[17]_i_7\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \s_alu_result[18]_i_7\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \s_alu_result[19]_i_2\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \s_alu_result[1]_i_3\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \s_alu_result[1]_i_7\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \s_alu_result[2]_i_7\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \s_alu_result[5]_i_7\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \s_alu_result[6]_i_7\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \s_alu_result[7]_i_7\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \s_alu_result[8]_i_8\ : label is "soft_lutpair152";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \s_alu_result_reg[12]_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of \s_alu_result_reg[16]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \s_alu_result_reg[18]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \s_alu_result_reg[4]_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of \s_alu_result_reg[8]_i_7\ : label is 35;
  attribute SOFT_HLUTNM of \s_cw_bit_cnt[2]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \s_cw_sr[3]_i_2\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \s_cw_sr[3]_i_4\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \s_cw_sr[4]_i_2\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \s_cw_sr[6]_i_2\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \s_cw_sr[6]_i_3\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \s_cw_sr[6]_i_6\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of s_flags_we_lat_i_1 : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of s_mcand_lat_i_1 : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of s_tmp_we_lat_i_1 : label is "soft_lutpair155";
begin
  Q(0) <= \^q\(0);
  s_flag_c <= \^s_flag_c\;
  s_flag_n <= \^s_flag_n\;
  s_flag_z <= \^s_flag_z\;
  s_tmp_we_lat <= \^s_tmp_we_lat\;
\s_acc_out_sr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_acc_out_sr(1),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_acc_reg_reg_n_0_[0]\,
      O => \s_acc_out_sr[0]_i_1_n_0\
    );
\s_acc_out_sr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(11),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_10_in,
      O => \s_acc_out_sr[10]_i_1_n_0\
    );
\s_acc_out_sr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(12),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_11_in,
      O => \s_acc_out_sr[11]_i_1_n_0\
    );
\s_acc_out_sr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(13),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_12_in67_in,
      O => \s_acc_out_sr[12]_i_1_n_0\
    );
\s_acc_out_sr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(14),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_13_in,
      O => \s_acc_out_sr[13]_i_1_n_0\
    );
\s_acc_out_sr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(15),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_14_in,
      O => \s_acc_out_sr[14]_i_1_n_0\
    );
\s_acc_out_sr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(16),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_15_in71_in,
      O => \s_acc_out_sr[15]_i_1_n_0\
    );
\s_acc_out_sr[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(17),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_16_in,
      O => \s_acc_out_sr[16]_i_1_n_0\
    );
\s_acc_out_sr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(18),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_17_in,
      O => \s_acc_out_sr[17]_i_1_n_0\
    );
\s_acc_out_sr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(19),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_18_in75_in,
      O => \s_acc_out_sr[18]_i_1_n_0\
    );
\s_acc_out_sr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(2),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_1_in52_in,
      O => \s_acc_out_sr[1]_i_1_n_0\
    );
\s_acc_out_sr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(3),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_2_in,
      O => \s_acc_out_sr[2]_i_1_n_0\
    );
\s_acc_out_sr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(4),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_3_in55_in,
      O => \s_acc_out_sr[3]_i_1_n_0\
    );
\s_acc_out_sr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(5),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_4_in,
      O => \s_acc_out_sr[4]_i_1_n_0\
    );
\s_acc_out_sr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(6),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_5_in,
      O => \s_acc_out_sr[5]_i_1_n_0\
    );
\s_acc_out_sr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(7),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_6_in59_in,
      O => \s_acc_out_sr[6]_i_1_n_0\
    );
\s_acc_out_sr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(8),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_7_in,
      O => \s_acc_out_sr[7]_i_1_n_0\
    );
\s_acc_out_sr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(9),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_8_in,
      O => \s_acc_out_sr[8]_i_1_n_0\
    );
\s_acc_out_sr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_acc_out_sr__0\(10),
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => p_9_in63_in,
      O => \s_acc_out_sr[9]_i_1_n_0\
    );
\s_acc_out_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[0]_i_1_n_0\,
      Q => s_acc_out_sr(0),
      R => i_rst
    );
\s_acc_out_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[10]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(10),
      R => i_rst
    );
\s_acc_out_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[11]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(11),
      R => i_rst
    );
\s_acc_out_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[12]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(12),
      R => i_rst
    );
\s_acc_out_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[13]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(13),
      R => i_rst
    );
\s_acc_out_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[14]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(14),
      R => i_rst
    );
\s_acc_out_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[15]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(15),
      R => i_rst
    );
\s_acc_out_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[16]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(16),
      R => i_rst
    );
\s_acc_out_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[17]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(17),
      R => i_rst
    );
\s_acc_out_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[18]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(18),
      R => i_rst
    );
\s_acc_out_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr_reg[19]_1\(0),
      Q => \s_acc_out_sr__0\(19),
      R => i_rst
    );
\s_acc_out_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[1]_i_1_n_0\,
      Q => s_acc_out_sr(1),
      R => i_rst
    );
\s_acc_out_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[2]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(2),
      R => i_rst
    );
\s_acc_out_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[3]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(3),
      R => i_rst
    );
\s_acc_out_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[4]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(4),
      R => i_rst
    );
\s_acc_out_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[5]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(5),
      R => i_rst
    );
\s_acc_out_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[6]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(6),
      R => i_rst
    );
\s_acc_out_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[7]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(7),
      R => i_rst
    );
\s_acc_out_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[8]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(8),
      R => i_rst
    );
\s_acc_out_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_acc_out_sr[9]_i_1_n_0\,
      Q => \s_acc_out_sr__0\(9),
      R => i_rst
    );
\s_acc_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020000000"
    )
        port map (
      I0 => s_acc_we_lat,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => o_t18,
      I4 => \s_acc_reg[19]_i_2_n_0\,
      I5 => \s_acc_reg[19]_i_3_n_0\,
      O => s_acc_reg
    );
\s_acc_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[1]\,
      I1 => \s_alu_op_lat_reg_n_0_[0]\,
      O => \s_acc_reg[19]_i_2_n_0\
    );
\s_acc_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[2]\,
      I1 => \s_alu_op_lat_reg_n_0_[3]\,
      O => \s_acc_reg[19]_i_3_n_0\
    );
\s_acc_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[0]\,
      Q => \s_acc_reg_reg_n_0_[0]\,
      R => i_rst
    );
\s_acc_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[10]\,
      Q => p_10_in,
      R => i_rst
    );
\s_acc_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[11]\,
      Q => p_11_in,
      R => i_rst
    );
\s_acc_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[12]\,
      Q => p_12_in67_in,
      R => i_rst
    );
\s_acc_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[13]\,
      Q => p_13_in,
      R => i_rst
    );
\s_acc_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[14]\,
      Q => p_14_in,
      R => i_rst
    );
\s_acc_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[15]\,
      Q => p_15_in71_in,
      R => i_rst
    );
\s_acc_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[16]\,
      Q => p_16_in,
      R => i_rst
    );
\s_acc_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[17]\,
      Q => p_17_in,
      R => i_rst
    );
\s_acc_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[18]\,
      Q => p_18_in75_in,
      R => i_rst
    );
\s_acc_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[19]\,
      Q => \^q\(0),
      R => i_rst
    );
\s_acc_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[1]\,
      Q => p_1_in52_in,
      R => i_rst
    );
\s_acc_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[2]\,
      Q => p_2_in,
      R => i_rst
    );
\s_acc_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[3]\,
      Q => p_3_in55_in,
      R => i_rst
    );
\s_acc_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[4]\,
      Q => p_4_in,
      R => i_rst
    );
\s_acc_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[5]\,
      Q => p_5_in,
      R => i_rst
    );
\s_acc_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[6]\,
      Q => p_6_in59_in,
      R => i_rst
    );
\s_acc_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[7]\,
      Q => p_7_in,
      R => i_rst
    );
\s_acc_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[8]\,
      Q => p_8_in,
      R => i_rst
    );
\s_acc_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_acc_reg,
      D => \s_alu_result_reg_n_0_[9]\,
      Q => p_9_in63_in,
      R => i_rst
    );
s_acc_we_lat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => s_acc_we_lat4_out,
      I2 => s_acc_we_lat,
      O => s_acc_we_lat_i_1_n_0
    );
s_acc_we_lat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \s_cw_sr[3]_i_2_n_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I3 => o_t0,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_bit_cnt_reg[4]_0\,
      O => s_acc_we_lat4_out
    );
s_acc_we_lat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_acc_we_lat_i_1_n_0,
      Q => s_acc_we_lat,
      R => i_rst
    );
\s_alu_op_lat[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_sr[3]_i_2_n_0\,
      I2 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[2]\,
      O => s_alu_op_lat(0)
    );
\s_alu_op_lat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_op_lat(0),
      D => \s_cw_sr_reg_n_0_[0]\,
      Q => \s_alu_op_lat_reg_n_0_[0]\,
      R => i_rst
    );
\s_alu_op_lat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_op_lat(0),
      D => \s_cw_sr_reg_n_0_[1]\,
      Q => \s_alu_op_lat_reg_n_0_[1]\,
      R => i_rst
    );
\s_alu_op_lat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_op_lat(0),
      D => \s_cw_sr_reg_n_0_[2]\,
      Q => \s_alu_op_lat_reg_n_0_[2]\,
      R => i_rst
    );
\s_alu_op_lat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_op_lat(0),
      D => \s_cw_sr_reg_n_0_[3]\,
      Q => \s_alu_op_lat_reg_n_0_[3]\,
      R => i_rst
    );
\s_alu_result[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCAAAAFFF0AAAA"
    )
        port map (
      I0 => \s_alu_result[0]_i_2_n_0\,
      I1 => \s_alu_result[0]_i_3_n_0\,
      I2 => \s_alu_result[0]_i_4_n_0\,
      I3 => \s_alu_result[0]_i_5_n_0\,
      I4 => \s_alu_op_lat_reg_n_0_[3]\,
      I5 => \s_alu_op_lat_reg_n_0_[2]\,
      O => \s_alu_result[0]_i_1_n_0\
    );
\s_alu_result[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_16_in,
      I1 => p_17_in,
      O => \s_alu_result[0]_i_10_n_0\
    );
\s_alu_result[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in,
      I2 => p_6_in59_in,
      I3 => p_7_in,
      O => \s_alu_result[0]_i_11_n_0\
    );
\s_alu_result[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_12_in67_in,
      I1 => p_13_in,
      I2 => p_14_in,
      I3 => p_15_in71_in,
      O => \s_alu_result[0]_i_12_n_0\
    );
\s_alu_result[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030FAAAA0CFCAAAA"
    )
        port map (
      I0 => \s_alu_result[0]_i_6_n_0\,
      I1 => \s_input_lat_reg_n_0_[0]\,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => \s_alu_op_lat_reg_n_0_[2]\,
      I5 => \s_acc_reg_reg_n_0_[0]\,
      O => \s_alu_result[0]_i_2_n_0\
    );
\s_alu_result[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => \s_acc_reg_reg_n_0_[0]\,
      I1 => p_1_in52_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => \s_input_lat_reg_n_0_[0]\,
      O => \s_alu_result[0]_i_3_n_0\
    );
\s_alu_result[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \s_acc_reg_reg_n_0_[0]\,
      I1 => p_1_in52_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      O => \s_alu_result[0]_i_4_n_0\
    );
\s_alu_result[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32FEFE3200000000"
    )
        port map (
      I0 => \s_alu_result[0]_i_7_n_0\,
      I1 => \s_alu_op_lat_reg_n_0_[0]\,
      I2 => \s_acc_reg_reg_n_0_[0]\,
      I3 => p_20_out(1),
      I4 => \s_input_lat_reg_n_0_[0]\,
      I5 => \s_alu_op_lat_reg_n_0_[1]\,
      O => \s_alu_result[0]_i_5_n_0\
    );
\s_alu_result[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[3]_i_8_n_7\,
      I1 => \s_input_lat_reg_n_0_[0]\,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_acc_reg_reg_n_0_[0]\,
      I5 => \s_alu_result_reg[3]_i_9_n_7\,
      O => \s_alu_result[0]_i_6_n_0\
    );
\s_alu_result[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \s_alu_result[0]_i_8_n_0\,
      I1 => \s_alu_result[0]_i_9_n_0\,
      I2 => p_18_in75_in,
      I3 => \s_alu_result[0]_i_10_n_0\,
      I4 => \s_alu_result[0]_i_11_n_0\,
      I5 => \^q\(0),
      O => \s_alu_result[0]_i_7_n_0\
    );
\s_alu_result[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_11_in,
      I1 => p_10_in,
      I2 => p_9_in63_in,
      I3 => p_8_in,
      I4 => \s_alu_result[0]_i_12_n_0\,
      O => \s_alu_result[0]_i_8_n_0\
    );
\s_alu_result[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_1_in52_in,
      I1 => \s_acc_reg_reg_n_0_[0]\,
      I2 => p_3_in55_in,
      I3 => p_2_in,
      O => \s_alu_result[0]_i_9_n_0\
    );
\s_alu_result[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[10]_i_2_n_0\,
      I1 => \s_alu_result[10]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[10]_i_4_n_0\,
      I5 => \s_alu_result[10]_i_5_n_0\,
      O => \s_alu_result[10]_i_1_n_0\
    );
\s_alu_result[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[10]_i_6_n_0\,
      I1 => data9(10),
      I2 => p_11_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(10),
      O => \s_alu_result[10]_i_2_n_0\
    );
\s_alu_result[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_10_in,
      I1 => p_11_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in26_in,
      O => \s_alu_result[10]_i_3_n_0\
    );
\s_alu_result[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[11]_i_8_n_5\,
      I1 => p_0_in26_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_10_in,
      I5 => \s_alu_result_reg[11]_i_9_n_5\,
      O => \s_alu_result[10]_i_4_n_0\
    );
\s_alu_result[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in26_in,
      I1 => p_10_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_9_in63_in,
      O => \s_alu_result[10]_i_5_n_0\
    );
\s_alu_result[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(10),
      I3 => \^q\(0),
      I4 => p_10_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[10]_i_6_n_0\
    );
\s_alu_result[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in26_in,
      I1 => p_0_in32_in,
      I2 => p_20_out(14),
      I3 => p_0_in35_in,
      I4 => p_0_in29_in,
      O => p_20_out(10)
    );
\s_alu_result[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[11]_i_2_n_0\,
      I1 => \s_alu_result[11]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[11]_i_4_n_0\,
      I5 => \s_alu_result[11]_i_5_n_0\,
      O => \s_alu_result[11]_i_1_n_0\
    );
\s_alu_result[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in29_in,
      I1 => p_11_in,
      O => \s_alu_result[11]_i_10_n_0\
    );
\s_alu_result[11]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in26_in,
      I1 => p_10_in,
      O => \s_alu_result[11]_i_11_n_0\
    );
\s_alu_result[11]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in23_in,
      I1 => p_9_in63_in,
      O => \s_alu_result[11]_i_12_n_0\
    );
\s_alu_result[11]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in20_in,
      I1 => p_8_in,
      O => \s_alu_result[11]_i_13_n_0\
    );
\s_alu_result[11]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_11_in,
      I1 => p_0_in29_in,
      O => \s_alu_result[11]_i_14_n_0\
    );
\s_alu_result[11]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_10_in,
      I1 => p_0_in26_in,
      O => \s_alu_result[11]_i_15_n_0\
    );
\s_alu_result[11]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_9_in63_in,
      I1 => p_0_in23_in,
      O => \s_alu_result[11]_i_16_n_0\
    );
\s_alu_result[11]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_8_in,
      I1 => p_0_in20_in,
      O => \s_alu_result[11]_i_17_n_0\
    );
\s_alu_result[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[11]_i_6_n_0\,
      I1 => data9(11),
      I2 => p_12_in67_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(11),
      O => \s_alu_result[11]_i_2_n_0\
    );
\s_alu_result[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_11_in,
      I1 => p_12_in67_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in29_in,
      O => \s_alu_result[11]_i_3_n_0\
    );
\s_alu_result[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[11]_i_8_n_4\,
      I1 => p_0_in29_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_11_in,
      I5 => \s_alu_result_reg[11]_i_9_n_4\,
      O => \s_alu_result[11]_i_4_n_0\
    );
\s_alu_result[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in29_in,
      I1 => p_11_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_10_in,
      O => \s_alu_result[11]_i_5_n_0\
    );
\s_alu_result[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(11),
      I3 => \^q\(0),
      I4 => p_11_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[11]_i_6_n_0\
    );
\s_alu_result[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in29_in,
      I1 => p_0_in35_in,
      I2 => p_20_out(14),
      I3 => p_0_in32_in,
      O => p_20_out(11)
    );
\s_alu_result[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[12]_i_2_n_0\,
      I1 => \s_alu_result[12]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[12]_i_4_n_0\,
      I5 => \s_alu_result[12]_i_5_n_0\,
      O => \s_alu_result[12]_i_1_n_0\
    );
\s_alu_result[12]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_11_in,
      O => \s_alu_result[12]_i_10_n_0\
    );
\s_alu_result[12]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_10_in,
      O => \s_alu_result[12]_i_11_n_0\
    );
\s_alu_result[12]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_9_in63_in,
      O => \s_alu_result[12]_i_12_n_0\
    );
\s_alu_result[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[12]_i_6_n_0\,
      I1 => data9(12),
      I2 => p_13_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(12),
      O => \s_alu_result[12]_i_2_n_0\
    );
\s_alu_result[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_12_in67_in,
      I1 => p_13_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in32_in,
      O => \s_alu_result[12]_i_3_n_0\
    );
\s_alu_result[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[15]_i_8_n_7\,
      I1 => p_0_in32_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_12_in67_in,
      I5 => \s_alu_result_reg[15]_i_9_n_7\,
      O => \s_alu_result[12]_i_4_n_0\
    );
\s_alu_result[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in32_in,
      I1 => p_12_in67_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_11_in,
      O => \s_alu_result[12]_i_5_n_0\
    );
\s_alu_result[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(12),
      I3 => \^q\(0),
      I4 => p_12_in67_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[12]_i_6_n_0\
    );
\s_alu_result[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in32_in,
      I1 => p_20_out(14),
      I2 => p_0_in35_in,
      O => p_20_out(12)
    );
\s_alu_result[12]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_in67_in,
      O => \s_alu_result[12]_i_9_n_0\
    );
\s_alu_result[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[13]_i_2_n_0\,
      I1 => \s_alu_result[13]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[13]_i_4_n_0\,
      I5 => \s_alu_result[13]_i_5_n_0\,
      O => \s_alu_result[13]_i_1_n_0\
    );
\s_alu_result[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[13]_i_6_n_0\,
      I1 => data9(13),
      I2 => p_14_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(13),
      O => \s_alu_result[13]_i_2_n_0\
    );
\s_alu_result[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_13_in,
      I1 => p_14_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in35_in,
      O => \s_alu_result[13]_i_3_n_0\
    );
\s_alu_result[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[15]_i_8_n_6\,
      I1 => p_0_in35_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_13_in,
      I5 => \s_alu_result_reg[15]_i_9_n_6\,
      O => \s_alu_result[13]_i_4_n_0\
    );
\s_alu_result[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => p_13_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_12_in67_in,
      O => \s_alu_result[13]_i_5_n_0\
    );
\s_alu_result[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(13),
      I3 => \^q\(0),
      I4 => p_13_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[13]_i_6_n_0\
    );
\s_alu_result[13]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => p_20_out(14),
      O => p_20_out(13)
    );
\s_alu_result[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[14]_i_2_n_0\,
      I1 => \s_alu_result[14]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[14]_i_4_n_0\,
      I5 => \s_alu_result[14]_i_5_n_0\,
      O => \s_alu_result[14]_i_1_n_0\
    );
\s_alu_result[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAFAEAAFEAAA"
    )
        port map (
      I0 => \s_alu_result[14]_i_6_n_0\,
      I1 => p_20_out(14),
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_15_in71_in,
      I5 => data9(14),
      O => \s_alu_result[14]_i_2_n_0\
    );
\s_alu_result[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_14_in,
      I1 => p_15_in71_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in38_in,
      O => \s_alu_result[14]_i_3_n_0\
    );
\s_alu_result[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[15]_i_8_n_5\,
      I1 => p_0_in38_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_14_in,
      I5 => \s_alu_result_reg[15]_i_9_n_5\,
      O => \s_alu_result[14]_i_4_n_0\
    );
\s_alu_result[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => p_14_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_13_in,
      O => \s_alu_result[14]_i_5_n_0\
    );
\s_alu_result[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(14),
      I3 => \^q\(0),
      I4 => p_14_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[14]_i_6_n_0\
    );
\s_alu_result[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => p_0_in44_in,
      I2 => \s_input_lat_reg_n_0_[18]\,
      I3 => p_1_in,
      I4 => p_0_in47_in,
      I5 => p_0_in41_in,
      O => p_20_out(14)
    );
\s_alu_result[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[15]_i_2_n_0\,
      I1 => \s_alu_result[15]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[15]_i_4_n_0\,
      I5 => \s_alu_result[15]_i_5_n_0\,
      O => \s_alu_result[15]_i_1_n_0\
    );
\s_alu_result[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => p_15_in71_in,
      O => \s_alu_result[15]_i_10_n_0\
    );
\s_alu_result[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => p_14_in,
      O => \s_alu_result[15]_i_11_n_0\
    );
\s_alu_result[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => p_13_in,
      O => \s_alu_result[15]_i_12_n_0\
    );
\s_alu_result[15]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in32_in,
      I1 => p_12_in67_in,
      O => \s_alu_result[15]_i_13_n_0\
    );
\s_alu_result[15]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_15_in71_in,
      I1 => p_0_in41_in,
      O => \s_alu_result[15]_i_14_n_0\
    );
\s_alu_result[15]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_14_in,
      I1 => p_0_in38_in,
      O => \s_alu_result[15]_i_15_n_0\
    );
\s_alu_result[15]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_13_in,
      I1 => p_0_in35_in,
      O => \s_alu_result[15]_i_16_n_0\
    );
\s_alu_result[15]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_12_in67_in,
      I1 => p_0_in32_in,
      O => \s_alu_result[15]_i_17_n_0\
    );
\s_alu_result[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAFAEAAFEAAA"
    )
        port map (
      I0 => \s_alu_result[15]_i_6_n_0\,
      I1 => p_20_out(15),
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_16_in,
      I5 => data9(15),
      O => \s_alu_result[15]_i_2_n_0\
    );
\s_alu_result[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_15_in71_in,
      I1 => p_16_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in41_in,
      O => \s_alu_result[15]_i_3_n_0\
    );
\s_alu_result[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[15]_i_8_n_4\,
      I1 => p_0_in41_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_15_in71_in,
      I5 => \s_alu_result_reg[15]_i_9_n_4\,
      O => \s_alu_result[15]_i_4_n_0\
    );
\s_alu_result[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => p_15_in71_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_14_in,
      O => \s_alu_result[15]_i_5_n_0\
    );
\s_alu_result[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(15),
      I3 => \^q\(0),
      I4 => p_15_in71_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[15]_i_6_n_0\
    );
\s_alu_result[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => p_0_in47_in,
      I2 => p_1_in,
      I3 => \s_input_lat_reg_n_0_[18]\,
      I4 => p_0_in44_in,
      O => p_20_out(15)
    );
\s_alu_result[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[16]_i_2_n_0\,
      I1 => \s_alu_result[16]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[16]_i_4_n_0\,
      I5 => \s_alu_result[16]_i_5_n_0\,
      O => \s_alu_result[16]_i_1_n_0\
    );
\s_alu_result[16]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_15_in71_in,
      O => \s_alu_result[16]_i_10_n_0\
    );
\s_alu_result[16]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_14_in,
      O => \s_alu_result[16]_i_11_n_0\
    );
\s_alu_result[16]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_in,
      O => \s_alu_result[16]_i_12_n_0\
    );
\s_alu_result[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAFAEAAFEAAA"
    )
        port map (
      I0 => \s_alu_result[16]_i_6_n_0\,
      I1 => p_20_out(16),
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_17_in,
      I5 => data9(16),
      O => \s_alu_result[16]_i_2_n_0\
    );
\s_alu_result[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_16_in,
      I1 => p_17_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in44_in,
      O => \s_alu_result[16]_i_3_n_0\
    );
\s_alu_result[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[19]_i_6_n_7\,
      I1 => p_0_in44_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_16_in,
      I5 => \s_alu_result_reg[19]_i_7_n_7\,
      O => \s_alu_result[16]_i_4_n_0\
    );
\s_alu_result[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in44_in,
      I1 => p_16_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_15_in71_in,
      O => \s_alu_result[16]_i_5_n_0\
    );
\s_alu_result[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(16),
      I3 => \^q\(0),
      I4 => p_16_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[16]_i_6_n_0\
    );
\s_alu_result[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in44_in,
      I1 => \s_input_lat_reg_n_0_[18]\,
      I2 => p_1_in,
      I3 => p_0_in47_in,
      O => p_20_out(16)
    );
\s_alu_result[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_16_in,
      O => \s_alu_result[16]_i_9_n_0\
    );
\s_alu_result[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[17]_i_2_n_0\,
      I1 => \s_alu_result[17]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[17]_i_4_n_0\,
      I5 => \s_alu_result[17]_i_5_n_0\,
      O => \s_alu_result[17]_i_1_n_0\
    );
\s_alu_result[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAFAEAAFEAAA"
    )
        port map (
      I0 => \s_alu_result[17]_i_6_n_0\,
      I1 => p_20_out(17),
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_18_in75_in,
      I5 => data9(17),
      O => \s_alu_result[17]_i_2_n_0\
    );
\s_alu_result[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_17_in,
      I1 => p_18_in75_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in47_in,
      O => \s_alu_result[17]_i_3_n_0\
    );
\s_alu_result[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[19]_i_6_n_6\,
      I1 => p_0_in47_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_17_in,
      I5 => \s_alu_result_reg[19]_i_7_n_6\,
      O => \s_alu_result[17]_i_4_n_0\
    );
\s_alu_result[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in47_in,
      I1 => p_17_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_16_in,
      O => \s_alu_result[17]_i_5_n_0\
    );
\s_alu_result[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(17),
      I3 => \^q\(0),
      I4 => p_17_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[17]_i_6_n_0\
    );
\s_alu_result[17]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in47_in,
      I1 => p_1_in,
      I2 => \s_input_lat_reg_n_0_[18]\,
      O => p_20_out(17)
    );
\s_alu_result[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[18]_i_2_n_0\,
      I1 => \s_alu_result[18]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[18]_i_4_n_0\,
      I5 => \s_alu_result[18]_i_5_n_0\,
      O => \s_alu_result[18]_i_1_n_0\
    );
\s_alu_result[18]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_18_in75_in,
      O => \s_alu_result[18]_i_10_n_0\
    );
\s_alu_result[18]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_17_in,
      O => \s_alu_result[18]_i_11_n_0\
    );
\s_alu_result[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAFAEAAFEAAA"
    )
        port map (
      I0 => \s_alu_result[18]_i_6_n_0\,
      I1 => p_20_out(18),
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => data9(18),
      O => \s_alu_result[18]_i_2_n_0\
    );
\s_alu_result[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC600C6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_18_in75_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => \s_input_lat_reg_n_0_[18]\,
      O => \s_alu_result[18]_i_3_n_0\
    );
\s_alu_result[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[19]_i_6_n_5\,
      I1 => \s_input_lat_reg_n_0_[18]\,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_18_in75_in,
      I5 => \s_alu_result_reg[19]_i_7_n_5\,
      O => \s_alu_result[18]_i_4_n_0\
    );
\s_alu_result[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => \s_input_lat_reg_n_0_[18]\,
      I1 => p_18_in75_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_17_in,
      O => \s_alu_result[18]_i_5_n_0\
    );
\s_alu_result[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(18),
      I3 => \^q\(0),
      I4 => p_18_in75_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[18]_i_6_n_0\
    );
\s_alu_result[18]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_input_lat_reg_n_0_[18]\,
      I1 => p_1_in,
      O => p_20_out(18)
    );
\s_alu_result[18]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \s_alu_result[18]_i_9_n_0\
    );
\s_alu_result[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I2 => \s_cw_bit_cnt_reg[4]_0\,
      I3 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I5 => \s_cw_bit_cnt_reg_n_0_[2]\,
      O => s_alu_result0
    );
\s_alu_result[19]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_input_lat_reg_n_0_[18]\,
      I1 => p_18_in75_in,
      O => \s_alu_result[19]_i_10_n_0\
    );
\s_alu_result[19]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in47_in,
      I1 => p_17_in,
      O => \s_alu_result[19]_i_11_n_0\
    );
\s_alu_result[19]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in44_in,
      I1 => p_16_in,
      O => \s_alu_result[19]_i_12_n_0\
    );
\s_alu_result[19]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_1_in,
      O => \s_alu_result[19]_i_13_n_0\
    );
\s_alu_result[19]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_18_in75_in,
      I1 => \s_input_lat_reg_n_0_[18]\,
      O => \s_alu_result[19]_i_14_n_0\
    );
\s_alu_result[19]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_17_in,
      I1 => p_0_in47_in,
      O => \s_alu_result[19]_i_15_n_0\
    );
\s_alu_result[19]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_16_in,
      I1 => p_0_in44_in,
      O => \s_alu_result[19]_i_16_n_0\
    );
\s_alu_result[19]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \s_alu_result[19]_i_18_n_0\,
      I1 => \s_alu_result[0]_i_9_n_0\,
      I2 => p_16_in,
      I3 => p_17_in,
      I4 => \s_alu_result[0]_i_8_n_0\,
      O => \s_alu_result[19]_i_17_n_0\
    );
\s_alu_result[19]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => p_7_in,
      I1 => p_6_in59_in,
      I2 => p_5_in,
      I3 => p_4_in,
      I4 => p_18_in75_in,
      I5 => \^q\(0),
      O => \s_alu_result[19]_i_18_n_0\
    );
\s_alu_result[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF10"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[3]\,
      I1 => \s_alu_op_lat_reg_n_0_[2]\,
      I2 => \s_alu_result[19]_i_3_n_0\,
      I3 => \s_alu_result[19]_i_4_n_0\,
      I4 => \s_alu_result[19]_i_5_n_0\,
      O => \s_alu_result[19]_i_2_n_0\
    );
\s_alu_result[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[19]_i_6_n_4\,
      I1 => p_1_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \s_alu_result_reg[19]_i_7_n_4\,
      O => \s_alu_result[19]_i_3_n_0\
    );
\s_alu_result[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004044440044040"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[3]\,
      I1 => \s_alu_op_lat_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => \s_alu_op_lat_reg_n_0_[1]\,
      I5 => p_1_in,
      O => \s_alu_result[19]_i_4_n_0\
    );
\s_alu_result[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF8FD08000000000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => p_1_in,
      I2 => \s_alu_op_lat_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => \s_alu_result[19]_i_8_n_0\,
      I5 => \s_alu_op_lat_reg_n_0_[3]\,
      O => \s_alu_result[19]_i_5_n_0\
    );
\s_alu_result[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFC0F0C00FC000"
    )
        port map (
      I0 => \s_alu_result[19]_i_17_n_0\,
      I1 => p_1_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => data9(19),
      O => \s_alu_result[19]_i_8_n_0\
    );
\s_alu_result[19]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_1_in,
      O => \s_alu_result[19]_i_9_n_0\
    );
\s_alu_result[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[1]_i_2_n_0\,
      I1 => \s_alu_result[1]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[1]_i_4_n_0\,
      I5 => \s_alu_result[1]_i_5_n_0\,
      O => \s_alu_result[1]_i_1_n_0\
    );
\s_alu_result[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[1]_i_6_n_0\,
      I1 => data9(1),
      I2 => p_2_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(1),
      O => \s_alu_result[1]_i_2_n_0\
    );
\s_alu_result[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_1_in52_in,
      I1 => p_2_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in,
      O => \s_alu_result[1]_i_3_n_0\
    );
\s_alu_result[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[3]_i_8_n_6\,
      I1 => p_0_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_1_in52_in,
      I5 => \s_alu_result_reg[3]_i_9_n_6\,
      O => \s_alu_result[1]_i_4_n_0\
    );
\s_alu_result[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in52_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => \s_acc_reg_reg_n_0_[0]\,
      O => \s_alu_result[1]_i_5_n_0\
    );
\s_alu_result[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(1),
      I3 => \^q\(0),
      I4 => p_1_in52_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[1]_i_6_n_0\
    );
\s_alu_result[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in,
      I1 => p_0_in5_in,
      I2 => p_20_out(4),
      I3 => p_0_in2_in,
      O => p_20_out(1)
    );
\s_alu_result[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[2]_i_2_n_0\,
      I1 => \s_alu_result[2]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[2]_i_4_n_0\,
      I5 => \s_alu_result[2]_i_5_n_0\,
      O => \s_alu_result[2]_i_1_n_0\
    );
\s_alu_result[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[2]_i_6_n_0\,
      I1 => data9(2),
      I2 => p_3_in55_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(2),
      O => \s_alu_result[2]_i_2_n_0\
    );
\s_alu_result[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in55_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => \s_alu_result[2]_i_3_n_0\
    );
\s_alu_result[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[3]_i_8_n_5\,
      I1 => p_0_in2_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_2_in,
      I5 => \s_alu_result_reg[3]_i_9_n_5\,
      O => \s_alu_result[2]_i_4_n_0\
    );
\s_alu_result[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_2_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_1_in52_in,
      O => \s_alu_result[2]_i_5_n_0\
    );
\s_alu_result[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(2),
      I3 => \^q\(0),
      I4 => p_2_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[2]_i_6_n_0\
    );
\s_alu_result[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_20_out(4),
      I2 => p_0_in5_in,
      O => p_20_out(2)
    );
\s_alu_result[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[3]_i_2_n_0\,
      I1 => \s_alu_result[3]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[3]_i_4_n_0\,
      I5 => \s_alu_result[3]_i_5_n_0\,
      O => \s_alu_result[3]_i_1_n_0\
    );
\s_alu_result[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_3_in55_in,
      O => \s_alu_result[3]_i_10_n_0\
    );
\s_alu_result[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_2_in,
      O => \s_alu_result[3]_i_11_n_0\
    );
\s_alu_result[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in52_in,
      O => \s_alu_result[3]_i_12_n_0\
    );
\s_alu_result[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_input_lat_reg_n_0_[0]\,
      I1 => \s_acc_reg_reg_n_0_[0]\,
      O => \s_alu_result[3]_i_13_n_0\
    );
\s_alu_result[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_3_in55_in,
      I1 => p_0_in5_in,
      O => \s_alu_result[3]_i_14_n_0\
    );
\s_alu_result[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in2_in,
      O => \s_alu_result[3]_i_15_n_0\
    );
\s_alu_result[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_1_in52_in,
      I1 => p_0_in,
      O => \s_alu_result[3]_i_16_n_0\
    );
\s_alu_result[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_acc_reg_reg_n_0_[0]\,
      I1 => \s_input_lat_reg_n_0_[0]\,
      O => \s_alu_result[3]_i_17_n_0\
    );
\s_alu_result[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[3]_i_6_n_0\,
      I1 => data9(3),
      I2 => p_4_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(3),
      O => \s_alu_result[3]_i_2_n_0\
    );
\s_alu_result[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_3_in55_in,
      I1 => p_4_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in5_in,
      O => \s_alu_result[3]_i_3_n_0\
    );
\s_alu_result[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[3]_i_8_n_4\,
      I1 => p_0_in5_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_3_in55_in,
      I5 => \s_alu_result_reg[3]_i_9_n_4\,
      O => \s_alu_result[3]_i_4_n_0\
    );
\s_alu_result[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_3_in55_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_2_in,
      O => \s_alu_result[3]_i_5_n_0\
    );
\s_alu_result[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(3),
      I3 => \^q\(0),
      I4 => p_3_in55_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[3]_i_6_n_0\
    );
\s_alu_result[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_20_out(4),
      O => p_20_out(3)
    );
\s_alu_result[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[4]_i_2_n_0\,
      I1 => \s_alu_result[4]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[4]_i_4_n_0\,
      I5 => \s_alu_result[4]_i_5_n_0\,
      O => \s_alu_result[4]_i_1_n_0\
    );
\s_alu_result[4]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_4_in,
      O => \s_alu_result[4]_i_10_n_0\
    );
\s_alu_result[4]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_3_in55_in,
      O => \s_alu_result[4]_i_11_n_0\
    );
\s_alu_result[4]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_2_in,
      O => \s_alu_result[4]_i_12_n_0\
    );
\s_alu_result[4]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in52_in,
      O => \s_alu_result[4]_i_13_n_0\
    );
\s_alu_result[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[4]_i_6_n_0\,
      I1 => data9(4),
      I2 => p_5_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(4),
      O => \s_alu_result[4]_i_2_n_0\
    );
\s_alu_result[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in8_in,
      O => \s_alu_result[4]_i_3_n_0\
    );
\s_alu_result[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[7]_i_8_n_7\,
      I1 => p_0_in8_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_4_in,
      I5 => \s_alu_result_reg[7]_i_9_n_7\,
      O => \s_alu_result[4]_i_4_n_0\
    );
\s_alu_result[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_4_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_3_in55_in,
      O => \s_alu_result[4]_i_5_n_0\
    );
\s_alu_result[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(4),
      I3 => \^q\(0),
      I4 => p_4_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[4]_i_6_n_0\
    );
\s_alu_result[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_0_in14_in,
      I2 => p_0_in20_in,
      I3 => p_20_out(9),
      I4 => p_0_in17_in,
      I5 => p_0_in11_in,
      O => p_20_out(4)
    );
\s_alu_result[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_acc_reg_reg_n_0_[0]\,
      O => \s_alu_result[4]_i_9_n_0\
    );
\s_alu_result[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[5]_i_2_n_0\,
      I1 => \s_alu_result[5]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[5]_i_4_n_0\,
      I5 => \s_alu_result[5]_i_5_n_0\,
      O => \s_alu_result[5]_i_1_n_0\
    );
\s_alu_result[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[5]_i_6_n_0\,
      I1 => data9(5),
      I2 => p_6_in59_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(5),
      O => \s_alu_result[5]_i_2_n_0\
    );
\s_alu_result[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_5_in,
      I1 => p_6_in59_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in11_in,
      O => \s_alu_result[5]_i_3_n_0\
    );
\s_alu_result[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[7]_i_8_n_6\,
      I1 => p_0_in11_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_5_in,
      I5 => \s_alu_result_reg[7]_i_9_n_6\,
      O => \s_alu_result[5]_i_4_n_0\
    );
\s_alu_result[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => p_5_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_4_in,
      O => \s_alu_result[5]_i_5_n_0\
    );
\s_alu_result[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(5),
      I3 => \^q\(0),
      I4 => p_5_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[5]_i_6_n_0\
    );
\s_alu_result[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => p_0_in17_in,
      I2 => p_20_out(9),
      I3 => p_0_in20_in,
      I4 => p_0_in14_in,
      O => p_20_out(5)
    );
\s_alu_result[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[6]_i_2_n_0\,
      I1 => \s_alu_result[6]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[6]_i_4_n_0\,
      I5 => \s_alu_result[6]_i_5_n_0\,
      O => \s_alu_result[6]_i_1_n_0\
    );
\s_alu_result[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[6]_i_6_n_0\,
      I1 => data9(6),
      I2 => p_7_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(6),
      O => \s_alu_result[6]_i_2_n_0\
    );
\s_alu_result[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_6_in59_in,
      I1 => p_7_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in14_in,
      O => \s_alu_result[6]_i_3_n_0\
    );
\s_alu_result[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[7]_i_8_n_5\,
      I1 => p_0_in14_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_6_in59_in,
      I5 => \s_alu_result_reg[7]_i_9_n_5\,
      O => \s_alu_result[6]_i_4_n_0\
    );
\s_alu_result[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => p_6_in59_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_5_in,
      O => \s_alu_result[6]_i_5_n_0\
    );
\s_alu_result[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(6),
      I3 => \^q\(0),
      I4 => p_6_in59_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[6]_i_6_n_0\
    );
\s_alu_result[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => p_0_in20_in,
      I2 => p_20_out(9),
      I3 => p_0_in17_in,
      O => p_20_out(6)
    );
\s_alu_result[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[7]_i_2_n_0\,
      I1 => \s_alu_result[7]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[7]_i_4_n_0\,
      I5 => \s_alu_result[7]_i_5_n_0\,
      O => \s_alu_result[7]_i_1_n_0\
    );
\s_alu_result[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in17_in,
      I1 => p_7_in,
      O => \s_alu_result[7]_i_10_n_0\
    );
\s_alu_result[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => p_6_in59_in,
      O => \s_alu_result[7]_i_11_n_0\
    );
\s_alu_result[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => p_5_in,
      O => \s_alu_result[7]_i_12_n_0\
    );
\s_alu_result[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_4_in,
      O => \s_alu_result[7]_i_13_n_0\
    );
\s_alu_result[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_7_in,
      I1 => p_0_in17_in,
      O => \s_alu_result[7]_i_14_n_0\
    );
\s_alu_result[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_6_in59_in,
      I1 => p_0_in14_in,
      O => \s_alu_result[7]_i_15_n_0\
    );
\s_alu_result[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_5_in,
      I1 => p_0_in11_in,
      O => \s_alu_result[7]_i_16_n_0\
    );
\s_alu_result[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_4_in,
      I1 => p_0_in8_in,
      O => \s_alu_result[7]_i_17_n_0\
    );
\s_alu_result[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[7]_i_6_n_0\,
      I1 => data9(7),
      I2 => p_8_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(7),
      O => \s_alu_result[7]_i_2_n_0\
    );
\s_alu_result[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_7_in,
      I1 => p_8_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in17_in,
      O => \s_alu_result[7]_i_3_n_0\
    );
\s_alu_result[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[7]_i_8_n_4\,
      I1 => p_0_in17_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_7_in,
      I5 => \s_alu_result_reg[7]_i_9_n_4\,
      O => \s_alu_result[7]_i_4_n_0\
    );
\s_alu_result[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in17_in,
      I1 => p_7_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_6_in59_in,
      O => \s_alu_result[7]_i_5_n_0\
    );
\s_alu_result[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(7),
      I3 => \^q\(0),
      I4 => p_7_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[7]_i_6_n_0\
    );
\s_alu_result[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in17_in,
      I1 => p_20_out(9),
      I2 => p_0_in20_in,
      O => p_20_out(7)
    );
\s_alu_result[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[8]_i_2_n_0\,
      I1 => \s_alu_result[8]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[8]_i_4_n_0\,
      I5 => \s_alu_result[8]_i_5_n_0\,
      O => \s_alu_result[8]_i_1_n_0\
    );
\s_alu_result[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_7_in,
      O => \s_alu_result[8]_i_10_n_0\
    );
\s_alu_result[8]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_6_in59_in,
      O => \s_alu_result[8]_i_11_n_0\
    );
\s_alu_result[8]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_5_in,
      O => \s_alu_result[8]_i_12_n_0\
    );
\s_alu_result[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[8]_i_6_n_0\,
      I1 => data9(8),
      I2 => p_9_in63_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(8),
      O => \s_alu_result[8]_i_2_n_0\
    );
\s_alu_result[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_8_in,
      I1 => p_9_in63_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in20_in,
      O => \s_alu_result[8]_i_3_n_0\
    );
\s_alu_result[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[11]_i_8_n_7\,
      I1 => p_0_in20_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_8_in,
      I5 => \s_alu_result_reg[11]_i_9_n_7\,
      O => \s_alu_result[8]_i_4_n_0\
    );
\s_alu_result[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in20_in,
      I1 => p_8_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_7_in,
      O => \s_alu_result[8]_i_5_n_0\
    );
\s_alu_result[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(8),
      I3 => \^q\(0),
      I4 => p_8_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[8]_i_6_n_0\
    );
\s_alu_result[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in20_in,
      I1 => p_20_out(9),
      O => p_20_out(8)
    );
\s_alu_result[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_8_in,
      O => \s_alu_result[8]_i_9_n_0\
    );
\s_alu_result[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \s_alu_result[9]_i_2_n_0\,
      I1 => \s_alu_result[9]_i_3_n_0\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[2]\,
      I4 => \s_alu_result[9]_i_4_n_0\,
      I5 => \s_alu_result[9]_i_5_n_0\,
      O => \s_alu_result[9]_i_1_n_0\
    );
\s_alu_result[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEAAFAAAEEAAFA"
    )
        port map (
      I0 => \s_alu_result[9]_i_6_n_0\,
      I1 => data9(9),
      I2 => p_10_in,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => p_20_out(9),
      O => \s_alu_result[9]_i_2_n_0\
    );
\s_alu_result[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA600A6"
    )
        port map (
      I0 => p_9_in63_in,
      I1 => p_10_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_0_in23_in,
      O => \s_alu_result[9]_i_3_n_0\
    );
\s_alu_result[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF0FA0C0AF00A0"
    )
        port map (
      I0 => \s_alu_result_reg[11]_i_8_n_6\,
      I1 => p_0_in23_in,
      I2 => \s_alu_op_lat_reg_n_0_[0]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => p_9_in63_in,
      I5 => \s_alu_result_reg[11]_i_9_n_6\,
      O => \s_alu_result[9]_i_4_n_0\
    );
\s_alu_result[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F63E063E"
    )
        port map (
      I0 => p_0_in23_in,
      I1 => p_9_in63_in,
      I2 => \s_alu_op_lat_reg_n_0_[1]\,
      I3 => \s_alu_op_lat_reg_n_0_[0]\,
      I4 => p_8_in,
      O => \s_alu_result[9]_i_5_n_0\
    );
\s_alu_result[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444000"
    )
        port map (
      I0 => \s_alu_op_lat_reg_n_0_[0]\,
      I1 => \s_alu_op_lat_reg_n_0_[1]\,
      I2 => data9(9),
      I3 => \^q\(0),
      I4 => p_9_in63_in,
      I5 => \s_alu_result[0]_i_7_n_0\,
      O => \s_alu_result[9]_i_6_n_0\
    );
\s_alu_result[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in23_in,
      I1 => p_0_in29_in,
      I2 => p_0_in35_in,
      I3 => p_20_out(14),
      I4 => p_0_in32_in,
      I5 => p_0_in26_in,
      O => p_20_out(9)
    );
\s_alu_result_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[0]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[0]\,
      R => i_rst
    );
\s_alu_result_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[10]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[10]\,
      R => i_rst
    );
\s_alu_result_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[11]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[11]\,
      R => i_rst
    );
\s_alu_result_reg[11]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[7]_i_8_n_0\,
      CO(3) => \s_alu_result_reg[11]_i_8_n_0\,
      CO(2) => \s_alu_result_reg[11]_i_8_n_1\,
      CO(1) => \s_alu_result_reg[11]_i_8_n_2\,
      CO(0) => \s_alu_result_reg[11]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => p_11_in,
      DI(2) => p_10_in,
      DI(1) => p_9_in63_in,
      DI(0) => p_8_in,
      O(3) => \s_alu_result_reg[11]_i_8_n_4\,
      O(2) => \s_alu_result_reg[11]_i_8_n_5\,
      O(1) => \s_alu_result_reg[11]_i_8_n_6\,
      O(0) => \s_alu_result_reg[11]_i_8_n_7\,
      S(3) => \s_alu_result[11]_i_10_n_0\,
      S(2) => \s_alu_result[11]_i_11_n_0\,
      S(1) => \s_alu_result[11]_i_12_n_0\,
      S(0) => \s_alu_result[11]_i_13_n_0\
    );
\s_alu_result_reg[11]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[7]_i_9_n_0\,
      CO(3) => \s_alu_result_reg[11]_i_9_n_0\,
      CO(2) => \s_alu_result_reg[11]_i_9_n_1\,
      CO(1) => \s_alu_result_reg[11]_i_9_n_2\,
      CO(0) => \s_alu_result_reg[11]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => p_11_in,
      DI(2) => p_10_in,
      DI(1) => p_9_in63_in,
      DI(0) => p_8_in,
      O(3) => \s_alu_result_reg[11]_i_9_n_4\,
      O(2) => \s_alu_result_reg[11]_i_9_n_5\,
      O(1) => \s_alu_result_reg[11]_i_9_n_6\,
      O(0) => \s_alu_result_reg[11]_i_9_n_7\,
      S(3) => \s_alu_result[11]_i_14_n_0\,
      S(2) => \s_alu_result[11]_i_15_n_0\,
      S(1) => \s_alu_result[11]_i_16_n_0\,
      S(0) => \s_alu_result[11]_i_17_n_0\
    );
\s_alu_result_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[12]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[12]\,
      R => i_rst
    );
\s_alu_result_reg[12]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[8]_i_7_n_0\,
      CO(3) => \s_alu_result_reg[12]_i_7_n_0\,
      CO(2) => \s_alu_result_reg[12]_i_7_n_1\,
      CO(1) => \s_alu_result_reg[12]_i_7_n_2\,
      CO(0) => \s_alu_result_reg[12]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data9(12 downto 9),
      S(3) => \s_alu_result[12]_i_9_n_0\,
      S(2) => \s_alu_result[12]_i_10_n_0\,
      S(1) => \s_alu_result[12]_i_11_n_0\,
      S(0) => \s_alu_result[12]_i_12_n_0\
    );
\s_alu_result_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[13]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[13]\,
      R => i_rst
    );
\s_alu_result_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[14]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[14]\,
      R => i_rst
    );
\s_alu_result_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[15]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[15]\,
      R => i_rst
    );
\s_alu_result_reg[15]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[11]_i_8_n_0\,
      CO(3) => \s_alu_result_reg[15]_i_8_n_0\,
      CO(2) => \s_alu_result_reg[15]_i_8_n_1\,
      CO(1) => \s_alu_result_reg[15]_i_8_n_2\,
      CO(0) => \s_alu_result_reg[15]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => p_15_in71_in,
      DI(2) => p_14_in,
      DI(1) => p_13_in,
      DI(0) => p_12_in67_in,
      O(3) => \s_alu_result_reg[15]_i_8_n_4\,
      O(2) => \s_alu_result_reg[15]_i_8_n_5\,
      O(1) => \s_alu_result_reg[15]_i_8_n_6\,
      O(0) => \s_alu_result_reg[15]_i_8_n_7\,
      S(3) => \s_alu_result[15]_i_10_n_0\,
      S(2) => \s_alu_result[15]_i_11_n_0\,
      S(1) => \s_alu_result[15]_i_12_n_0\,
      S(0) => \s_alu_result[15]_i_13_n_0\
    );
\s_alu_result_reg[15]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[11]_i_9_n_0\,
      CO(3) => \s_alu_result_reg[15]_i_9_n_0\,
      CO(2) => \s_alu_result_reg[15]_i_9_n_1\,
      CO(1) => \s_alu_result_reg[15]_i_9_n_2\,
      CO(0) => \s_alu_result_reg[15]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => p_15_in71_in,
      DI(2) => p_14_in,
      DI(1) => p_13_in,
      DI(0) => p_12_in67_in,
      O(3) => \s_alu_result_reg[15]_i_9_n_4\,
      O(2) => \s_alu_result_reg[15]_i_9_n_5\,
      O(1) => \s_alu_result_reg[15]_i_9_n_6\,
      O(0) => \s_alu_result_reg[15]_i_9_n_7\,
      S(3) => \s_alu_result[15]_i_14_n_0\,
      S(2) => \s_alu_result[15]_i_15_n_0\,
      S(1) => \s_alu_result[15]_i_16_n_0\,
      S(0) => \s_alu_result[15]_i_17_n_0\
    );
\s_alu_result_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[16]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[16]\,
      R => i_rst
    );
\s_alu_result_reg[16]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[12]_i_7_n_0\,
      CO(3) => \s_alu_result_reg[16]_i_8_n_0\,
      CO(2) => \s_alu_result_reg[16]_i_8_n_1\,
      CO(1) => \s_alu_result_reg[16]_i_8_n_2\,
      CO(0) => \s_alu_result_reg[16]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data9(16 downto 13),
      S(3) => \s_alu_result[16]_i_9_n_0\,
      S(2) => \s_alu_result[16]_i_10_n_0\,
      S(1) => \s_alu_result[16]_i_11_n_0\,
      S(0) => \s_alu_result[16]_i_12_n_0\
    );
\s_alu_result_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[17]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[17]\,
      R => i_rst
    );
\s_alu_result_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[18]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[18]\,
      R => i_rst
    );
\s_alu_result_reg[18]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[16]_i_8_n_0\,
      CO(3 downto 2) => \NLW_s_alu_result_reg[18]_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_alu_result_reg[18]_i_8_n_2\,
      CO(0) => \s_alu_result_reg[18]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_alu_result_reg[18]_i_8_O_UNCONNECTED\(3),
      O(2 downto 0) => data9(19 downto 17),
      S(3) => '0',
      S(2) => \s_alu_result[18]_i_9_n_0\,
      S(1) => \s_alu_result[18]_i_10_n_0\,
      S(0) => \s_alu_result[18]_i_11_n_0\
    );
\s_alu_result_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[19]_i_2_n_0\,
      Q => \s_alu_result_reg_n_0_[19]\,
      R => i_rst
    );
\s_alu_result_reg[19]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[15]_i_8_n_0\,
      CO(3) => \s_alu_result_reg[19]_i_6_n_0\,
      CO(2) => \s_alu_result_reg[19]_i_6_n_1\,
      CO(1) => \s_alu_result_reg[19]_i_6_n_2\,
      CO(0) => \s_alu_result_reg[19]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \^q\(0),
      DI(2) => p_18_in75_in,
      DI(1) => p_17_in,
      DI(0) => p_16_in,
      O(3) => \s_alu_result_reg[19]_i_6_n_4\,
      O(2) => \s_alu_result_reg[19]_i_6_n_5\,
      O(1) => \s_alu_result_reg[19]_i_6_n_6\,
      O(0) => \s_alu_result_reg[19]_i_6_n_7\,
      S(3) => \s_alu_result[19]_i_9_n_0\,
      S(2) => \s_alu_result[19]_i_10_n_0\,
      S(1) => \s_alu_result[19]_i_11_n_0\,
      S(0) => \s_alu_result[19]_i_12_n_0\
    );
\s_alu_result_reg[19]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[15]_i_9_n_0\,
      CO(3) => \s_alu_result_reg[19]_i_7_n_0\,
      CO(2) => \s_alu_result_reg[19]_i_7_n_1\,
      CO(1) => \s_alu_result_reg[19]_i_7_n_2\,
      CO(0) => \s_alu_result_reg[19]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \^q\(0),
      DI(2) => p_18_in75_in,
      DI(1) => p_17_in,
      DI(0) => p_16_in,
      O(3) => \s_alu_result_reg[19]_i_7_n_4\,
      O(2) => \s_alu_result_reg[19]_i_7_n_5\,
      O(1) => \s_alu_result_reg[19]_i_7_n_6\,
      O(0) => \s_alu_result_reg[19]_i_7_n_7\,
      S(3) => \s_alu_result[19]_i_13_n_0\,
      S(2) => \s_alu_result[19]_i_14_n_0\,
      S(1) => \s_alu_result[19]_i_15_n_0\,
      S(0) => \s_alu_result[19]_i_16_n_0\
    );
\s_alu_result_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[1]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[1]\,
      R => i_rst
    );
\s_alu_result_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[2]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[2]\,
      R => i_rst
    );
\s_alu_result_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[3]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[3]\,
      R => i_rst
    );
\s_alu_result_reg[3]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_alu_result_reg[3]_i_8_n_0\,
      CO(2) => \s_alu_result_reg[3]_i_8_n_1\,
      CO(1) => \s_alu_result_reg[3]_i_8_n_2\,
      CO(0) => \s_alu_result_reg[3]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => p_3_in55_in,
      DI(2) => p_2_in,
      DI(1) => p_1_in52_in,
      DI(0) => \s_acc_reg_reg_n_0_[0]\,
      O(3) => \s_alu_result_reg[3]_i_8_n_4\,
      O(2) => \s_alu_result_reg[3]_i_8_n_5\,
      O(1) => \s_alu_result_reg[3]_i_8_n_6\,
      O(0) => \s_alu_result_reg[3]_i_8_n_7\,
      S(3) => \s_alu_result[3]_i_10_n_0\,
      S(2) => \s_alu_result[3]_i_11_n_0\,
      S(1) => \s_alu_result[3]_i_12_n_0\,
      S(0) => \s_alu_result[3]_i_13_n_0\
    );
\s_alu_result_reg[3]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_alu_result_reg[3]_i_9_n_0\,
      CO(2) => \s_alu_result_reg[3]_i_9_n_1\,
      CO(1) => \s_alu_result_reg[3]_i_9_n_2\,
      CO(0) => \s_alu_result_reg[3]_i_9_n_3\,
      CYINIT => '1',
      DI(3) => p_3_in55_in,
      DI(2) => p_2_in,
      DI(1) => p_1_in52_in,
      DI(0) => \s_acc_reg_reg_n_0_[0]\,
      O(3) => \s_alu_result_reg[3]_i_9_n_4\,
      O(2) => \s_alu_result_reg[3]_i_9_n_5\,
      O(1) => \s_alu_result_reg[3]_i_9_n_6\,
      O(0) => \s_alu_result_reg[3]_i_9_n_7\,
      S(3) => \s_alu_result[3]_i_14_n_0\,
      S(2) => \s_alu_result[3]_i_15_n_0\,
      S(1) => \s_alu_result[3]_i_16_n_0\,
      S(0) => \s_alu_result[3]_i_17_n_0\
    );
\s_alu_result_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[4]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[4]\,
      R => i_rst
    );
\s_alu_result_reg[4]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_alu_result_reg[4]_i_7_n_0\,
      CO(2) => \s_alu_result_reg[4]_i_7_n_1\,
      CO(1) => \s_alu_result_reg[4]_i_7_n_2\,
      CO(0) => \s_alu_result_reg[4]_i_7_n_3\,
      CYINIT => \s_alu_result[4]_i_9_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data9(4 downto 1),
      S(3) => \s_alu_result[4]_i_10_n_0\,
      S(2) => \s_alu_result[4]_i_11_n_0\,
      S(1) => \s_alu_result[4]_i_12_n_0\,
      S(0) => \s_alu_result[4]_i_13_n_0\
    );
\s_alu_result_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[5]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[5]\,
      R => i_rst
    );
\s_alu_result_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[6]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[6]\,
      R => i_rst
    );
\s_alu_result_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[7]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[7]\,
      R => i_rst
    );
\s_alu_result_reg[7]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[3]_i_8_n_0\,
      CO(3) => \s_alu_result_reg[7]_i_8_n_0\,
      CO(2) => \s_alu_result_reg[7]_i_8_n_1\,
      CO(1) => \s_alu_result_reg[7]_i_8_n_2\,
      CO(0) => \s_alu_result_reg[7]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => p_7_in,
      DI(2) => p_6_in59_in,
      DI(1) => p_5_in,
      DI(0) => p_4_in,
      O(3) => \s_alu_result_reg[7]_i_8_n_4\,
      O(2) => \s_alu_result_reg[7]_i_8_n_5\,
      O(1) => \s_alu_result_reg[7]_i_8_n_6\,
      O(0) => \s_alu_result_reg[7]_i_8_n_7\,
      S(3) => \s_alu_result[7]_i_10_n_0\,
      S(2) => \s_alu_result[7]_i_11_n_0\,
      S(1) => \s_alu_result[7]_i_12_n_0\,
      S(0) => \s_alu_result[7]_i_13_n_0\
    );
\s_alu_result_reg[7]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[3]_i_9_n_0\,
      CO(3) => \s_alu_result_reg[7]_i_9_n_0\,
      CO(2) => \s_alu_result_reg[7]_i_9_n_1\,
      CO(1) => \s_alu_result_reg[7]_i_9_n_2\,
      CO(0) => \s_alu_result_reg[7]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => p_7_in,
      DI(2) => p_6_in59_in,
      DI(1) => p_5_in,
      DI(0) => p_4_in,
      O(3) => \s_alu_result_reg[7]_i_9_n_4\,
      O(2) => \s_alu_result_reg[7]_i_9_n_5\,
      O(1) => \s_alu_result_reg[7]_i_9_n_6\,
      O(0) => \s_alu_result_reg[7]_i_9_n_7\,
      S(3) => \s_alu_result[7]_i_14_n_0\,
      S(2) => \s_alu_result[7]_i_15_n_0\,
      S(1) => \s_alu_result[7]_i_16_n_0\,
      S(0) => \s_alu_result[7]_i_17_n_0\
    );
\s_alu_result_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[8]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[8]\,
      R => i_rst
    );
\s_alu_result_reg[8]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[4]_i_7_n_0\,
      CO(3) => \s_alu_result_reg[8]_i_7_n_0\,
      CO(2) => \s_alu_result_reg[8]_i_7_n_1\,
      CO(1) => \s_alu_result_reg[8]_i_7_n_2\,
      CO(0) => \s_alu_result_reg[8]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data9(8 downto 5),
      S(3) => \s_alu_result[8]_i_9_n_0\,
      S(2) => \s_alu_result[8]_i_10_n_0\,
      S(1) => \s_alu_result[8]_i_11_n_0\,
      S(0) => \s_alu_result[8]_i_12_n_0\
    );
\s_alu_result_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => \s_alu_result[9]_i_1_n_0\,
      Q => \s_alu_result_reg_n_0_[9]\,
      R => i_rst
    );
s_c_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_carry_out,
      I1 => o_t18,
      I2 => o_phi2,
      I3 => o_word_type,
      I4 => s_flags_we_lat,
      I5 => \^s_flag_c\,
      O => s_c_reg_i_1_n_0
    );
s_c_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_c_reg_i_1_n_0,
      Q => \^s_flag_c\,
      R => i_rst
    );
s_carry_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003010000000100"
    )
        port map (
      I0 => s_carry_out_reg_i_2_n_3,
      I1 => \s_alu_op_lat_reg_n_0_[2]\,
      I2 => \s_alu_op_lat_reg_n_0_[3]\,
      I3 => \s_alu_op_lat_reg_n_0_[1]\,
      I4 => \s_alu_op_lat_reg_n_0_[0]\,
      I5 => s_carry_out_reg_i_3_n_3,
      O => s_carry_out_i_1_n_0
    );
s_carry_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_alu_result0,
      D => s_carry_out_i_1_n_0,
      Q => s_carry_out,
      R => i_rst
    );
s_carry_out_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[19]_i_7_n_0\,
      CO(3 downto 1) => NLW_s_carry_out_reg_i_2_CO_UNCONNECTED(3 downto 1),
      CO(0) => s_carry_out_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_s_carry_out_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
s_carry_out_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => \s_alu_result_reg[19]_i_6_n_0\,
      CO(3 downto 1) => NLW_s_carry_out_reg_i_3_CO_UNCONNECTED(3 downto 1),
      CO(0) => s_carry_out_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_s_carry_out_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
s_compute_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_acc_reg15_out,
      Q => s_compute_done,
      R => i_rst
    );
\s_cw_bit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA8FFFF5757"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[0]\,
      O => \s_cw_bit_cnt[0]_i_1_n_0\
    );
\s_cw_bit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF55000002AA"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[1]\,
      O => \s_cw_bit_cnt[1]_i_1_n_0\
    );
\s_cw_bit_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F70008"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I3 => o_t0,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      O => \s_cw_bit_cnt[2]_i_1_n_0\
    );
\s_cw_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF7F00000080"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[3]\,
      O => \s_cw_bit_cnt[3]_i_1_n_0\
    );
\s_cw_bit_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00008000"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[4]\,
      O => \s_cw_bit_cnt[4]_i_2_n_0\
    );
\s_cw_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_bit_cnt_reg[4]_0\,
      D => \s_cw_bit_cnt[0]_i_1_n_0\,
      Q => \s_cw_bit_cnt_reg_n_0_[0]\,
      R => i_rst
    );
\s_cw_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_bit_cnt_reg[4]_0\,
      D => \s_cw_bit_cnt[1]_i_1_n_0\,
      Q => \s_cw_bit_cnt_reg_n_0_[1]\,
      R => i_rst
    );
\s_cw_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_bit_cnt_reg[4]_0\,
      D => \s_cw_bit_cnt[2]_i_1_n_0\,
      Q => \s_cw_bit_cnt_reg_n_0_[2]\,
      R => i_rst
    );
\s_cw_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_bit_cnt_reg[4]_0\,
      D => \s_cw_bit_cnt[3]_i_1_n_0\,
      Q => \s_cw_bit_cnt_reg_n_0_[3]\,
      R => i_rst
    );
\s_cw_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_cw_bit_cnt_reg[4]_0\,
      D => \s_cw_bit_cnt[4]_i_2_n_0\,
      Q => \s_cw_bit_cnt_reg_n_0_[4]\,
      R => i_rst
    );
\s_cw_sr[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \s_cw_sr[3]_i_4_n_0\,
      I1 => \s_cw_sr[4]_i_2_n_0\,
      I2 => \s_cw_sr[0]_i_2_n_0\,
      I3 => \s_cw_sr_reg_n_0_[0]\,
      O => \s_cw_sr[0]_i_1__0_n_0\
    );
\s_cw_sr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A2A0A0A0A0"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_sr[6]_i_6_n_0\,
      O => \s_cw_sr[0]_i_2_n_0\
    );
\s_cw_sr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \s_cw_sr[3]_i_4_n_0\,
      I1 => \s_cw_sr[5]_i_2_n_0\,
      I2 => \s_cw_sr[1]_i_2_n_0\,
      I3 => \s_cw_sr_reg_n_0_[1]\,
      O => \s_cw_sr[1]_i_1__0_n_0\
    );
\s_cw_sr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A8A0A0A0A0"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_sr[6]_i_6_n_0\,
      O => \s_cw_sr[1]_i_2_n_0\
    );
\s_cw_sr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \s_cw_sr[3]_i_4_n_0\,
      I1 => \s_cw_sr[6]_i_3_n_0\,
      I2 => \s_cw_sr[2]_i_2_n_0\,
      I3 => \s_cw_sr_reg_n_0_[2]\,
      O => \s_cw_sr[2]_i_1__0_n_0\
    );
\s_cw_sr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A2A0A0A0A0A0"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_sr[6]_i_6_n_0\,
      O => \s_cw_sr[2]_i_2_n_0\
    );
\s_cw_sr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FFFFFF40000000"
    )
        port map (
      I0 => \s_cw_sr[3]_i_2_n_0\,
      I1 => s_cw_bit,
      I2 => \s_cw_sr[3]_i_4_n_0\,
      I3 => \s_cw_bit_cnt_reg[4]_0\,
      I4 => \s_cw_sr[3]_i_5_n_0\,
      I5 => \s_cw_sr_reg_n_0_[3]\,
      O => \s_cw_sr[3]_i_1__0_n_0\
    );
\s_cw_sr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I1 => o_t0,
      I2 => \s_cw_bit_cnt_reg_n_0_[1]\,
      O => \s_cw_sr[3]_i_2_n_0\
    );
\s_cw_sr[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCD"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I1 => o_t0,
      I2 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[2]\,
      O => \s_cw_sr[3]_i_4_n_0\
    );
\s_cw_sr[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF0008"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[3]\,
      O => \s_cw_sr[3]_i_5_n_0\
    );
\s_cw_sr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \s_cw_sr[6]_i_2_n_0\,
      I1 => \s_cw_sr[4]_i_2_n_0\,
      I2 => \s_cw_sr[6]_i_4_n_0\,
      I3 => \s_cw_sr[4]_i_3_n_0\,
      I4 => \p_0_in__0\,
      O => \s_cw_sr[4]_i_1__0_n_0\
    );
\s_cw_sr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00CC50"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I1 => \s_cw_sr_reg[4]_0\(0),
      I2 => \s_cw_sr_reg[4]_0\(1),
      I3 => o_t0,
      I4 => \s_cw_bit_cnt_reg_n_0_[0]\,
      O => \s_cw_sr[4]_i_2_n_0\
    );
\s_cw_sr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A2A0A0A0A0A0A0"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_sr[6]_i_6_n_0\,
      O => \s_cw_sr[4]_i_3_n_0\
    );
\s_cw_sr[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \s_cw_sr[6]_i_2_n_0\,
      I1 => \s_cw_sr[5]_i_2_n_0\,
      I2 => \s_cw_sr[6]_i_4_n_0\,
      I3 => \s_cw_sr[5]_i_3_n_0\,
      I4 => \s_cw_sr_reg_n_0_[5]\,
      O => \s_cw_sr[5]_i_1__0_n_0\
    );
\s_cw_sr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I1 => \s_cw_sr_reg[4]_0\(1),
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[0]\,
      O => \s_cw_sr[5]_i_2_n_0\
    );
\s_cw_sr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A8A0A0A0A0A0A0"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_sr[6]_i_6_n_0\,
      O => \s_cw_sr[5]_i_3_n_0\
    );
\s_cw_sr[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \s_cw_sr[6]_i_2_n_0\,
      I1 => \s_cw_sr[6]_i_3_n_0\,
      I2 => \s_cw_sr[6]_i_4_n_0\,
      I3 => \s_cw_sr[6]_i_5_n_0\,
      I4 => \s_cw_sr_reg_n_0_[6]\,
      O => \s_cw_sr[6]_i_1__0_n_0\
    );
\s_cw_sr[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I1 => o_t0,
      I2 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[3]\,
      O => \s_cw_sr[6]_i_2_n_0\
    );
\s_cw_sr[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_cw_sr_reg[4]_0\(1),
      I1 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[0]\,
      O => \s_cw_sr[6]_i_3_n_0\
    );
\s_cw_sr[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0111FFFF1111"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[3]\,
      I1 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I2 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => o_t0,
      I5 => \s_cw_bit_cnt_reg_n_0_[0]\,
      O => \s_cw_sr[6]_i_4_n_0\
    );
\s_cw_sr[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A0A0A0A0A0A0A0"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg[4]_0\,
      I1 => \s_cw_bit_cnt_reg_n_0_[0]\,
      I2 => o_t0,
      I3 => \s_cw_bit_cnt_reg_n_0_[1]\,
      I4 => \s_cw_bit_cnt_reg_n_0_[2]\,
      I5 => \s_cw_sr[6]_i_6_n_0\,
      O => \s_cw_sr[6]_i_5_n_0\
    );
\s_cw_sr[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \s_cw_bit_cnt_reg_n_0_[4]\,
      I1 => o_t0,
      I2 => \s_cw_bit_cnt_reg_n_0_[3]\,
      O => \s_cw_sr[6]_i_6_n_0\
    );
\s_cw_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[0]_i_1__0_n_0\,
      Q => \s_cw_sr_reg_n_0_[0]\,
      R => i_rst
    );
\s_cw_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[1]_i_1__0_n_0\,
      Q => \s_cw_sr_reg_n_0_[1]\,
      R => i_rst
    );
\s_cw_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[2]_i_1__0_n_0\,
      Q => \s_cw_sr_reg_n_0_[2]\,
      R => i_rst
    );
\s_cw_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[3]_i_1__0_n_0\,
      Q => \s_cw_sr_reg_n_0_[3]\,
      R => i_rst
    );
\s_cw_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[4]_i_1__0_n_0\,
      Q => \p_0_in__0\,
      R => i_rst
    );
\s_cw_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[5]_i_1__0_n_0\,
      Q => \s_cw_sr_reg_n_0_[5]\,
      R => i_rst
    );
\s_cw_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \s_cw_sr[6]_i_1__0_n_0\,
      Q => \s_cw_sr_reg_n_0_[6]\,
      R => i_rst
    );
s_flags_we_lat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[6]\,
      I1 => s_acc_we_lat4_out,
      I2 => s_flags_we_lat,
      O => s_flags_we_lat_i_1_n_0
    );
s_flags_we_lat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_flags_we_lat_i_1_n_0,
      Q => s_flags_we_lat,
      R => i_rst
    );
\s_input_lat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(1),
      Q => \s_input_lat_reg_n_0_[0]\,
      R => i_rst
    );
\s_input_lat_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(11),
      Q => p_0_in26_in,
      R => i_rst
    );
\s_input_lat_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(12),
      Q => p_0_in29_in,
      R => i_rst
    );
\s_input_lat_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(13),
      Q => p_0_in32_in,
      R => i_rst
    );
\s_input_lat_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(14),
      Q => p_0_in35_in,
      R => i_rst
    );
\s_input_lat_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(15),
      Q => p_0_in38_in,
      R => i_rst
    );
\s_input_lat_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(16),
      Q => p_0_in41_in,
      R => i_rst
    );
\s_input_lat_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(17),
      Q => p_0_in44_in,
      R => i_rst
    );
\s_input_lat_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(18),
      Q => p_0_in47_in,
      R => i_rst
    );
\s_input_lat_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(19),
      Q => \s_input_lat_reg_n_0_[18]\,
      R => i_rst
    );
\s_input_lat_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => \s_input_sr_reg[19]_0\(0),
      Q => p_1_in,
      R => i_rst
    );
\s_input_lat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(2),
      Q => p_0_in,
      R => i_rst
    );
\s_input_lat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(3),
      Q => p_0_in2_in,
      R => i_rst
    );
\s_input_lat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(4),
      Q => p_0_in5_in,
      R => i_rst
    );
\s_input_lat_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(5),
      Q => p_0_in8_in,
      R => i_rst
    );
\s_input_lat_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(6),
      Q => p_0_in11_in,
      R => i_rst
    );
\s_input_lat_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(7),
      Q => p_0_in14_in,
      R => i_rst
    );
\s_input_lat_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(8),
      Q => p_0_in17_in,
      R => i_rst
    );
\s_input_lat_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(9),
      Q => p_0_in20_in,
      R => i_rst
    );
\s_input_lat_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_input_lat_reg[19]_0\(0),
      D => s_input_sr(10),
      Q => p_0_in23_in,
      R => i_rst
    );
\s_input_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(11),
      Q => s_input_sr(10),
      R => i_rst
    );
\s_input_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(12),
      Q => s_input_sr(11),
      R => i_rst
    );
\s_input_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(13),
      Q => s_input_sr(12),
      R => i_rst
    );
\s_input_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(14),
      Q => s_input_sr(13),
      R => i_rst
    );
\s_input_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(15),
      Q => s_input_sr(14),
      R => i_rst
    );
\s_input_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(16),
      Q => s_input_sr(15),
      R => i_rst
    );
\s_input_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(17),
      Q => s_input_sr(16),
      R => i_rst
    );
\s_input_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(18),
      Q => s_input_sr(17),
      R => i_rst
    );
\s_input_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(19),
      Q => s_input_sr(18),
      R => i_rst
    );
\s_input_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => \s_input_sr_reg[19]_0\(0),
      Q => s_input_sr(19),
      R => i_rst
    );
\s_input_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(2),
      Q => s_input_sr(1),
      R => i_rst
    );
\s_input_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(3),
      Q => s_input_sr(2),
      R => i_rst
    );
\s_input_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(4),
      Q => s_input_sr(3),
      R => i_rst
    );
\s_input_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(5),
      Q => s_input_sr(4),
      R => i_rst
    );
\s_input_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(6),
      Q => s_input_sr(5),
      R => i_rst
    );
\s_input_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(7),
      Q => s_input_sr(6),
      R => i_rst
    );
\s_input_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(8),
      Q => s_input_sr(7),
      R => i_rst
    );
\s_input_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(9),
      Q => s_input_sr(8),
      R => i_rst
    );
\s_input_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => E(0),
      D => s_input_sr(10),
      Q => s_input_sr(9),
      R => i_rst
    );
s_mcand_lat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_acc_out_sr(0),
      I1 => o_t0,
      I2 => s_acc_out_sr(1),
      O => D(0)
    );
\s_mplier_lat[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[0]\,
      I1 => o_t0,
      I2 => \s_tmp_out_sr_reg_n_0_[1]\,
      O => A(0)
    );
s_n_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \s_alu_result_reg_n_0_[19]\,
      I1 => o_t18,
      I2 => o_phi2,
      I3 => o_word_type,
      I4 => s_flags_we_lat,
      I5 => \^s_flag_n\,
      O => s_n_reg_i_1_n_0
    );
s_n_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_n_reg_i_1_n_0,
      Q => \^s_flag_n\,
      R => i_rst
    );
\s_tmp_out_sr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[1]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[0]\,
      O => \s_tmp_out_sr[0]_i_1_n_0\
    );
\s_tmp_out_sr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[11]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[10]\,
      O => \s_tmp_out_sr[10]_i_1_n_0\
    );
\s_tmp_out_sr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[12]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[11]\,
      O => \s_tmp_out_sr[11]_i_1_n_0\
    );
\s_tmp_out_sr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[13]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[12]\,
      O => \s_tmp_out_sr[12]_i_1_n_0\
    );
\s_tmp_out_sr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[14]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[13]\,
      O => \s_tmp_out_sr[13]_i_1_n_0\
    );
\s_tmp_out_sr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[15]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[14]\,
      O => \s_tmp_out_sr[14]_i_1_n_0\
    );
\s_tmp_out_sr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[16]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[15]\,
      O => \s_tmp_out_sr[15]_i_1_n_0\
    );
\s_tmp_out_sr[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[17]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[16]\,
      O => \s_tmp_out_sr[16]_i_1_n_0\
    );
\s_tmp_out_sr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[18]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[17]\,
      O => \s_tmp_out_sr[17]_i_1_n_0\
    );
\s_tmp_out_sr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[19]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[18]\,
      O => \s_tmp_out_sr[18]_i_1_n_0\
    );
\s_tmp_out_sr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[2]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[1]\,
      O => \s_tmp_out_sr[1]_i_1_n_0\
    );
\s_tmp_out_sr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[3]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[2]\,
      O => \s_tmp_out_sr[2]_i_1_n_0\
    );
\s_tmp_out_sr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[4]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[3]\,
      O => \s_tmp_out_sr[3]_i_1_n_0\
    );
\s_tmp_out_sr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[5]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[4]\,
      O => \s_tmp_out_sr[4]_i_1_n_0\
    );
\s_tmp_out_sr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[6]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[5]\,
      O => \s_tmp_out_sr[5]_i_1_n_0\
    );
\s_tmp_out_sr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[7]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[6]\,
      O => \s_tmp_out_sr[6]_i_1_n_0\
    );
\s_tmp_out_sr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[8]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[7]\,
      O => \s_tmp_out_sr[7]_i_1_n_0\
    );
\s_tmp_out_sr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[9]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[8]\,
      O => \s_tmp_out_sr[8]_i_1_n_0\
    );
\s_tmp_out_sr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \s_tmp_out_sr_reg_n_0_[10]\,
      I1 => o_word_type,
      I2 => o_phi2,
      I3 => \s_tmp_reg_reg_n_0_[9]\,
      O => \s_tmp_out_sr[9]_i_1_n_0\
    );
\s_tmp_out_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[0]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[0]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[10]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[10]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[11]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[11]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[12]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[12]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[13]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[13]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[14]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[14]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[15]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[15]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[16]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[16]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[17]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[17]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[18]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[18]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr_reg[19]_0\(0),
      Q => \s_tmp_out_sr_reg_n_0_[19]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[1]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[1]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[2]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[2]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[3]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[3]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[4]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[4]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[5]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[5]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[6]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[6]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[7]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[7]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[8]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[8]\,
      R => i_rst
    );
\s_tmp_out_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_acc_out_sr_reg[19]_0\(0),
      D => \s_tmp_out_sr[9]_i_1_n_0\,
      Q => \s_tmp_out_sr_reg_n_0_[9]\,
      R => i_rst
    );
\s_tmp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => \s_acc_reg_reg_n_0_[0]\,
      Q => \s_tmp_reg_reg_n_0_[0]\,
      R => i_rst
    );
\s_tmp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_10_in,
      Q => \s_tmp_reg_reg_n_0_[10]\,
      R => i_rst
    );
\s_tmp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_11_in,
      Q => \s_tmp_reg_reg_n_0_[11]\,
      R => i_rst
    );
\s_tmp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_12_in67_in,
      Q => \s_tmp_reg_reg_n_0_[12]\,
      R => i_rst
    );
\s_tmp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_13_in,
      Q => \s_tmp_reg_reg_n_0_[13]\,
      R => i_rst
    );
\s_tmp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_14_in,
      Q => \s_tmp_reg_reg_n_0_[14]\,
      R => i_rst
    );
\s_tmp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_15_in71_in,
      Q => \s_tmp_reg_reg_n_0_[15]\,
      R => i_rst
    );
\s_tmp_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_16_in,
      Q => \s_tmp_reg_reg_n_0_[16]\,
      R => i_rst
    );
\s_tmp_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_17_in,
      Q => \s_tmp_reg_reg_n_0_[17]\,
      R => i_rst
    );
\s_tmp_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_18_in75_in,
      Q => \s_tmp_reg_reg_n_0_[18]\,
      R => i_rst
    );
\s_tmp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => \^q\(0),
      Q => \s_tmp_reg_reg[19]_0\(0),
      R => i_rst
    );
\s_tmp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_1_in52_in,
      Q => \s_tmp_reg_reg_n_0_[1]\,
      R => i_rst
    );
\s_tmp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_2_in,
      Q => \s_tmp_reg_reg_n_0_[2]\,
      R => i_rst
    );
\s_tmp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_3_in55_in,
      Q => \s_tmp_reg_reg_n_0_[3]\,
      R => i_rst
    );
\s_tmp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_4_in,
      Q => \s_tmp_reg_reg_n_0_[4]\,
      R => i_rst
    );
\s_tmp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_5_in,
      Q => \s_tmp_reg_reg_n_0_[5]\,
      R => i_rst
    );
\s_tmp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_6_in59_in,
      Q => \s_tmp_reg_reg_n_0_[6]\,
      R => i_rst
    );
\s_tmp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_7_in,
      Q => \s_tmp_reg_reg_n_0_[7]\,
      R => i_rst
    );
\s_tmp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_8_in,
      Q => \s_tmp_reg_reg_n_0_[8]\,
      R => i_rst
    );
\s_tmp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \s_tmp_reg_reg[19]_1\(0),
      D => p_9_in63_in,
      Q => \s_tmp_reg_reg_n_0_[9]\,
      R => i_rst
    );
s_tmp_we_lat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_cw_sr_reg_n_0_[5]\,
      I1 => s_acc_we_lat4_out,
      I2 => \^s_tmp_we_lat\,
      O => s_tmp_we_lat_i_1_n_0
    );
s_tmp_we_lat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_tmp_we_lat_i_1_n_0,
      Q => \^s_tmp_we_lat\,
      R => i_rst
    );
s_z_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_z_reg,
      I1 => o_t18,
      I2 => o_phi2,
      I3 => o_word_type,
      I4 => s_flags_we_lat,
      I5 => \^s_flag_z\,
      O => s_z_reg_i_1_n_0
    );
\s_z_reg_inferred__0/s_z_reg_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \s_z_reg_inferred__0/s_z_reg_i_3_n_0\,
      I1 => \s_z_reg_inferred__0/s_z_reg_i_4_n_0\,
      I2 => \s_z_reg_inferred__0/s_z_reg_i_5_n_0\,
      I3 => \s_alu_result_reg_n_0_[0]\,
      I4 => \s_alu_result_reg_n_0_[1]\,
      O => s_z_reg
    );
\s_z_reg_inferred__0/s_z_reg_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \s_alu_result_reg_n_0_[16]\,
      I1 => \s_alu_result_reg_n_0_[17]\,
      I2 => \s_alu_result_reg_n_0_[14]\,
      I3 => \s_alu_result_reg_n_0_[15]\,
      I4 => \s_alu_result_reg_n_0_[19]\,
      I5 => \s_alu_result_reg_n_0_[18]\,
      O => \s_z_reg_inferred__0/s_z_reg_i_3_n_0\
    );
\s_z_reg_inferred__0/s_z_reg_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \s_alu_result_reg_n_0_[4]\,
      I1 => \s_alu_result_reg_n_0_[5]\,
      I2 => \s_alu_result_reg_n_0_[2]\,
      I3 => \s_alu_result_reg_n_0_[3]\,
      I4 => \s_alu_result_reg_n_0_[7]\,
      I5 => \s_alu_result_reg_n_0_[6]\,
      O => \s_z_reg_inferred__0/s_z_reg_i_4_n_0\
    );
\s_z_reg_inferred__0/s_z_reg_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \s_alu_result_reg_n_0_[10]\,
      I1 => \s_alu_result_reg_n_0_[11]\,
      I2 => \s_alu_result_reg_n_0_[8]\,
      I3 => \s_alu_result_reg_n_0_[9]\,
      I4 => \s_alu_result_reg_n_0_[13]\,
      I5 => \s_alu_result_reg_n_0_[12]\,
      O => \s_z_reg_inferred__0/s_z_reg_i_5_n_0\
    );
s_z_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_z_reg_i_1_n_0,
      Q => \^s_flag_z\,
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_timing_generator is
  port (
    \FSM_onehot_s_phase_cnt_reg[3]_0\ : out STD_LOGIC;
    s_frame_mark : out STD_LOGIC;
    s_phi2_reg_reg_0 : out STD_LOGIC;
    o_phi2 : out STD_LOGIC;
    s_word_type_reg_reg_0 : out STD_LOGIC;
    s_phi2_reg_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_t0 : out STD_LOGIC;
    s_t0_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_word_type : out STD_LOGIC;
    \s_acc_reg_reg[19]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_tmp_reg_reg[19]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_t18_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_t18 : out STD_LOGIC;
    s_acc_reg15_out : out STD_LOGIC;
    s_word_type_reg_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_t19 : out STD_LOGIC;
    s_word_type_reg_reg_2 : out STD_LOGIC;
    s_t0_reg_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_t0_reg_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_word_type_reg_reg_3 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_phi2_reg_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_phi2_reg_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_micro_pc_reg_rep[8]\ : in STD_LOGIC;
    s_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_compute_done : in STD_LOGIC;
    \s_acc_out_sr_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_tmp_out_sr_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_tmp_we_lat : in STD_LOGIC;
    s_busy_reg : in STD_LOGIC;
    s_pdu_busy : in STD_LOGIC;
    \s_const_sr_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    i_rst : in STD_LOGIC;
    i_clk_master : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_timing_generator : entity is "timing_generator";
end cadc_system_cadc_top_0_0_timing_generator;

architecture STRUCTURE of cadc_system_cadc_top_0_0_timing_generator is
  signal \FSM_onehot_s_phase_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_s_phase_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \^o_phi2\ : STD_LOGIC;
  signal \^o_t0\ : STD_LOGIC;
  signal \^o_t18\ : STD_LOGIC;
  signal \^o_t19\ : STD_LOGIC;
  signal \^o_word_type\ : STD_LOGIC;
  signal s_bit_clk : STD_LOGIC;
  signal s_bit_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \^s_frame_mark\ : STD_LOGIC;
  signal \s_micro_pc_rep_rep[8]_i_4_n_0\ : STD_LOGIC;
  signal s_op_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_op_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_op_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_op_cnt__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \s_op_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_op_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal s_t0_reg_i_1_n_0 : STD_LOGIC;
  signal s_t18_reg_i_1_n_0 : STD_LOGIC;
  signal s_t19_reg : STD_LOGIC;
  signal s_word_sel_i_1_n_0 : STD_LOGIC;
  signal s_word_sel_reg_n_0 : STD_LOGIC;
  signal \^s_word_type_reg_reg_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_phase_cnt_reg[0]\ : label is """00"":0001,""01"":0010,""10"":0100,""11"":1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_phase_cnt_reg[1]\ : label is """00"":0001,""01"":0010,""10"":0100,""11"":1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_phase_cnt_reg[2]\ : label is """00"":0001,""01"":0010,""10"":0100,""11"":1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s_phase_cnt_reg[3]\ : label is """00"":0001,""01"":0010,""10"":0100,""11"":1000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_s_state[1]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \FSM_onehot_s_state[2]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \s_acc_out_sr[19]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \s_acc_out_sr[19]_i_2\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \s_bit_cnt[1]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \s_bit_cnt[2]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \s_bit_cnt[3]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \s_bit_cnt[4]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of s_compute_done_i_1 : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \s_const_sr[10]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \s_const_sr[11]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \s_const_sr[12]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \s_const_sr[13]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \s_const_sr[14]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \s_const_sr[17]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \s_const_sr[1]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \s_const_sr[2]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \s_const_sr[3]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \s_const_sr[4]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \s_const_sr[5]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \s_const_sr[6]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \s_const_sr[7]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \s_const_sr[8]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \s_const_sr[9]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \s_cw_sr[43]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \s_divisor_lat[19]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \s_input_sr[19]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[8]_i_4\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \s_op_cnt[1]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \s_op_cnt[2]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \s_op_cnt[3]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \s_op_cnt[4]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \s_op_cnt[6]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \s_op_cnt[7]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \s_op_cnt[8]_i_2\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \s_op_cnt[8]_i_3\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \s_product_sr[19]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of s_t0_reg_i_1 : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of s_t18_reg_i_1 : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of s_t19_reg_i_1 : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \s_tmp_out_sr[19]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \s_tmp_reg[19]_i_1\ : label is "soft_lutpair162";
begin
  o_phi2 <= \^o_phi2\;
  o_t0 <= \^o_t0\;
  o_t18 <= \^o_t18\;
  o_t19 <= \^o_t19\;
  o_word_type <= \^o_word_type\;
  s_frame_mark <= \^s_frame_mark\;
  s_word_type_reg_reg_0 <= \^s_word_type_reg_reg_0\;
\FSM_onehot_s_phase_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_bit_cnt(0),
      Q => s_bit_clk,
      S => i_rst
    );
\FSM_onehot_s_phase_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_bit_clk,
      Q => \FSM_onehot_s_phase_cnt_reg_n_0_[1]\,
      R => i_rst
    );
\FSM_onehot_s_phase_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \FSM_onehot_s_phase_cnt_reg_n_0_[1]\,
      Q => \FSM_onehot_s_phase_cnt_reg_n_0_[2]\,
      R => i_rst
    );
\FSM_onehot_s_phase_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => \FSM_onehot_s_phase_cnt_reg_n_0_[2]\,
      Q => s_bit_cnt(0),
      R => i_rst
    );
\FSM_onehot_s_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC04"
    )
        port map (
      I0 => \^o_phi2\,
      I1 => s_state(1),
      I2 => \^s_word_type_reg_reg_0\,
      I3 => s_state(0),
      O => s_phi2_reg_reg_0
    );
\FSM_onehot_s_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFC8"
    )
        port map (
      I0 => \^o_phi2\,
      I1 => s_state(1),
      I2 => \^s_word_type_reg_reg_0\,
      I3 => s_state(2),
      O => s_phi2_reg_reg_1
    );
\FSM_onehot_s_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \^o_phi2\,
      I2 => s_state(0),
      I3 => \^o_t0\,
      I4 => s_busy_reg,
      I5 => s_state(2),
      O => \^s_word_type_reg_reg_0\
    );
\s_acc_out_sr[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => \^o_t0\,
      I1 => \^o_word_type\,
      I2 => \^o_phi2\,
      I3 => s_compute_done,
      O => s_t0_reg_reg_0(0)
    );
\s_acc_out_sr[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \s_acc_out_sr_reg[19]\(0),
      I1 => \^o_phi2\,
      I2 => \^o_word_type\,
      O => \s_acc_reg_reg[19]\(0)
    );
\s_bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[0]\,
      O => \s_bit_cnt[0]_i_1_n_0\
    );
\s_bit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[1]\,
      I1 => \s_bit_cnt_reg_n_0_[0]\,
      O => \s_bit_cnt[1]_i_1_n_0\
    );
\s_bit_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77778808"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[0]\,
      I1 => \s_bit_cnt_reg_n_0_[1]\,
      I2 => \s_bit_cnt_reg_n_0_[4]\,
      I3 => \s_bit_cnt_reg_n_0_[3]\,
      I4 => \s_bit_cnt_reg_n_0_[2]\,
      O => \s_bit_cnt[2]_i_1_n_0\
    );
\s_bit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[2]\,
      I1 => \s_bit_cnt_reg_n_0_[0]\,
      I2 => \s_bit_cnt_reg_n_0_[1]\,
      I3 => \s_bit_cnt_reg_n_0_[3]\,
      O => \s_bit_cnt[3]_i_1_n_0\
    );
\s_bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"68AAAAAA"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[4]\,
      I1 => \s_bit_cnt_reg_n_0_[3]\,
      I2 => \s_bit_cnt_reg_n_0_[2]\,
      I3 => \s_bit_cnt_reg_n_0_[0]\,
      I4 => \s_bit_cnt_reg_n_0_[1]\,
      O => \s_bit_cnt[4]_i_1_n_0\
    );
\s_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_bit_cnt(0),
      D => \s_bit_cnt[0]_i_1_n_0\,
      Q => \s_bit_cnt_reg_n_0_[0]\,
      R => i_rst
    );
\s_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_bit_cnt(0),
      D => \s_bit_cnt[1]_i_1_n_0\,
      Q => \s_bit_cnt_reg_n_0_[1]\,
      R => i_rst
    );
\s_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_bit_cnt(0),
      D => \s_bit_cnt[2]_i_1_n_0\,
      Q => \s_bit_cnt_reg_n_0_[2]\,
      R => i_rst
    );
\s_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_bit_cnt(0),
      D => \s_bit_cnt[3]_i_1_n_0\,
      Q => \s_bit_cnt_reg_n_0_[3]\,
      R => i_rst
    );
\s_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_bit_cnt(0),
      D => \s_bit_cnt[4]_i_1_n_0\,
      Q => \s_bit_cnt_reg_n_0_[4]\,
      R => i_rst
    );
s_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \^o_phi2\,
      I2 => s_state(0),
      I3 => \^o_t0\,
      I4 => \^s_word_type_reg_reg_0\,
      I5 => s_pdu_busy,
      O => s_word_type_reg_reg_2
    );
s_compute_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \^o_phi2\,
      I2 => \^o_t18\,
      O => s_acc_reg15_out
    );
\s_const_sr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(0),
      O => s_word_type_reg_reg_3(0)
    );
\s_const_sr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(10),
      O => s_word_type_reg_reg_3(10)
    );
\s_const_sr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(11),
      O => s_word_type_reg_reg_3(11)
    );
\s_const_sr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(12),
      O => s_word_type_reg_reg_3(12)
    );
\s_const_sr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(13),
      O => s_word_type_reg_reg_3(13)
    );
\s_const_sr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(14),
      O => s_word_type_reg_reg_3(14)
    );
\s_const_sr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \^o_t0\,
      I1 => \^o_phi2\,
      I2 => \^o_t19\,
      I3 => \^o_word_type\,
      O => s_t0_reg_reg_1(0)
    );
\s_const_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(1),
      O => s_word_type_reg_reg_3(1)
    );
\s_const_sr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(2),
      O => s_word_type_reg_reg_3(2)
    );
\s_const_sr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(3),
      O => s_word_type_reg_reg_3(3)
    );
\s_const_sr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(4),
      O => s_word_type_reg_reg_3(4)
    );
\s_const_sr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(5),
      O => s_word_type_reg_reg_3(5)
    );
\s_const_sr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(6),
      O => s_word_type_reg_reg_3(6)
    );
\s_const_sr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(7),
      O => s_word_type_reg_reg_3(7)
    );
\s_const_sr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(8),
      O => s_word_type_reg_reg_3(8)
    );
\s_const_sr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \s_const_sr_reg[14]\(9),
      O => s_word_type_reg_reg_3(9)
    );
\s_cw_sr[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C004"
    )
        port map (
      I0 => \^o_t0\,
      I1 => \^o_phi2\,
      I2 => \^o_t19\,
      I3 => \^o_word_type\,
      O => s_t0_reg_reg_2(0)
    );
\s_divisor_lat[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \^o_phi2\,
      I2 => \^o_t19\,
      O => s_word_type_reg_reg_1(0)
    );
\s_input_sr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_word_type\,
      I1 => \^o_phi2\,
      O => E(0)
    );
\s_io_in_sr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_t0\,
      I1 => Q(0),
      O => D(0)
    );
\s_micro_pc_rep_rep[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_frame_mark\,
      I1 => \s_micro_pc_reg_rep[8]\,
      O => \FSM_onehot_s_phase_cnt_reg[3]_0\
    );
\s_micro_pc_rep_rep[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_t19_reg,
      I1 => s_bit_cnt(0),
      I2 => s_word_sel_reg_n_0,
      I3 => \s_op_cnt_reg_n_0_[8]\,
      I4 => \s_micro_pc_rep_rep[8]_i_4_n_0\,
      O => \^s_frame_mark\
    );
\s_micro_pc_rep_rep[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[6]\,
      I1 => \s_op_cnt[8]_i_4_n_0\,
      I2 => \s_op_cnt_reg_n_0_[7]\,
      O => \s_micro_pc_rep_rep[8]_i_4_n_0\
    );
\s_mplier_lat[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^o_phi2\,
      I1 => \^o_t19\,
      I2 => \^o_word_type\,
      O => s_phi2_reg_reg_2(0)
    );
\s_op_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[0]\,
      O => \s_op_cnt__0\(0)
    );
\s_op_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[0]\,
      I1 => \s_op_cnt_reg_n_0_[1]\,
      O => \s_op_cnt__0\(1)
    );
\s_op_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[1]\,
      I1 => \s_op_cnt_reg_n_0_[0]\,
      I2 => \s_op_cnt_reg_n_0_[2]\,
      O => \s_op_cnt__0\(2)
    );
\s_op_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[2]\,
      I1 => \s_op_cnt_reg_n_0_[0]\,
      I2 => \s_op_cnt_reg_n_0_[1]\,
      I3 => \s_op_cnt_reg_n_0_[3]\,
      O => \s_op_cnt__0\(3)
    );
\s_op_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[3]\,
      I1 => \s_op_cnt_reg_n_0_[1]\,
      I2 => \s_op_cnt_reg_n_0_[0]\,
      I3 => \s_op_cnt_reg_n_0_[2]\,
      I4 => \s_op_cnt_reg_n_0_[4]\,
      O => \s_op_cnt__0\(4)
    );
\s_op_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[4]\,
      I1 => \s_op_cnt_reg_n_0_[2]\,
      I2 => \s_op_cnt_reg_n_0_[0]\,
      I3 => \s_op_cnt_reg_n_0_[1]\,
      I4 => \s_op_cnt_reg_n_0_[3]\,
      I5 => \s_op_cnt_reg_n_0_[5]\,
      O => \s_op_cnt__0\(5)
    );
\s_op_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_op_cnt[8]_i_4_n_0\,
      I1 => \s_op_cnt_reg_n_0_[6]\,
      O => \s_op_cnt__0\(6)
    );
\s_op_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[6]\,
      I1 => \s_op_cnt[8]_i_4_n_0\,
      I2 => \s_op_cnt_reg_n_0_[7]\,
      O => \s_op_cnt__0\(7)
    );
\s_op_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_bit_cnt(0),
      I1 => s_word_sel_reg_n_0,
      I2 => \s_op_cnt[8]_i_3_n_0\,
      I3 => \s_bit_cnt_reg_n_0_[4]\,
      I4 => \s_bit_cnt_reg_n_0_[3]\,
      I5 => \s_bit_cnt_reg_n_0_[2]\,
      O => s_op_cnt(0)
    );
\s_op_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[7]\,
      I1 => \s_op_cnt[8]_i_4_n_0\,
      I2 => \s_op_cnt_reg_n_0_[6]\,
      I3 => \s_op_cnt_reg_n_0_[8]\,
      O => \s_op_cnt__0\(8)
    );
\s_op_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[0]\,
      I1 => \s_bit_cnt_reg_n_0_[1]\,
      O => \s_op_cnt[8]_i_3_n_0\
    );
\s_op_cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \s_op_cnt_reg_n_0_[4]\,
      I1 => \s_op_cnt_reg_n_0_[2]\,
      I2 => \s_op_cnt_reg_n_0_[0]\,
      I3 => \s_op_cnt_reg_n_0_[1]\,
      I4 => \s_op_cnt_reg_n_0_[3]\,
      I5 => \s_op_cnt_reg_n_0_[5]\,
      O => \s_op_cnt[8]_i_4_n_0\
    );
\s_op_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(0),
      Q => \s_op_cnt_reg_n_0_[0]\,
      R => i_rst
    );
\s_op_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(1),
      Q => \s_op_cnt_reg_n_0_[1]\,
      R => i_rst
    );
\s_op_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(2),
      Q => \s_op_cnt_reg_n_0_[2]\,
      R => i_rst
    );
\s_op_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(3),
      Q => \s_op_cnt_reg_n_0_[3]\,
      R => i_rst
    );
\s_op_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(4),
      Q => \s_op_cnt_reg_n_0_[4]\,
      R => i_rst
    );
\s_op_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(5),
      Q => \s_op_cnt_reg_n_0_[5]\,
      R => i_rst
    );
\s_op_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(6),
      Q => \s_op_cnt_reg_n_0_[6]\,
      R => i_rst
    );
\s_op_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(7),
      Q => \s_op_cnt_reg_n_0_[7]\,
      R => i_rst
    );
\s_op_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_op_cnt(0),
      D => \s_op_cnt__0\(8),
      Q => \s_op_cnt_reg_n_0_[8]\,
      R => i_rst
    );
s_phi2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_bit_cnt(0),
      Q => \^o_phi2\,
      R => i_rst
    );
\s_product_sr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^o_phi2\,
      I1 => \^o_t0\,
      I2 => \^o_word_type\,
      O => s_phi2_reg_reg_3(0)
    );
s_t0_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[0]\,
      I1 => \s_bit_cnt_reg_n_0_[1]\,
      I2 => \s_bit_cnt_reg_n_0_[2]\,
      I3 => \s_bit_cnt_reg_n_0_[4]\,
      I4 => \s_bit_cnt_reg_n_0_[3]\,
      O => s_t0_reg_i_1_n_0
    );
s_t0_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_master,
      CE => \FSM_onehot_s_phase_cnt_reg_n_0_[2]\,
      D => s_t0_reg_i_1_n_0,
      Q => \^o_t0\,
      S => i_rst
    );
s_t18_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[0]\,
      I1 => \s_bit_cnt_reg_n_0_[1]\,
      I2 => \s_bit_cnt_reg_n_0_[2]\,
      I3 => \s_bit_cnt_reg_n_0_[3]\,
      I4 => \s_bit_cnt_reg_n_0_[4]\,
      O => s_t18_reg_i_1_n_0
    );
s_t18_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \FSM_onehot_s_phase_cnt_reg_n_0_[2]\,
      D => s_t18_reg_i_1_n_0,
      Q => \^o_t18\,
      R => i_rst
    );
s_t19_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \s_bit_cnt_reg_n_0_[2]\,
      I1 => \s_bit_cnt_reg_n_0_[3]\,
      I2 => \s_bit_cnt_reg_n_0_[4]\,
      I3 => \s_bit_cnt_reg_n_0_[1]\,
      I4 => \s_bit_cnt_reg_n_0_[0]\,
      O => s_t19_reg
    );
s_t19_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \FSM_onehot_s_phase_cnt_reg_n_0_[2]\,
      D => s_t19_reg,
      Q => \^o_t19\,
      R => i_rst
    );
\s_tmp_out_sr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \s_tmp_out_sr_reg[19]\(0),
      I1 => \^o_phi2\,
      I2 => \^o_word_type\,
      O => \s_tmp_reg_reg[19]\(0)
    );
\s_tmp_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^o_t18\,
      I1 => \^o_phi2\,
      I2 => \^o_word_type\,
      I3 => s_tmp_we_lat,
      O => s_t18_reg_reg_0(0)
    );
s_word_sel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000200"
    )
        port map (
      I0 => s_bit_cnt(0),
      I1 => \s_bit_cnt_reg_n_0_[2]\,
      I2 => \s_bit_cnt_reg_n_0_[3]\,
      I3 => \s_bit_cnt_reg_n_0_[4]\,
      I4 => \s_op_cnt[8]_i_3_n_0\,
      I5 => s_word_sel_reg_n_0,
      O => s_word_sel_i_1_n_0
    );
s_word_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => '1',
      D => s_word_sel_i_1_n_0,
      Q => s_word_sel_reg_n_0,
      R => i_rst
    );
s_word_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => \FSM_onehot_s_phase_cnt_reg_n_0_[2]\,
      D => s_word_sel_reg_n_0,
      Q => \^o_word_type\,
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_cadc_top is
  port (
    o_word_type : out STD_LOGIC;
    o_out_mach : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_alt : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_airspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_vspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_wing : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_flap : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_glove : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_phi2 : out STD_LOGIC;
    o_t19 : out STD_LOGIC;
    o_bit_status : out STD_LOGIC;
    i_rst : in STD_LOGIC;
    s_mcand_sr : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_clk_master : in STD_LOGIC;
    i_channel_active : in STD_LOGIC;
    \s_cw_bit_cnt_reg[4]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_sensor_digital : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_analog : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_ps : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_tat : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_qc : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_cadc_top : entity is "cadc_top";
end cadc_system_cadc_top_0_0_cadc_top;

architecture STRUCTURE of cadc_system_cadc_top_0_0_cadc_top is
  signal \^o_phi2\ : STD_LOGIC;
  signal \^o_word_type\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal p_19_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal p_1_in_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_acc_bit : STD_LOGIC;
  signal s_acc_in_bit : STD_LOGIC;
  signal s_acc_reg15_out : STD_LOGIC;
  signal s_compute_done : STD_LOGIC;
  signal s_const_sr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_cw_bit : STD_LOGIC;
  signal s_cw_sr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_dividend_lat : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_flag_c : STD_LOGIC;
  signal s_flag_n : STD_LOGIC;
  signal s_flag_z : STD_LOGIC;
  signal s_frame_mark : STD_LOGIC;
  signal s_input_sr0 : STD_LOGIC;
  signal s_io_data_out_par : STD_LOGIC_VECTOR ( 19 to 19 );
  signal \s_io_in_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_io_in_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal s_io_out_sr : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \s_io_out_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal s_latched_data : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s_mcand_lat : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_pdu_busy : STD_LOGIC;
  signal s_product_sr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_reg_bit : STD_LOGIC;
  signal s_sel_out1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_t0 : STD_LOGIC;
  signal s_t18 : STD_LOGIC;
  signal s_tmp_bit : STD_LOGIC;
  signal s_tmp_out_sr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_tmp_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_tmp_we_lat : STD_LOGIC;
  signal u_pdu_n_23 : STD_LOGIC;
  signal u_pdu_n_24 : STD_LOGIC;
  signal u_pmu_n_1 : STD_LOGIC;
  signal u_sequencer_n_0 : STD_LOGIC;
  signal u_sequencer_n_1 : STD_LOGIC;
  signal u_sequencer_n_10 : STD_LOGIC;
  signal u_sequencer_n_11 : STD_LOGIC;
  signal u_sequencer_n_12 : STD_LOGIC;
  signal u_sequencer_n_13 : STD_LOGIC;
  signal u_sequencer_n_14 : STD_LOGIC;
  signal u_sequencer_n_15 : STD_LOGIC;
  signal u_sequencer_n_16 : STD_LOGIC;
  signal u_sequencer_n_17 : STD_LOGIC;
  signal u_sequencer_n_18 : STD_LOGIC;
  signal u_sequencer_n_19 : STD_LOGIC;
  signal u_sequencer_n_2 : STD_LOGIC;
  signal u_sequencer_n_20 : STD_LOGIC;
  signal u_sequencer_n_21 : STD_LOGIC;
  signal u_sequencer_n_22 : STD_LOGIC;
  signal u_sequencer_n_23 : STD_LOGIC;
  signal u_sequencer_n_24 : STD_LOGIC;
  signal u_sequencer_n_25 : STD_LOGIC;
  signal u_sequencer_n_26 : STD_LOGIC;
  signal u_sequencer_n_27 : STD_LOGIC;
  signal u_sequencer_n_28 : STD_LOGIC;
  signal u_sequencer_n_3 : STD_LOGIC;
  signal u_sequencer_n_4 : STD_LOGIC;
  signal u_sequencer_n_49 : STD_LOGIC;
  signal u_sequencer_n_50 : STD_LOGIC;
  signal u_sequencer_n_51 : STD_LOGIC;
  signal u_sequencer_n_6 : STD_LOGIC;
  signal u_sequencer_n_7 : STD_LOGIC;
  signal u_sequencer_n_8 : STD_LOGIC;
  signal u_sequencer_n_9 : STD_LOGIC;
  signal u_sl_n_0 : STD_LOGIC;
  signal u_slf_n_8 : STD_LOGIC;
  signal u_timing_n_0 : STD_LOGIC;
  signal u_timing_n_10 : STD_LOGIC;
  signal u_timing_n_11 : STD_LOGIC;
  signal u_timing_n_18 : STD_LOGIC;
  signal u_timing_n_2 : STD_LOGIC;
  signal u_timing_n_21 : STD_LOGIC;
  signal u_timing_n_22 : STD_LOGIC;
  signal u_timing_n_23 : STD_LOGIC;
  signal u_timing_n_24 : STD_LOGIC;
  signal u_timing_n_25 : STD_LOGIC;
  signal u_timing_n_26 : STD_LOGIC;
  signal u_timing_n_27 : STD_LOGIC;
  signal u_timing_n_28 : STD_LOGIC;
  signal u_timing_n_29 : STD_LOGIC;
  signal u_timing_n_30 : STD_LOGIC;
  signal u_timing_n_31 : STD_LOGIC;
  signal u_timing_n_32 : STD_LOGIC;
  signal u_timing_n_33 : STD_LOGIC;
  signal u_timing_n_34 : STD_LOGIC;
  signal u_timing_n_35 : STD_LOGIC;
  signal u_timing_n_4 : STD_LOGIC;
  signal u_timing_n_5 : STD_LOGIC;
begin
  o_phi2 <= \^o_phi2\;
  o_word_type <= \^o_word_type\;
\s_io_in_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(0),
      Q => \s_io_in_sr_reg_n_0_[0]\,
      R => i_rst
    );
\s_io_in_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(10),
      Q => \s_io_in_sr_reg_n_0_[10]\,
      R => i_rst
    );
\s_io_in_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(11),
      Q => \s_io_in_sr_reg_n_0_[11]\,
      R => i_rst
    );
\s_io_in_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(12),
      Q => \s_io_in_sr_reg_n_0_[12]\,
      R => i_rst
    );
\s_io_in_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(13),
      Q => \s_io_in_sr_reg_n_0_[13]\,
      R => i_rst
    );
\s_io_in_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(14),
      Q => \s_io_in_sr_reg_n_0_[14]\,
      R => i_rst
    );
\s_io_in_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(15),
      Q => \s_io_in_sr_reg_n_0_[15]\,
      R => i_rst
    );
\s_io_in_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(16),
      Q => \s_io_in_sr_reg_n_0_[16]\,
      R => i_rst
    );
\s_io_in_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(17),
      Q => \s_io_in_sr_reg_n_0_[17]\,
      R => i_rst
    );
\s_io_in_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(18),
      Q => \s_io_in_sr_reg_n_0_[18]\,
      R => i_rst
    );
\s_io_in_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(19),
      Q => \s_io_in_sr_reg_n_0_[19]\,
      R => i_rst
    );
\s_io_in_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(1),
      Q => p_0_in(0),
      R => i_rst
    );
\s_io_in_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(2),
      Q => \s_io_in_sr_reg_n_0_[2]\,
      R => i_rst
    );
\s_io_in_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(3),
      Q => \s_io_in_sr_reg_n_0_[3]\,
      R => i_rst
    );
\s_io_in_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(4),
      Q => \s_io_in_sr_reg_n_0_[4]\,
      R => i_rst
    );
\s_io_in_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(5),
      Q => \s_io_in_sr_reg_n_0_[5]\,
      R => i_rst
    );
\s_io_in_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(6),
      Q => \s_io_in_sr_reg_n_0_[6]\,
      R => i_rst
    );
\s_io_in_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(7),
      Q => \s_io_in_sr_reg_n_0_[7]\,
      R => i_rst
    );
\s_io_in_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(8),
      Q => \s_io_in_sr_reg_n_0_[8]\,
      R => i_rst
    );
\s_io_in_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => p_1_in(9),
      Q => \s_io_in_sr_reg_n_0_[9]\,
      R => i_rst
    );
\s_io_out_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(0),
      Q => \s_io_out_sr_reg_n_0_[0]\,
      R => i_rst
    );
\s_io_out_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(10),
      Q => s_io_out_sr(9),
      R => i_rst
    );
\s_io_out_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(11),
      Q => s_io_out_sr(10),
      R => i_rst
    );
\s_io_out_sr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(12),
      Q => s_io_out_sr(11),
      R => i_rst
    );
\s_io_out_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(13),
      Q => s_io_out_sr(12),
      R => i_rst
    );
\s_io_out_sr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(14),
      Q => s_io_out_sr(13),
      R => i_rst
    );
\s_io_out_sr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(15),
      Q => s_io_out_sr(14),
      R => i_rst
    );
\s_io_out_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(16),
      Q => s_io_out_sr(15),
      R => i_rst
    );
\s_io_out_sr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(17),
      Q => s_io_out_sr(16),
      R => i_rst
    );
\s_io_out_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(18),
      Q => s_io_out_sr(17),
      R => i_rst
    );
\s_io_out_sr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_acc_bit,
      Q => s_io_out_sr(18),
      R => i_rst
    );
\s_io_out_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(1),
      Q => s_io_out_sr(0),
      R => i_rst
    );
\s_io_out_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(2),
      Q => s_io_out_sr(1),
      R => i_rst
    );
\s_io_out_sr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(3),
      Q => s_io_out_sr(2),
      R => i_rst
    );
\s_io_out_sr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(4),
      Q => s_io_out_sr(3),
      R => i_rst
    );
\s_io_out_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(5),
      Q => s_io_out_sr(4),
      R => i_rst
    );
\s_io_out_sr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(6),
      Q => s_io_out_sr(5),
      R => i_rst
    );
\s_io_out_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(7),
      Q => s_io_out_sr(6),
      R => i_rst
    );
\s_io_out_sr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(8),
      Q => s_io_out_sr(7),
      R => i_rst
    );
\s_io_out_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_master,
      CE => s_mcand_sr(0),
      D => s_io_out_sr(9),
      Q => s_io_out_sr(8),
      R => i_rst
    );
u_io: entity work.cadc_system_cadc_top_0_0_io_bridge
     port map (
      D(18 downto 0) => p_1_in(18 downto 0),
      E(0) => u_sequencer_n_24,
      Q(0) => s_io_data_out_par(19),
      i_channel_active => i_channel_active,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      o_bit_status => o_bit_status,
      o_out_airspd(19 downto 0) => o_out_airspd(19 downto 0),
      o_out_alt(19 downto 0) => o_out_alt(19 downto 0),
      o_out_flap(19 downto 0) => o_out_flap(19 downto 0),
      o_out_glove(19 downto 0) => o_out_glove(19 downto 0),
      o_out_mach(19 downto 0) => o_out_mach(19 downto 0),
      o_out_vspd(19 downto 0) => o_out_vspd(19 downto 0),
      o_out_wing(19 downto 0) => o_out_wing(19 downto 0),
      o_t0 => s_t0,
      \s_io_in_sr_reg[18]\(18) => \s_io_in_sr_reg_n_0_[19]\,
      \s_io_in_sr_reg[18]\(17) => \s_io_in_sr_reg_n_0_[18]\,
      \s_io_in_sr_reg[18]\(16) => \s_io_in_sr_reg_n_0_[17]\,
      \s_io_in_sr_reg[18]\(15) => \s_io_in_sr_reg_n_0_[16]\,
      \s_io_in_sr_reg[18]\(14) => \s_io_in_sr_reg_n_0_[15]\,
      \s_io_in_sr_reg[18]\(13) => \s_io_in_sr_reg_n_0_[14]\,
      \s_io_in_sr_reg[18]\(12) => \s_io_in_sr_reg_n_0_[13]\,
      \s_io_in_sr_reg[18]\(11) => \s_io_in_sr_reg_n_0_[12]\,
      \s_io_in_sr_reg[18]\(10) => \s_io_in_sr_reg_n_0_[11]\,
      \s_io_in_sr_reg[18]\(9) => \s_io_in_sr_reg_n_0_[10]\,
      \s_io_in_sr_reg[18]\(8) => \s_io_in_sr_reg_n_0_[9]\,
      \s_io_in_sr_reg[18]\(7) => \s_io_in_sr_reg_n_0_[8]\,
      \s_io_in_sr_reg[18]\(6) => \s_io_in_sr_reg_n_0_[7]\,
      \s_io_in_sr_reg[18]\(5) => \s_io_in_sr_reg_n_0_[6]\,
      \s_io_in_sr_reg[18]\(4) => \s_io_in_sr_reg_n_0_[5]\,
      \s_io_in_sr_reg[18]\(3) => \s_io_in_sr_reg_n_0_[4]\,
      \s_io_in_sr_reg[18]\(2) => \s_io_in_sr_reg_n_0_[3]\,
      \s_io_in_sr_reg[18]\(1) => \s_io_in_sr_reg_n_0_[2]\,
      \s_io_in_sr_reg[18]\(0) => p_0_in(0),
      \s_latched_data_reg[19]_0\(19 downto 0) => s_latched_data(19 downto 0),
      \s_reg_airspd_reg[19]_0\(0) => u_sequencer_n_27,
      \s_reg_alt_reg[19]_0\(0) => u_sequencer_n_49,
      s_reg_bit => s_reg_bit,
      s_reg_bit_reg_0 => u_sequencer_n_1,
      \s_reg_flap_reg[19]_0\(19 downto 1) => s_io_out_sr(18 downto 0),
      \s_reg_flap_reg[19]_0\(0) => \s_io_out_sr_reg_n_0_[0]\,
      \s_reg_flap_reg[19]_1\(0) => u_sequencer_n_51,
      \s_reg_glove_reg[19]_0\(0) => u_sequencer_n_28,
      \s_reg_mach_reg[19]_0\(0) => u_sequencer_n_25,
      \s_reg_vspd_reg[19]_0\(0) => u_sequencer_n_50,
      \s_reg_wing_reg[19]_0\(0) => u_sequencer_n_26
    );
u_pdu: entity work.cadc_system_cadc_top_0_0_pdu
     port map (
      D(18 downto 0) => p_0_in_0(18 downto 0),
      E(0) => s_dividend_lat(0),
      \FSM_onehot_s_state_reg[0]_0\ => u_timing_n_4,
      \FSM_onehot_s_state_reg[1]_0\ => u_timing_n_2,
      \FSM_onehot_s_state_reg[2]_0\ => u_timing_n_5,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      o_phi2 => \^o_phi2\,
      s_busy_reg_0 => u_pdu_n_24,
      s_busy_reg_1 => u_timing_n_18,
      \s_divisor_lat_reg[1]_0\ => u_pdu_n_23,
      \s_divisor_sr_reg[19]_0\(0) => s_tmp_bit,
      s_mcand_sr(0) => s_mcand_sr(0),
      \s_micro_pc_rep_rep[1]_i_4\ => u_sequencer_n_0,
      s_pdu_busy => s_pdu_busy,
      s_state(2 downto 0) => s_state(2 downto 0)
    );
u_pmu: entity work.cadc_system_cadc_top_0_0_pmu
     port map (
      A(19) => s_tmp_bit,
      A(18 downto 0) => p_0_in_0(18 downto 0),
      D(2) => s_acc_bit,
      D(1 downto 0) => s_io_out_sr(18 downto 17),
      E(0) => s_mcand_lat(0),
      Q(1) => p_1_in_1(0),
      Q(0) => u_pmu_n_1,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      \main_proc.v_product_201_0\(15 downto 0) => s_io_out_sr(16 downto 1),
      o_word_type => \^o_word_type\,
      s_mcand_sr(0) => s_mcand_sr(0),
      \s_product_sr_reg[19]_0\(0) => s_product_sr(0)
    );
u_sequencer: entity work.cadc_system_cadc_top_0_0_control_rom_sequencer
     port map (
      D(14) => u_timing_n_21,
      D(13) => u_timing_n_22,
      D(12) => u_timing_n_23,
      D(11) => u_timing_n_24,
      D(10) => u_timing_n_25,
      D(9) => u_timing_n_26,
      D(8) => u_timing_n_27,
      D(7) => u_timing_n_28,
      D(6) => u_timing_n_29,
      D(5) => u_timing_n_30,
      D(4) => u_timing_n_31,
      D(3) => u_timing_n_32,
      D(2) => u_timing_n_33,
      D(1) => u_timing_n_34,
      D(0) => u_timing_n_35,
      E(0) => E(0),
      Q(0) => \s_io_out_sr_reg_n_0_[0]\,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      i_sensor_analog(19 downto 0) => i_sensor_analog(19 downto 0),
      i_sensor_digital(19 downto 0) => i_sensor_digital(19 downto 0),
      \i_sensor_digital[19]\(19 downto 0) => s_latched_data(19 downto 0),
      i_sensor_ps(19 downto 0) => i_sensor_ps(19 downto 0),
      i_sensor_qc(19 downto 0) => i_sensor_qc(19 downto 0),
      i_sensor_tat(19 downto 0) => i_sensor_tat(19 downto 0),
      o_t0 => s_t0,
      o_word_type => \^o_word_type\,
      \s_const_sr_reg[15]_0\(15) => u_sequencer_n_8,
      \s_const_sr_reg[15]_0\(14) => u_sequencer_n_9,
      \s_const_sr_reg[15]_0\(13) => u_sequencer_n_10,
      \s_const_sr_reg[15]_0\(12) => u_sequencer_n_11,
      \s_const_sr_reg[15]_0\(11) => u_sequencer_n_12,
      \s_const_sr_reg[15]_0\(10) => u_sequencer_n_13,
      \s_const_sr_reg[15]_0\(9) => u_sequencer_n_14,
      \s_const_sr_reg[15]_0\(8) => u_sequencer_n_15,
      \s_const_sr_reg[15]_0\(7) => u_sequencer_n_16,
      \s_const_sr_reg[15]_0\(6) => u_sequencer_n_17,
      \s_const_sr_reg[15]_0\(5) => u_sequencer_n_18,
      \s_const_sr_reg[15]_0\(4) => u_sequencer_n_19,
      \s_const_sr_reg[15]_0\(3) => u_sequencer_n_20,
      \s_const_sr_reg[15]_0\(2) => u_sequencer_n_21,
      \s_const_sr_reg[15]_0\(1) => u_sequencer_n_22,
      \s_const_sr_reg[15]_0\(0) => u_sequencer_n_23,
      \s_const_sr_reg[17]_0\(0) => s_const_sr(0),
      s_cw_bit => s_cw_bit,
      \s_cw_sr_reg[1]_0\(1) => u_sequencer_n_2,
      \s_cw_sr_reg[1]_0\(0) => u_sequencer_n_3,
      \s_cw_sr_reg[43]_0\(0) => s_cw_sr(0),
      s_flag_c => s_flag_c,
      s_flag_n => s_flag_n,
      s_flag_z => s_flag_z,
      s_frame_mark => s_frame_mark,
      \s_io_out_sr_reg[0]\ => u_sequencer_n_1,
      \s_micro_pc_reg_rep[8]_0\ => u_sequencer_n_4,
      \s_micro_pc_reg_rep[8]_1\ => u_timing_n_0,
      \s_micro_pc_reg_rep_rep[4]_0\ => u_pdu_n_24,
      \s_micro_pc_reg_rep_rep[8]_0\ => u_sequencer_n_0,
      \s_micro_pc_reg_rep_rep[8]_1\ => u_sequencer_n_6,
      \s_micro_pc_reg_rep_rep[8]_2\ => u_sequencer_n_7,
      \s_micro_pc_reg_rep_rep[9]_0\(0) => u_sequencer_n_24,
      \s_micro_pc_reg_rep_rep[9]_1\(0) => u_sequencer_n_25,
      \s_micro_pc_reg_rep_rep[9]_2\(0) => u_sequencer_n_26,
      \s_micro_pc_reg_rep_rep[9]_3\(0) => u_sequencer_n_27,
      \s_micro_pc_reg_rep_rep[9]_4\(0) => u_sequencer_n_28,
      \s_micro_pc_reg_rep_rep[9]_5\(0) => u_sequencer_n_49,
      \s_micro_pc_reg_rep_rep[9]_6\(0) => u_sequencer_n_50,
      \s_micro_pc_reg_rep_rep[9]_7\(0) => u_sequencer_n_51,
      s_pdu_busy => s_pdu_busy,
      s_reg_bit => s_reg_bit,
      s_sel_out1(1) => s_sel_out1(2),
      s_sel_out1(0) => s_sel_out1(0),
      \s_sel_out1_reg[0]\ => u_sl_n_0
    );
u_sl: entity work.cadc_system_cadc_top_0_0_sl
     port map (
      D(0) => s_acc_in_bit,
      Q(1) => p_1_in_1(0),
      Q(0) => u_pmu_n_1,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      o_phi2 => \^o_phi2\,
      o_t0 => s_t0,
      o_word_type => \^o_word_type\,
      \s_input_sr_reg[19]\(1) => u_sequencer_n_22,
      \s_input_sr_reg[19]\(0) => u_sequencer_n_23,
      \s_input_sr_reg[19]_0\(1) => p_0_in(0),
      \s_input_sr_reg[19]_0\(0) => \s_io_in_sr_reg_n_0_[0]\,
      s_phi2_reg_reg => u_sl_n_0,
      s_sel_out1(1) => s_sel_out1(2),
      s_sel_out1(0) => s_sel_out1(0),
      \s_sel_out1_reg[0]_0\ => u_sequencer_n_6,
      \s_sel_out1_reg[2]_0\ => u_sequencer_n_7
    );
u_slf: entity work.cadc_system_cadc_top_0_0_slf
     port map (
      A(0) => s_tmp_bit,
      D(0) => s_acc_bit,
      E(0) => s_input_sr0,
      Q(0) => p_19_in,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      o_phi2 => \^o_phi2\,
      o_t0 => s_t0,
      o_t18 => s_t18,
      o_word_type => \^o_word_type\,
      \s_acc_out_sr_reg[19]_0\(0) => s_tmp_out_sr(0),
      \s_acc_out_sr_reg[19]_1\(0) => u_timing_n_10,
      s_acc_reg15_out => s_acc_reg15_out,
      s_compute_done => s_compute_done,
      s_cw_bit => s_cw_bit,
      \s_cw_bit_cnt_reg[4]_0\ => \s_cw_bit_cnt_reg[4]\,
      \s_cw_sr_reg[4]_0\(1) => u_sequencer_n_2,
      \s_cw_sr_reg[4]_0\(0) => u_sequencer_n_3,
      s_flag_c => s_flag_c,
      s_flag_n => s_flag_n,
      s_flag_z => s_flag_z,
      \s_input_lat_reg[19]_0\(0) => E(0),
      \s_input_sr_reg[19]_0\(0) => s_acc_in_bit,
      \s_tmp_out_sr_reg[19]_0\(0) => u_timing_n_11,
      \s_tmp_reg_reg[19]_0\(0) => u_slf_n_8,
      \s_tmp_reg_reg[19]_1\(0) => s_tmp_reg(0),
      s_tmp_we_lat => s_tmp_we_lat
    );
u_timing: entity work.cadc_system_cadc_top_0_0_timing_generator
     port map (
      D(0) => p_1_in(19),
      E(0) => s_input_sr0,
      \FSM_onehot_s_phase_cnt_reg[3]_0\ => u_timing_n_0,
      Q(0) => s_io_data_out_par(19),
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      o_phi2 => \^o_phi2\,
      o_t0 => s_t0,
      o_t18 => s_t18,
      o_t19 => o_t19,
      o_word_type => \^o_word_type\,
      \s_acc_out_sr_reg[19]\(0) => p_19_in,
      s_acc_reg15_out => s_acc_reg15_out,
      \s_acc_reg_reg[19]\(0) => u_timing_n_10,
      s_busy_reg => u_pdu_n_23,
      s_compute_done => s_compute_done,
      \s_const_sr_reg[14]\(14) => u_sequencer_n_8,
      \s_const_sr_reg[14]\(13) => u_sequencer_n_9,
      \s_const_sr_reg[14]\(12) => u_sequencer_n_10,
      \s_const_sr_reg[14]\(11) => u_sequencer_n_11,
      \s_const_sr_reg[14]\(10) => u_sequencer_n_12,
      \s_const_sr_reg[14]\(9) => u_sequencer_n_13,
      \s_const_sr_reg[14]\(8) => u_sequencer_n_14,
      \s_const_sr_reg[14]\(7) => u_sequencer_n_15,
      \s_const_sr_reg[14]\(6) => u_sequencer_n_16,
      \s_const_sr_reg[14]\(5) => u_sequencer_n_17,
      \s_const_sr_reg[14]\(4) => u_sequencer_n_18,
      \s_const_sr_reg[14]\(3) => u_sequencer_n_19,
      \s_const_sr_reg[14]\(2) => u_sequencer_n_20,
      \s_const_sr_reg[14]\(1) => u_sequencer_n_21,
      \s_const_sr_reg[14]\(0) => u_sequencer_n_22,
      s_frame_mark => s_frame_mark,
      \s_micro_pc_reg_rep[8]\ => u_sequencer_n_4,
      s_pdu_busy => s_pdu_busy,
      s_phi2_reg_reg_0 => u_timing_n_2,
      s_phi2_reg_reg_1 => u_timing_n_5,
      s_phi2_reg_reg_2(0) => s_mcand_lat(0),
      s_phi2_reg_reg_3(0) => s_product_sr(0),
      s_state(2 downto 0) => s_state(2 downto 0),
      s_t0_reg_reg_0(0) => s_tmp_out_sr(0),
      s_t0_reg_reg_1(0) => s_const_sr(0),
      s_t0_reg_reg_2(0) => s_cw_sr(0),
      s_t18_reg_reg_0(0) => s_tmp_reg(0),
      \s_tmp_out_sr_reg[19]\(0) => u_slf_n_8,
      \s_tmp_reg_reg[19]\(0) => u_timing_n_11,
      s_tmp_we_lat => s_tmp_we_lat,
      s_word_type_reg_reg_0 => u_timing_n_4,
      s_word_type_reg_reg_1(0) => s_dividend_lat(0),
      s_word_type_reg_reg_2 => u_timing_n_18,
      s_word_type_reg_reg_3(14) => u_timing_n_21,
      s_word_type_reg_reg_3(13) => u_timing_n_22,
      s_word_type_reg_reg_3(12) => u_timing_n_23,
      s_word_type_reg_reg_3(11) => u_timing_n_24,
      s_word_type_reg_reg_3(10) => u_timing_n_25,
      s_word_type_reg_reg_3(9) => u_timing_n_26,
      s_word_type_reg_reg_3(8) => u_timing_n_27,
      s_word_type_reg_reg_3(7) => u_timing_n_28,
      s_word_type_reg_reg_3(6) => u_timing_n_29,
      s_word_type_reg_reg_3(5) => u_timing_n_30,
      s_word_type_reg_reg_3(4) => u_timing_n_31,
      s_word_type_reg_reg_3(3) => u_timing_n_32,
      s_word_type_reg_reg_3(2) => u_timing_n_33,
      s_word_type_reg_reg_3(1) => u_timing_n_34,
      s_word_type_reg_reg_3(0) => u_timing_n_35
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0_cadc_wrapper is
  port (
    o_out_mach : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_alt : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_airspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_vspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_wing : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_flap : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_glove : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_bit_status : out STD_LOGIC;
    i_channel_active : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_clk_master : in STD_LOGIC;
    i_sensor_digital : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_analog : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_ps : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_tat : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_qc : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_cadc_top_0_0_cadc_wrapper : entity is "cadc_wrapper";
end cadc_system_cadc_top_0_0_cadc_wrapper;

architecture STRUCTURE of cadc_system_cadc_top_0_0_cadc_wrapper is
  signal \main_proc.v_product_201_i_1_n_0\ : STD_LOGIC;
  signal \s_cw_bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal s_phi2 : STD_LOGIC;
  signal s_t19 : STD_LOGIC;
  signal s_word_type : STD_LOGIC;
  signal \u_sequencer/s_micro_pc0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_cw_bit_cnt[4]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \s_micro_pc_rep_rep[9]_i_1\ : label is "soft_lutpair177";
begin
\main_proc.v_product_201_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_phi2,
      I1 => s_word_type,
      O => \main_proc.v_product_201_i_1_n_0\
    );
\s_cw_bit_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_phi2,
      I1 => s_word_type,
      O => \s_cw_bit_cnt[4]_i_1_n_0\
    );
\s_micro_pc_rep_rep[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_phi2,
      I1 => s_word_type,
      I2 => s_t19,
      O => \u_sequencer/s_micro_pc0\
    );
u_cadc_top: entity work.cadc_system_cadc_top_0_0_cadc_top
     port map (
      E(0) => \u_sequencer/s_micro_pc0\,
      i_channel_active => i_channel_active,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      i_sensor_analog(19 downto 0) => i_sensor_analog(19 downto 0),
      i_sensor_digital(19 downto 0) => i_sensor_digital(19 downto 0),
      i_sensor_ps(19 downto 0) => i_sensor_ps(19 downto 0),
      i_sensor_qc(19 downto 0) => i_sensor_qc(19 downto 0),
      i_sensor_tat(19 downto 0) => i_sensor_tat(19 downto 0),
      o_bit_status => o_bit_status,
      o_out_airspd(19 downto 0) => o_out_airspd(19 downto 0),
      o_out_alt(19 downto 0) => o_out_alt(19 downto 0),
      o_out_flap(19 downto 0) => o_out_flap(19 downto 0),
      o_out_glove(19 downto 0) => o_out_glove(19 downto 0),
      o_out_mach(19 downto 0) => o_out_mach(19 downto 0),
      o_out_vspd(19 downto 0) => o_out_vspd(19 downto 0),
      o_out_wing(19 downto 0) => o_out_wing(19 downto 0),
      o_phi2 => s_phi2,
      o_t19 => s_t19,
      o_word_type => s_word_type,
      \s_cw_bit_cnt_reg[4]\ => \s_cw_bit_cnt[4]_i_1_n_0\,
      s_mcand_sr(0) => \main_proc.v_product_201_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_cadc_top_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cadc_system_cadc_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cadc_system_cadc_top_0_0 : entity is "cadc_system_cadc_top_0_0,cadc_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cadc_system_cadc_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cadc_system_cadc_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of cadc_system_cadc_top_0_0 : entity is "cadc_wrapper,Vivado 2025.2";
end cadc_system_cadc_top_0_0;

architecture STRUCTURE of cadc_system_cadc_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of i_rst : signal is "slave i_rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  o_fail_detect <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.cadc_system_cadc_top_0_0_cadc_wrapper
     port map (
      i_channel_active => i_channel_active,
      i_clk_master => i_clk_master,
      i_rst => i_rst,
      i_sensor_analog(19 downto 0) => i_sensor_analog(19 downto 0),
      i_sensor_digital(19 downto 0) => i_sensor_digital(19 downto 0),
      i_sensor_ps(19 downto 0) => i_sensor_ps(19 downto 0),
      i_sensor_qc(19 downto 0) => i_sensor_qc(19 downto 0),
      i_sensor_tat(19 downto 0) => i_sensor_tat(19 downto 0),
      o_bit_status => o_bit_status,
      o_out_airspd(19 downto 0) => o_out_airspd(19 downto 0),
      o_out_alt(19 downto 0) => o_out_alt(19 downto 0),
      o_out_flap(19 downto 0) => o_out_flap(19 downto 0),
      o_out_glove(19 downto 0) => o_out_glove(19 downto 0),
      o_out_mach(19 downto 0) => o_out_mach(19 downto 0),
      o_out_vspd(19 downto 0) => o_out_vspd(19 downto 0),
      o_out_wing(19 downto 0) => o_out_wing(19 downto 0)
    );
end STRUCTURE;
