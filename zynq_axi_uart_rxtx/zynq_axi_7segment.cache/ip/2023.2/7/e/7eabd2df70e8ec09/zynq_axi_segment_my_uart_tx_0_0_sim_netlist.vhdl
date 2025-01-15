-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 15:17:43 2025
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
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AXI_START : in STD_LOGIC;
    AXI_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX : out STD_LOGIC;
    TX_READY : out STD_LOGIC
  );
  attribute baud_rate : integer;
  attribute baud_rate of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx : entity is 868;
  attribute idle : string;
  attribute idle of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx : entity is "2'b00";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx : entity is "soft";
  attribute shift : string;
  attribute shift of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx : entity is "2'b10";
  attribute start : string;
  attribute start of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx : entity is "2'b01";
  attribute stop : string;
  attribute stop of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx : entity is "2'b11";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx is
  signal TX_INST_0_i_1_n_0 : STD_LOGIC;
  signal TX_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^tx_ready\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of TX_READY : signal is std.standard.true;
  signal TX_READY_i_1_n_0 : STD_LOGIC;
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
  attribute MARK_DEBUG of curr_state : signal is std.standard.true;
  signal \curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \curr_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \curr_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of next_state : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal send : STD_LOGIC;
  attribute MARK_DEBUG of send : signal is std.standard.true;
  signal send_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \send_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal send_done : STD_LOGIC;
  attribute MARK_DEBUG of send_done : signal is std.standard.true;
  signal send_done_i_1_n_0 : STD_LOGIC;
  signal send_done_i_2_n_0 : STD_LOGIC;
  signal send_i_1_n_0 : STD_LOGIC;
  signal serial : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG of serial : signal is std.standard.true;
  signal \serial[1]_i_2_n_0\ : STD_LOGIC;
  signal \serial[2]_i_2_n_0\ : STD_LOGIC;
  signal \serial[3]_i_2_n_0\ : STD_LOGIC;
  signal \serial[4]_i_2_n_0\ : STD_LOGIC;
  signal \serial[5]_i_2_n_0\ : STD_LOGIC;
  signal \serial[6]_i_2_n_0\ : STD_LOGIC;
  signal \serial[7]_i_2_n_0\ : STD_LOGIC;
  signal \serial[8]_i_1_n_0\ : STD_LOGIC;
  signal \serial[8]_i_3_n_0\ : STD_LOGIC;
  signal shift_done_i_1_n_0 : STD_LOGIC;
  signal shift_done_reg_n_0 : STD_LOGIC;
  signal \NLW_baud_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_baud_cnt_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute KEEP : string;
  attribute KEEP of TX_READY_reg : label is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \curr_state_reg[0]\ : label is "idle:00,start:01,shift:10,stop:11";
  attribute KEEP of \curr_state_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \curr_state_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \curr_state_reg[1]\ : label is "idle:00,start:01,shift:10,stop:11";
  attribute KEEP of \curr_state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \curr_state_reg[1]\ : label is "true";
  attribute KEEP of send_done_reg : label is "yes";
  attribute KEEP of send_reg : label is "yes";
  attribute KEEP of \serial_reg[0]\ : label is "yes";
  attribute KEEP of \serial_reg[1]\ : label is "yes";
  attribute KEEP of \serial_reg[2]\ : label is "yes";
  attribute KEEP of \serial_reg[3]\ : label is "yes";
  attribute KEEP of \serial_reg[4]\ : label is "yes";
  attribute KEEP of \serial_reg[5]\ : label is "yes";
  attribute KEEP of \serial_reg[6]\ : label is "yes";
  attribute KEEP of \serial_reg[7]\ : label is "yes";
  attribute KEEP of \serial_reg[8]\ : label is "yes";
  attribute mark_debug_string of TX_READY : signal is "true";
begin
  TX_READY <= \^tx_ready\;
TX_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => serial(0),
      I1 => TX_INST_0_i_1_n_0,
      O => TX
    );
TX_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => serial(4),
      I1 => serial(3),
      I2 => serial(8),
      I3 => TX_INST_0_i_2_n_0,
      O => TX_INST_0_i_1_n_0
    );
TX_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => serial(1),
      I1 => serial(6),
      I2 => serial(0),
      I3 => serial(2),
      I4 => serial(7),
      I5 => serial(5),
      O => TX_INST_0_i_2_n_0
    );
