-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sun Apr 12 13:01:22 2026
-- Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/aptay/Dropbox/adiuvo/f14-CADC/implementation/vivado_proj_tile/cadc_tile.gen/sources_1/bd/cadc_system/ip/cadc_system_uart_0_0/cadc_system_uart_0_0_sim_netlist.vhdl
-- Design      : cadc_system_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_uart_0_0_uart is
  port (
    \FSM_onehot_current_state_reg[0]_0\ : out STD_LOGIC;
    tx : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cadc_system_uart_0_0_uart : entity is "uart";
end cadc_system_uart_0_0_uart;

architecture STRUCTURE of cadc_system_uart_0_0_uart is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_4_n_0\ : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal baud_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \baud_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \baud_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \baud_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \baud_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \baud_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \baud_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal baud_en1_out : STD_LOGIC;
  signal baud_en_reg_n_0 : STD_LOGIC;
  signal bit_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \bit_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[9]_i_4_n_0\ : STD_LOGIC;
  signal bit_count_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[9]\ : STD_LOGIC;
  signal capture : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \capture[7]_i_3_n_0\ : STD_LOGIC;
  signal \capture[7]_i_4_n_0\ : STD_LOGIC;
  signal capture_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \capture_reg_n_0_[0]\ : STD_LOGIC;
  signal \capture_reg_n_0_[1]\ : STD_LOGIC;
  signal \capture_reg_n_0_[2]\ : STD_LOGIC;
  signal \capture_reg_n_0_[3]\ : STD_LOGIC;
  signal \capture_reg_n_0_[4]\ : STD_LOGIC;
  signal \capture_reg_n_0_[5]\ : STD_LOGIC;
  signal \capture_reg_n_0_[6]\ : STD_LOGIC;
  signal \capture_reg_n_0_[7]\ : STD_LOGIC;
  signal load_tx_i_1_n_0 : STD_LOGIC;
  signal load_tx_reg_n_0 : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \meta_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \meta_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \meta_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pos_count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pos_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \pos_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \pos_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \pos_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \pos_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \pos_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \pos_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \pos_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \pos_count_reg_n_0_[3]\ : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tmr_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \tmr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \tmr_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \tx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \tx_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_reg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "idle:001,set_tx:010,wait_tx:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "idle:001,set_tx:010,wait_tx:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "idle:001,set_tx:010,wait_tx:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[0]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[0]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "idle:000,start:001,wait_axis:100,sample:010,check:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "idle:000,start:001,wait_axis:100,sample:010,check:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "idle:000,start:001,wait_axis:100,sample:010,check:011";
  attribute SOFT_HLUTNM of \baud_counter[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \baud_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \baud_counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \baud_counter[6]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \baud_counter[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \baud_counter[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \baud_counter[9]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of baud_en_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_count[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_count[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \capture[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \capture[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \capture[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \capture[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \capture[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \capture[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \capture[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \capture[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pos_count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pos_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pos_count[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmr_reg[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tmr_reg[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tmr_reg[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tmr_reg[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tmr_reg[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tmr_reg[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tmr_reg[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tmr_reg[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tmr_reg[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tmr_reg[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_reg[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_reg[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_reg[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_reg[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_reg[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_reg[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_reg[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_reg[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_reg[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_reg[9]_i_1\ : label is "soft_lutpair9";
begin
  \FSM_onehot_current_state_reg[0]_0\ <= \^fsm_onehot_current_state_reg[0]_0\;
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I2 => \^fsm_onehot_current_state_reg[0]_0\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAFFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \^fsm_onehot_current_state_reg[0]_0\,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_current_state[0]_i_3_n_0\,
      I4 => \FSM_onehot_current_state[0]_i_4_n_0\,
      I5 => \tmr_reg_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[0]_i_2_n_0\
    );
\FSM_onehot_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[3]\,
      I1 => \tmr_reg_reg_n_0_[4]\,
      I2 => \tmr_reg_reg_n_0_[1]\,
      I3 => \tmr_reg_reg_n_0_[2]\,
      I4 => \tmr_reg_reg_n_0_[6]\,
      I5 => \tmr_reg_reg_n_0_[5]\,
      O => \FSM_onehot_current_state[0]_i_3_n_0\
    );
\FSM_onehot_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[9]\,
      I1 => \tmr_reg_reg_n_0_[10]\,
      I2 => \tmr_reg_reg_n_0_[7]\,
      I3 => \tmr_reg_reg_n_0_[8]\,
      I4 => \tmr_reg_reg_n_0_[11]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[0]_i_4_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[0]_0\,
      I1 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \^fsm_onehot_current_state_reg[0]_0\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF04550000"
    )
        port map (
      I0 => rx_state(2),
      I1 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      I3 => rx_state(1),
      I4 => \FSM_sequential_rx_state[0]_i_3_n_0\,
      I5 => rx_state(0),
      O => \FSM_sequential_rx_state[0]_i_1_n_0\
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \pos_count_reg_n_0_[3]\,
      I1 => \pos_count_reg_n_0_[2]\,
      I2 => \pos_count_reg_n_0_[1]\,
      I3 => \pos_count_reg_n_0_[0]\,
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFBB0000"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => \FSM_sequential_rx_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_rx_state[0]_i_4_n_0\,
      I4 => \FSM_sequential_rx_state[2]_i_3_n_0\,
      I5 => \FSM_sequential_rx_state[0]_i_5_n_0\,
      O => \FSM_sequential_rx_state[0]_i_3_n_0\
    );
\FSM_sequential_rx_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \bit_count_reg_n_0_[6]\,
      I1 => \bit_count_reg_n_0_[9]\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[4]\,
      O => \FSM_sequential_rx_state[0]_i_4_n_0\
    );
\FSM_sequential_rx_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rx_state(1),
      I1 => m_axis_tready,
      I2 => rx_state(2),
      I3 => rx_state(0),
      O => \FSM_sequential_rx_state[0]_i_5_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333F0080"
    )
        port map (
      I0 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_rx_state[2]_i_3_n_0\,
      I2 => rx_state(0),
      I3 => rx_state(2),
      I4 => rx_state(1),
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33C033C070007300"
    )
        port map (
      I0 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_rx_state[2]_i_3_n_0\,
      I2 => rx_state(0),
      I3 => rx_state(2),
      I4 => m_axis_tready,
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[3]\,
      I2 => \bit_count_reg_n_0_[9]\,
      I3 => \bit_count_reg_n_0_[6]\,
      I4 => \FSM_sequential_rx_state[2]_i_4_n_0\,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554544"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => \meta_reg_reg_n_0_[2]\,
      I3 => p_0_in(7),
      I4 => rx_state(0),
      O => \FSM_sequential_rx_state[2]_i_3_n_0\
    );
\FSM_sequential_rx_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bit_count_reg_n_0_[8]\,
      I1 => \bit_count_reg_n_0_[2]\,
      I2 => \bit_count_reg_n_0_[7]\,
      I3 => \bit_count_reg_n_0_[5]\,
      I4 => \bit_count_reg_n_0_[0]\,
      I5 => \bit_count_reg_n_0_[1]\,
      O => \FSM_sequential_rx_state[2]_i_4_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \FSM_sequential_rx_state[0]_i_1_n_0\,
      Q => rx_state(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => rx_state(1)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2)
    );
\baud_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => baud_counter(0),
      I1 => load_tx_reg_n_0,
      O => \baud_counter[0]_i_1_n_0\
    );
\baud_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(1),
      I3 => baud_counter(0),
      O => \baud_counter[1]_i_1_n_0\
    );
\baud_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(2),
      I3 => baud_counter(0),
      I4 => baud_counter(1),
      O => \baud_counter[2]_i_1_n_0\
    );
\baud_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440404040404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(3),
      I3 => baud_counter(2),
      I4 => baud_counter(1),
      I5 => baud_counter(0),
      O => \baud_counter[3]_i_1_n_0\
    );
\baud_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404004404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(4),
      I3 => baud_counter(3),
      I4 => baud_counter(2),
      I5 => \baud_counter[6]_i_2_n_0\,
      O => \baud_counter[4]_i_1_n_0\
    );
\baud_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440404040404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(5),
      I3 => \baud_counter[9]_i_3_n_0\,
      I4 => baud_counter(1),
      I5 => baud_counter(0),
      O => \baud_counter[5]_i_1_n_0\
    );
\baud_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404004404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(6),
      I3 => \baud_counter[9]_i_3_n_0\,
      I4 => baud_counter(5),
      I5 => \baud_counter[6]_i_2_n_0\,
      O => \baud_counter[6]_i_1_n_0\
    );
\baud_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => baud_counter(0),
      I1 => baud_counter(1),
      O => \baud_counter[6]_i_2_n_0\
    );
\baud_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400440"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(7),
      I3 => \baud_counter[9]_i_3_n_0\,
      I4 => \baud_counter[8]_i_2_n_0\,
      O => \baud_counter[7]_i_1_n_0\
    );
\baud_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404004404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(8),
      I3 => baud_counter(7),
      I4 => \baud_counter[9]_i_3_n_0\,
      I5 => \baud_counter[8]_i_2_n_0\,
      O => \baud_counter[8]_i_1_n_0\
    );
\baud_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => baud_counter(5),
      I1 => baud_counter(0),
      I2 => baud_counter(1),
      I3 => baud_counter(6),
      O => \baud_counter[8]_i_2_n_0\
    );
\baud_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404004404040"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \baud_counter[9]_i_2_n_0\,
      I2 => baud_counter(9),
      I3 => baud_counter(7),
      I4 => \baud_counter[9]_i_3_n_0\,
      I5 => \baud_counter[9]_i_4_n_0\,
      O => \baud_counter[9]_i_1_n_0\
    );
\baud_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => baud_counter(3),
      I1 => baud_counter(4),
      I2 => baud_counter(9),
      I3 => baud_counter(7),
      I4 => baud_counter(2),
      I5 => \baud_counter[9]_i_4_n_0\,
      O => \baud_counter[9]_i_2_n_0\
    );
\baud_counter[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => baud_counter(3),
      I1 => baud_counter(2),
      I2 => baud_counter(4),
      O => \baud_counter[9]_i_3_n_0\
    );
\baud_counter[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => baud_counter(6),
      I1 => baud_counter(1),
      I2 => baud_counter(0),
      I3 => baud_counter(5),
      I4 => baud_counter(8),
      O => \baud_counter[9]_i_4_n_0\
    );
\baud_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[0]_i_1_n_0\,
      Q => baud_counter(0)
    );
\baud_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[1]_i_1_n_0\,
      Q => baud_counter(1)
    );
\baud_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[2]_i_1_n_0\,
      Q => baud_counter(2)
    );
\baud_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[3]_i_1_n_0\,
      Q => baud_counter(3)
    );
\baud_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[4]_i_1_n_0\,
      Q => baud_counter(4)
    );
\baud_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[5]_i_1_n_0\,
      Q => baud_counter(5)
    );
\baud_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[6]_i_1_n_0\,
      Q => baud_counter(6)
    );
\baud_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[7]_i_1_n_0\,
      Q => baud_counter(7)
    );
\baud_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[8]_i_1_n_0\,
      Q => baud_counter(8)
    );
\baud_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \baud_counter[9]_i_1_n_0\,
      Q => baud_counter(9)
    );
baud_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \baud_counter[9]_i_2_n_0\,
      I1 => load_tx_reg_n_0,
      O => baud_en1_out
    );
baud_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => baud_en1_out,
      Q => baud_en_reg_n_0
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[0]\,
      O => bit_count(0)
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[0]\,
      O => bit_count(1)
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[2]\,
      O => bit_count(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[3]\,
      O => bit_count(3)
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[2]\,
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[1]\,
      I4 => \bit_count_reg_n_0_[3]\,
      I5 => \bit_count_reg_n_0_[4]\,
      O => bit_count(4)
    );
\bit_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count[7]_i_2_n_0\,
      I2 => \bit_count_reg_n_0_[4]\,
      I3 => \bit_count_reg_n_0_[5]\,
      O => bit_count(5)
    );
\bit_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[4]\,
      I2 => \bit_count_reg_n_0_[5]\,
      I3 => \bit_count[7]_i_2_n_0\,
      I4 => \bit_count_reg_n_0_[6]\,
      O => bit_count(6)
    );
\bit_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count[7]_i_2_n_0\,
      I2 => \bit_count_reg_n_0_[5]\,
      I3 => \bit_count_reg_n_0_[4]\,
      I4 => \bit_count_reg_n_0_[6]\,
      I5 => \bit_count_reg_n_0_[7]\,
      O => bit_count(7)
    );
\bit_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \bit_count_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[3]\,
      O => \bit_count[7]_i_2_n_0\
    );
