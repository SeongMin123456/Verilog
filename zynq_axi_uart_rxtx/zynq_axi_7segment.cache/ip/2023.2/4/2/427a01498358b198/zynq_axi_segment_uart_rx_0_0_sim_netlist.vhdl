-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Jan  9 12:20:35 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_uart_rx_0_0_sim_netlist.vhdl
-- Design      : zynq_axi_segment_uart_rx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    rxd : in STD_LOGIC;
    RX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RX_READY : out STD_LOGIC
  );
  attribute CLK_FREQ : integer;
  attribute CLK_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is 100000000;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "soft";
  attribute overrate : integer;
  attribute overrate of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is 54;
  attribute shift : string;
  attribute shift of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b10";
  attribute standby : string;
  attribute standby of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b00";
  attribute start : string;
  attribute start of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b01";
  attribute stop : string;
  attribute stop of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b11";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal \FSM_sequential_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^rx_ready\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of RX_READY : signal is std.standard.true;
  signal baud_cnt : STD_LOGIC;
  signal \baud_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \baud_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal baud_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cnt : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal curr_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal data_cnt : STD_LOGIC;
  signal \data_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^rx_data\ : signal is std.standard.true;
  signal \rx_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \rx_data__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_done : STD_LOGIC;
  attribute MARK_DEBUG of rx_done : signal is std.standard.true;
  signal \sampling[3]_i_2_n_0\ : STD_LOGIC;
  signal \sampling[3]_i_4_n_0\ : STD_LOGIC;
  signal sampling_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal send_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of send_data : signal is std.standard.true;
  signal \send_data[7]_i_1_n_0\ : STD_LOGIC;
  signal send_done_i_1_n_0 : STD_LOGIC;
  signal send_done_i_2_n_0 : STD_LOGIC;
  signal send_done_i_3_n_0 : STD_LOGIC;
  signal send_done_reg_n_0 : STD_LOGIC;
  signal shift_done_i_1_n_0 : STD_LOGIC;
  signal shift_done_i_2_n_0 : STD_LOGIC;
  signal shift_done_reg_n_0 : STD_LOGIC;
  signal start_bit_i_1_n_0 : STD_LOGIC;
  signal start_bit_i_2_n_0 : STD_LOGIC;
  signal start_bit_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "shift:11,start:01,stop:10,standby:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "shift:11,start:01,stop:10,standby:00";
  attribute SOFT_HLUTNM of \baud_cnt[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \baud_cnt[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \baud_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \baud_cnt[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \baud_cnt[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[9]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_5\ : label is "soft_lutpair7";
  attribute KEEP : string;
  attribute KEEP of \rx_data_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \rx_data_reg[0]\ : label is "true";
  attribute KEEP of \rx_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[1]\ : label is "true";
  attribute KEEP of \rx_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[2]\ : label is "true";
  attribute KEEP of \rx_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[3]\ : label is "true";
  attribute KEEP of \rx_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[4]\ : label is "true";
  attribute KEEP of \rx_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[5]\ : label is "true";
  attribute KEEP of \rx_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[6]\ : label is "true";
  attribute KEEP of \rx_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \rx_data_reg[7]\ : label is "true";
  attribute SOFT_HLUTNM of \sampling[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sampling[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sampling[3]_i_3\ : label is "soft_lutpair4";
  attribute KEEP of \send_data_reg[0]\ : label is "yes";
  attribute KEEP of \send_data_reg[1]\ : label is "yes";
  attribute KEEP of \send_data_reg[2]\ : label is "yes";
  attribute KEEP of \send_data_reg[3]\ : label is "yes";
  attribute KEEP of \send_data_reg[4]\ : label is "yes";
  attribute KEEP of \send_data_reg[5]\ : label is "yes";
  attribute KEEP of \send_data_reg[6]\ : label is "yes";
  attribute KEEP of \send_data_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM of send_done_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of send_done_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of shift_done_i_2 : label is "soft_lutpair9";
  attribute mark_debug_string of RX_READY : signal is "true";
  attribute mark_debug_string of RX_DATA : signal is "true";
begin
  RX_READY <= \^rx_ready\;
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89CD0000"
    )
        port map (
      I0 => curr_state(1),
      I1 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I2 => rxd,
      I3 => send_done_reg_n_0,
      I4 => RST,
      O => \FSM_sequential_curr_state[0]_i_1_n_0\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF082A00000000"
    )
        port map (
      I0 => curr_state(1),
      I1 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I2 => shift_done_reg_n_0,
      I3 => \^rx_ready\,
      I4 => \FSM_sequential_curr_state[1]_i_2_n_0\,
      I5 => RST,
      O => \FSM_sequential_curr_state[1]_i_1_n_0\
    );
\FSM_sequential_curr_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAAAAA"
    )
        port map (
      I0 => send_done_reg_n_0,
      I1 => sampling_reg(3),
      I2 => sampling_reg(2),
      I3 => start_bit_reg_n_0,
      I4 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I5 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      O => \FSM_sequential_curr_state[1]_i_2_n_0\
    );
\FSM_sequential_curr_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sampling_reg(0),
      I1 => sampling_reg(1),
      O => \FSM_sequential_curr_state[1]_i_3_n_0\
    );
\FSM_sequential_curr_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => curr_state(1),
      I1 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      O => \FSM_sequential_curr_state[1]_i_4_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_curr_state[0]_i_1_n_0\,
      Q => \FSM_sequential_curr_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_curr_state[1]_i_1_n_0\,
      Q => curr_state(1),
      R => '0'
    );
\baud_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => baud_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\baud_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => baud_cnt_reg(0),
      I1 => baud_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\baud_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => baud_cnt_reg(1),
      I1 => baud_cnt_reg(0),
      I2 => baud_cnt_reg(2),
      O => \baud_cnt[2]_i_1_n_0\
    );
\baud_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \baud_cnt[3]_i_3_n_0\,
      I1 => sampling_reg(3),
      I2 => sampling_reg(2),
      I3 => sampling_reg(1),
      I4 => sampling_reg(0),
      I5 => \sampling[3]_i_4_n_0\,
      O => baud_cnt
    );