TX_READY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0F4400000F"
    )
        port map (
      I0 => TX_INST_0_i_1_n_0,
      I1 => send,
      I2 => AXI_START,
      I3 => curr_state(0),
      I4 => curr_state(1),
      I5 => \^tx_ready\,
      O => TX_READY_i_1_n_0
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
      I0 => curr_state(0),
      I1 => curr_state(1),
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
\curr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => TX_INST_0_i_1_n_0,
      I1 => curr_state(1),
      I2 => \curr_state[0]_i_2_n_0\,
      I3 => curr_state(0),
      I4 => \curr_state[0]_i_3_n_0\,
      I5 => RST,
      O => \curr_state[0]_i_1_n_0\
    );
\curr_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => send_done,
      I1 => shift_done_reg_n_0,
      O => \curr_state[0]_i_2_n_0\
    );
\curr_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => send,
      I1 => curr_state(1),
      I2 => send_done,
      O => \curr_state[0]_i_3_n_0\
    );
\curr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD8A888A00000000"
    )
        port map (
      I0 => curr_state(1),
      I1 => send_done,
      I2 => shift_done_reg_n_0,
      I3 => curr_state(0),
      I4 => send,
      I5 => RST,
      O => \curr_state[1]_i_1_n_0\
    );
\curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \curr_state[0]_i_1_n_0\,
      Q => curr_state(0),
      R => '0'
    );
\curr_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \curr_state[1]_i_1_n_0\,
      Q => curr_state(1),
      R => '0'
    );
\next_state_inferred__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC1CF010"
    )
        port map (
      I0 => shift_done_reg_n_0,
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => send_done,
      I4 => send,
      O => next_state(1)
    );
\next_state_inferred__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FAF3FA03FA030A"
    )
        port map (
      I0 => TX_INST_0_i_1_n_0,
      I1 => send,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => shift_done_reg_n_0,
      I5 => send_done,
      O => next_state(0)
    );
\send_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_state(1),
      I1 => send_cnt(0),
      O => \send_cnt[0]_i_1_n_0\
    );
\send_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => send_cnt(1),
      I1 => send_cnt(0),
      I2 => curr_state(1),
      O => \send_cnt[1]_i_1_n_0\
    );
\send_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => curr_state(1),
      I1 => send_cnt(0),
      I2 => send_cnt(1),
      I3 => send_cnt(2),
      O => \send_cnt[2]_i_1_n_0\
    );
\send_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5044F044"
    )
        port map (
      I0 => curr_state(1),
      I1 => AXI_START,
      I2 => send,
      I3 => curr_state(0),
      I4 => TX_INST_0_i_1_n_0,
      O => \send_cnt[3]_i_1_n_0\
    );
\send_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => send_cnt(1),
      I1 => send_cnt(0),
      I2 => send_cnt(2),
      I3 => send_cnt(3),
      I4 => curr_state(1),
      O => \send_cnt[3]_i_2_n_0\
    );
\send_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \send_cnt[3]_i_1_n_0\,
      D => \send_cnt[0]_i_1_n_0\,
      Q => send_cnt(0),
      R => '0'
    );
\send_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \send_cnt[3]_i_1_n_0\,
      D => \send_cnt[1]_i_1_n_0\,
      Q => send_cnt(1),
      R => '0'
    );
\send_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \send_cnt[3]_i_1_n_0\,
      D => \send_cnt[2]_i_1_n_0\,
      Q => send_cnt(2),
      R => '0'
    );
\send_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \send_cnt[3]_i_1_n_0\,
      D => \send_cnt[3]_i_2_n_0\,
      Q => send_cnt(3),
      R => '0'
    );
send_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0DDCCDDCCDDCCDD"
    )
        port map (
      I0 => send_done_i_2_n_0,
      I1 => send_done,
      I2 => TX_INST_0_i_1_n_0,
      I3 => curr_state(0),
      I4 => send,
      I5 => curr_state(1),
      O => send_done_i_1_n_0
    );
send_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => curr_state(1),
      I1 => send_cnt(1),
      I2 => send_cnt(2),
      I3 => send_cnt(3),
      I4 => send_cnt(0),
      O => send_done_i_2_n_0
    );
send_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => send_done_i_1_n_0,
      Q => send_done,
      R => '0'
    );
send_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
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
      Q => send,
      R => '0'
    );
\serial[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CF40C040CC40CC4"
    )
        port map (
      I0 => AXI_START,
      I1 => serial(0),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial(1),
      I5 => \serial[8]_i_3_n_0\,
      O => \p_0_in__0\(0)
    );
\serial[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03F50000"
    )
        port map (
      I0 => AXI_START,
      I1 => \serial[8]_i_3_n_0\,
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => serial(1),
      I5 => \serial[1]_i_2_n_0\,
      O => \p_0_in__0\(1)
    );
