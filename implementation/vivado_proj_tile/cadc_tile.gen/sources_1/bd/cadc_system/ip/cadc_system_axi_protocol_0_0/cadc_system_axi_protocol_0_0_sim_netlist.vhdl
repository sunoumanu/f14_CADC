-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sun Apr 12 12:13:18 2026
-- Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_axi_protocol_0_0/cadc_system_axi_protocol_0_0_sim_netlist.vhdl
-- Design      : cadc_system_axi_protocol_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_axi_protocol_0_0_axi_protocol is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_axi_protocol_0_0_axi_protocol : entity is "axi_protocol";
end cadc_system_axi_protocol_0_0_axi_protocol;

architecture STRUCTURE of cadc_system_axi_protocol_0_0_axi_protocol is
  signal \FSM_onehot_read_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_read_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_read_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_read_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_read_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_read_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_read_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_read_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_read_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_1_n_0\ : STD_LOGIC;
  signal axi_awaddr0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awprot[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_bready_i_1_n_0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal s_address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_address[31]_i_1_n_0\ : STD_LOGIC;
  signal s_axil_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axil_data0 : STD_LOGIC;
  signal \s_axil_data[31]_i_1_n_0\ : STD_LOGIC;
  signal s_axil_idata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axil_idata0 : STD_LOGIC;
  signal s_axil_valid_i_1_n_0 : STD_LOGIC;
  signal s_axil_valid_i_2_n_0 : STD_LOGIC;
  signal s_axil_valid_reg_n_0 : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_buf_cnt0 : STD_LOGIC;
  signal \s_buf_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_buf_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_buf_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_byte_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_byte_pos[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_byte_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_byte_pos[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_byte_pos[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_byte_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_byte_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_byte_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal s_command0 : STD_LOGIC;
  signal \s_command[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_command[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_command_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_command_reg_n_0_[7]\ : STD_LOGIC;
  signal s_current_state0 : STD_LOGIC;
  signal \s_current_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_length0 : STD_LOGIC;
  signal \s_length_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_length_reg_n_0_[7]\ : STD_LOGIC;
  signal s_m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal s_m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal \s_num_bytes[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_num_bytes[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_num_bytes_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_op_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_op_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_op_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_op_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_op_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_op_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_op_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_op_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_op_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_op_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_op_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_op_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_opptr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \s_opptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_opptr[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_opptr[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_opptr[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_opptr[7]_i_4_n_0\ : STD_LOGIC;
  signal s_opptr_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_opptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_opptr_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_read_buffer[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \s_read_buffer_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_read_buffer_temp : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s_read_buffer_temp0 : STD_LOGIC;
  signal \s_read_buffer_temp[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[31]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_read_buffer_temp_reg_n_0_[9]\ : STD_LOGIC;
  signal s_s_tready : STD_LOGIC;
  signal s_s_tready_i_2_n_0 : STD_LOGIC;
  signal s_s_tready_i_3_n_0 : STD_LOGIC;
  signal s_s_tready_i_4_n_0 : STD_LOGIC;
  signal s_s_tready_i_5_n_0 : STD_LOGIC;
  signal s_s_tready_i_6_n_0 : STD_LOGIC;
  signal s_s_tready_i_7_n_0 : STD_LOGIC;
  signal s_s_tready_i_8_n_0 : STD_LOGIC;
  signal s_s_tready_i_9_n_0 : STD_LOGIC;
  signal s_start_i_1_n_0 : STD_LOGIC;
  signal s_start_reg_n_0 : STD_LOGIC;
  signal \s_write_buffer[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_buffer_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_write_buffer_reg[0]0\ : STD_LOGIC;
  signal s_write_buffer_temp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_write_buffer_temp0 : STD_LOGIC;
  signal \s_write_buffer_temp[31]_i_2_n_0\ : STD_LOGIC;
  signal start_read : STD_LOGIC;
  signal start_read_i_2_n_0 : STD_LOGIC;
  signal start_read_i_3_n_0 : STD_LOGIC;
  signal start_read_i_4_n_0 : STD_LOGIC;
  signal start_read_i_5_n_0 : STD_LOGIC;
  signal start_read_i_6_n_0 : STD_LOGIC;
  signal start_read_reg_n_0 : STD_LOGIC;
  signal start_write : STD_LOGIC;
  signal start_write_reg_n_0 : STD_LOGIC;
  signal write_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \write_state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_read_state[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_read_state[3]_i_1\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[0]\ : label is "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[1]\ : label is "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[2]\ : label is "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[3]\ : label is "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[4]\ : label is "idle:00001,start:00010,check_addr_resp:00100,read_data:01000,done:10000";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[2]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[2]_i_9\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_current_state_reg[0]\ : label is "idle:000,address:001,length:010,write_axil:110,read_payload:100,write_payload:101,read_axil:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_current_state_reg[1]\ : label is "idle:000,address:001,length:010,write_axil:110,read_payload:100,write_payload:101,read_axil:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_current_state_reg[2]\ : label is "idle:000,address:001,length:010,write_axil:110,read_payload:100,write_payload:101,read_axil:011";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_state_reg[0]\ : label is "idle:000,start:001,check_resp:100,done:101,check_addr_resp:010,write_data:010,resp_ready:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_state_reg[1]\ : label is "idle:000,start:001,check_resp:100,done:101,check_addr_resp:010,write_data:010,resp_ready:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_state_reg[2]\ : label is "idle:000,start:001,check_resp:100,done:101,check_addr_resp:010,write_data:010,resp_ready:011";
  attribute SOFT_HLUTNM of \axi_araddr[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_araddr[10]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_araddr[11]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_araddr[12]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_araddr[13]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_araddr[14]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_araddr[15]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_araddr[16]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_araddr[17]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_araddr[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_araddr[19]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_araddr[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_araddr[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_araddr[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_araddr[22]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_araddr[23]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_araddr[24]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_araddr[25]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_araddr[26]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_araddr[27]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_araddr[28]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_araddr[29]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_araddr[30]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_araddr[31]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_araddr[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_araddr[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_araddr[7]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_araddr[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_araddr[9]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_awaddr[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_awaddr[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_awaddr[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_awaddr[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_awaddr[14]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_awaddr[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_awaddr[16]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_awaddr[17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_awaddr[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_awaddr[19]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_awaddr[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_awaddr[20]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_awaddr[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_awaddr[22]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_awaddr[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_awaddr[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_awaddr[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_awaddr[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_awaddr[27]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_awaddr[28]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_awaddr[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_awaddr[30]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_awaddr[31]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_awaddr[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_awaddr[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_awaddr[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_awaddr[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_awaddr[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_awaddr[9]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_awprot[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_rready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_axil_valid_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_buf_cnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_buf_cnt[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_buf_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_buf_cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_buf_cnt[6]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_buf_cnt[6]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_byte_pos[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_byte_pos[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_byte_pos[2]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_command[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_m_axis_tvalid_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_op_byte[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_op_state[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_op_state[1]_i_2\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES of \s_op_state_reg[0]\ : label is "output:01,check:11,delay:10,idle:00";
  attribute FSM_ENCODED_STATES of \s_op_state_reg[1]\ : label is "output:01,check:11,delay:10,idle:00";
  attribute SOFT_HLUTNM of \s_opptr[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_opptr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_opptr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_opptr[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_opptr[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_opptr[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_opptr[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_opptr[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[17]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[23]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_read_buffer_temp[9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of s_s_tready_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_s_tready_i_9 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_write_buffer_temp[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of start_read_i_6 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of start_write_i_1 : label is "soft_lutpair1";
begin
  m_axi_bready <= \^m_axi_bready\;
  m_axi_rready <= \^m_axi_rready\;
  m_axi_wvalid <= \^m_axi_wvalid\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\FSM_onehot_read_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => m_axi_arready,
      I2 => \FSM_onehot_read_state_reg_n_0_[2]\,
      O => \FSM_onehot_read_state[2]_i_1_n_0\
    );
\FSM_onehot_read_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[2]\,
      I1 => m_axi_arready,
      I2 => m_axi_rvalid,
      I3 => \FSM_onehot_read_state_reg_n_0_[3]\,
      O => \FSM_onehot_read_state[3]_i_1_n_0\
    );
\FSM_onehot_read_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_read_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_read_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_read_state_reg_n_0_[0]\,
      I5 => start_read_reg_n_0,
      O => \FSM_onehot_read_state[4]_i_1_n_0\
    );
\FSM_onehot_read_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[3]\,
      I1 => m_axi_rvalid,
      O => \FSM_onehot_read_state[4]_i_2_n_0\
    );
\FSM_onehot_read_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_read_state[4]_i_1_n_0\,
      D => \FSM_onehot_read_state_reg_n_0_[4]\,
      PRE => s_s_tready_i_2_n_0,
      Q => \FSM_onehot_read_state_reg_n_0_[0]\
    );
\FSM_onehot_read_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_read_state[4]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_onehot_read_state_reg_n_0_[0]\,
      Q => \FSM_onehot_read_state_reg_n_0_[1]\
    );
\FSM_onehot_read_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_read_state[4]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_onehot_read_state[2]_i_1_n_0\,
      Q => \FSM_onehot_read_state_reg_n_0_[2]\
    );
\FSM_onehot_read_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_read_state[4]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_onehot_read_state[3]_i_1_n_0\,
      Q => \FSM_onehot_read_state_reg_n_0_[3]\
    );
\FSM_onehot_read_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_read_state[4]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_onehot_read_state[4]_i_2_n_0\,
      Q => \FSM_onehot_read_state_reg_n_0_[4]\
    );
\FSM_sequential_s_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \s_current_state__0\(2),
      I1 => s_current_state0,
      I2 => \s_current_state__0\(0),
      O => \FSM_sequential_s_current_state[0]_i_1_n_0\
    );
\FSM_sequential_s_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFCC00"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I1 => \s_current_state__0\(0),
      I2 => \s_current_state__0\(2),
      I3 => s_current_state0,
      I4 => \s_current_state__0\(1),
      O => \FSM_sequential_s_current_state[1]_i_1_n_0\
    );
\FSM_sequential_s_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30FFC800"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I1 => \s_current_state__0\(1),
      I2 => \s_current_state__0\(0),
      I3 => s_current_state0,
      I4 => \s_current_state__0\(2),
      O => \FSM_sequential_s_current_state[2]_i_1_n_0\
    );
\FSM_sequential_s_current_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \s_byte_pos_reg_n_0_[0]\,
      I1 => \s_byte_pos_reg_n_0_[1]\,
      I2 => \s_byte_pos_reg_n_0_[2]\,
      I3 => \s_current_state__0\(2),
      I4 => \s_current_state__0\(1),
      I5 => \s_current_state__0\(0),
      O => \FSM_sequential_s_current_state[2]_i_10_n_0\
    );
\FSM_sequential_s_current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => start_read_i_2_n_0,
      I1 => start_read_i_3_n_0,
      I2 => start_read_i_4_n_0,
      I3 => start_read_i_5_n_0,
      O => \FSM_sequential_s_current_state[2]_i_2_n_0\
    );
\FSM_sequential_s_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAAEEEEEEEEE"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[2]_i_4_n_0\,
      I1 => rst_n,
      I2 => \s_current_state__0\(2),
      I3 => \FSM_sequential_s_current_state[2]_i_5_n_0\,
      I4 => start_read,
      I5 => \FSM_sequential_s_current_state[2]_i_6_n_0\,
      O => s_current_state0
    );
\FSM_sequential_s_current_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555575"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => \s_current_state__0\(1),
      I2 => \FSM_sequential_s_current_state[2]_i_7_n_0\,
      I3 => s_s_tready_i_7_n_0,
      I4 => s_s_tready_i_6_n_0,
      I5 => \FSM_sequential_s_current_state[2]_i_8_n_0\,
      O => \FSM_sequential_s_current_state[2]_i_4_n_0\
    );
\FSM_sequential_s_current_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFAACFFFFFAACF"
    )
        port map (
      I0 => \s_byte_pos[2]_i_5_n_0\,
      I1 => \s_command[7]_i_3_n_0\,
      I2 => \FSM_sequential_s_current_state[2]_i_9_n_0\,
      I3 => \s_current_state__0\(0),
      I4 => \s_current_state__0\(1),
      I5 => \FSM_onehot_read_state_reg_n_0_[4]\,
      O => \FSM_sequential_s_current_state[2]_i_5_n_0\
    );
\FSM_sequential_s_current_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => \s_command_reg_n_0_[3]\,
      I1 => \s_command_reg_n_0_[1]\,
      I2 => \s_command_reg_n_0_[0]\,
      I3 => \s_command_reg_n_0_[2]\,
      I4 => start_read_i_5_n_0,
      I5 => \FSM_sequential_s_current_state[2]_i_10_n_0\,
      O => \FSM_sequential_s_current_state[2]_i_6_n_0\
    );
\FSM_sequential_s_current_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[6]\,
      I1 => \s_length_reg_n_0_[6]\,
      I2 => \s_buf_cnt_reg_n_0_[7]\,
      I3 => \s_length_reg_n_0_[7]\,
      O => \FSM_sequential_s_current_state[2]_i_7_n_0\
    );
\FSM_sequential_s_current_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F5555FFFFFFFF"
    )
        port map (
      I0 => \s_current_state__0\(2),
      I1 => write_state(0),
      I2 => write_state(2),
      I3 => write_state(1),
      I4 => \s_current_state__0\(1),
      I5 => rst_n,
      O => \FSM_sequential_s_current_state[2]_i_8_n_0\
    );
\FSM_sequential_s_current_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(6),
      I3 => s_axis_tdata(4),
      O => \FSM_sequential_s_current_state[2]_i_9_n_0\
    );
\FSM_sequential_s_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_s_current_state[0]_i_1_n_0\,
      Q => \s_current_state__0\(0),
      R => '0'
    );
\FSM_sequential_s_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_s_current_state[1]_i_1_n_0\,
      Q => \s_current_state__0\(1),
      R => '0'
    );
\FSM_sequential_s_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_s_current_state[2]_i_1_n_0\,
      Q => \s_current_state__0\(2),
      R => '0'
    );
\FSM_sequential_write_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F000000A0ACFC0"
    )
        port map (
      I0 => m_axi_wready,
      I1 => m_axi_bvalid,
      I2 => write_state(2),
      I3 => start_write_reg_n_0,
      I4 => write_state(1),
      I5 => write_state(0),
      O => \FSM_sequential_write_state[0]_i_1_n_0\
    );
\FSM_sequential_write_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => write_state(2),
      I1 => write_state(1),
      I2 => write_state(0),
      O => \FSM_sequential_write_state[1]_i_1_n_0\
    );
\FSM_sequential_write_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => write_state(2),
      I1 => write_state(1),
      I2 => write_state(0),
      O => \FSM_sequential_write_state[2]_i_1_n_0\
    );
\FSM_sequential_write_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_sequential_write_state[0]_i_1_n_0\,
      Q => write_state(0)
    );
\FSM_sequential_write_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_sequential_write_state[1]_i_1_n_0\,
      Q => write_state(1)
    );
\FSM_sequential_write_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_sequential_write_state[2]_i_1_n_0\,
      Q => write_state(2)
    );
\axi_araddr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(0),
      O => \axi_araddr[0]_i_1_n_0\
    );
\axi_araddr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(10),
      O => \axi_araddr[10]_i_1_n_0\
    );
\axi_araddr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(11),
      O => \axi_araddr[11]_i_1_n_0\
    );
\axi_araddr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(12),
      O => \axi_araddr[12]_i_1_n_0\
    );
\axi_araddr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(13),
      O => \axi_araddr[13]_i_1_n_0\
    );
\axi_araddr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(14),
      O => \axi_araddr[14]_i_1_n_0\
    );
\axi_araddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(15),
      O => \axi_araddr[15]_i_1_n_0\
    );
\axi_araddr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(16),
      O => \axi_araddr[16]_i_1_n_0\
    );
\axi_araddr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(17),
      O => \axi_araddr[17]_i_1_n_0\
    );
\axi_araddr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(18),
      O => \axi_araddr[18]_i_1_n_0\
    );
\axi_araddr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(19),
      O => \axi_araddr[19]_i_1_n_0\
    );
\axi_araddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(1),
      O => \axi_araddr[1]_i_1_n_0\
    );
\axi_araddr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(20),
      O => \axi_araddr[20]_i_1_n_0\
    );
\axi_araddr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(21),
      O => \axi_araddr[21]_i_1_n_0\
    );
\axi_araddr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(22),
      O => \axi_araddr[22]_i_1_n_0\
    );
\axi_araddr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(23),
      O => \axi_araddr[23]_i_1_n_0\
    );
\axi_araddr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(24),
      O => \axi_araddr[24]_i_1_n_0\
    );
\axi_araddr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(25),
      O => \axi_araddr[25]_i_1_n_0\
    );
\axi_araddr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(26),
      O => \axi_araddr[26]_i_1_n_0\
    );
\axi_araddr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(27),
      O => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(28),
      O => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(29),
      O => \axi_araddr[29]_i_1_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(30),
      O => \axi_araddr[30]_i_1_n_0\
    );
\axi_araddr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_read_state_reg_n_0_[2]\,
      I2 => m_axi_arready,
      O => \axi_araddr[31]_i_1_n_0\
    );
\axi_araddr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(31),
      O => \axi_araddr[31]_i_2_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(4),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(5),
      O => \axi_araddr[5]_i_1_n_0\
    );
\axi_araddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(6),
      O => \axi_araddr[6]_i_1_n_0\
    );
\axi_araddr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(7),
      O => \axi_araddr[7]_i_1_n_0\
    );
\axi_araddr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(8),
      O => \axi_araddr[8]_i_1_n_0\
    );
\axi_araddr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I1 => s_address(9),
      O => \axi_araddr[9]_i_1_n_0\
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[0]_i_1_n_0\,
      Q => m_axi_araddr(0)
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[10]_i_1_n_0\,
      Q => m_axi_araddr(10)
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[11]_i_1_n_0\,
      Q => m_axi_araddr(11)
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[12]_i_1_n_0\,
      Q => m_axi_araddr(12)
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[13]_i_1_n_0\,
      Q => m_axi_araddr(13)
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[14]_i_1_n_0\,
      Q => m_axi_araddr(14)
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[15]_i_1_n_0\,
      Q => m_axi_araddr(15)
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[16]_i_1_n_0\,
      Q => m_axi_araddr(16)
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[17]_i_1_n_0\,
      Q => m_axi_araddr(17)
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[18]_i_1_n_0\,
      Q => m_axi_araddr(18)
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[19]_i_1_n_0\,
      Q => m_axi_araddr(19)
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[1]_i_1_n_0\,
      Q => m_axi_araddr(1)
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[20]_i_1_n_0\,
      Q => m_axi_araddr(20)
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[21]_i_1_n_0\,
      Q => m_axi_araddr(21)
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[22]_i_1_n_0\,
      Q => m_axi_araddr(22)
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[23]_i_1_n_0\,
      Q => m_axi_araddr(23)
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[24]_i_1_n_0\,
      Q => m_axi_araddr(24)
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[25]_i_1_n_0\,
      Q => m_axi_araddr(25)
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[26]_i_1_n_0\,
      Q => m_axi_araddr(26)
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[27]_i_1_n_0\,
      Q => m_axi_araddr(27)
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[28]_i_1_n_0\,
      Q => m_axi_araddr(28)
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[29]_i_1_n_0\,
      Q => m_axi_araddr(29)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[2]_i_1_n_0\,
      Q => m_axi_araddr(2)
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[30]_i_1_n_0\,
      Q => m_axi_araddr(30)
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[31]_i_2_n_0\,
      Q => m_axi_araddr(31)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[3]_i_1_n_0\,
      Q => m_axi_araddr(3)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[4]_i_1_n_0\,
      Q => m_axi_araddr(4)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[5]_i_1_n_0\,
      Q => m_axi_araddr(5)
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[6]_i_1_n_0\,
      Q => m_axi_araddr(6)
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[7]_i_1_n_0\,
      Q => m_axi_araddr(7)
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[8]_i_1_n_0\,
      Q => m_axi_araddr(8)
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_araddr[9]_i_1_n_0\,
      Q => m_axi_araddr(9)
    );
\axi_arprot_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_araddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \FSM_onehot_read_state_reg_n_0_[1]\,
      Q => m_axi_arvalid
    );
