-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Feb 10 10:58:21 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_SPI_Master_0_0_sim_netlist.vhdl
-- Design      : AXI_SPI_block_SPI_Master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master is
  port (
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CMD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : in STD_LOGIC;
    RD_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MOSI : out STD_LOGIC
  );
  attribute IDLE : string;
  attribute IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "3'b000";
  attribute R_DONE : string;
  attribute R_DONE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "3'b111";
  attribute R_LOAD : string;
  attribute R_LOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "3'b100";
  attribute R_START : string;
  attribute R_START of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "3'b011";
  attribute W_DONE : string;
  attribute W_DONE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "3'b010";
  attribute W_START : string;
  attribute W_START of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "3'b001";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master is
  signal \CLK_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \CLK_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \CLK_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \CLK_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \CLK_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal CLK_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^csn\ : STD_LOGIC;
  signal CSN_i_1_n_0 : STD_LOGIC;
  signal CSN_i_2_n_0 : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of MOSI : signal is std.standard.true;
  signal MOSI_data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \MOSI_data[16]_i_1_n_0\ : STD_LOGIC;
  signal MOSI_i_1_n_0 : STD_LOGIC;
  signal MOSI_i_2_n_0 : STD_LOGIC;
  signal \RD_Data[7]_i_1_n_0\ : STD_LOGIC;
  signal \RD_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \RD_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \RD_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \RD_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \RD_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \RD_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \RD_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \RD_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \RD_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \RD_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal R_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal R_data0 : STD_LOGIC;
  signal \R_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \R_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \R_temp__0\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal SCLK_i_1_n_0 : STD_LOGIC;
  signal SCLK_i_2_n_0 : STD_LOGIC;
  signal W_temp : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of curr_state : signal is std.standard.true;
  signal \curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \curr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of next_state : signal is std.standard.true;
  signal next_state1_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_state_reg[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]__0_i_3_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]__0_i_4_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]__0_i_5_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]__0_i_6_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]__0_i_7_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal seq_done_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \seq_done_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \seq_done_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \seq_done_cnt[1]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CLK_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CLK_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CLK_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \CLK_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of MOSI_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of MOSI_reg : label is "true";
  attribute KEEP of \RD_Data_reg[0]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[0]\ : label is "true";
  attribute KEEP of \RD_Data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[1]\ : label is "true";
  attribute KEEP of \RD_Data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[2]\ : label is "true";
  attribute KEEP of \RD_Data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[3]\ : label is "true";
  attribute KEEP of \RD_Data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[4]\ : label is "true";
  attribute KEEP of \RD_Data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[5]\ : label is "true";
  attribute KEEP of \RD_Data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[6]\ : label is "true";
  attribute KEEP of \RD_Data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \RD_Data_reg[7]\ : label is "true";
  attribute SOFT_HLUTNM of \RD_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RD_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RD_cnt[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_data[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \curr_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \curr_state[2]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \curr_state_reg[0]\ : label is "IDLE:000,W_START:001,W_DONE:010,R_START:011,R_LOAD:100,R_DONE:111";
  attribute KEEP of \curr_state_reg[0]\ : label is "yes";
  attribute mark_debug_string of \curr_state_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \curr_state_reg[1]\ : label is "IDLE:000,W_START:001,W_DONE:010,R_START:011,R_LOAD:100,R_DONE:111";
  attribute KEEP of \curr_state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \curr_state_reg[1]\ : label is "true";
  attribute FSM_ENCODED_STATES of \curr_state_reg[2]\ : label is "IDLE:000,W_START:001,W_DONE:010,R_START:011,R_LOAD:100,R_DONE:111";
  attribute KEEP of \curr_state_reg[2]\ : label is "yes";
  attribute mark_debug_string of \curr_state_reg[2]\ : label is "true";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[0]__0\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[0]__0\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[1]__0\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[1]__0\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[2]__0\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[2]__0\ : label is "VCC:GE GND:CLR";
  attribute mark_debug_string of MOSI : signal is "true";
  attribute mark_debug_string of RD_Data : signal is "true";
begin
  CSN <= \^csn\;
  MOSI <= \^mosi\;
  SCLK <= \^sclk\;
\CLK_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK_cnt_reg(0),
      O => \CLK_cnt[0]_i_1_n_0\
    );
\CLK_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => CLK_cnt_reg(0),
      I1 => CLK_cnt_reg(1),
      O => \CLK_cnt[1]_i_1_n_0\
    );
