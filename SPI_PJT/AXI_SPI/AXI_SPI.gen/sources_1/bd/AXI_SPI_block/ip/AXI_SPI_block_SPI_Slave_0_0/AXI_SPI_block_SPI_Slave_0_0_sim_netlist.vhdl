-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Feb 10 10:38:09 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/verilog_lab/SPI_PJT/AXI_SPI/AXI_SPI.gen/sources_1/bd/AXI_SPI_block/ip/AXI_SPI_block_SPI_Slave_0_0/AXI_SPI_block_SPI_Slave_0_0_sim_netlist.vhdl
-- Design      : AXI_SPI_block_SPI_Slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_SPI_block_SPI_Slave_0_0_SPI_Slave is
  port (
    RST : in STD_LOGIC;
    SCLK : in STD_LOGIC;
    CSN : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    RAM_Rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : out STD_LOGIC;
    RAM_WEN : out STD_LOGIC;
    RAM_Addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RAM_Wdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute IDLE : string;
  attribute IDLE of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "3'b000";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "SPI_Slave";
  attribute R_DONE : string;
  attribute R_DONE of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "3'b111";
  attribute R_LOAD : string;
  attribute R_LOAD of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "3'b100";
  attribute R_START : string;
  attribute R_START of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "3'b011";
  attribute W_DONE : string;
  attribute W_DONE of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "3'b010";
  attribute W_START : string;
  attribute W_START of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "3'b001";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave : entity is "soft";
end AXI_SPI_block_SPI_Slave_0_0_SPI_Slave;

architecture STRUCTURE of AXI_SPI_block_SPI_Slave_0_0_SPI_Slave is
  signal \FSM_onehot_curr_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \^miso\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of MISO : signal is std.standard.true;
  signal MISO_cnt : STD_LOGIC;
  signal \MISO_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal MISO_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MISO_i_1_n_0 : STD_LOGIC;
  signal MISO_i_2_n_0 : STD_LOGIC;
  signal MISO_i_3_n_0 : STD_LOGIC;
  signal MISO_i_4_n_0 : STD_LOGIC;
  signal \^ram_addr\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute MARK_DEBUG of \^ram_addr\ : signal is std.standard.true;
  signal \RAM_Addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \RAM_Addr[6]_i_2_n_0\ : STD_LOGIC;
  signal \^ram_wen\ : STD_LOGIC;
  attribute MARK_DEBUG of RAM_WEN : signal is std.standard.true;
  signal R_dd_i_1_n_0 : STD_LOGIC;
  signal R_dd_reg_n_0 : STD_LOGIC;
  signal R_start_done : STD_LOGIC;
  signal \R_start_done__0\ : STD_LOGIC;
  signal R_start_done_i_1_n_0 : STD_LOGIC;
  signal data_cnt : STD_LOGIC;
  signal data_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal in_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal next_state : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal temp0 : STD_LOGIC;
  signal temp_i_1_n_0 : STD_LOGIC;
  signal temp_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[4]\ : label is "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[5]\ : label is "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[2]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[3]_i_2\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \MISO_cnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \MISO_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \MISO_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \MISO_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of MISO_i_3 : label is "soft_lutpair7";
  attribute KEEP : string;
  attribute KEEP of MISO_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of MISO_reg : label is "true";
  attribute SOFT_HLUTNM of \RAM_Addr[6]_i_3\ : label is "soft_lutpair1";
  attribute KEEP of \RAM_Addr_reg[0]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[0]\ : label is "true";
  attribute KEEP of \RAM_Addr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[1]\ : label is "true";
  attribute KEEP of \RAM_Addr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[2]\ : label is "true";
  attribute KEEP of \RAM_Addr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[3]\ : label is "true";
  attribute KEEP of \RAM_Addr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[4]\ : label is "true";
  attribute KEEP of \RAM_Addr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[5]\ : label is "true";
  attribute KEEP of \RAM_Addr_reg[6]\ : label is "yes";
  attribute mark_debug_string of \RAM_Addr_reg[6]\ : label is "true";
  attribute KEEP of RAM_WEN_reg : label is "yes";
  attribute mark_debug_string of RAM_WEN_reg : label is "true";
  attribute KEEP of \RAM_Wdata_reg[0]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[0]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[1]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[1]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[2]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[2]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[3]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[3]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[4]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[4]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[5]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[5]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[6]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[6]\ : label is "true";
  attribute KEEP of \RAM_Wdata_reg[7]\ : label is "yes";
  attribute mark_debug_string of \RAM_Wdata_reg[7]\ : label is "true";
  attribute SOFT_HLUTNM of R_dd_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of R_start_done_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute mark_debug_string of MISO : signal is "true";
  attribute mark_debug_string of RAM_WEN : signal is "true";
  attribute mark_debug_string of RAM_Addr : signal is "true";
  attribute mark_debug_string of RAM_Wdata : signal is "true";
begin
  MISO <= \^miso\;
  RAM_Addr(6 downto 0) <= \^ram_addr\(6 downto 0);
  RAM_WEN <= \^ram_wen\;
\FSM_onehot_curr_state[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST,
      O => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      Q => temp0,
      S => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[1]\,
      R => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[2]\,
      R => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => R_start_done,
      R => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[4]\,
      Q => MISO_cnt,
      R => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_curr_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[5]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[5]\,
      R => \FSM_onehot_curr_state[5]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[0]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => CSN,
      I1 => temp0,
      I2 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I3 => \^ram_wen\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[5]\,
      I5 => R_dd_reg_n_0,
      O => \FSM_onehot_next_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[1]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_next_state_reg[1]_i_2_n_0\,
      I1 => \FSM_onehot_next_state_reg[3]_i_2_n_0\,
      I2 => data_cnt_reg(4),
      I3 => CSN,
      I4 => MOSI,
      I5 => temp0,
      O => \FSM_onehot_next_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA2AA"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I1 => data_cnt_reg(0),
      I2 => data_cnt_reg(1),
      I3 => data_cnt_reg(4),
      I4 => data_cnt_reg(2),
      I5 => data_cnt_reg(3),
      O => \FSM_onehot_next_state_reg[1]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[2]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^ram_wen\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_next_state_reg[2]_i_2_n_0\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      O => \FSM_onehot_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => data_cnt_reg(3),
      I1 => data_cnt_reg(2),
      I2 => data_cnt_reg(4),
      I3 => data_cnt_reg(1),
      I4 => data_cnt_reg(0),
      O => \FSM_onehot_next_state_reg[2]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[3]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[3]\
    );
\FSM_onehot_next_state_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F444F444444"
    )
        port map (
      I0 => \R_start_done__0\,
      I1 => R_start_done,
      I2 => CSN,
      I3 => temp0,
      I4 => \FSM_onehot_next_state_reg[3]_i_2_n_0\,
      I5 => \FSM_onehot_next_state_reg[3]_i_3_n_0\,
      O => \FSM_onehot_next_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_cnt_reg(3),
      I1 => data_cnt_reg(2),
      I2 => data_cnt_reg(1),
      I3 => data_cnt_reg(0),
      O => \FSM_onehot_next_state_reg[3]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => MOSI,
      I1 => CSN,
      I2 => data_cnt_reg(4),
      O => \FSM_onehot_next_state_reg[3]_i_3_n_0\
    );