\axi_awaddr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(0),
      I1 => write_state(1),
      O => axi_awaddr0_in(0)
    );
\axi_awaddr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(10),
      I1 => write_state(1),
      O => axi_awaddr0_in(10)
    );
\axi_awaddr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(11),
      I1 => write_state(1),
      O => axi_awaddr0_in(11)
    );
\axi_awaddr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(12),
      I1 => write_state(1),
      O => axi_awaddr0_in(12)
    );
\axi_awaddr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(13),
      I1 => write_state(1),
      O => axi_awaddr0_in(13)
    );
\axi_awaddr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(14),
      I1 => write_state(1),
      O => axi_awaddr0_in(14)
    );
\axi_awaddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(15),
      I1 => write_state(1),
      O => axi_awaddr0_in(15)
    );
\axi_awaddr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(16),
      I1 => write_state(1),
      O => axi_awaddr0_in(16)
    );
\axi_awaddr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(17),
      I1 => write_state(1),
      O => axi_awaddr0_in(17)
    );
\axi_awaddr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(18),
      I1 => write_state(1),
      O => axi_awaddr0_in(18)
    );
\axi_awaddr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(19),
      I1 => write_state(1),
      O => axi_awaddr0_in(19)
    );
\axi_awaddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(1),
      I1 => write_state(1),
      O => axi_awaddr0_in(1)
    );
\axi_awaddr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(20),
      I1 => write_state(1),
      O => axi_awaddr0_in(20)
    );
\axi_awaddr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(21),
      I1 => write_state(1),
      O => axi_awaddr0_in(21)
    );
\axi_awaddr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(22),
      I1 => write_state(1),
      O => axi_awaddr0_in(22)
    );