\CLK_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => CLK_cnt_reg(1),
      I1 => CLK_cnt_reg(0),
      I2 => CLK_cnt_reg(2),
      O => \CLK_cnt[2]_i_1_n_0\
    );
\CLK_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008FFFF"
    )
        port map (
      I0 => CLK_cnt_reg(0),
      I1 => CLK_cnt_reg(3),
      I2 => CLK_cnt_reg(2),
      I3 => CLK_cnt_reg(1),
      I4 => SCLK_i_2_n_0,
      O => \CLK_cnt[3]_i_1_n_0\
    );
\CLK_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => CLK_cnt_reg(0),
      I1 => CLK_cnt_reg(1),
      I2 => CLK_cnt_reg(2),
      I3 => CLK_cnt_reg(3),
      O => \CLK_cnt[3]_i_2_n_0\
    );
\CLK_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CLK_cnt[0]_i_1_n_0\,
      Q => CLK_cnt_reg(0),
      R => \CLK_cnt[3]_i_1_n_0\
    );
\CLK_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CLK_cnt[1]_i_1_n_0\,
      Q => CLK_cnt_reg(1),
      R => \CLK_cnt[3]_i_1_n_0\
    );
\CLK_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CLK_cnt[2]_i_1_n_0\,
      Q => CLK_cnt_reg(2),
      R => \CLK_cnt[3]_i_1_n_0\
    );
\CLK_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CLK_cnt[3]_i_2_n_0\,
      Q => CLK_cnt_reg(3),
      R => \CLK_cnt[3]_i_1_n_0\
    );
CSN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^sclk\,
      I1 => curr_state(1),
      I2 => CMD(1),
      I3 => CSN_i_2_n_0,
      I4 => \^csn\,
      O => CSN_i_1_n_0
    );
CSN_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000008000000FF"
    )
        port map (
      I0 => \^sclk\,
      I1 => seq_done_cnt(1),
      I2 => seq_done_cnt(0),
      I3 => curr_state(2),
      I4 => curr_state(0),
      I5 => curr_state(1),
      O => CSN_i_2_n_0
    );
CSN_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => CSN_i_1_n_0,
      Q => \^csn\,
      R => '0'
    );
\MOSI_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => curr_state(0),
      I1 => CMD(1),
      I2 => CMD(0),
      O => p_1_in(0)
    );
\MOSI_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(10),
      I1 => ADDR(1),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(10)
    );
\MOSI_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(11),
      I1 => ADDR(2),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(11)
    );
\MOSI_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(12),
      I1 => ADDR(3),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(12)
    );
\MOSI_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(13),
      I1 => ADDR(4),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(13)
    );
\MOSI_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(14),
      I1 => ADDR(5),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(14)
    );
\MOSI_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(15),
      I1 => ADDR(6),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(15)
    );
\MOSI_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2023"
    )
        port map (
      I0 => \^sclk\,
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      O => \MOSI_data[16]_i_1_n_0\
    );
\MOSI_data[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA03"
    )
        port map (
      I0 => MOSI_data0(16),
      I1 => CMD(0),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(16)
    );
\MOSI_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A0AC"
    )
        port map (
      I0 => MOSI_data0(1),
      I1 => WR_Data(0),
      I2 => curr_state(0),
      I3 => CMD(1),
      I4 => CMD(0),
      O => p_1_in(1)
    );
\MOSI_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A0AC"
    )
        port map (
      I0 => MOSI_data0(2),
      I1 => WR_Data(1),
      I2 => curr_state(0),
      I3 => CMD(1),
      I4 => CMD(0),
      O => p_1_in(2)
    );
\MOSI_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A0AC"
    )
        port map (
      I0 => MOSI_data0(3),
      I1 => WR_Data(2),
      I2 => curr_state(0),
      I3 => CMD(1),
      I4 => CMD(0),
      O => p_1_in(3)
    );
\MOSI_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A0AC"
    )
        port map (
      I0 => MOSI_data0(4),
      I1 => WR_Data(3),
      I2 => curr_state(0),
      I3 => CMD(1),
      I4 => CMD(0),
      O => p_1_in(4)
    );
