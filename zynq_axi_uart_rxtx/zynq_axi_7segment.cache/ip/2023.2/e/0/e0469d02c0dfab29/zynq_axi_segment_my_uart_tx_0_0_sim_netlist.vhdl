-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Jan  9 16:05:50 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_my_uart_tx_0_0_sim_netlist.vhdl
-- Design      : zynq_axi_segment_my_uart_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx is
  port (
    TX : out STD_LOGIC;
    TX_READY : out STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AXI_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_START : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx is
  signal \FSM_sequential_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_ready\ : STD_LOGIC;
  signal TX_READY_i_1_n_0 : STD_LOGIC;
  signal TX_READY_i_2_n_0 : STD_LOGIC;
  signal TX_READY_i_3_n_0 : STD_LOGIC;
  signal \baud_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal baud_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \baud_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal send_cnt : STD_LOGIC;
  signal \send_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal send_done_i_1_n_0 : STD_LOGIC;
  signal send_done_reg_n_0 : STD_LOGIC;
  signal send_i_1_n_0 : STD_LOGIC;
  signal send_reg_n_0 : STD_LOGIC;
  signal serial : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \serial[1]_i_2_n_0\ : STD_LOGIC;
  signal \serial[2]_i_2_n_0\ : STD_LOGIC;
  signal \serial[3]_i_2_n_0\ : STD_LOGIC;
  signal \serial[4]_i_2_n_0\ : STD_LOGIC;
  signal \serial[5]_i_2_n_0\ : STD_LOGIC;
  signal \serial[6]_i_2_n_0\ : STD_LOGIC;
  signal \serial[7]_i_2_n_0\ : STD_LOGIC;
  signal \serial[8]_i_3_n_0\ : STD_LOGIC;
  signal serial_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of serial_0 : signal is std.standard.true;
  signal serial_reg0 : STD_LOGIC;
  signal shift_done_i_1_n_0 : STD_LOGIC;
  signal shift_done_i_2_n_0 : STD_LOGIC;
  signal shift_done_reg_n_0 : STD_LOGIC;
  signal \NLW_baud_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_baud_cnt_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "shift:10,start:01,idle:00,stop:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "shift:10,start:01,idle:00,stop:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \send_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \send_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \send_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \send_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of send_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \serial[8]_i_3\ : label is "soft_lutpair1";
  attribute KEEP : string;
  attribute KEEP of \serial_reg[0]\ : label is "yes";
  attribute KEEP of \serial_reg[1]\ : label is "yes";
  attribute KEEP of \serial_reg[2]\ : label is "yes";
  attribute KEEP of \serial_reg[3]\ : label is "yes";
  attribute KEEP of \serial_reg[4]\ : label is "yes";
  attribute KEEP of \serial_reg[5]\ : label is "yes";
  attribute KEEP of \serial_reg[6]\ : label is "yes";
  attribute KEEP of \serial_reg[7]\ : label is "yes";
  attribute KEEP of \serial_reg[8]\ : label is "yes";
  attribute SOFT_HLUTNM of shift_done_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of shift_done_i_2 : label is "soft_lutpair1";
begin
  TX <= serial_0(0);
  TX_READY <= \^tx_ready\;
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E222E00000000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[0]_i_2_n_0\,
      I1 => curr_state(0),
      I2 => send_reg_n_0,
      I3 => curr_state(1),
      I4 => send_done_reg_n_0,
      I5 => RST,
      O => \FSM_sequential_curr_state[0]_i_1_n_0\
    );
\FSM_sequential_curr_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFE0"
    )
        port map (
      I0 => shift_done_reg_n_0,
      I1 => send_done_reg_n_0,
      I2 => curr_state(1),
      I3 => \FSM_sequential_curr_state[0]_i_3_n_0\,
      I4 => TX_READY_i_3_n_0,
      O => \FSM_sequential_curr_state[0]_i_2_n_0\
    );
\FSM_sequential_curr_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => serial_0(5),
      I1 => serial_0(2),
      I2 => serial_0(4),
      O => \FSM_sequential_curr_state[0]_i_3_n_0\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8083800000000"
    )
        port map (
      I0 => send_reg_n_0,
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => shift_done_reg_n_0,
      I4 => send_done_reg_n_0,
      I5 => RST,
      O => \FSM_sequential_curr_state[1]_i_1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_curr_state[0]_i_1_n_0\,
      Q => curr_state(0),
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
TX_READY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF53005"
    )
        port map (
      I0 => AXI_START,
      I1 => TX_READY_i_2_n_0,
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => \^tx_ready\,
      O => TX_READY_i_1_n_0
    );
TX_READY_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => TX_READY_i_3_n_0,
      I1 => serial_0(5),
      I2 => serial_0(2),
      I3 => serial_0(4),
      I4 => send_reg_n_0,
      O => TX_READY_i_2_n_0
    );
TX_READY_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => serial_0(3),
      I1 => serial_0(8),
      I2 => serial_0(6),
      I3 => serial_0(1),
      I4 => serial_0(0),
      I5 => serial_0(7),
      O => TX_READY_i_3_n_0
    );