\bit_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \bit_count[9]_i_4_n_0\,
      I1 => \bit_count_reg_n_0_[7]\,
      I2 => \bit_count_reg_n_0_[6]\,
      I3 => \bit_count[9]_i_3_n_0\,
      I4 => \bit_count_reg_n_0_[8]\,
      O => bit_count(8)
    );
\bit_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0F02"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \meta_reg_reg_n_0_[2]\,
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => bit_count_1(0)
    );
\bit_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF400000000000"
    )
        port map (
      I0 => \bit_count[9]_i_3_n_0\,
      I1 => \bit_count_reg_n_0_[6]\,
      I2 => \bit_count_reg_n_0_[7]\,
      I3 => \bit_count_reg_n_0_[8]\,
      I4 => \bit_count_reg_n_0_[9]\,
      I5 => \bit_count[9]_i_4_n_0\,
      O => bit_count(9)
    );
\bit_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[5]\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[1]\,
      I4 => \bit_count_reg_n_0_[0]\,
      I5 => \bit_count_reg_n_0_[2]\,
      O => \bit_count[9]_i_3_n_0\
    );
\bit_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5055555540444044"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => \FSM_sequential_rx_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_rx_state[0]_i_4_n_0\,
      I4 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      I5 => rx_state(1),
      O => \bit_count[9]_i_4_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(0),
      Q => \bit_count_reg_n_0_[0]\
    );