\axi_awaddr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(23),
      I1 => write_state(1),
      O => axi_awaddr0_in(23)
    );
\axi_awaddr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(24),
      I1 => write_state(1),
      O => axi_awaddr0_in(24)
    );
\axi_awaddr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(25),
      I1 => write_state(1),
      O => axi_awaddr0_in(25)
    );
\axi_awaddr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(26),
      I1 => write_state(1),
      O => axi_awaddr0_in(26)
    );
\axi_awaddr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(27),
      I1 => write_state(1),
      O => axi_awaddr0_in(27)
    );
\axi_awaddr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(28),
      I1 => write_state(1),
      O => axi_awaddr0_in(28)
    );
\axi_awaddr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(29),
      I1 => write_state(1),
      O => axi_awaddr0_in(29)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(2),
      I1 => write_state(1),
      O => axi_awaddr0_in(2)
    );
\axi_awaddr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(30),
      I1 => write_state(1),
      O => axi_awaddr0_in(30)
    );
\axi_awaddr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1210"
    )
        port map (
      I0 => write_state(1),
      I1 => write_state(2),
      I2 => write_state(0),
      I3 => m_axi_awready,
      O => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(31),
      I1 => write_state(1),
      O => axi_awaddr0_in(31)
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(3),
      I1 => write_state(1),
      O => axi_awaddr0_in(3)
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(4),
      I1 => write_state(1),
      O => axi_awaddr0_in(4)
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(5),
      I1 => write_state(1),
      O => axi_awaddr0_in(5)
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(6),
      I1 => write_state(1),
      O => axi_awaddr0_in(6)
    );
\axi_awaddr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(7),
      I1 => write_state(1),
      O => axi_awaddr0_in(7)
    );
\axi_awaddr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(8),
      I1 => write_state(1),
      O => axi_awaddr0_in(8)
    );
\axi_awaddr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_address(9),
      I1 => write_state(1),
      O => axi_awaddr0_in(9)
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(0),
      Q => m_axi_awaddr(0)
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(10),
      Q => m_axi_awaddr(10)
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(11),
      Q => m_axi_awaddr(11)
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(12),
      Q => m_axi_awaddr(12)
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(13),
      Q => m_axi_awaddr(13)
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(14),
      Q => m_axi_awaddr(14)
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(15),
      Q => m_axi_awaddr(15)
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(16),
      Q => m_axi_awaddr(16)
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(17),
      Q => m_axi_awaddr(17)
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(18),
      Q => m_axi_awaddr(18)
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(19),
      Q => m_axi_awaddr(19)
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(1),
      Q => m_axi_awaddr(1)
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(20),
      Q => m_axi_awaddr(20)
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(21),
      Q => m_axi_awaddr(21)
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(22),
      Q => m_axi_awaddr(22)
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(23),
      Q => m_axi_awaddr(23)
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(24),
      Q => m_axi_awaddr(24)
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(25),
      Q => m_axi_awaddr(25)
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(26),
      Q => m_axi_awaddr(26)
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(27),
      Q => m_axi_awaddr(27)
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(28),
      Q => m_axi_awaddr(28)
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(29),
      Q => m_axi_awaddr(29)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(2),
      Q => m_axi_awaddr(2)
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(30),
      Q => m_axi_awaddr(30)
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(31),
      Q => m_axi_awaddr(31)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(3),
      Q => m_axi_awaddr(3)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(4),
      Q => m_axi_awaddr(4)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(5),
      Q => m_axi_awaddr(5)
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(6),
      Q => m_axi_awaddr(6)
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(7),
      Q => m_axi_awaddr(7)
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(8),
      Q => m_axi_awaddr(8)
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => axi_awaddr0_in(9),
      Q => m_axi_awaddr(9)
    );
\axi_awprot[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_state(1),
      O => \axi_awprot[1]_i_1_n_0\
    );
\axi_awprot_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \axi_awaddr[31]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \axi_awprot[1]_i_1_n_0\,
      Q => m_axi_awvalid
    );
axi_bready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0088"
    )
        port map (
      I0 => write_state(0),
      I1 => write_state(1),
      I2 => m_axi_bvalid,
      I3 => write_state(2),
      I4 => \^m_axi_bready\,
      O => axi_bready_i_1_n_0
    );
axi_bready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => axi_bready_i_1_n_0,
      Q => \^m_axi_bready\
    );
axi_rready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^m_axi_rready\,
      I1 => \FSM_onehot_read_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_read_state_reg_n_0_[3]\,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => axi_rready_i_1_n_0,
      Q => \^m_axi_rready\
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => write_state(2),
      I1 => write_state(0),
      I2 => write_state(1),
      O => \write_state__0\(1)
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(0),
      Q => m_axi_wdata(0)
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(10),
      Q => m_axi_wdata(10)
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(11),
      Q => m_axi_wdata(11)
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(12),
      Q => m_axi_wdata(12)
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(13),
      Q => m_axi_wdata(13)
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(14),
      Q => m_axi_wdata(14)
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(15),
      Q => m_axi_wdata(15)
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(16),
      Q => m_axi_wdata(16)
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(17),
      Q => m_axi_wdata(17)
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(18),
      Q => m_axi_wdata(18)
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(19),
      Q => m_axi_wdata(19)
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(1),
      Q => m_axi_wdata(1)
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(20),
      Q => m_axi_wdata(20)
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(21),
      Q => m_axi_wdata(21)
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(22),
      Q => m_axi_wdata(22)
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(23),
      Q => m_axi_wdata(23)
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(24),
      Q => m_axi_wdata(24)
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(25),
      Q => m_axi_wdata(25)
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(26),
      Q => m_axi_wdata(26)
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(27),
      Q => m_axi_wdata(27)
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(28),
      Q => m_axi_wdata(28)
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(29),
      Q => m_axi_wdata(29)
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(2),
      Q => m_axi_wdata(2)
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(30),
      Q => m_axi_wdata(30)
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(31),
      Q => m_axi_wdata(31)
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(3),
      Q => m_axi_wdata(3)
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(4),
      Q => m_axi_wdata(4)
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(5),
      Q => m_axi_wdata(5)
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(6),
      Q => m_axi_wdata(6)
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(7),
      Q => m_axi_wdata(7)
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(8),
      Q => m_axi_wdata(8)
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \write_state__0\(1),
      CLR => s_s_tready_i_2_n_0,
      D => s_axil_idata(9),
      Q => m_axi_wdata(9)
    );
\axi_wstrb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => \write_state__0\(1),
      Q => m_axi_wstrb(0)
    );
axi_wvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF14"
    )
        port map (
      I0 => write_state(2),
      I1 => write_state(0),
      I2 => write_state(1),
      I3 => \^m_axi_wvalid\,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_op_state__0\(1),
      I1 => \s_op_state__0\(0),
      I2 => \m_axis_tdata[7]_i_2_n_0\,
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => \s_length_reg_n_0_[6]\,
      I1 => \s_opptr_reg_n_0_[6]\,
      I2 => \s_length_reg_n_0_[7]\,
      I3 => \s_opptr_reg_n_0_[7]\,
      I4 => \m_axis_tdata[7]_i_3_n_0\,
      I5 => \m_axis_tdata[7]_i_4_n_0\,
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \s_opptr_reg_n_0_[0]\,
      I1 => \s_length_reg_n_0_[0]\,
      I2 => \s_length_reg_n_0_[2]\,
      I3 => \s_opptr_reg_n_0_[2]\,
      I4 => \s_length_reg_n_0_[1]\,
      I5 => \s_opptr_reg_n_0_[1]\,
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \s_opptr_reg_n_0_[3]\,
      I1 => \s_length_reg_n_0_[3]\,
      I2 => \s_length_reg_n_0_[4]\,
      I3 => \s_opptr_reg_n_0_[4]\,
      I4 => \s_length_reg_n_0_[5]\,
      I5 => \s_opptr_reg_n_0_[5]\,
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[0]\,
      Q => m_axis_tdata(0)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[1]\,
      Q => m_axis_tdata(1)
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[2]\,
      Q => m_axis_tdata(2)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[3]\,
      Q => m_axis_tdata(3)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[4]\,
      Q => m_axis_tdata(4)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[5]\,
      Q => m_axis_tdata(5)
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[6]\,
      Q => m_axis_tdata(6)
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => s_s_tready_i_2_n_0,
      D => \s_read_buffer_temp_reg_n_0_[7]\,
      Q => m_axis_tdata(7)
    );
\s_address[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => rst_n,
      I1 => \s_current_state__0\(2),
      I2 => \s_current_state__0\(0),
      I3 => \s_current_state__0\(1),
      I4 => \s_byte_pos[2]_i_4_n_0\,
      I5 => \s_byte_pos[2]_i_5_n_0\,
      O => \s_address[31]_i_1_n_0\
    );
\s_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => s_address(0),
      R => '0'
    );
\s_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(2),
      Q => s_address(10),
      R => '0'
    );
\s_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(3),
      Q => s_address(11),
      R => '0'
    );
\s_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(4),
      Q => s_address(12),
      R => '0'
    );
\s_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(5),
      Q => s_address(13),
      R => '0'
    );
\s_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(6),
      Q => s_address(14),
      R => '0'
    );
\s_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(7),
      Q => s_address(15),
      R => '0'
    );
\s_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(8),
      Q => s_address(16),
      R => '0'
    );
\s_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(9),
      Q => s_address(17),
      R => '0'
    );
\s_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(10),
      Q => s_address(18),
      R => '0'
    );
\s_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(11),
      Q => s_address(19),
      R => '0'
    );
\s_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => s_address(1),
      R => '0'
    );
\s_address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(12),
      Q => s_address(20),
      R => '0'
    );
\s_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(13),
      Q => s_address(21),
      R => '0'
    );
\s_address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(14),
      Q => s_address(22),
      R => '0'
    );
\s_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(15),
      Q => s_address(23),
      R => '0'
    );
\s_address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(16),
      Q => s_address(24),
      R => '0'
    );
\s_address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(17),
      Q => s_address(25),
      R => '0'
    );
\s_address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(18),
      Q => s_address(26),
      R => '0'
    );
\s_address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(19),
      Q => s_address(27),
      R => '0'
    );
\s_address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(20),
      Q => s_address(28),
      R => '0'
    );
\s_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(21),
      Q => s_address(29),
      R => '0'
    );
\s_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => s_address(2),
      R => '0'
    );
\s_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(22),
      Q => s_address(30),
      R => '0'
    );
\s_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(23),
      Q => s_address(31),
      R => '0'
    );
\s_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => s_address(3),
      R => '0'
    );
\s_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => s_address(4),
      R => '0'
    );
\s_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => s_address(5),
      R => '0'
    );
\s_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => s_address(6),
      R => '0'
    );
\s_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => s_address(7),
      R => '0'
    );
\s_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(0),
      Q => s_address(8),
      R => '0'
    );
\s_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_address[31]_i_1_n_0\,
      D => s_address(1),
      Q => s_address(9),
      R => '0'
    );