\MOSI_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A0AC"
    )
        port map (
      I0 => MOSI_data0(5),
      I1 => WR_Data(4),
      I2 => curr_state(0),
      I3 => CMD(1),
      I4 => CMD(0),
      O => p_1_in(5)
    );
\MOSI_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A0AC"
    )
        port map (
      I0 => MOSI_data0(6),
      I1 => WR_Data(5),
      I2 => curr_state(0),
      I3 => CMD(1),
      I4 => CMD(0),
      O => p_1_in(6)
    );
\MOSI_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF540054"
    )
        port map (
      I0 => CMD(1),
      I1 => CMD(0),
      I2 => WR_Data(6),
      I3 => curr_state(0),
      I4 => MOSI_data0(7),
      O => p_1_in(7)
    );
\MOSI_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF540054"
    )
        port map (
      I0 => CMD(1),
      I1 => CMD(0),
      I2 => WR_Data(7),
      I3 => curr_state(0),
      I4 => MOSI_data0(8),
      O => p_1_in(8)
    );
\MOSI_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => MOSI_data0(9),
      I1 => ADDR(0),
      I2 => CMD(1),
      I3 => curr_state(0),
      O => p_1_in(9)
    );
\MOSI_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(0),
      Q => MOSI_data0(1),
      R => '0'
    );
\MOSI_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(10),
      Q => MOSI_data0(11),
      R => '0'
    );
\MOSI_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(11),
      Q => MOSI_data0(12),
      R => '0'
    );
\MOSI_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(12),
      Q => MOSI_data0(13),
      R => '0'
    );
\MOSI_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(13),
      Q => MOSI_data0(14),
      R => '0'
    );
\MOSI_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(14),
      Q => MOSI_data0(15),
      R => '0'
    );
\MOSI_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(15),
      Q => MOSI_data0(16),
      R => '0'
    );
\MOSI_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(16),
      Q => W_temp,
      R => '0'
    );
\MOSI_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(1),
      Q => MOSI_data0(2),
      R => '0'
    );
\MOSI_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(2),
      Q => MOSI_data0(3),
      R => '0'
    );
\MOSI_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(3),
      Q => MOSI_data0(4),
      R => '0'
    );
\MOSI_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(4),
      Q => MOSI_data0(5),
      R => '0'
    );
\MOSI_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(5),
      Q => MOSI_data0(6),
      R => '0'
    );
\MOSI_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(6),
      Q => MOSI_data0(7),
      R => '0'
    );
\MOSI_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(7),
      Q => MOSI_data0(8),
      R => '0'
    );
\MOSI_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(8),
      Q => MOSI_data0(9),
      R => '0'
    );
\MOSI_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \MOSI_data[16]_i_1_n_0\,
      D => p_1_in(9),
      Q => MOSI_data0(10),
      R => '0'
    );
MOSI_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => MOSI_i_2_n_0,
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => curr_state(2),
      I4 => \^mosi\,
      O => MOSI_i_1_n_0
    );
MOSI_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => W_temp,
      I1 => \^mosi\,
      I2 => CMD(1),
      I3 => curr_state(0),
      O => MOSI_i_2_n_0
    );
MOSI_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => MOSI_i_1_n_0,
      Q => \^mosi\,
      R => '0'
    );
\RD_Data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(1),
      I2 => curr_state(0),
      O => \RD_Data[7]_i_1_n_0\
    );
\RD_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(0),
      Q => RD_Data(0),
      R => '0'
    );
\RD_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(1),
      Q => RD_Data(1),
      R => '0'
    );
\RD_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(2),
      Q => RD_Data(2),
      R => '0'
    );
\RD_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(3),
      Q => RD_Data(3),
      R => '0'
    );
\RD_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(4),
      Q => RD_Data(4),
      R => '0'
    );
\RD_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(5),
      Q => RD_Data(5),
      R => '0'
    );
\RD_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(6),
      Q => RD_Data(6),
      R => '0'
    );
\RD_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \RD_Data[7]_i_1_n_0\,
      D => R_data(7),
      Q => RD_Data(7),
      R => '0'
    );