\FSM_onehot_next_state_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[4]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[4]\
    );
\FSM_onehot_next_state_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_next_state_reg[5]_i_3_n_0\,
      I1 => MISO_cnt,
      I2 => \R_start_done__0\,
      I3 => R_start_done,
      O => \FSM_onehot_next_state_reg[4]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[5]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[5]\
    );
\FSM_onehot_next_state_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => R_dd_reg_n_0,
      I1 => \FSM_onehot_curr_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_next_state_reg[5]_i_3_n_0\,
      I3 => MISO_cnt,
      O => \FSM_onehot_next_state_reg[5]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp0,
      I1 => \FSM_onehot_curr_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I3 => MISO_cnt,
      I4 => R_start_done,
      I5 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => next_state
    );
\FSM_onehot_next_state_reg[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => MISO_cnt_reg(3),
      I1 => MISO_cnt_reg(1),
      I2 => MISO_cnt_reg(0),
      I3 => MISO_cnt_reg(2),
      O => \FSM_onehot_next_state_reg[5]_i_3_n_0\
    );
\MISO_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MISO_cnt_reg(0),
      O => \MISO_cnt[0]_i_1_n_0\
    );
\MISO_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MISO_cnt_reg(1),
      I1 => MISO_cnt_reg(0),
      O => \p_0_in__2\(1)
    );