\baud_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => baud_cnt_reg(0),
      I1 => baud_cnt_reg(1),
      I2 => baud_cnt_reg(2),
      I3 => baud_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\baud_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => cnt_reg(5),
      O => \baud_cnt[3]_i_3_n_0\
    );
\baud_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => baud_cnt,
      D => \p_0_in__1\(0),
      Q => baud_cnt_reg(0),
      R => cnt
    );
\baud_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => baud_cnt,
      D => \p_0_in__1\(1),
      Q => baud_cnt_reg(1),
      R => cnt
    );
\baud_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => baud_cnt,
      D => \baud_cnt[2]_i_1_n_0\,
      Q => baud_cnt_reg(2),
      R => cnt
    );
\baud_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => baud_cnt,
      D => \p_0_in__1\(3),
      Q => baud_cnt_reg(3),
      R => cnt
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(2),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      I4 => cnt_reg(4),
      O => \cnt[4]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => cnt_reg(4),
      I3 => cnt_reg(1),
      I4 => cnt_reg(3),
      I5 => cnt_reg(5),
      O => \cnt[5]_i_1_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[9]_i_3_n_0\,
      I1 => cnt_reg(6),
      O => \cnt[6]_i_1_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => \cnt[9]_i_3_n_0\,
      I2 => cnt_reg(7),
      O => \cnt[7]_i_1_n_0\
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt[9]_i_3_n_0\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      I3 => cnt_reg(8),
      O => \cnt[8]_i_1_n_0\
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \sampling[3]_i_2_n_0\,
      I1 => curr_state(1),
      I2 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      O => \cnt[9]_i_1_n_0\
    );
\cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt[9]_i_3_n_0\,
      I1 => cnt_reg(8),
      I2 => cnt_reg(7),
      I3 => cnt_reg(6),
      I4 => cnt_reg(9),
      O => \cnt[9]_i_2_n_0\
    );
\cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(1),
      I2 => cnt_reg(5),
      I3 => cnt_reg(2),
      I4 => cnt_reg(0),
      I5 => cnt_reg(4),
      O => \cnt[9]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => cnt_reg(0),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => cnt_reg(1),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[2]_i_1_n_0\,
      Q => cnt_reg(2),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[3]_i_1_n_0\,
      Q => cnt_reg(3),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[4]_i_1_n_0\,
      Q => cnt_reg(4),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[5]_i_1_n_0\,
      Q => cnt_reg(5),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[6]_i_1_n_0\,
      Q => cnt_reg(6),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[7]_i_1_n_0\,
      Q => cnt_reg(7),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[8]_i_1_n_0\,
      Q => cnt_reg(8),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt[9]_i_2_n_0\,
      Q => cnt_reg(9),
      R => \cnt[9]_i_1_n_0\
    );