\RD_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \RD_cnt_reg_n_0_[0]\,
      O => \RD_cnt[0]_i_1_n_0\
    );
\RD_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \RD_cnt_reg_n_0_[0]\,
      I1 => \RD_cnt_reg_n_0_[1]\,
      O => \RD_cnt[1]_i_1_n_0\
    );
\RD_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \RD_cnt_reg_n_0_[1]\,
      I1 => \RD_cnt_reg_n_0_[0]\,
      I2 => \RD_cnt_reg_n_0_[2]\,
      O => \RD_cnt[2]_i_1_n_0\
    );
\RD_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => CMD(1),
      I3 => curr_state(2),
      O => \RD_cnt[3]_i_1_n_0\
    );
\RD_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => CMD(1),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => curr_state(2),
      I4 => \^sclk\,
      O => \RD_cnt[3]_i_2_n_0\
    );
\RD_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \RD_cnt_reg_n_0_[0]\,
      I1 => \RD_cnt_reg_n_0_[1]\,
      I2 => \RD_cnt_reg_n_0_[2]\,
      I3 => \RD_cnt_reg_n_0_[3]\,
      O => \RD_cnt[3]_i_3_n_0\
    );
\RD_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \RD_cnt[3]_i_2_n_0\,
      D => \RD_cnt[0]_i_1_n_0\,
      Q => \RD_cnt_reg_n_0_[0]\,
      R => \RD_cnt[3]_i_1_n_0\
    );
\RD_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \RD_cnt[3]_i_2_n_0\,
      D => \RD_cnt[1]_i_1_n_0\,
      Q => \RD_cnt_reg_n_0_[1]\,
      R => \RD_cnt[3]_i_1_n_0\
    );
\RD_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \RD_cnt[3]_i_2_n_0\,
      D => \RD_cnt[2]_i_1_n_0\,
      Q => \RD_cnt_reg_n_0_[2]\,
      R => \RD_cnt[3]_i_1_n_0\
    );
\RD_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \RD_cnt[3]_i_2_n_0\,
      D => \RD_cnt[3]_i_3_n_0\,
      Q => \RD_cnt_reg_n_0_[3]\,
      R => \RD_cnt[3]_i_1_n_0\
    );
\R_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      O => \R_data[7]_i_1_n_0\
    );
\R_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4341"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \R_data[7]_i_3_n_0\,
      O => R_data0
    );
\R_data[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \RD_cnt_reg_n_0_[1]\,
      I1 => \RD_cnt_reg_n_0_[0]\,
      I2 => \RD_cnt_reg_n_0_[3]\,
      I3 => \RD_cnt_reg_n_0_[2]\,
      O => \R_data[7]_i_3_n_0\
    );
\R_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => \R_temp__0\,
      Q => R_data(0),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(0),
      Q => R_data(1),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(1),
      Q => R_data(2),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(2),
      Q => R_data(3),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(3),
      Q => R_data(4),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(4),
      Q => R_data(5),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(5),
      Q => R_data(6),
      R => \R_data[7]_i_1_n_0\
    );
\R_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^sclk\,
      CE => R_data0,
      D => R_data(6),
      Q => R_data(7),
      R => \R_data[7]_i_1_n_0\
    );
R_temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \RD_cnt[3]_i_2_n_0\,
      D => MISO,
      Q => \R_temp__0\,
      R => \RD_cnt[3]_i_1_n_0\
    );
SCLK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100000"
    )
        port map (
      I0 => CLK_cnt_reg(1),
      I1 => CLK_cnt_reg(2),
      I2 => CLK_cnt_reg(3),
      I3 => CLK_cnt_reg(0),
      I4 => SCLK_i_2_n_0,
      I5 => \^sclk\,
      O => SCLK_i_1_n_0
    );
SCLK_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => SCLK_i_2_n_0
    );
SCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => SCLK_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
\curr_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(0),
      I1 => RST,
      O => \curr_state[0]_i_1_n_0\
    );
\curr_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(1),
      I1 => RST,
      O => \curr_state[1]_i_1_n_0\
    );
\curr_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(2),
      I1 => RST,
      O => \curr_state[2]_i_1_n_0\
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
\curr_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \curr_state[2]_i_1_n_0\,
      Q => curr_state(2),
      R => '0'
    );