TX_READY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TX_READY_i_1_n_0,
      Q => \^tx_ready\,
      R => '0'
    );
\baud_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => \baud_cnt[0]_i_3_n_0\,
      O => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => baud_cnt_reg(0),
      I1 => baud_cnt_reg(7),
      I2 => baud_cnt_reg(4),
      I3 => baud_cnt_reg(8),
      I4 => \baud_cnt[0]_i_5_n_0\,
      O => \baud_cnt[0]_i_3_n_0\
    );
\baud_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => baud_cnt_reg(0),
      O => \baud_cnt[0]_i_4_n_0\
    );
\baud_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => baud_cnt_reg(2),
      I1 => baud_cnt_reg(9),
      I2 => baud_cnt_reg(1),
      I3 => baud_cnt_reg(6),
      I4 => baud_cnt_reg(3),
      I5 => baud_cnt_reg(5),
      O => \baud_cnt[0]_i_5_n_0\
    );
\baud_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[0]_i_2_n_7\,
      Q => baud_cnt_reg(0),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \baud_cnt_reg[0]_i_2_n_0\,
      CO(2) => \baud_cnt_reg[0]_i_2_n_1\,
      CO(1) => \baud_cnt_reg[0]_i_2_n_2\,
      CO(0) => \baud_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \baud_cnt_reg[0]_i_2_n_4\,
      O(2) => \baud_cnt_reg[0]_i_2_n_5\,
      O(1) => \baud_cnt_reg[0]_i_2_n_6\,
      O(0) => \baud_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => baud_cnt_reg(3 downto 1),
      S(0) => \baud_cnt[0]_i_4_n_0\
    );
\baud_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[0]_i_2_n_6\,
      Q => baud_cnt_reg(1),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[0]_i_2_n_5\,
      Q => baud_cnt_reg(2),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[0]_i_2_n_4\,
      Q => baud_cnt_reg(3),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[4]_i_1_n_7\,
      Q => baud_cnt_reg(4),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \baud_cnt_reg[0]_i_2_n_0\,
      CO(3) => \baud_cnt_reg[4]_i_1_n_0\,
      CO(2) => \baud_cnt_reg[4]_i_1_n_1\,
      CO(1) => \baud_cnt_reg[4]_i_1_n_2\,
      CO(0) => \baud_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \baud_cnt_reg[4]_i_1_n_4\,
      O(2) => \baud_cnt_reg[4]_i_1_n_5\,
      O(1) => \baud_cnt_reg[4]_i_1_n_6\,
      O(0) => \baud_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => baud_cnt_reg(7 downto 4)
    );
\baud_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[4]_i_1_n_6\,
      Q => baud_cnt_reg(5),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[4]_i_1_n_5\,
      Q => baud_cnt_reg(6),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[4]_i_1_n_4\,
      Q => baud_cnt_reg(7),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[8]_i_1_n_7\,
      Q => baud_cnt_reg(8),
      R => \baud_cnt[0]_i_1_n_0\
    );
\baud_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \baud_cnt_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_baud_cnt_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \baud_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_baud_cnt_reg[8]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \baud_cnt_reg[8]_i_1_n_6\,
      O(0) => \baud_cnt_reg[8]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => baud_cnt_reg(9 downto 8)
    );
\baud_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \baud_cnt_reg[8]_i_1_n_6\,
      Q => baud_cnt_reg(9),
      R => \baud_cnt[0]_i_1_n_0\
    );
\send_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_state(1),
      I1 => \send_cnt_reg_n_0_[0]\,
      O => \send_cnt[0]_i_1_n_0\
    );
\send_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[1]\,
      I1 => \send_cnt_reg_n_0_[0]\,
      I2 => curr_state(1),
      O => \send_cnt[1]_i_1_n_0\
    );
\send_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => curr_state(1),
      I1 => \send_cnt_reg_n_0_[0]\,
      I2 => \send_cnt_reg_n_0_[1]\,
      I3 => \send_cnt_reg_n_0_[2]\,
      O => \send_cnt[2]_i_1_n_0\
    );
\send_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3030BFB0"
    )
        port map (
      I0 => send_reg_n_0,
      I1 => TX_READY_i_2_n_0,
      I2 => curr_state(0),
      I3 => AXI_START,
      I4 => curr_state(1),
      O => send_cnt
    );
\send_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => curr_state(1),
      I1 => \send_cnt_reg_n_0_[1]\,
      I2 => \send_cnt_reg_n_0_[0]\,
      I3 => \send_cnt_reg_n_0_[2]\,
      I4 => \send_cnt_reg_n_0_[3]\,
      O => \send_cnt[3]_i_2_n_0\
    );
\send_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => send_cnt,
      D => \send_cnt[0]_i_1_n_0\,
      Q => \send_cnt_reg_n_0_[0]\,
      R => '0'
    );