\bit_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(1),
      Q => \bit_count_reg_n_0_[1]\
    );
\bit_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(2),
      Q => \bit_count_reg_n_0_[2]\
    );
\bit_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(3),
      Q => \bit_count_reg_n_0_[3]\
    );
\bit_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(4),
      Q => \bit_count_reg_n_0_[4]\
    );
\bit_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(5),
      Q => \bit_count_reg_n_0_[5]\
    );
\bit_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(6),
      Q => \bit_count_reg_n_0_[6]\
    );
\bit_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(7),
      Q => \bit_count_reg_n_0_[7]\
    );
\bit_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(8),
      Q => \bit_count_reg_n_0_[8]\
    );
\bit_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count_1(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => bit_count(9),
      Q => \bit_count_reg_n_0_[9]\
    );
\capture[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[1]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(0)
    );
\capture[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[2]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(1)
    );
\capture[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[3]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(2)
    );
\capture[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[4]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(3)
    );
\capture[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[5]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(4)
    );
\capture[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[6]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(5)
    );
\capture[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \capture_reg_n_0_[7]\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(6)
    );
\capture[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020AAAAAAAA"
    )
        port map (
      I0 => \pos_count[3]_i_3_n_0\,
      I1 => \bit_count_reg_n_0_[9]\,
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[6]\,
      I4 => \capture[7]_i_3_n_0\,
      I5 => rx_state(1),
      O => capture_0(0)
    );