\s_axil_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[4]\,
      I1 => rst_n,
      I2 => \FSM_onehot_read_state_reg_n_0_[3]\,
      O => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rst_n,
      I1 => \FSM_onehot_read_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_read_state_reg_n_0_[4]\,
      O => s_axil_data0
    );
\s_axil_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(0),
      Q => s_axil_data(0),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(10),
      Q => s_axil_data(10),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(11),
      Q => s_axil_data(11),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(12),
      Q => s_axil_data(12),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(13),
      Q => s_axil_data(13),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(14),
      Q => s_axil_data(14),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(15),
      Q => s_axil_data(15),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(16),
      Q => s_axil_data(16),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(17),
      Q => s_axil_data(17),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(18),
      Q => s_axil_data(18),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(19),
      Q => s_axil_data(19),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(1),
      Q => s_axil_data(1),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(20),
      Q => s_axil_data(20),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(21),
      Q => s_axil_data(21),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(22),
      Q => s_axil_data(22),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(23),
      Q => s_axil_data(23),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(24),
      Q => s_axil_data(24),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(25),
      Q => s_axil_data(25),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(26),
      Q => s_axil_data(26),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(27),
      Q => s_axil_data(27),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(28),
      Q => s_axil_data(28),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(29),
      Q => s_axil_data(29),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(2),
      Q => s_axil_data(2),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(30),
      Q => s_axil_data(30),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(31),
      Q => s_axil_data(31),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(3),
      Q => s_axil_data(3),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(4),
      Q => s_axil_data(4),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(5),
      Q => s_axil_data(5),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(6),
      Q => s_axil_data(6),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(7),
      Q => s_axil_data(7),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(8),
      Q => s_axil_data(8),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_data0,
      D => m_axi_rdata(9),
      Q => s_axil_data(9),
      R => \s_axil_data[31]_i_1_n_0\
    );
\s_axil_idata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => \s_current_state__0\(1),
      I2 => \s_current_state__0\(2),
      I3 => rst_n,
      O => s_axil_idata0
    );
\s_axil_idata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(0),
      Q => s_axil_idata(0),
      R => '0'
    );
\s_axil_idata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(10),
      Q => s_axil_idata(10),
      R => '0'
    );
\s_axil_idata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(11),
      Q => s_axil_idata(11),
      R => '0'
    );
\s_axil_idata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(12),
      Q => s_axil_idata(12),
      R => '0'
    );
\s_axil_idata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(13),
      Q => s_axil_idata(13),
      R => '0'
    );
\s_axil_idata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(14),
      Q => s_axil_idata(14),
      R => '0'
    );
\s_axil_idata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(15),
      Q => s_axil_idata(15),
      R => '0'
    );
\s_axil_idata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(16),
      Q => s_axil_idata(16),
      R => '0'
    );
\s_axil_idata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(17),
      Q => s_axil_idata(17),
      R => '0'
    );
\s_axil_idata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(18),
      Q => s_axil_idata(18),
      R => '0'
    );
\s_axil_idata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(19),
      Q => s_axil_idata(19),
      R => '0'
    );
\s_axil_idata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(1),
      Q => s_axil_idata(1),
      R => '0'
    );
\s_axil_idata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(20),
      Q => s_axil_idata(20),
      R => '0'
    );
\s_axil_idata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(21),
      Q => s_axil_idata(21),
      R => '0'
    );
\s_axil_idata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(22),
      Q => s_axil_idata(22),
      R => '0'
    );
\s_axil_idata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(23),
      Q => s_axil_idata(23),
      R => '0'
    );
\s_axil_idata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(24),
      Q => s_axil_idata(24),
      R => '0'
    );
\s_axil_idata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(25),
      Q => s_axil_idata(25),
      R => '0'
    );
\s_axil_idata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(26),
      Q => s_axil_idata(26),
      R => '0'
    );
\s_axil_idata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(27),
      Q => s_axil_idata(27),
      R => '0'
    );
\s_axil_idata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(28),
      Q => s_axil_idata(28),
      R => '0'
    );
\s_axil_idata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(29),
      Q => s_axil_idata(29),
      R => '0'
    );
\s_axil_idata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(2),
      Q => s_axil_idata(2),
      R => '0'
    );
\s_axil_idata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(30),
      Q => s_axil_idata(30),
      R => '0'
    );
\s_axil_idata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(31),
      Q => s_axil_idata(31),
      R => '0'
    );
\s_axil_idata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(3),
      Q => s_axil_idata(3),
      R => '0'
    );
\s_axil_idata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(4),
      Q => s_axil_idata(4),
      R => '0'
    );
\s_axil_idata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(5),
      Q => s_axil_idata(5),
      R => '0'
    );
\s_axil_idata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(6),
      Q => s_axil_idata(6),
      R => '0'
    );
\s_axil_idata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(7),
      Q => s_axil_idata(7),
      R => '0'
    );
\s_axil_idata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(8),
      Q => s_axil_idata(8),
      R => '0'
    );
\s_axil_idata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axil_idata0,
      D => \s_write_buffer_reg[0]\(9),
      Q => s_axil_idata(9),
      R => '0'
    );
s_axil_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F0080"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[3]\,
      I1 => m_axi_rvalid,
      I2 => rst_n,
      I3 => s_axil_valid_i_2_n_0,
      I4 => s_axil_valid_reg_n_0,
      O => s_axil_valid_i_1_n_0
    );
s_axil_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_read_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_read_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_read_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_read_state_reg_n_0_[2]\,
      O => s_axil_valid_i_2_n_0
    );
s_axil_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axil_valid_i_1_n_0,
      Q => s_axil_valid_reg_n_0,
      R => '0'
    );
\s_buf_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[0]\,
      O => \s_buf_cnt[0]_i_1_n_0\
    );
\s_buf_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F0080"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[0]\,
      I1 => \s_current_state__0\(2),
      I2 => rst_n,
      I3 => \s_buf_cnt[7]_i_2_n_0\,
      I4 => \s_buf_cnt_reg_n_0_[1]\,
      O => \s_buf_cnt[1]_i_1_n_0\
    );
\s_buf_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[2]\,
      I1 => \s_buf_cnt_reg_n_0_[0]\,
      I2 => \s_buf_cnt_reg_n_0_[1]\,
      O => \s_buf_cnt[2]_i_1_n_0\
    );
\s_buf_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[3]\,
      I1 => \s_buf_cnt_reg_n_0_[2]\,
      I2 => \s_buf_cnt_reg_n_0_[1]\,
      I3 => \s_buf_cnt_reg_n_0_[0]\,
      O => \s_buf_cnt[3]_i_1_n_0\
    );
\s_buf_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[4]\,
      I1 => \s_buf_cnt_reg_n_0_[3]\,
      I2 => \s_buf_cnt_reg_n_0_[0]\,
      I3 => \s_buf_cnt_reg_n_0_[1]\,
      I4 => \s_buf_cnt_reg_n_0_[2]\,
      O => \s_buf_cnt[4]_i_1_n_0\
    );
\s_buf_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[5]\,
      I1 => \s_buf_cnt_reg_n_0_[4]\,
      I2 => \s_buf_cnt_reg_n_0_[2]\,
      I3 => \s_buf_cnt_reg_n_0_[1]\,
      I4 => \s_buf_cnt_reg_n_0_[0]\,
      I5 => \s_buf_cnt_reg_n_0_[3]\,
      O => \s_buf_cnt[5]_i_1_n_0\
    );
\s_buf_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0B0000"
    )
        port map (
      I0 => \s_buf_cnt[6]_i_4_n_0\,
      I1 => \s_current_state__0\(1),
      I2 => \s_current_state__0\(0),
      I3 => \s_buf_cnt[6]_i_5_n_0\,
      I4 => rst_n,
      I5 => \s_current_state__0\(2),
      O => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888A8888888A"
    )
        port map (
      I0 => rst_n,
      I1 => \s_buf_cnt[6]_i_5_n_0\,
      I2 => \s_current_state__0\(2),
      I3 => \s_current_state__0\(0),
      I4 => \s_current_state__0\(1),
      I5 => \s_buf_cnt[6]_i_4_n_0\,
      O => s_buf_cnt0
    );
\s_buf_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[6]\,
      I1 => \s_buf_cnt[6]_i_6_n_0\,
      O => \s_buf_cnt[6]_i_3_n_0\
    );
\s_buf_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \s_byte_pos[2]_i_5_n_0\,
      I1 => \s_command_reg_n_0_[3]\,
      I2 => \s_command_reg_n_0_[1]\,
      I3 => \s_command_reg_n_0_[0]\,
      I4 => \s_command_reg_n_0_[2]\,
      I5 => start_read_i_5_n_0,
      O => \s_buf_cnt[6]_i_4_n_0\
    );
\s_buf_cnt[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \s_byte_pos[2]_i_5_n_0\,
      I1 => s_s_tready_i_4_n_0,
      I2 => \s_current_state__0\(2),
      I3 => \s_current_state__0\(1),
      I4 => \s_current_state__0\(0),
      O => \s_buf_cnt[6]_i_5_n_0\
    );
\s_buf_cnt[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[5]\,
      I1 => \s_buf_cnt_reg_n_0_[4]\,
      I2 => \s_buf_cnt_reg_n_0_[2]\,
      I3 => \s_buf_cnt_reg_n_0_[1]\,
      I4 => \s_buf_cnt_reg_n_0_[0]\,
      I5 => \s_buf_cnt_reg_n_0_[3]\,
      O => \s_buf_cnt[6]_i_6_n_0\
    );
\s_buf_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF70FF00008000"
    )
        port map (
      I0 => \s_buf_cnt[6]_i_6_n_0\,
      I1 => \s_buf_cnt_reg_n_0_[6]\,
      I2 => \s_current_state__0\(2),
      I3 => rst_n,
      I4 => \s_buf_cnt[7]_i_2_n_0\,
      I5 => \s_buf_cnt_reg_n_0_[7]\,
      O => \s_buf_cnt[7]_i_1_n_0\
    );
\s_buf_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCF3ECFFEC"
    )
        port map (
      I0 => \s_num_bytes[2]_i_2_n_0\,
      I1 => \s_current_state__0\(0),
      I2 => \s_current_state__0\(1),
      I3 => \s_current_state__0\(2),
      I4 => s_s_tready_i_4_n_0,
      I5 => \s_byte_pos[2]_i_5_n_0\,
      O => \s_buf_cnt[7]_i_2_n_0\
    );
\s_buf_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_buf_cnt0,
      D => \s_buf_cnt[0]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[0]\,
      R => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_buf_cnt[1]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[1]\,
      R => '0'
    );
\s_buf_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_buf_cnt0,
      D => \s_buf_cnt[2]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[2]\,
      R => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_buf_cnt0,
      D => \s_buf_cnt[3]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[3]\,
      R => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_buf_cnt0,
      D => \s_buf_cnt[4]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[4]\,
      R => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_buf_cnt0,
      D => \s_buf_cnt[5]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[5]\,
      R => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_buf_cnt0,
      D => \s_buf_cnt[6]_i_3_n_0\,
      Q => \s_buf_cnt_reg_n_0_[6]\,
      R => \s_buf_cnt[6]_i_1_n_0\
    );