\data_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_state(1),
      I1 => \data_cnt_reg_n_0_[0]\,
      O => \data_cnt[0]_i_1_n_0\
    );
\data_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => curr_state(1),
      I1 => \data_cnt_reg_n_0_[1]\,
      I2 => \data_cnt_reg_n_0_[0]\,
      O => \data_cnt[1]_i_1_n_0\
    );
\data_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => curr_state(1),
      I1 => \data_cnt_reg_n_0_[2]\,
      I2 => \data_cnt_reg_n_0_[0]\,
      I3 => \data_cnt_reg_n_0_[1]\,
      O => \data_cnt[2]_i_1_n_0\
    );
\data_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"440044F0"
    )
        port map (
      I0 => \data_cnt[3]_i_3_n_0\,
      I1 => \data_cnt[3]_i_4_n_0\,
      I2 => rxd,
      I3 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I4 => curr_state(1),
      O => data_cnt
    );
\data_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => curr_state(1),
      I1 => \data_cnt_reg_n_0_[3]\,
      I2 => \data_cnt_reg_n_0_[2]\,
      I3 => \data_cnt_reg_n_0_[1]\,
      I4 => \data_cnt_reg_n_0_[0]\,
      O => \data_cnt[3]_i_2_n_0\
    );
\data_cnt[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => sampling_reg(2),
      I1 => sampling_reg(3),
      I2 => sampling_reg(0),
      I3 => sampling_reg(1),
      I4 => curr_state(1),
      O => \data_cnt[3]_i_3_n_0\
    );
\data_cnt[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => baud_cnt_reg(1),
      I2 => \data_cnt_reg_n_0_[0]\,
      I3 => baud_cnt_reg(0),
      I4 => \data_cnt[3]_i_5_n_0\,
      O => \data_cnt[3]_i_4_n_0\
    );
\data_cnt[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => baud_cnt_reg(2),
      I1 => \data_cnt_reg_n_0_[2]\,
      I2 => baud_cnt_reg(3),
      I3 => \data_cnt_reg_n_0_[3]\,
      O => \data_cnt[3]_i_5_n_0\
    );
\data_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => data_cnt,
      D => \data_cnt[0]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[0]\,
      R => '0'
    );
\data_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => data_cnt,
      D => \data_cnt[1]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[1]\,
      R => '0'
    );
\data_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => data_cnt,
      D => \data_cnt[2]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[2]\,
      R => '0'
    );
\data_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => data_cnt,
      D => \data_cnt[3]_i_2_n_0\,
      Q => \data_cnt_reg_n_0_[3]\,
      R => '0'
    );
\rx_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10011FFEE0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[0]_i_2_n_0\,
      I4 => \^rx_data\(0),
      I5 => rxd,
      O => \rx_data__0\(0)
    );
\rx_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => baud_cnt_reg(2),
      I3 => baud_cnt_reg(3),
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(1),
      O => \rx_data[0]_i_2_n_0\
    );
\rx_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10011FFEE0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[1]_i_2_n_0\,
      I4 => \^rx_data\(1),
      I5 => rxd,
      O => \rx_data__0\(1)
    );
\rx_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDFDDDDDDDD"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[0]\,
      I1 => \data_cnt_reg_n_0_[1]\,
      I2 => baud_cnt_reg(2),
      I3 => baud_cnt_reg(3),
      I4 => baud_cnt_reg(1),
      I5 => baud_cnt_reg(0),
      O => \rx_data[1]_i_2_n_0\
    );
\rx_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10011FFEE0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[2]_i_2_n_0\,
      I4 => \^rx_data\(2),
      I5 => rxd,
      O => \rx_data__0\(2)
    );
\rx_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDFDDDDDDDD"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => baud_cnt_reg(2),
      I3 => baud_cnt_reg(3),
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(1),
      O => \rx_data[2]_i_2_n_0\
    );