\next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => next_state1_out(0),
      G => \next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \out\(0)
    );
\next_state_reg[0]__0\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[0]__0_i_1_n_0\,
      G => \next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => next_state(0)
    );
\next_state_reg[0]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \next_state_reg[0]__0_i_2_n_0\,
      I1 => curr_state(1),
      I2 => \next_state_reg[0]__0_i_3_n_0\,
      I3 => \next_state_reg[0]__0_i_4_n_0\,
      I4 => \next_state_reg[0]__0_i_5_n_0\,
      I5 => \next_state_reg[0]__0_i_6_n_0\,
      O => \next_state_reg[0]__0_i_1_n_0\
    );
\next_state_reg[0]__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \next_state_reg[2]_i_4_n_0\,
      I1 => \next_state_reg[2]_i_5_n_0\,
      I2 => \next_state_reg[2]_i_6_n_0\,
      I3 => \next_state_reg[2]_i_7_n_0\,
      I4 => curr_state(0),
      I5 => curr_state(2),
      O => \next_state_reg[0]__0_i_2_n_0\
    );
\next_state_reg[0]__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^csn\,
      I1 => curr_state(2),
      I2 => curr_state(1),
      O => \next_state_reg[0]__0_i_3_n_0\
    );
\next_state_reg[0]__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(2),
      I2 => \RD_cnt_reg_n_0_[2]\,
      I3 => \RD_cnt_reg_n_0_[3]\,
      I4 => \RD_cnt_reg_n_0_[0]\,
      I5 => \RD_cnt_reg_n_0_[1]\,
      O => \next_state_reg[0]__0_i_4_n_0\
    );
\next_state_reg[0]__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => CMD(1),
      O => \next_state_reg[0]__0_i_5_n_0\
    );
\next_state_reg[0]__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \next_state_reg[2]_i_7_n_0\,
      I1 => \next_state_reg[2]_i_6_n_0\,
      I2 => \next_state_reg[2]_i_5_n_0\,
      I3 => \next_state_reg[2]_i_4_n_0\,
      I4 => curr_state(1),
      I5 => \next_state_reg[0]__0_i_7_n_0\,
      O => \next_state_reg[0]__0_i_6_n_0\
    );
\next_state_reg[0]__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      O => \next_state_reg[0]__0_i_7_n_0\
    );
\next_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => \next_state_reg[2]_i_3_n_0\,
      I3 => \next_state_reg[0]_i_2_n_0\,
      O => next_state1_out(0)
    );
\next_state_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F000000FF1111"
    )
        port map (
      I0 => CMD(1),
      I1 => curr_state(0),
      I2 => \^csn\,
      I3 => \R_data[7]_i_3_n_0\,
      I4 => curr_state(2),
      I5 => curr_state(1),
      O => \next_state_reg[0]_i_2_n_0\
    );
\next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => next_state1_out(1),
      G => \next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \out\(1)
    );
\next_state_reg[1]__0\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[1]__0_i_1_n_0\,
      G => \next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => next_state(1)
    );
\next_state_reg[1]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4004F0B4"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \next_state_reg[2]_i_3_n_0\,
      I4 => \^csn\,
      I5 => \next_state_reg[1]__0_i_2_n_0\,
      O => \next_state_reg[1]__0_i_1_n_0\
    );
\next_state_reg[1]__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000550300005500"
    )
        port map (
      I0 => \R_data[7]_i_3_n_0\,
      I1 => CMD(1),
      I2 => curr_state(0),
      I3 => curr_state(2),
      I4 => curr_state(1),
      I5 => CMD(0),
      O => \next_state_reg[1]__0_i_2_n_0\
    );
\next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCCFCCEEDDCFCC"
    )
        port map (
      I0 => \next_state_reg[2]_i_3_n_0\,
      I1 => \next_state_reg[1]_i_2_n_0\,
      I2 => \^csn\,
      I3 => curr_state(1),
      I4 => curr_state(0),
      I5 => curr_state(2),
      O => next_state1_out(1)
    );
\next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555000C"
    )
        port map (
      I0 => \R_data[7]_i_3_n_0\,
      I1 => CMD(0),
      I2 => CMD(1),
      I3 => curr_state(0),
      I4 => curr_state(2),
      I5 => curr_state(1),
      O => \next_state_reg[1]_i_2_n_0\
    );