\s_buf_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_buf_cnt[7]_i_1_n_0\,
      Q => \s_buf_cnt_reg_n_0_[7]\,
      R => '0'
    );
\s_byte_pos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEEEAAAA0222"
    )
        port map (
      I0 => \s_byte_pos[0]_i_2_n_0\,
      I1 => \s_byte_pos[2]_i_3_n_0\,
      I2 => \s_byte_pos[2]_i_4_n_0\,
      I3 => \s_byte_pos[2]_i_5_n_0\,
      I4 => \s_byte_pos[2]_i_6_n_0\,
      I5 => \s_byte_pos_reg_n_0_[0]\,
      O => \s_byte_pos[0]_i_1_n_0\
    );
\s_byte_pos[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE0FEF0"
    )
        port map (
      I0 => \s_byte_pos_reg_n_0_[1]\,
      I1 => \s_byte_pos_reg_n_0_[2]\,
      I2 => \s_current_state__0\(0),
      I3 => \s_current_state__0\(1),
      I4 => \s_current_state__0\(2),
      I5 => \s_byte_pos_reg_n_0_[0]\,
      O => \s_byte_pos[0]_i_2_n_0\
    );
\s_byte_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEEEAAAA0222"
    )
        port map (
      I0 => \s_byte_pos[1]_i_2_n_0\,
      I1 => \s_byte_pos[2]_i_3_n_0\,
      I2 => \s_byte_pos[2]_i_4_n_0\,
      I3 => \s_byte_pos[2]_i_5_n_0\,
      I4 => \s_byte_pos[2]_i_6_n_0\,
      I5 => \s_byte_pos_reg_n_0_[1]\,
      O => \s_byte_pos[1]_i_1_n_0\
    );
\s_byte_pos[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE0000E0"
    )
        port map (
      I0 => \s_current_state__0\(1),
      I1 => \s_current_state__0\(0),
      I2 => \s_byte_pos_reg_n_0_[2]\,
      I3 => \s_byte_pos_reg_n_0_[1]\,
      I4 => \s_byte_pos_reg_n_0_[0]\,
      O => \s_byte_pos[1]_i_2_n_0\
    );
\s_byte_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEEEAAAA0222"
    )
        port map (
      I0 => \s_byte_pos[2]_i_2_n_0\,
      I1 => \s_byte_pos[2]_i_3_n_0\,
      I2 => \s_byte_pos[2]_i_4_n_0\,
      I3 => \s_byte_pos[2]_i_5_n_0\,
      I4 => \s_byte_pos[2]_i_6_n_0\,
      I5 => \s_byte_pos_reg_n_0_[2]\,
      O => \s_byte_pos[2]_i_1_n_0\
    );
\s_byte_pos[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C0C0C0D7D7D7D7"
    )
        port map (
      I0 => \s_current_state__0\(1),
      I1 => \s_byte_pos_reg_n_0_[2]\,
      I2 => \s_byte_pos[2]_i_7_n_0\,
      I3 => \s_num_bytes_reg_n_0_[2]\,
      I4 => \s_current_state__0\(2),
      I5 => \s_current_state__0\(0),
      O => \s_byte_pos[2]_i_2_n_0\
    );
\s_byte_pos[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FAFFFAFFFFFFFF"
    )
        port map (
      I0 => s_s_tready_i_8_n_0,
      I1 => \s_current_state__0\(0),
      I2 => \s_current_state__0\(1),
      I3 => \s_current_state__0\(2),
      I4 => s_s_tready_i_4_n_0,
      I5 => rst_n,
      O => \s_byte_pos[2]_i_3_n_0\
    );
\s_byte_pos[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tvalid,
      O => \s_byte_pos[2]_i_4_n_0\
    );
\s_byte_pos[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \s_byte_pos_reg_n_0_[2]\,
      I1 => \s_byte_pos_reg_n_0_[1]\,
      I2 => \s_byte_pos_reg_n_0_[0]\,
      O => \s_byte_pos[2]_i_5_n_0\
    );
\s_byte_pos[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAEAAAAA"
    )
        port map (
      I0 => s_length0,
      I1 => \s_buf_cnt[6]_i_4_n_0\,
      I2 => rst_n,
      I3 => \s_current_state__0\(2),
      I4 => \s_current_state__0\(1),
      I5 => \s_current_state__0\(0),
      O => \s_byte_pos[2]_i_6_n_0\
    );
\s_byte_pos[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_byte_pos_reg_n_0_[0]\,
      I1 => \s_byte_pos_reg_n_0_[1]\,
      O => \s_byte_pos[2]_i_7_n_0\
    );
\s_byte_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_byte_pos[0]_i_1_n_0\,
      Q => \s_byte_pos_reg_n_0_[0]\,
      R => '0'
    );
\s_byte_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_byte_pos[1]_i_1_n_0\,
      Q => \s_byte_pos_reg_n_0_[1]\,
      R => '0'
    );
\s_byte_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_byte_pos[2]_i_1_n_0\,
      Q => \s_byte_pos_reg_n_0_[2]\,
      R => '0'
    );
\s_command[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \s_command[7]_i_2_n_0\,
      I1 => \s_current_state__0\(1),
      I2 => rst_n,
      I3 => \s_current_state__0\(2),
      I4 => \s_current_state__0\(0),
      O => s_command0
    );
\s_command[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(6),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(1),
      I4 => \s_command[7]_i_3_n_0\,
      O => \s_command[7]_i_2_n_0\
    );
\s_command[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF77F"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tvalid,
      I2 => s_axis_tdata(2),
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(5),
      I5 => s_axis_tdata(7),
      O => \s_command[7]_i_3_n_0\
    );
\s_command_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(0),
      Q => \s_command_reg_n_0_[0]\,
      R => '0'
    );
\s_command_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(1),
      Q => \s_command_reg_n_0_[1]\,
      R => '0'
    );
\s_command_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(2),
      Q => \s_command_reg_n_0_[2]\,
      R => '0'
    );
\s_command_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(3),
      Q => \s_command_reg_n_0_[3]\,
      R => '0'
    );
\s_command_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(4),
      Q => \s_command_reg_n_0_[4]\,
      R => '0'
    );
\s_command_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(5),
      Q => \s_command_reg_n_0_[5]\,
      R => '0'
    );
\s_command_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(6),
      Q => \s_command_reg_n_0_[6]\,
      R => '0'
    );
\s_command_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_command0,
      D => s_axis_tdata(7),
      Q => \s_command_reg_n_0_[7]\,
      R => '0'
    );
\s_length[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => \s_current_state__0\(1),
      I2 => \s_current_state__0\(2),
      I3 => rst_n,
      I4 => \s_byte_pos[2]_i_5_n_0\,
      I5 => \s_byte_pos[2]_i_4_n_0\,
      O => s_length0
    );
\s_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(0),
      Q => \s_length_reg_n_0_[0]\,
      R => '0'
    );
\s_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(1),
      Q => \s_length_reg_n_0_[1]\,
      R => '0'
    );
\s_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(2),
      Q => \s_length_reg_n_0_[2]\,
      R => '0'
    );
\s_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(3),
      Q => \s_length_reg_n_0_[3]\,
      R => '0'
    );
\s_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(4),
      Q => \s_length_reg_n_0_[4]\,
      R => '0'
    );
\s_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(5),
      Q => \s_length_reg_n_0_[5]\,
      R => '0'
    );
\s_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(6),
      Q => \s_length_reg_n_0_[6]\,
      R => '0'
    );
\s_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_length0,
      D => s_axis_tdata(7),
      Q => \s_length_reg_n_0_[7]\,
      R => '0'
    );
s_m_axis_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC400040"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => \s_op_state__0\(0),
      I2 => s_m_axis_tvalid_i_2_n_0,
      I3 => \s_op_state__0\(1),
      I4 => \^m_axis_tvalid\,
      O => s_m_axis_tvalid_i_1_n_0
    );
s_m_axis_tvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \s_op_byte_reg_n_0_[0]\,
      I2 => \s_op_byte_reg_n_0_[1]\,
      I3 => \s_op_byte_reg_n_0_[2]\,
      O => s_m_axis_tvalid_i_2_n_0
    );
s_m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => s_m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\
    );
\s_num_bytes[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0002000A"
    )
        port map (
      I0 => rst_n,
      I1 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I2 => start_read_i_6_n_0,
      I3 => \s_byte_pos[2]_i_5_n_0\,
      I4 => \s_num_bytes[2]_i_2_n_0\,
      I5 => \s_num_bytes_reg_n_0_[2]\,
      O => \s_num_bytes[2]_i_1_n_0\
    );
\s_num_bytes[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => start_read_i_5_n_0,
      I1 => \s_command_reg_n_0_[2]\,
      I2 => \s_command_reg_n_0_[0]\,
      I3 => \s_command_reg_n_0_[1]\,
      I4 => \s_command_reg_n_0_[3]\,
      O => \s_num_bytes[2]_i_2_n_0\
    );
\s_num_bytes_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_num_bytes[2]_i_1_n_0\,
      Q => \s_num_bytes_reg_n_0_[2]\,
      R => '0'
    );
\s_op_byte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0333A888"
    )
        port map (
      I0 => \s_opptr[7]_i_3_n_0\,
      I1 => s_opptr_0(0),
      I2 => \m_axis_tdata[7]_i_1_n_0\,
      I3 => m_axis_tready,
      I4 => \s_op_byte_reg_n_0_[0]\,
      O => \s_op_byte[0]_i_1_n_0\
    );
\s_op_byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8F8F22202020"
    )
        port map (
      I0 => \s_opptr[7]_i_3_n_0\,
      I1 => \s_op_byte_reg_n_0_[0]\,
      I2 => s_opptr_0(0),
      I3 => \m_axis_tdata[7]_i_1_n_0\,
      I4 => m_axis_tready,
      I5 => \s_op_byte_reg_n_0_[1]\,
      O => \s_op_byte[1]_i_1_n_0\
    );
\s_op_byte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => \s_op_byte[2]_i_2_n_0\,
      I1 => s_opptr_0(0),
      I2 => \m_axis_tdata[7]_i_1_n_0\,
      I3 => m_axis_tready,
      I4 => \s_op_byte_reg_n_0_[2]\,
      O => \s_op_byte[2]_i_1_n_0\
    );
\s_op_byte[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2E2E22A"
    )
        port map (
      I0 => \s_num_bytes_reg_n_0_[2]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_op_byte_reg_n_0_[2]\,
      I3 => \s_op_byte_reg_n_0_[0]\,
      I4 => \s_op_byte_reg_n_0_[1]\,
      O => \s_op_byte[2]_i_2_n_0\
    );
\s_op_byte_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => \s_op_byte[0]_i_1_n_0\,
      Q => \s_op_byte_reg_n_0_[0]\
    );
\s_op_byte_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => \s_op_byte[1]_i_1_n_0\,
      Q => \s_op_byte_reg_n_0_[1]\
    );
\s_op_byte_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_op_byte[2]_i_1_n_0\,
      PRE => s_s_tready_i_2_n_0,
      Q => \s_op_byte_reg_n_0_[2]\
    );