\MISO_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => MISO_cnt_reg(2),
      I1 => MISO_cnt_reg(0),
      I2 => MISO_cnt_reg(1),
      O => \p_0_in__2\(2)
    );
\MISO_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => MISO_cnt_reg(3),
      I1 => MISO_cnt_reg(2),
      I2 => MISO_cnt_reg(1),
      I3 => MISO_cnt_reg(0),
      O => \p_0_in__2\(3)
    );
\MISO_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => MISO_cnt,
      D => \MISO_cnt[0]_i_1_n_0\,
      Q => MISO_cnt_reg(0),
      R => temp0
    );
\MISO_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => MISO_cnt,
      D => \p_0_in__2\(1),
      Q => MISO_cnt_reg(1),
      R => temp0
    );
\MISO_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => MISO_cnt,
      D => \p_0_in__2\(2),
      Q => MISO_cnt_reg(2),
      R => temp0
    );
\MISO_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => MISO_cnt,
      D => \p_0_in__2\(3),
      Q => MISO_cnt_reg(3),
      R => temp0
    );
MISO_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE82FFFFBE820000"
    )
        port map (
      I0 => MISO_i_2_n_0,
      I1 => MISO_cnt_reg(2),
      I2 => MISO_i_3_n_0,
      I3 => MISO_i_4_n_0,
      I4 => MISO_cnt,
      I5 => \^miso\,
      O => MISO_i_1_n_0
    );
MISO_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => RAM_Rdata(6),
      I1 => RAM_Rdata(5),
      I2 => MISO_cnt_reg(1),
      I3 => MISO_cnt_reg(0),
      I4 => RAM_Rdata(4),
      I5 => RAM_Rdata(3),
      O => MISO_i_2_n_0
    );
MISO_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MISO_cnt_reg(1),
      I1 => MISO_cnt_reg(0),
      O => MISO_i_3_n_0
    );
MISO_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => RAM_Rdata(2),
      I1 => RAM_Rdata(1),
      I2 => MISO_cnt_reg(1),
      I3 => MISO_cnt_reg(0),
      I4 => RAM_Rdata(0),
      I5 => RAM_Rdata(7),
      O => MISO_i_4_n_0
    );
MISO_reg: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => '1',
      D => MISO_i_1_n_0,
      Q => \^miso\,
      R => '0'
    );
\RAM_Addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(9),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(0),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(0),
      I5 => R_start_done,
      O => \RAM_Addr[0]_i_1_n_0\
    );
\RAM_Addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(10),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(1),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(1),
      I5 => R_start_done,
      O => \RAM_Addr[1]_i_1_n_0\
    );
\RAM_Addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(11),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(2),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(2),
      I5 => R_start_done,
      O => \RAM_Addr[2]_i_1_n_0\
    );
\RAM_Addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(12),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(3),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(3),
      I5 => R_start_done,
      O => \RAM_Addr[3]_i_1_n_0\
    );