\rx_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10011FFEE0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[3]_i_2_n_0\,
      I4 => \^rx_data\(3),
      I5 => rxd,
      O => \rx_data__0\(3)
    );
\rx_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F777777777777"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => baud_cnt_reg(2),
      I3 => baud_cnt_reg(3),
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(1),
      O => \rx_data[3]_i_2_n_0\
    );
\rx_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F20022FFDD0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[4]_i_2_n_0\,
      I4 => \^rx_data\(4),
      I5 => rxd,
      O => \rx_data__0\(4)
    );
\rx_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEFEE"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => baud_cnt_reg(3),
      I3 => baud_cnt_reg(2),
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(1),
      O => \rx_data[4]_i_2_n_0\
    );
\rx_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F20022FFDD0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[5]_i_2_n_0\,
      I4 => \^rx_data\(5),
      I5 => rxd,
      O => \rx_data__0\(5)
    );
\rx_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDDDDDDDDDD"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[0]\,
      I1 => \data_cnt_reg_n_0_[1]\,
      I2 => baud_cnt_reg(3),
      I3 => baud_cnt_reg(2),
      I4 => baud_cnt_reg(1),
      I5 => baud_cnt_reg(0),
      O => \rx_data[5]_i_2_n_0\
    );
\rx_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F20022FFDD0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[6]_i_2_n_0\,
      I4 => \^rx_data\(6),
      I5 => rxd,
      O => \rx_data__0\(6)
    );
\rx_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDDDDDDDDDD"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => baud_cnt_reg(3),
      I3 => baud_cnt_reg(2),
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(1),
      O => \rx_data[6]_i_2_n_0\
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I1 => curr_state(1),
      O => \rx_data[7]_i_1_n_0\
    );
\rx_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F20022FFDD0000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \rx_data[7]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => \rx_data[7]_i_4_n_0\,
      I4 => \^rx_data\(7),
      I5 => rxd,
      O => \rx_data__0\(7)
    );
\rx_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => curr_state(1),
      I1 => sampling_reg(1),
      I2 => sampling_reg(0),
      I3 => sampling_reg(3),
      I4 => sampling_reg(2),
      I5 => \data_cnt_reg_n_0_[3]\,
      O => \rx_data[7]_i_3_n_0\
    );
\rx_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77777777777777"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => baud_cnt_reg(3),
      I3 => baud_cnt_reg(2),
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(1),
      O => \rx_data[7]_i_4_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(0),
      Q => \^rx_data\(0),
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(1),
      Q => \^rx_data\(1),
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(2),
      Q => \^rx_data\(2),
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(3),
      Q => \^rx_data\(3),
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(4),
      Q => \^rx_data\(4),
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(5),
      Q => \^rx_data\(5),
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(6),
      Q => \^rx_data\(6),
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data[7]_i_1_n_0\,
      D => \rx_data__0\(7),
      Q => \^rx_data\(7),
      R => '0'
    );
rx_done_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => baud_cnt_reg(2),
      I1 => baud_cnt_reg(3),
      I2 => baud_cnt_reg(1),
      I3 => baud_cnt_reg(0),
      O => rx_done
    );
rx_done_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_done,
      O => \^rx_ready\
    );
\sampling[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sampling_reg(0),
      O => \p_0_in__0\(0)
    );
\sampling[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sampling_reg(0),
      I1 => sampling_reg(1),
      O => \p_0_in__0\(1)
    );
\sampling[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sampling_reg(1),
      I1 => sampling_reg(0),
      I2 => sampling_reg(2),
      O => \p_0_in__0\(2)
    );
\sampling[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I1 => curr_state(1),
      O => cnt
    );
\sampling[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \sampling[3]_i_4_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(2),
      I3 => cnt_reg(0),
      I4 => cnt_reg(4),
      O => \sampling[3]_i_2_n_0\
    );
\sampling[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sampling_reg(2),
      I1 => sampling_reg(0),
      I2 => sampling_reg(1),
      I3 => sampling_reg(3),
      O => \p_0_in__0\(3)
    );
\sampling[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      I4 => cnt_reg(9),
      I5 => cnt_reg(8),
      O => \sampling[3]_i_4_n_0\
    );