\next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => next_state1_out(2),
      G => \next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \out\(2)
    );
\next_state_reg[2]__0\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[2]__0_i_1_n_0\,
      G => \next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => next_state(2)
    );
\next_state_reg[2]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04F0F4F0"
    )
        port map (
      I0 => \next_state_reg[2]_i_3_n_0\,
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      I4 => \^csn\,
      O => \next_state_reg[2]__0_i_1_n_0\
    );
\next_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F5F3000"
    )
        port map (
      I0 => \^csn\,
      I1 => \next_state_reg[2]_i_3_n_0\,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => curr_state(2),
      O => next_state1_out(2)
    );
\next_state_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => \next_state_reg[2]_i_2_n_0\
    );
\next_state_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \next_state_reg[2]_i_4_n_0\,
      I1 => \next_state_reg[2]_i_5_n_0\,
      I2 => \next_state_reg[2]_i_6_n_0\,
      I3 => \next_state_reg[2]_i_7_n_0\,
      O => \next_state_reg[2]_i_3_n_0\
    );
\next_state_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MOSI_data0(5),
      I1 => MOSI_data0(4),
      I2 => MOSI_data0(7),
      I3 => MOSI_data0(6),
      O => \next_state_reg[2]_i_4_n_0\
    );
\next_state_reg[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MOSI_data0(1),
      I1 => MOSI_data0(16),
      I2 => W_temp,
      I3 => MOSI_data0(3),
      I4 => MOSI_data0(2),
      O => \next_state_reg[2]_i_5_n_0\
    );
\next_state_reg[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MOSI_data0(13),
      I1 => MOSI_data0(12),
      I2 => MOSI_data0(15),
      I3 => MOSI_data0(14),
      O => \next_state_reg[2]_i_6_n_0\
    );
\next_state_reg[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MOSI_data0(9),
      I1 => MOSI_data0(8),
      I2 => MOSI_data0(11),
      I3 => MOSI_data0(10),
      O => \next_state_reg[2]_i_7_n_0\
    );
\seq_done_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CFDFFFDC3000000"
    )
        port map (
      I0 => CMD(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      I4 => \^sclk\,
      I5 => seq_done_cnt(0),
      O => \seq_done_cnt[0]_i_1_n_0\
    );
\seq_done_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => seq_done_cnt(0),
      I1 => curr_state(1),
      I2 => \seq_done_cnt[1]_i_2_n_0\,
      I3 => seq_done_cnt(1),
      O => \seq_done_cnt[1]_i_1_n_0\
    );
\seq_done_cnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3020002"
    )
        port map (
      I0 => CMD(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      I4 => \^sclk\,
      O => \seq_done_cnt[1]_i_2_n_0\
    );
\seq_done_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \seq_done_cnt[0]_i_1_n_0\,
      Q => seq_done_cnt(0),
      R => '0'
    );
\seq_done_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \seq_done_cnt[1]_i_1_n_0\,
      Q => seq_done_cnt(1),
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
    CMD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : in STD_LOGIC;
    RD_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MOSI : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI_SPI_block_SPI_Master_0_0,SPI_Master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_Master,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute IDLE : string;
  attribute IDLE of inst : label is "3'b000";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute R_DONE : string;
  attribute R_DONE of inst : label is "3'b111";
  attribute R_LOAD : string;
  attribute R_LOAD of inst : label is "3'b100";
  attribute R_START : string;
  attribute R_START of inst : label is "3'b011";
  attribute W_DONE : string;
  attribute W_DONE of inst : label is "3'b010";
  attribute W_START : string;
  attribute W_START of inst : label is "3'b001";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_SPI_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master
     port map (
      ADDR(6 downto 0) => ADDR(6 downto 0),
      CLK => CLK,
      CMD(1 downto 0) => CMD(1 downto 0),
      CSN => CSN,
      MISO => MISO,
      MOSI => MOSI,
      RD_Data(7 downto 0) => RD_Data(7 downto 0),
      RST => RST,
      SCLK => SCLK,
      WR_Data(7 downto 0) => WR_Data(7 downto 0)
    );
end STRUCTURE;