\send_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => send_cnt,
      D => \send_cnt[1]_i_1_n_0\,
      Q => \send_cnt_reg_n_0_[1]\,
      R => '0'
    );
\send_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => send_cnt,
      D => \send_cnt[2]_i_1_n_0\,
      Q => \send_cnt_reg_n_0_[2]\,
      R => '0'
    );
\send_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => send_cnt,
      D => \send_cnt[3]_i_2_n_0\,
      Q => \send_cnt_reg_n_0_[3]\,
      R => '0'
    );
send_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F0202"
    )
        port map (
      I0 => curr_state(1),
      I1 => shift_done_i_2_n_0,
      I2 => curr_state(0),
      I3 => TX_READY_i_2_n_0,
      I4 => send_done_reg_n_0,
      O => send_done_i_1_n_0
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
send_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => \baud_cnt[0]_i_3_n_0\,
      O => send_i_1_n_0
    );
send_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => send_i_1_n_0,
      Q => send_reg_n_0,
      R => '0'
    );
\serial[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CF40C040CC40CC4"
    )
        port map (
      I0 => AXI_START,
      I1 => serial_0(0),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(1),
      I5 => \serial[8]_i_3_n_0\,
      O => serial(0)
    );
\serial[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(2),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(1),
      I5 => \serial[1]_i_2_n_0\,
      O => serial(1)
    );
\serial[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(0),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(1),
      O => \serial[1]_i_2_n_0\
    );
\serial[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(3),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(2),
      I5 => \serial[2]_i_2_n_0\,
      O => serial(2)
    );
\serial[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(1),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(2),
      O => \serial[2]_i_2_n_0\
    );
\serial[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(4),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(3),
      I5 => \serial[3]_i_2_n_0\,
      O => serial(3)
    );
\serial[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(2),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(3),
      O => \serial[3]_i_2_n_0\
    );
\serial[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(5),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(4),
      I5 => \serial[4]_i_2_n_0\,
      O => serial(4)
    );
\serial[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(3),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(4),
      O => \serial[4]_i_2_n_0\
    );
\serial[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(6),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(5),
      I5 => \serial[5]_i_2_n_0\,
      O => serial(5)
    );
\serial[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(4),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(5),
      O => \serial[5]_i_2_n_0\
    );
\serial[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(7),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(6),
      I5 => \serial[6]_i_2_n_0\,
      O => serial(6)
    );
\serial[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(5),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(6),
      O => \serial[6]_i_2_n_0\
    );
\serial[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial_0(8),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial_0(7),
      I5 => \serial[7]_i_2_n_0\,
      O => serial(7)
    );
\serial[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0B0008"
    )
        port map (
      I0 => AXI_DATA(6),
      I1 => AXI_START,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial_0(7),
      O => \serial[7]_i_2_n_0\
    );
\serial[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      O => serial_reg0
    );
\serial[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4F0C4C0C400C4C"
    )
        port map (
      I0 => \serial[8]_i_3_n_0\,
      I1 => serial_0(8),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => AXI_START,
      I5 => AXI_DATA(7),
      O => serial(8)
    );
\serial[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[1]\,
      I1 => \send_cnt_reg_n_0_[0]\,
      I2 => \send_cnt_reg_n_0_[2]\,
      I3 => \send_cnt_reg_n_0_[3]\,
      I4 => shift_done_reg_n_0,
      O => \serial[8]_i_3_n_0\
    );
\serial_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(0),
      Q => serial_0(0),
      S => serial_reg0
    );
\serial_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(1),
      Q => serial_0(1),
      S => serial_reg0
    );
\serial_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(2),
      Q => serial_0(2),
      S => serial_reg0
    );
\serial_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(3),
      Q => serial_0(3),
      S => serial_reg0
    );
\serial_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(4),
      Q => serial_0(4),
      S => serial_reg0
    );
\serial_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(5),
      Q => serial_0(5),
      S => serial_reg0
    );
\serial_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(6),
      Q => serial_0(6),
      S => serial_reg0
    );
\serial_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(7),
      Q => serial_0(7),
      S => serial_reg0
    );
\serial_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => serial(8),
      Q => serial_0(8),
      S => serial_reg0
    );
shift_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9D40"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => shift_done_i_2_n_0,
      I3 => shift_done_reg_n_0,
      O => shift_done_i_1_n_0
    );
shift_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[3]\,
      I1 => \send_cnt_reg_n_0_[2]\,
      I2 => \send_cnt_reg_n_0_[0]\,
      I3 => \send_cnt_reg_n_0_[1]\,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AXI_START : in STD_LOGIC;
    AXI_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX : out STD_LOGIC;
    TX_READY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_axi_segment_my_uart_tx_0_0,my_uart_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_uart_tx,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx
     port map (
      AXI_DATA(7 downto 0) => AXI_DATA(7 downto 0),
      AXI_START => AXI_START,
      CLK => CLK,
      RST => RST,
      TX => TX,
      TX_READY => TX_READY
    );
end STRUCTURE;