\RAM_Addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(13),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(4),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(4),
      I5 => R_start_done,
      O => \RAM_Addr[4]_i_1_n_0\
    );
\RAM_Addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(14),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(5),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(5),
      I5 => R_start_done,
      O => \RAM_Addr[5]_i_1_n_0\
    );
\RAM_Addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => R_start_done,
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \RAM_Addr[6]_i_1_n_0\
    );
\RAM_Addr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => in_data(15),
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => in_data(6),
      I3 => \p_0_in__0\,
      I4 => \^ram_addr\(6),
      I5 => R_start_done,
      O => \RAM_Addr[6]_i_2_n_0\
    );
\RAM_Addr[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_cnt_reg(3),
      I1 => data_cnt_reg(4),
      O => \p_0_in__0\
    );
\RAM_Addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[0]_i_1_n_0\,
      Q => \^ram_addr\(0),
      R => temp0
    );
\RAM_Addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[1]_i_1_n_0\,
      Q => \^ram_addr\(1),
      R => temp0
    );
\RAM_Addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[2]_i_1_n_0\,
      Q => \^ram_addr\(2),
      R => temp0
    );
\RAM_Addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[3]_i_1_n_0\,
      Q => \^ram_addr\(3),
      R => temp0
    );
\RAM_Addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[4]_i_1_n_0\,
      Q => \^ram_addr\(4),
      R => temp0
    );
\RAM_Addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[5]_i_1_n_0\,
      Q => \^ram_addr\(5),
      R => temp0
    );
\RAM_Addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \RAM_Addr[6]_i_1_n_0\,
      D => \RAM_Addr[6]_i_2_n_0\,
      Q => \^ram_addr\(6),
      R => temp0
    );
RAM_WEN_reg: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(0),
      Q => \^ram_wen\,
      R => temp0
    );
\RAM_Wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(1),
      Q => RAM_Wdata(0),
      R => temp0
    );
\RAM_Wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(2),
      Q => RAM_Wdata(1),
      R => temp0
    );
\RAM_Wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(3),
      Q => RAM_Wdata(2),
      R => temp0
    );
\RAM_Wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(4),
      Q => RAM_Wdata(3),
      R => temp0
    );
\RAM_Wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(5),
      Q => RAM_Wdata(4),
      R => temp0
    );
\RAM_Wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => in_data(6),
      Q => RAM_Wdata(5),
      R => temp0
    );
\RAM_Wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => p_0_in(6),
      Q => RAM_Wdata(6),
      R => temp0
    );
\RAM_Wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SCLK,
      CE => \FSM_onehot_curr_state_reg_n_0_[2]\,
      D => p_0_in(7),
      Q => RAM_Wdata(7),
      R => temp0
    );
R_dd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[5]\,
      I1 => temp0,
      I2 => R_dd_reg_n_0,
      O => R_dd_i_1_n_0
    );
R_dd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => R_dd_i_1_n_0,
      Q => R_dd_reg_n_0,
      R => '0'
    );
R_start_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
        port map (
      I0 => \R_start_done__0\,
      I1 => R_start_done,
      I2 => data_cnt_reg(4),
      I3 => data_cnt_reg(3),
      I4 => temp0,
      O => R_start_done_i_1_n_0
    );
R_start_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => R_start_done_i_1_n_0,
      Q => \R_start_done__0\,
      R => '0'
    );
\data_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\data_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_cnt_reg(0),
      I1 => data_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\data_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => data_cnt_reg(2),
      I1 => data_cnt_reg(1),
      I2 => data_cnt_reg(0),
      O => \p_0_in__1\(2)
    );
\data_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => data_cnt_reg(3),
      I1 => data_cnt_reg(0),
      I2 => data_cnt_reg(1),
      I3 => data_cnt_reg(2),
      O => \p_0_in__1\(3)
    );