\capture[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_0_in(7),
      I1 => rx_state(2),
      I2 => rx_state(1),
      O => capture(7)
    );
\capture[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \bit_count_reg_n_0_[5]\,
      I1 => \bit_count_reg_n_0_[4]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \bit_count_reg_n_0_[8]\,
      I4 => \capture[7]_i_4_n_0\,
      O => \capture[7]_i_3_n_0\
    );
\capture[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bit_count_reg_n_0_[3]\,
      I1 => \pos_count_reg_n_0_[3]\,
      I2 => \bit_count_reg_n_0_[7]\,
      I3 => \bit_count_reg_n_0_[1]\,
      O => \capture[7]_i_4_n_0\
    );
\capture_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(0),
      Q => \capture_reg_n_0_[0]\
    );
\capture_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(1),
      Q => \capture_reg_n_0_[1]\
    );
\capture_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(2),
      Q => \capture_reg_n_0_[2]\
    );
\capture_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(3),
      Q => \capture_reg_n_0_[3]\
    );
\capture_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(4),
      Q => \capture_reg_n_0_[4]\
    );
\capture_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(5),
      Q => \capture_reg_n_0_[5]\
    );
\capture_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(6),
      Q => \capture_reg_n_0_[6]\
    );
\capture_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => capture_0(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => capture(7),
      Q => \capture_reg_n_0_[7]\
    );
load_tx_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[0]_0\,
      I1 => s_axis_tvalid,
      O => load_tx_i_1_n_0
    );