\s_op_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF8FA58"
    )
        port map (
      I0 => rst_n,
      I1 => s_start_reg_n_0,
      I2 => \s_op_state__0\(0),
      I3 => \s_op_state__0\(1),
      I4 => \s_op_state[0]_i_2_n_0\,
      O => \s_op_state[0]_i_1_n_0\
    );
\s_op_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001FF"
    )
        port map (
      I0 => \s_op_byte_reg_n_0_[2]\,
      I1 => \s_op_byte_reg_n_0_[1]\,
      I2 => \s_op_byte_reg_n_0_[0]\,
      I3 => m_axis_tready,
      I4 => \m_axis_tdata[7]_i_2_n_0\,
      O => \s_op_state[0]_i_2_n_0\
    );
\s_op_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFFF0A080000"
    )
        port map (
      I0 => rst_n,
      I1 => \s_op_state[1]_i_2_n_0\,
      I2 => \m_axis_tdata[7]_i_2_n_0\,
      I3 => s_m_axis_tvalid_i_2_n_0,
      I4 => \s_op_state__0\(0),
      I5 => \s_op_state__0\(1),
      O => \s_op_state[1]_i_1_n_0\
    );
\s_op_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F22"
    )
        port map (
      I0 => s_start_reg_n_0,
      I1 => \s_op_state__0\(0),
      I2 => m_axis_tready,
      I3 => \s_op_state__0\(1),
      O => \s_op_state[1]_i_2_n_0\
    );
\s_op_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_op_state[0]_i_1_n_0\,
      Q => \s_op_state__0\(0),
      R => '0'
    );
\s_op_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_op_state[1]_i_1_n_0\,
      Q => \s_op_state__0\(1),
      R => '0'
    );
\s_opptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_opptr_reg_n_0_[0]\,
      O => s_opptr(0)
    );
\s_opptr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \s_opptr_reg_n_0_[0]\,
      I1 => \s_opptr_reg_n_0_[1]\,
      I2 => \s_op_state__0\(0),
      O => \s_opptr[1]_i_1_n_0\
    );
\s_opptr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_opptr_reg_n_0_[1]\,
      I2 => \s_opptr_reg_n_0_[0]\,
      I3 => \s_opptr_reg_n_0_[2]\,
      O => s_opptr(2)
    );
\s_opptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_opptr_reg_n_0_[0]\,
      I2 => \s_opptr_reg_n_0_[1]\,
      I3 => \s_opptr_reg_n_0_[2]\,
      I4 => \s_opptr_reg_n_0_[3]\,
      O => s_opptr(3)
    );
\s_opptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_opptr_reg_n_0_[2]\,
      I2 => \s_opptr_reg_n_0_[1]\,
      I3 => \s_opptr_reg_n_0_[0]\,
      I4 => \s_opptr_reg_n_0_[3]\,
      I5 => \s_opptr_reg_n_0_[4]\,
      O => s_opptr(4)
    );
\s_opptr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_opptr[5]_i_2_n_0\,
      I2 => \s_opptr_reg_n_0_[5]\,
      O => s_opptr(5)
    );
\s_opptr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \s_opptr_reg_n_0_[3]\,
      I1 => \s_opptr_reg_n_0_[0]\,
      I2 => \s_opptr_reg_n_0_[1]\,
      I3 => \s_opptr_reg_n_0_[2]\,
      I4 => \s_opptr_reg_n_0_[4]\,
      O => \s_opptr[5]_i_2_n_0\
    );
\s_opptr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_opptr[7]_i_4_n_0\,
      I2 => \s_opptr_reg_n_0_[6]\,
      O => s_opptr(6)
    );
\s_opptr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000074"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => \s_op_state__0\(0),
      I2 => s_start_reg_n_0,
      I3 => \s_opptr[7]_i_3_n_0\,
      I4 => \s_op_state__0\(1),
      O => s_opptr_0(0)
    );
\s_opptr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \s_opptr[7]_i_4_n_0\,
      I1 => \s_opptr_reg_n_0_[6]\,
      I2 => \s_opptr_reg_n_0_[7]\,
      I3 => \s_op_state__0\(0),
      O => \s_opptr[7]_i_2_n_0\
    );
\s_opptr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \s_op_state__0\(0),
      I1 => \s_op_byte_reg_n_0_[0]\,
      I2 => \s_op_byte_reg_n_0_[1]\,
      I3 => \s_op_byte_reg_n_0_[2]\,
      O => \s_opptr[7]_i_3_n_0\
    );
\s_opptr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \s_opptr_reg_n_0_[5]\,
      I1 => \s_opptr_reg_n_0_[4]\,
      I2 => \s_opptr_reg_n_0_[2]\,
      I3 => \s_opptr_reg_n_0_[1]\,
      I4 => \s_opptr_reg_n_0_[0]\,
      I5 => \s_opptr_reg_n_0_[3]\,
      O => \s_opptr[7]_i_4_n_0\
    );
\s_opptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => s_opptr(0),
      Q => \s_opptr_reg_n_0_[0]\
    );
\s_opptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => \s_opptr[1]_i_1_n_0\,
      Q => \s_opptr_reg_n_0_[1]\
    );
\s_opptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => s_opptr(2),
      Q => \s_opptr_reg_n_0_[2]\
    );
\s_opptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => s_opptr(3),
      Q => \s_opptr_reg_n_0_[3]\
    );
\s_opptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => s_opptr(4),
      Q => \s_opptr_reg_n_0_[4]\
    );
\s_opptr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => s_opptr(5),
      Q => \s_opptr_reg_n_0_[5]\
    );
\s_opptr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => s_opptr(6),
      Q => \s_opptr_reg_n_0_[6]\
    );
\s_opptr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => s_opptr_0(0),
      CLR => s_s_tready_i_2_n_0,
      D => \s_opptr[7]_i_2_n_0\,
      Q => \s_opptr_reg_n_0_[7]\
    );
\s_read_buffer[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => s_axil_valid_reg_n_0,
      I2 => \s_current_state__0\(2),
      I3 => \s_current_state__0\(1),
      I4 => rst_n,
      O => \s_read_buffer[0][31]_i_1_n_0\
    );
\s_read_buffer_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(0),
      Q => \s_read_buffer_reg[0]\(0),
      R => '0'
    );
\s_read_buffer_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(10),
      Q => \s_read_buffer_reg[0]\(10),
      R => '0'
    );
\s_read_buffer_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(11),
      Q => \s_read_buffer_reg[0]\(11),
      R => '0'
    );
\s_read_buffer_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(12),
      Q => \s_read_buffer_reg[0]\(12),
      R => '0'
    );
\s_read_buffer_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(13),
      Q => \s_read_buffer_reg[0]\(13),
      R => '0'
    );
\s_read_buffer_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(14),
      Q => \s_read_buffer_reg[0]\(14),
      R => '0'
    );
\s_read_buffer_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(15),
      Q => \s_read_buffer_reg[0]\(15),
      R => '0'
    );
\s_read_buffer_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(16),
      Q => \s_read_buffer_reg[0]\(16),
      R => '0'
    );
\s_read_buffer_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(17),
      Q => \s_read_buffer_reg[0]\(17),
      R => '0'
    );
\s_read_buffer_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(18),
      Q => \s_read_buffer_reg[0]\(18),
      R => '0'
    );
\s_read_buffer_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(19),
      Q => \s_read_buffer_reg[0]\(19),
      R => '0'
    );
\s_read_buffer_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(1),
      Q => \s_read_buffer_reg[0]\(1),
      R => '0'
    );
\s_read_buffer_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(20),
      Q => \s_read_buffer_reg[0]\(20),
      R => '0'
    );
\s_read_buffer_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(21),
      Q => \s_read_buffer_reg[0]\(21),
      R => '0'
    );
\s_read_buffer_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(22),
      Q => \s_read_buffer_reg[0]\(22),
      R => '0'
    );
\s_read_buffer_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(23),
      Q => \s_read_buffer_reg[0]\(23),
      R => '0'
    );
\s_read_buffer_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(24),
      Q => \s_read_buffer_reg[0]\(24),
      R => '0'
    );
\s_read_buffer_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(25),
      Q => \s_read_buffer_reg[0]\(25),
      R => '0'
    );
\s_read_buffer_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(26),
      Q => \s_read_buffer_reg[0]\(26),
      R => '0'
    );
\s_read_buffer_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(27),
      Q => \s_read_buffer_reg[0]\(27),
      R => '0'
    );
\s_read_buffer_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(28),
      Q => \s_read_buffer_reg[0]\(28),
      R => '0'
    );
\s_read_buffer_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(29),
      Q => \s_read_buffer_reg[0]\(29),
      R => '0'
    );
\s_read_buffer_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(2),
      Q => \s_read_buffer_reg[0]\(2),
      R => '0'
    );
\s_read_buffer_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(30),
      Q => \s_read_buffer_reg[0]\(30),
      R => '0'
    );
\s_read_buffer_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(31),
      Q => \s_read_buffer_reg[0]\(31),
      R => '0'
    );
\s_read_buffer_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(3),
      Q => \s_read_buffer_reg[0]\(3),
      R => '0'
    );
\s_read_buffer_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(4),
      Q => \s_read_buffer_reg[0]\(4),
      R => '0'
    );
\s_read_buffer_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(5),
      Q => \s_read_buffer_reg[0]\(5),
      R => '0'
    );
\s_read_buffer_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(6),
      Q => \s_read_buffer_reg[0]\(6),
      R => '0'
    );
\s_read_buffer_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(7),
      Q => \s_read_buffer_reg[0]\(7),
      R => '0'
    );
\s_read_buffer_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(8),
      Q => \s_read_buffer_reg[0]\(8),
      R => '0'
    );
\s_read_buffer_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_read_buffer[0][31]_i_1_n_0\,
      D => s_axil_data(9),
      Q => \s_read_buffer_reg[0]\(9),
      R => '0'
    );
\s_read_buffer_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[8]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(0),
      O => s_read_buffer_temp(0)
    );
\s_read_buffer_temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[18]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(10),
      O => s_read_buffer_temp(10)
    );
\s_read_buffer_temp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[19]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(11),
      O => s_read_buffer_temp(11)
    );
\s_read_buffer_temp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[20]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(12),
      O => s_read_buffer_temp(12)
    );
\s_read_buffer_temp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[21]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(13),
      O => s_read_buffer_temp(13)
    );
\s_read_buffer_temp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[22]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(14),
      O => s_read_buffer_temp(14)
    );
\s_read_buffer_temp[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[23]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(15),
      O => s_read_buffer_temp(15)
    );
\s_read_buffer_temp[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[24]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(16),
      O => s_read_buffer_temp(16)
    );
\s_read_buffer_temp[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[25]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(17),
      O => s_read_buffer_temp(17)
    );
\s_read_buffer_temp[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[26]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(18),
      O => s_read_buffer_temp(18)
    );
\s_read_buffer_temp[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[27]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(19),
      O => s_read_buffer_temp(19)
    );
\s_read_buffer_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[9]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(1),
      O => s_read_buffer_temp(1)
    );