\serial[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000800080008"
    )
        port map (
      I0 => AXI_START,
      I1 => AXI_DATA(0),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial(2),
      I5 => \serial[8]_i_3_n_0\,
      O => \serial[1]_i_2_n_0\
    );
\serial[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03F50000"
    )
        port map (
      I0 => AXI_START,
      I1 => \serial[8]_i_3_n_0\,
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => serial(2),
      I5 => \serial[2]_i_2_n_0\,
      O => \p_0_in__0\(2)
    );
\serial[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000800080008"
    )
        port map (
      I0 => AXI_START,
      I1 => AXI_DATA(1),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial(3),
      I5 => \serial[8]_i_3_n_0\,
      O => \serial[2]_i_2_n_0\
    );
\serial[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03F50000"
    )
        port map (
      I0 => AXI_START,
      I1 => \serial[8]_i_3_n_0\,
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => serial(3),
      I5 => \serial[3]_i_2_n_0\,
      O => \p_0_in__0\(3)
    );
\serial[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000800080008"
    )
        port map (
      I0 => AXI_START,
      I1 => AXI_DATA(2),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial(4),
      I5 => \serial[8]_i_3_n_0\,
      O => \serial[3]_i_2_n_0\
    );
\serial[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03F50000"
    )
        port map (
      I0 => AXI_START,
      I1 => \serial[8]_i_3_n_0\,
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => serial(4),
      I5 => \serial[4]_i_2_n_0\,
      O => \p_0_in__0\(4)
    );
\serial[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000800080008"
    )
        port map (
      I0 => AXI_START,
      I1 => AXI_DATA(3),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial(5),
      I5 => \serial[8]_i_3_n_0\,
      O => \serial[4]_i_2_n_0\
    );
\serial[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22200200"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => \serial[8]_i_3_n_0\,
      I3 => serial(5),
      I4 => serial(6),
      I5 => \serial[5]_i_2_n_0\,
      O => \p_0_in__0\(5)
    );
\serial[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32330200"
    )
        port map (
      I0 => AXI_DATA(4),
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => AXI_START,
      I4 => serial(5),
      O => \serial[5]_i_2_n_0\
    );
\serial[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => serial(7),
      I3 => \serial[8]_i_3_n_0\,
      I4 => serial(6),
      I5 => \serial[6]_i_2_n_0\,
      O => \p_0_in__0\(6)
    );
\serial[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32330200"
    )
        port map (
      I0 => AXI_DATA(5),
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => AXI_START,
      I4 => serial(6),
      O => \serial[6]_i_2_n_0\
    );
\serial[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03F50000"
    )
        port map (
      I0 => AXI_START,
      I1 => \serial[8]_i_3_n_0\,
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => serial(7),
      I5 => \serial[7]_i_2_n_0\,
      O => \p_0_in__0\(7)
    );
\serial[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000800080008"
    )
        port map (
      I0 => AXI_START,
      I1 => AXI_DATA(6),
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => serial(8),
      I5 => \serial[8]_i_3_n_0\,
      O => \serial[7]_i_2_n_0\
    );
\serial[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      O => \serial[8]_i_1_n_0\
    );
\serial[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFFBB00000088"
    )
        port map (
      I0 => AXI_DATA(7),
      I1 => AXI_START,
      I2 => \serial[8]_i_3_n_0\,
      I3 => curr_state(0),
      I4 => curr_state(1),
      I5 => serial(8),
      O => \p_0_in__0\(8)
    );
\serial[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54555555"
    )
        port map (
      I0 => shift_done_reg_n_0,
      I1 => send_cnt(1),
      I2 => send_cnt(2),
      I3 => send_cnt(3),
      I4 => send_cnt(0),
      O => \serial[8]_i_3_n_0\
    );
\serial_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => serial(0),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => serial(1),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => serial(2),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => serial(3),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => serial(4),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => serial(5),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => serial(6),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => serial(7),
      R => \serial[8]_i_1_n_0\
    );
\serial_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => serial(8),
      R => \serial[8]_i_1_n_0\
    );
shift_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D720"
    )
        port map (
      I0 => send_done_i_2_n_0,
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => shift_done_reg_n_0,
      O => shift_done_i_1_n_0
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
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute baud_rate : integer;
  attribute baud_rate of inst : label is 868;
  attribute idle : string;
  attribute idle of inst : label is "2'b00";
  attribute shift : string;
  attribute shift of inst : label is "2'b10";
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