\data_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => data_cnt_reg(4),
      I1 => data_cnt_reg(2),
      I2 => data_cnt_reg(1),
      I3 => data_cnt_reg(0),
      I4 => data_cnt_reg(3),
      O => \p_0_in__1\(4)
    );
\data_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => \p_0_in__1\(0),
      Q => data_cnt_reg(0),
      R => temp0
    );
\data_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => \p_0_in__1\(1),
      Q => data_cnt_reg(1),
      R => temp0
    );
\data_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => \p_0_in__1\(2),
      Q => data_cnt_reg(2),
      R => temp0
    );
\data_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => \p_0_in__1\(3),
      Q => data_cnt_reg(3),
      R => temp0
    );
\data_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => \p_0_in__1\(4),
      Q => data_cnt_reg(4),
      R => temp0
    );
\in_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F2F0F2"
    )
        port map (
      I0 => R_start_done,
      I1 => data_cnt_reg(3),
      I2 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I3 => data_cnt_reg(4),
      I4 => \FSM_onehot_next_state_reg[3]_i_2_n_0\,
      O => data_cnt
    );
\in_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => temp_reg_n_0,
      Q => in_data(0),
      R => temp0
    );
\in_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(9),
      Q => in_data(10),
      R => temp0
    );
\in_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(10),
      Q => in_data(11),
      R => temp0
    );
\in_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(11),
      Q => in_data(12),
      R => temp0
    );
\in_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(12),
      Q => in_data(13),
      R => temp0
    );
\in_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(13),
      Q => in_data(14),
      R => temp0
    );
\in_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(14),
      Q => in_data(15),
      R => temp0
    );
\in_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(0),
      Q => in_data(1),
      R => temp0
    );
\in_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(1),
      Q => in_data(2),
      R => temp0
    );
\in_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(2),
      Q => in_data(3),
      R => temp0
    );
\in_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(3),
      Q => in_data(4),
      R => temp0
    );
\in_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(4),
      Q => in_data(5),
      R => temp0
    );
\in_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(5),
      Q => in_data(6),
      R => temp0
    );
\in_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => in_data(6),
      Q => p_0_in(6),
      R => temp0
    );
\in_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => temp0
    );
\in_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK,
      CE => data_cnt,
      D => p_0_in(7),
      Q => in_data(9),
      R => temp0
    );
temp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00A2"
    )
        port map (
      I0 => temp_reg_n_0,
      I1 => R_start_done,
      I2 => \p_0_in__0\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I4 => MOSI,
      I5 => temp0,
      O => temp_i_1_n_0
    );
temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => temp_i_1_n_0,
      Q => temp_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_SPI_block_SPI_Slave_0_0 is
  port (
    RST : in STD_LOGIC;
    SCLK : in STD_LOGIC;
    CSN : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    RAM_Rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : out STD_LOGIC;
    RAM_WEN : out STD_LOGIC;
    RAM_Addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RAM_Wdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_SPI_block_SPI_Slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_SPI_block_SPI_Slave_0_0 : entity is "AXI_SPI_block_SPI_Slave_0_0,SPI_Slave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI_SPI_block_SPI_Slave_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AXI_SPI_block_SPI_Slave_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI_SPI_block_SPI_Slave_0_0 : entity is "SPI_Slave,Vivado 2023.2";
end AXI_SPI_block_SPI_Slave_0_0;

architecture STRUCTURE of AXI_SPI_block_SPI_Slave_0_0 is
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
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.AXI_SPI_block_SPI_Slave_0_0_SPI_Slave
     port map (
      CSN => CSN,
      MISO => MISO,
      MOSI => MOSI,
      RAM_Addr(6 downto 0) => RAM_Addr(6 downto 0),
      RAM_Rdata(7 downto 0) => RAM_Rdata(7 downto 0),
      RAM_WEN => RAM_WEN,
      RAM_Wdata(7 downto 0) => RAM_Wdata(7 downto 0),
      RST => RST,
      SCLK => SCLK
    );
end STRUCTURE;