\s_read_buffer_temp[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[28]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(20),
      O => s_read_buffer_temp(20)
    );
\s_read_buffer_temp[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[29]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(21),
      O => s_read_buffer_temp(21)
    );
\s_read_buffer_temp[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[30]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(22),
      O => s_read_buffer_temp(22)
    );
\s_read_buffer_temp[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073400000"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => \s_op_state__0\(0),
      I2 => s_m_axis_tvalid_i_2_n_0,
      I3 => s_start_reg_n_0,
      I4 => rst_n,
      I5 => \s_op_state__0\(1),
      O => s_read_buffer_temp0
    );
\s_read_buffer_temp[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[31]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(23),
      O => s_read_buffer_temp(23)
    );
\s_read_buffer_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[10]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(2),
      O => s_read_buffer_temp(2)
    );
\s_read_buffer_temp[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => \s_op_state__0\(0),
      I2 => \s_op_state__0\(1),
      I3 => rst_n,
      I4 => s_m_axis_tvalid_i_2_n_0,
      O => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[11]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(3),
      O => s_read_buffer_temp(3)
    );
\s_read_buffer_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[12]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(4),
      O => s_read_buffer_temp(4)
    );
\s_read_buffer_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[13]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(5),
      O => s_read_buffer_temp(5)
    );
\s_read_buffer_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[14]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(6),
      O => s_read_buffer_temp(6)
    );
\s_read_buffer_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[15]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(7),
      O => s_read_buffer_temp(7)
    );
\s_read_buffer_temp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[16]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(8),
      O => s_read_buffer_temp(8)
    );
\s_read_buffer_temp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_read_buffer_temp_reg_n_0_[17]\,
      I1 => \s_op_state__0\(0),
      I2 => \s_read_buffer_reg[0]\(9),
      O => s_read_buffer_temp(9)
    );
\s_read_buffer_temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(0),
      Q => \s_read_buffer_temp_reg_n_0_[0]\,
      R => '0'
    );
\s_read_buffer_temp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(10),
      Q => \s_read_buffer_temp_reg_n_0_[10]\,
      R => '0'
    );
\s_read_buffer_temp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(11),
      Q => \s_read_buffer_temp_reg_n_0_[11]\,
      R => '0'
    );
\s_read_buffer_temp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(12),
      Q => \s_read_buffer_temp_reg_n_0_[12]\,
      R => '0'
    );
\s_read_buffer_temp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(13),
      Q => \s_read_buffer_temp_reg_n_0_[13]\,
      R => '0'
    );
\s_read_buffer_temp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(14),
      Q => \s_read_buffer_temp_reg_n_0_[14]\,
      R => '0'
    );
\s_read_buffer_temp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(15),
      Q => \s_read_buffer_temp_reg_n_0_[15]\,
      R => '0'
    );
\s_read_buffer_temp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(16),
      Q => \s_read_buffer_temp_reg_n_0_[16]\,
      R => '0'
    );
\s_read_buffer_temp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(17),
      Q => \s_read_buffer_temp_reg_n_0_[17]\,
      R => '0'
    );
\s_read_buffer_temp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(18),
      Q => \s_read_buffer_temp_reg_n_0_[18]\,
      R => '0'
    );
\s_read_buffer_temp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(19),
      Q => \s_read_buffer_temp_reg_n_0_[19]\,
      R => '0'
    );
\s_read_buffer_temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(1),
      Q => \s_read_buffer_temp_reg_n_0_[1]\,
      R => '0'
    );
\s_read_buffer_temp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(20),
      Q => \s_read_buffer_temp_reg_n_0_[20]\,
      R => '0'
    );
\s_read_buffer_temp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(21),
      Q => \s_read_buffer_temp_reg_n_0_[21]\,
      R => '0'
    );
\s_read_buffer_temp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(22),
      Q => \s_read_buffer_temp_reg_n_0_[22]\,
      R => '0'
    );
\s_read_buffer_temp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(23),
      Q => \s_read_buffer_temp_reg_n_0_[23]\,
      R => '0'
    );
\s_read_buffer_temp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(24),
      Q => \s_read_buffer_temp_reg_n_0_[24]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(25),
      Q => \s_read_buffer_temp_reg_n_0_[25]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(26),
      Q => \s_read_buffer_temp_reg_n_0_[26]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(27),
      Q => \s_read_buffer_temp_reg_n_0_[27]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(28),
      Q => \s_read_buffer_temp_reg_n_0_[28]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(29),
      Q => \s_read_buffer_temp_reg_n_0_[29]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(2),
      Q => \s_read_buffer_temp_reg_n_0_[2]\,
      R => '0'
    );
\s_read_buffer_temp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(30),
      Q => \s_read_buffer_temp_reg_n_0_[30]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => \s_read_buffer_reg[0]\(31),
      Q => \s_read_buffer_temp_reg_n_0_[31]\,
      R => \s_read_buffer_temp[31]_i_1_n_0\
    );
\s_read_buffer_temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(3),
      Q => \s_read_buffer_temp_reg_n_0_[3]\,
      R => '0'
    );
\s_read_buffer_temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(4),
      Q => \s_read_buffer_temp_reg_n_0_[4]\,
      R => '0'
    );
\s_read_buffer_temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(5),
      Q => \s_read_buffer_temp_reg_n_0_[5]\,
      R => '0'
    );
\s_read_buffer_temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(6),
      Q => \s_read_buffer_temp_reg_n_0_[6]\,
      R => '0'
    );
\s_read_buffer_temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(7),
      Q => \s_read_buffer_temp_reg_n_0_[7]\,
      R => '0'
    );
\s_read_buffer_temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(8),
      Q => \s_read_buffer_temp_reg_n_0_[8]\,
      R => '0'
    );
\s_read_buffer_temp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_read_buffer_temp0,
      D => s_read_buffer_temp(9),
      Q => \s_read_buffer_temp_reg_n_0_[9]\,
      R => '0'
    );
s_s_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF90B09090"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => \s_current_state__0\(1),
      I2 => \s_current_state__0\(2),
      I3 => s_s_tready_i_3_n_0,
      I4 => s_s_tready_i_4_n_0,
      I5 => s_s_tready_i_5_n_0,
      O => s_s_tready
    );
s_s_tready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => s_s_tready_i_2_n_0
    );
s_s_tready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001111"
    )
        port map (
      I0 => \s_byte_pos_reg_n_0_[1]\,
      I1 => \s_byte_pos_reg_n_0_[2]\,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tvalid,
      I4 => \s_byte_pos_reg_n_0_[0]\,
      O => s_s_tready_i_3_n_0
    );
s_s_tready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFFEFFE"
    )
        port map (
      I0 => s_s_tready_i_6_n_0,
      I1 => s_s_tready_i_7_n_0,
      I2 => \s_length_reg_n_0_[7]\,
      I3 => \s_buf_cnt_reg_n_0_[7]\,
      I4 => \s_length_reg_n_0_[6]\,
      I5 => \s_buf_cnt_reg_n_0_[6]\,
      O => s_s_tready_i_4_n_0
    );
s_s_tready_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0FDDCC"
    )
        port map (
      I0 => s_s_tready_i_3_n_0,
      I1 => s_s_tready_i_8_n_0,
      I2 => s_s_tready_i_9_n_0,
      I3 => \s_current_state__0\(0),
      I4 => \s_current_state__0\(1),
      I5 => \s_current_state__0\(2),
      O => s_s_tready_i_5_n_0
    );
s_s_tready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[0]\,
      I1 => \s_length_reg_n_0_[0]\,
      I2 => \s_length_reg_n_0_[2]\,
      I3 => \s_buf_cnt_reg_n_0_[2]\,
      I4 => \s_length_reg_n_0_[1]\,
      I5 => \s_buf_cnt_reg_n_0_[1]\,
      O => s_s_tready_i_6_n_0
    );
s_s_tready_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[3]\,
      I1 => \s_length_reg_n_0_[3]\,
      I2 => \s_length_reg_n_0_[5]\,
      I3 => \s_buf_cnt_reg_n_0_[5]\,
      I4 => \s_length_reg_n_0_[4]\,
      I5 => \s_buf_cnt_reg_n_0_[4]\,
      O => s_s_tready_i_7_n_0
    );
s_s_tready_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555455"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => \s_command[7]_i_3_n_0\,
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(6),
      I5 => s_axis_tdata(4),
      O => s_s_tready_i_8_n_0
    );
s_s_tready_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888888F"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => \s_byte_pos_reg_n_0_[0]\,
      I3 => \s_byte_pos_reg_n_0_[1]\,
      I4 => \s_byte_pos_reg_n_0_[2]\,
      O => s_s_tready_i_9_n_0
    );
s_s_tready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => s_s_tready,
      Q => \^s_axis_tready\
    );
s_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \s_current_state__0\(1),
      I1 => \s_current_state__0\(2),
      I2 => s_axil_valid_reg_n_0,
      I3 => \s_current_state__0\(0),
      I4 => rst_n,
      I5 => s_start_reg_n_0,
      O => s_start_i_1_n_0
    );
s_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_start_i_1_n_0,
      Q => s_start_reg_n_0,
      R => '0'
    );
\s_write_buffer[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \s_buf_cnt[6]_i_5_n_0\,
      I1 => \s_write_buffer[0][31]_i_2_n_0\,
      I2 => \s_buf_cnt_reg_n_0_[7]\,
      I3 => \s_buf_cnt_reg_n_0_[2]\,
      I4 => rst_n,
      O => \s_write_buffer_reg[0]0\
    );
\s_write_buffer[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_buf_cnt_reg_n_0_[0]\,
      I1 => \s_buf_cnt_reg_n_0_[1]\,
      I2 => \s_buf_cnt_reg_n_0_[3]\,
      I3 => \s_buf_cnt_reg_n_0_[5]\,
      I4 => \s_buf_cnt_reg_n_0_[4]\,
      I5 => \s_buf_cnt_reg_n_0_[6]\,
      O => \s_write_buffer[0][31]_i_2_n_0\
    );
\s_write_buffer_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(0),
      Q => \s_write_buffer_reg[0]\(0),
      R => '0'
    );
\s_write_buffer_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(10),
      Q => \s_write_buffer_reg[0]\(10),
      R => '0'
    );
\s_write_buffer_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(11),
      Q => \s_write_buffer_reg[0]\(11),
      R => '0'
    );
\s_write_buffer_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(12),
      Q => \s_write_buffer_reg[0]\(12),
      R => '0'
    );
\s_write_buffer_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(13),
      Q => \s_write_buffer_reg[0]\(13),
      R => '0'
    );
\s_write_buffer_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(14),
      Q => \s_write_buffer_reg[0]\(14),
      R => '0'
    );
\s_write_buffer_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(15),
      Q => \s_write_buffer_reg[0]\(15),
      R => '0'
    );
\s_write_buffer_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(16),
      Q => \s_write_buffer_reg[0]\(16),
      R => '0'
    );
\s_write_buffer_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(17),
      Q => \s_write_buffer_reg[0]\(17),
      R => '0'
    );