\sampling_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \sampling[3]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => sampling_reg(0),
      R => cnt
    );
\sampling_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \sampling[3]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => sampling_reg(1),
      R => cnt
    );
\sampling_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \sampling[3]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => sampling_reg(2),
      R => cnt
    );
\sampling_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \sampling[3]_i_2_n_0\,
      D => \p_0_in__0\(3),
      Q => sampling_reg(3),
      R => cnt
    );
\send_data[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST,
      O => \send_data[7]_i_1_n_0\
    );
send_data_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(7),
      O => RX_DATA(7)
    );
\send_data_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(6),
      O => RX_DATA(6)
    );
\send_data_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(5),
      O => RX_DATA(5)
    );
\send_data_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(4),
      O => RX_DATA(4)
    );
\send_data_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(3),
      O => RX_DATA(3)
    );
\send_data_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(2),
      O => RX_DATA(2)
    );
\send_data_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(1),
      O => RX_DATA(1)
    );
\send_data_inst__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_data(0),
      O => RX_DATA(0)
    );
\send_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(0),
      Q => send_data(0)
    );
\send_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(1),
      Q => send_data(1)
    );
\send_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(2),
      Q => send_data(2)
    );
\send_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(3),
      Q => send_data(3)
    );
\send_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(4),
      Q => send_data(4)
    );
\send_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(5),
      Q => send_data(5)
    );
\send_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(6),
      Q => send_data(6)
    );
\send_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => send_done_reg_n_0,
      CE => '1',
      CLR => \send_data[7]_i_1_n_0\,
      D => \^rx_data\(7),
      Q => send_data(7)
    );
send_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0F00002200"
    )
        port map (
      I0 => send_done_i_2_n_0,
      I1 => send_done_i_3_n_0,
      I2 => rxd,
      I3 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I4 => curr_state(1),
      I5 => send_done_reg_n_0,
      O => send_done_i_1_n_0
    );
send_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(3),
      I1 => baud_cnt_reg(2),
      O => send_done_i_2_n_0
    );
send_done_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => baud_cnt_reg(1),
      I1 => baud_cnt_reg(0),
      O => send_done_i_3_n_0
    );
send_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => send_done_i_1_n_0,
      Q => send_done_reg_n_0,
      R => '0'
    );
shift_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08C888C80ACA8ACA"
    )
        port map (
      I0 => shift_done_reg_n_0,
      I1 => curr_state(1),
      I2 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I3 => \data_cnt[3]_i_4_n_0\,
      I4 => shift_done_i_2_n_0,
      I5 => rxd,
      O => shift_done_i_1_n_0
    );
shift_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sampling_reg(1),
      I1 => sampling_reg(0),
      I2 => sampling_reg(3),
      I3 => sampling_reg(2),
      O => shift_done_i_2_n_0
    );
shift_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => shift_done_i_1_n_0,
      Q => shift_done_reg_n_0,
      R => '0'
    );
start_bit_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => start_bit_reg_n_0,
      I1 => curr_state(1),
      I2 => start_bit_i_2_n_0,
      O => start_bit_i_1_n_0
    );
start_bit_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000355555555"
    )
        port map (
      I0 => rxd,
      I1 => baud_cnt_reg(1),
      I2 => baud_cnt_reg(0),
      I3 => baud_cnt_reg(2),
      I4 => baud_cnt_reg(3),
      I5 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      O => start_bit_i_2_n_0
    );
start_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => start_bit_i_1_n_0,
      Q => start_bit_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    rxd : in STD_LOGIC;
    RX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RX_READY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_axi_segment_uart_rx_0_0,uart_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_rx,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute CLK_FREQ : integer;
  attribute CLK_FREQ of inst : label is 100000000;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute overrate : integer;
  attribute overrate of inst : label is 54;
  attribute shift : string;
  attribute shift of inst : label is "2'b10";
  attribute standby : string;
  attribute standby of inst : label is "2'b00";
  attribute start : string;
  attribute start of inst : label is "2'b01";
  attribute stop : string;
  attribute stop of inst : label is "2'b11";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      CLK => CLK,
      RST => RST,
      RX_DATA(7 downto 0) => RX_DATA(7 downto 0),
      RX_READY => RX_READY,
      rxd => rxd
    );
end STRUCTURE;