load_tx_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => load_tx_i_1_n_0,
      Q => load_tx_reg_n_0
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[0]\,
      Q => m_axis_tdata(0)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[1]\,
      Q => m_axis_tdata(1)
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[2]\,
      Q => m_axis_tdata(2)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[3]\,
      Q => m_axis_tdata(3)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[4]\,
      Q => m_axis_tdata(4)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[5]\,
      Q => m_axis_tdata(5)
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[6]\,
      Q => m_axis_tdata(6)
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \capture_reg_n_0_[7]\,
      Q => m_axis_tdata(7)
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFA00A0"
    )
        port map (
      I0 => rx_state(0),
      I1 => m_axis_tready,
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => \^m_axis_tvalid\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \tx_reg[0]_i_3_n_0\,
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\
    );
\meta_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \meta_reg_reg_n_0_[0]\
    );
\meta_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \meta_reg_reg_n_0_[0]\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \meta_reg_reg_n_0_[1]\
    );
\meta_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \meta_reg_reg_n_0_[1]\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \meta_reg_reg_n_0_[2]\
    );
\meta_reg_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \meta_reg_reg_n_0_[2]\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => p_0_in(7)
    );
\payload_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(0),
      Q => a(0)
    );
\payload_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(1),
      Q => a(1)
    );
\payload_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(2),
      Q => a(2)
    );
\payload_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(3),
      Q => a(3)
    );
\payload_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(4),
      Q => a(4)
    );
\payload_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(5),
      Q => a(5)
    );
\payload_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(6),
      Q => a(6)
    );
\payload_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_tx_i_1_n_0,
      CLR => \tx_reg[0]_i_3_n_0\,
      D => s_axis_tdata(7),
      Q => a(7)
    );
\pos_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => \pos_count_reg_n_0_[0]\,
      O => \pos_count[0]_i_1_n_0\
    );
\pos_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(2),
      I2 => \pos_count_reg_n_0_[0]\,
      I3 => \pos_count_reg_n_0_[1]\,
      O => \pos_count[1]_i_1_n_0\
    );
\pos_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404040"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => \pos_count_reg_n_0_[2]\,
      I3 => \pos_count_reg_n_0_[1]\,
      I4 => \pos_count_reg_n_0_[0]\,
      O => \pos_count[2]_i_1_n_0\
    );
\pos_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => \pos_count[3]_i_3_n_0\,
      I1 => rx_state(1),
      I2 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I3 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      O => pos_count(0)
    );
\pos_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440404040404040"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => \pos_count_reg_n_0_[3]\,
      I3 => \pos_count_reg_n_0_[2]\,
      I4 => \pos_count_reg_n_0_[0]\,
      I5 => \pos_count_reg_n_0_[1]\,
      O => \pos_count[3]_i_2_n_0\
    );
\pos_count[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F2"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \meta_reg_reg_n_0_[2]\,
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => rx_state(0),
      O => \pos_count[3]_i_3_n_0\
    );
\pos_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pos_count(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \pos_count[0]_i_1_n_0\,
      Q => \pos_count_reg_n_0_[0]\
    );
\pos_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pos_count(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \pos_count[1]_i_1_n_0\,
      Q => \pos_count_reg_n_0_[1]\
    );
\pos_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pos_count(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \pos_count[2]_i_1_n_0\,
      Q => \pos_count_reg_n_0_[2]\
    );
\pos_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pos_count(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \pos_count[3]_i_2_n_0\,
      Q => \pos_count_reg_n_0_[3]\
    );
\tmr_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[9]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[10]_i_1_n_0\
    );
\tmr_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[10]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[11]_i_1_n_0\
    );
\tmr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[0]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[1]_i_1_n_0\
    );
\tmr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[1]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[2]_i_1_n_0\
    );
\tmr_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[2]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[3]_i_1_n_0\
    );
\tmr_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[3]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[4]_i_1_n_0\
    );
\tmr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[4]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[5]_i_1_n_0\
    );
\tmr_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[5]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[6]_i_1_n_0\
    );
\tmr_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[6]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[7]_i_1_n_0\
    );
\tmr_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[7]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[8]_i_1_n_0\
    );
\tmr_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tmr_reg_reg_n_0_[8]\,
      I1 => load_tx_reg_n_0,
      O => \tmr_reg[9]_i_1_n_0\
    );