\s_write_buffer_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(18),
      Q => \s_write_buffer_reg[0]\(18),
      R => '0'
    );
\s_write_buffer_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(19),
      Q => \s_write_buffer_reg[0]\(19),
      R => '0'
    );
\s_write_buffer_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(1),
      Q => \s_write_buffer_reg[0]\(1),
      R => '0'
    );
\s_write_buffer_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(20),
      Q => \s_write_buffer_reg[0]\(20),
      R => '0'
    );
\s_write_buffer_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(21),
      Q => \s_write_buffer_reg[0]\(21),
      R => '0'
    );
\s_write_buffer_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(22),
      Q => \s_write_buffer_reg[0]\(22),
      R => '0'
    );
\s_write_buffer_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(23),
      Q => \s_write_buffer_reg[0]\(23),
      R => '0'
    );
\s_write_buffer_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(24),
      Q => \s_write_buffer_reg[0]\(24),
      R => '0'
    );
\s_write_buffer_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(25),
      Q => \s_write_buffer_reg[0]\(25),
      R => '0'
    );
\s_write_buffer_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(26),
      Q => \s_write_buffer_reg[0]\(26),
      R => '0'
    );
\s_write_buffer_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(27),
      Q => \s_write_buffer_reg[0]\(27),
      R => '0'
    );
\s_write_buffer_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(28),
      Q => \s_write_buffer_reg[0]\(28),
      R => '0'
    );
\s_write_buffer_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(29),
      Q => \s_write_buffer_reg[0]\(29),
      R => '0'
    );
\s_write_buffer_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(2),
      Q => \s_write_buffer_reg[0]\(2),
      R => '0'
    );
\s_write_buffer_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(30),
      Q => \s_write_buffer_reg[0]\(30),
      R => '0'
    );
\s_write_buffer_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(31),
      Q => \s_write_buffer_reg[0]\(31),
      R => '0'
    );
\s_write_buffer_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(3),
      Q => \s_write_buffer_reg[0]\(3),
      R => '0'
    );
\s_write_buffer_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(4),
      Q => \s_write_buffer_reg[0]\(4),
      R => '0'
    );
\s_write_buffer_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(5),
      Q => \s_write_buffer_reg[0]\(5),
      R => '0'
    );
\s_write_buffer_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(6),
      Q => \s_write_buffer_reg[0]\(6),
      R => '0'
    );
\s_write_buffer_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(7),
      Q => \s_write_buffer_reg[0]\(7),
      R => '0'
    );
\s_write_buffer_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(8),
      Q => \s_write_buffer_reg[0]\(8),
      R => '0'
    );
\s_write_buffer_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_write_buffer_reg[0]0\,
      D => s_write_buffer_temp(9),
      Q => \s_write_buffer_reg[0]\(9),
      R => '0'
    );
\s_write_buffer_temp[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => s_s_tready_i_4_n_0,
      I1 => rst_n,
      I2 => \s_current_state__0\(2),
      I3 => \s_write_buffer_temp[31]_i_2_n_0\,
      I4 => \s_current_state__0\(1),
      I5 => \s_current_state__0\(0),
      O => s_write_buffer_temp0
    );
\s_write_buffer_temp[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => \s_byte_pos_reg_n_0_[0]\,
      I3 => \s_byte_pos_reg_n_0_[1]\,
      I4 => \s_byte_pos_reg_n_0_[2]\,
      O => \s_write_buffer_temp[31]_i_2_n_0\
    );
\s_write_buffer_temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(0),
      Q => s_write_buffer_temp(0),
      R => '0'
    );
\s_write_buffer_temp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(2),
      Q => s_write_buffer_temp(10),
      R => '0'
    );
\s_write_buffer_temp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(3),
      Q => s_write_buffer_temp(11),
      R => '0'
    );
\s_write_buffer_temp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(4),
      Q => s_write_buffer_temp(12),
      R => '0'
    );
\s_write_buffer_temp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(5),
      Q => s_write_buffer_temp(13),
      R => '0'
    );
\s_write_buffer_temp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(6),
      Q => s_write_buffer_temp(14),
      R => '0'
    );
\s_write_buffer_temp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(7),
      Q => s_write_buffer_temp(15),
      R => '0'
    );
\s_write_buffer_temp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(8),
      Q => s_write_buffer_temp(16),
      R => '0'
    );
\s_write_buffer_temp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(9),
      Q => s_write_buffer_temp(17),
      R => '0'
    );
\s_write_buffer_temp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(10),
      Q => s_write_buffer_temp(18),
      R => '0'
    );
\s_write_buffer_temp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(11),
      Q => s_write_buffer_temp(19),
      R => '0'
    );
\s_write_buffer_temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(1),
      Q => s_write_buffer_temp(1),
      R => '0'
    );
\s_write_buffer_temp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(12),
      Q => s_write_buffer_temp(20),
      R => '0'
    );
\s_write_buffer_temp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(13),
      Q => s_write_buffer_temp(21),
      R => '0'
    );
\s_write_buffer_temp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(14),
      Q => s_write_buffer_temp(22),
      R => '0'
    );
\s_write_buffer_temp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(15),
      Q => s_write_buffer_temp(23),
      R => '0'
    );
\s_write_buffer_temp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(16),
      Q => s_write_buffer_temp(24),
      R => '0'
    );
\s_write_buffer_temp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(17),
      Q => s_write_buffer_temp(25),
      R => '0'
    );
\s_write_buffer_temp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(18),
      Q => s_write_buffer_temp(26),
      R => '0'
    );
\s_write_buffer_temp_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(19),
      Q => s_write_buffer_temp(27),
      R => '0'
    );
\s_write_buffer_temp_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(20),
      Q => s_write_buffer_temp(28),
      R => '0'
    );
\s_write_buffer_temp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(21),
      Q => s_write_buffer_temp(29),
      R => '0'
    );
\s_write_buffer_temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(2),
      Q => s_write_buffer_temp(2),
      R => '0'
    );
\s_write_buffer_temp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(22),
      Q => s_write_buffer_temp(30),
      R => '0'
    );
\s_write_buffer_temp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(23),
      Q => s_write_buffer_temp(31),
      R => '0'
    );
\s_write_buffer_temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(3),
      Q => s_write_buffer_temp(3),
      R => '0'
    );
\s_write_buffer_temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(4),
      Q => s_write_buffer_temp(4),
      R => '0'
    );
\s_write_buffer_temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(5),
      Q => s_write_buffer_temp(5),
      R => '0'
    );
\s_write_buffer_temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(6),
      Q => s_write_buffer_temp(6),
      R => '0'
    );
\s_write_buffer_temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_axis_tdata(7),
      Q => s_write_buffer_temp(7),
      R => '0'
    );
\s_write_buffer_temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(0),
      Q => s_write_buffer_temp(8),
      R => '0'
    );
\s_write_buffer_temp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_buffer_temp0,
      D => s_write_buffer_temp(1),
      Q => s_write_buffer_temp(9),
      R => '0'
    );
start_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => start_read_i_2_n_0,
      I1 => start_read_i_3_n_0,
      I2 => start_read_i_4_n_0,
      I3 => start_read_i_5_n_0,
      I4 => start_read_i_6_n_0,
      I5 => \s_byte_pos[2]_i_5_n_0\,
      O => start_read
    );
start_read_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \s_command_reg_n_0_[2]\,
      I1 => \s_command_reg_n_0_[0]\,
      I2 => \s_command_reg_n_0_[3]\,
      I3 => \s_length_reg_n_0_[5]\,
      O => start_read_i_2_n_0
    );
start_read_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \s_length_reg_n_0_[0]\,
      I1 => \s_command_reg_n_0_[1]\,
      I2 => \s_length_reg_n_0_[1]\,
      I3 => \s_length_reg_n_0_[7]\,
      O => start_read_i_3_n_0
    );
start_read_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_length_reg_n_0_[6]\,
      I1 => \s_length_reg_n_0_[2]\,
      I2 => \s_length_reg_n_0_[4]\,
      I3 => \s_length_reg_n_0_[3]\,
      O => start_read_i_4_n_0
    );
start_read_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_command_reg_n_0_[6]\,
      I1 => \s_command_reg_n_0_[4]\,
      I2 => \s_command_reg_n_0_[7]\,
      I3 => \s_command_reg_n_0_[5]\,
      O => start_read_i_5_n_0
    );
start_read_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \s_current_state__0\(0),
      I1 => \s_current_state__0\(1),
      I2 => \s_current_state__0\(2),
      O => start_read_i_6_n_0
    );
start_read_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => start_read,
      Q => start_read_reg_n_0
    );
start_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3400"
    )
        port map (
      I0 => s_s_tready_i_4_n_0,
      I1 => \s_current_state__0\(0),
      I2 => \s_current_state__0\(1),
      I3 => \s_current_state__0\(2),
      O => start_write
    );
start_write_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_s_tready_i_2_n_0,
      D => start_write,
      Q => start_write_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_axi_protocol_0_0_axi_protocol_wrapper is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_axi_protocol_0_0_axi_protocol_wrapper : entity is "axi_protocol_wrapper";
end cadc_system_axi_protocol_0_0_axi_protocol_wrapper;

architecture STRUCTURE of cadc_system_axi_protocol_0_0_axi_protocol_wrapper is
begin
u_axi_protocol: entity work.cadc_system_axi_protocol_0_0_axi_protocol
     port map (
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rst_n => rst_n,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_axi_protocol_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cadc_system_axi_protocol_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cadc_system_axi_protocol_0_0 : entity is "cadc_system_axi_protocol_0_0,axi_protocol_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cadc_system_axi_protocol_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cadc_system_axi_protocol_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of cadc_system_axi_protocol_0_0 : entity is "axi_protocol_wrapper,Vivado 2025.2";
end cadc_system_axi_protocol_0_0;

architecture STRUCTURE of cadc_system_axi_protocol_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute x_interface_info of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute x_interface_info of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute x_interface_info of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute x_interface_info of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute x_interface_info of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute x_interface_info of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute x_interface_info of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute x_interface_info of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute x_interface_info of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_mode of rst_n : signal is "slave rst_n";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute x_interface_info of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  attribute x_interface_info of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute x_interface_mode of m_axi_awaddr : signal is "master m_axi";
  attribute x_interface_parameter of m_axi_awaddr : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  attribute x_interface_info of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute x_interface_info of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute x_interface_info of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute x_interface_info of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute x_interface_info of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_mode of m_axis_tdata : signal is "master m_axis";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_mode of s_axis_tdata : signal is "slave s_axis";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \^m_axi_arvalid\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arvalid <= \^m_axi_arvalid\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \^m_axi_awvalid\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awvalid <= \^m_axi_awvalid\;
  m_axi_wstrb(3) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(2) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(1) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(0) <= \^m_axi_wstrb\(2);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.cadc_system_axi_protocol_0_0_axi_protocol_wrapper
     port map (
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => \^m_axi_arvalid\,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => \^m_axi_awvalid\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => \^m_axi_wstrb\(2),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rst_n => rst_n,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