\tmr_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => load_tx_reg_n_0,
      Q => \tmr_reg_reg_n_0_[0]\
    );
\tmr_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[10]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[10]\
    );
\tmr_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[11]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[11]\
    );
\tmr_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[1]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[1]\
    );
\tmr_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[2]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[2]\
    );
\tmr_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[3]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[3]\
    );
\tmr_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[4]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[4]\
    );
\tmr_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[5]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[5]\
    );
\tmr_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[6]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[6]\
    );
\tmr_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[7]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[7]\
    );
\tmr_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[8]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[8]\
    );
\tmr_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      CLR => \tx_reg[0]_i_3_n_0\,
      D => \tmr_reg[9]_i_1_n_0\,
      Q => \tmr_reg_reg_n_0_[9]\
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => baud_en_reg_n_0,
      I1 => load_tx_reg_n_0,
      O => tmr_reg(0)
    );
\tx_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tx_reg_reg_n_0_[1]\,
      I1 => load_tx_reg_n_0,
      O => \tx_reg[0]_i_2_n_0\
    );
\tx_reg[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \tx_reg[0]_i_3_n_0\
    );
\tx_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load_tx_reg_n_0,
      I1 => \tx_reg_reg_n_0_[11]\,
      O => \tx_reg[10]_i_1_n_0\
    );
\tx_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(0),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[2]\,
      O => \tx_reg[1]_i_1_n_0\
    );
\tx_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(1),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[3]\,
      O => \tx_reg[2]_i_1_n_0\
    );
\tx_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(2),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[4]\,
      O => \tx_reg[3]_i_1_n_0\
    );
\tx_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(3),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[5]\,
      O => \tx_reg[4]_i_1_n_0\
    );
\tx_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(4),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[6]\,
      O => \tx_reg[5]_i_1_n_0\
    );
\tx_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(5),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[7]\,
      O => \tx_reg[6]_i_1_n_0\
    );
\tx_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(6),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[8]\,
      O => \tx_reg[7]_i_1_n_0\
    );
\tx_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(7),
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg_reg_n_0_[9]\,
      O => \tx_reg[8]_i_1_n_0\
    );
\tx_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => \tx_reg_reg_n_0_[10]\,
      I1 => load_tx_reg_n_0,
      I2 => \tx_reg[9]_i_2_n_0\,
      I3 => \tx_reg[9]_i_3_n_0\,
      O => \tx_reg[9]_i_1_n_0\
    );
\tx_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(3),
      I3 => a(4),
      O => \tx_reg[9]_i_2_n_0\
    );
\tx_reg[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(7),
      I3 => a(0),
      O => \tx_reg[9]_i_3_n_0\
    );
\tx_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[0]_i_2_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => tx
    );
\tx_reg_reg[10]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[10]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[10]\
    );
\tx_reg_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => '1',
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[11]\
    );
\tx_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[1]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[1]\
    );
\tx_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[2]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[2]\
    );
\tx_reg_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[3]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[3]\
    );
\tx_reg_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[4]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[4]\
    );
\tx_reg_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[5]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[5]\
    );
\tx_reg_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[6]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[6]\
    );
\tx_reg_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[7]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[7]\
    );
\tx_reg_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[8]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[8]\
    );
\tx_reg_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tmr_reg(0),
      D => \tx_reg[9]_i_1_n_0\,
      PRE => \tx_reg[0]_i_3_n_0\,
      Q => \tx_reg_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cadc_system_uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cadc_system_uart_0_0 : entity is "cadc_system_uart_0_0,uart,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cadc_system_uart_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cadc_system_uart_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of cadc_system_uart_0_0 : entity is "uart,Vivado 2025.2";
end cadc_system_uart_0_0;

architecture STRUCTURE of cadc_system_uart_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_mode of m_axis_tready : signal is "master m_axis";
  attribute x_interface_parameter of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_mode of reset : signal is "slave reset";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_mode of s_axis_tready : signal is "slave s_axis";
  attribute x_interface_parameter of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.cadc_system_uart_0_0_uart
     port map (
      \FSM_onehot_current_state_reg[0]_0\ => s_axis_tready,
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      reset => reset,
      rx => rx,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      tx => tx
    );
end STRUCTURE;
