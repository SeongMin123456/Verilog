-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 14:28:31 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_axi_slve_0_1_sim_netlist.vhdl
-- Design      : zynq_axi_segment_axi_slve_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve is
  port (
    UART_TX_READY : in STD_LOGIC;
    UART_TX_START : out STD_LOGIC;
    UART_TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is 32;
  attribute Idle : string;
  attribute Idle of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is "2'b00";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is 1;
  attribute Raddr : string;
  attribute Raddr of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is "2'b10";
  attribute Rdata : string;
  attribute Rdata of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is "2'b11";
  attribute Waddr : string;
  attribute Waddr of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is "2'b10";
  attribute Wdata : string;
  attribute Wdata of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is "2'b11";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of S_AXI_BVALID : signal is std.standard.true;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^uart_tx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_TX_START_inferred_i_2_n_0 : STD_LOGIC;
  signal UART_TX_START_inferred_i_3_n_0 : STD_LOGIC;
  signal UART_TX_START_inferred_i_4_n_0 : STD_LOGIC;
  signal UART_TX_START_inferred_i_5_n_0 : STD_LOGIC;
  signal UART_TX_START_inferred_i_6_n_0 : STD_LOGIC;
  signal UART_TX_START_inferred_i_7_n_0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid : STD_LOGIC;
  attribute MARK_DEBUG of axi_bvalid : signal is std.standard.true;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wdata : STD_LOGIC;
  signal \axi_wdata__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:01,Waddr:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:01,Waddr:10";
  attribute KEEP : string;
  attribute KEEP of axi_bvalid_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of axi_bvalid_reg : label is "true";
  attribute mark_debug_string of S_AXI_BVALID : signal is "true";
  attribute mark_debug_string of UART_TX_START : signal is "true";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  UART_TX_DATA(7 downto 0) <= \^uart_tx_data\(7 downto 0);
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \slv_reg1[7]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \slv_reg1[7]_i_1_n_0\
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC055FF"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_AWVALID,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3FAA00"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_AWVALID,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => \slv_reg1[7]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => \slv_reg1[7]_i_1_n_0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
UART_TX_START_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => UART_TX_START_inferred_i_2_n_0,
      I1 => UART_TX_START_inferred_i_3_n_0,
      I2 => UART_TX_START_inferred_i_4_n_0,
      I3 => UART_TX_START_inferred_i_5_n_0,
      I4 => UART_TX_START_inferred_i_6_n_0,
      I5 => UART_TX_START_inferred_i_7_n_0,
      O => UART_TX_START
    );
UART_TX_START_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[12]\,
      I1 => \slv_reg1_reg_n_0_[13]\,
      I2 => \slv_reg1_reg_n_0_[10]\,
      I3 => \slv_reg1_reg_n_0_[11]\,
      I4 => \slv_reg1_reg_n_0_[9]\,
      I5 => \slv_reg1_reg_n_0_[8]\,
      O => UART_TX_START_inferred_i_2_n_0
    );
UART_TX_START_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => \slv_reg1_reg_n_0_[19]\,
      I2 => \slv_reg1_reg_n_0_[16]\,
      I3 => \slv_reg1_reg_n_0_[17]\,
      I4 => \slv_reg1_reg_n_0_[15]\,
      I5 => \slv_reg1_reg_n_0_[14]\,
      O => UART_TX_START_inferred_i_3_n_0
    );
UART_TX_START_inferred_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => \slv_reg1_reg_n_0_[31]\,
      I2 => \slv_reg1_reg_n_0_[28]\,
      I3 => \slv_reg1_reg_n_0_[29]\,
      I4 => \slv_reg1_reg_n_0_[27]\,
      I5 => \slv_reg1_reg_n_0_[26]\,
      O => UART_TX_START_inferred_i_4_n_0
    );
UART_TX_START_inferred_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => \slv_reg1_reg_n_0_[25]\,
      I2 => \slv_reg1_reg_n_0_[22]\,
      I3 => \slv_reg1_reg_n_0_[23]\,
      I4 => \slv_reg1_reg_n_0_[21]\,
      I5 => \slv_reg1_reg_n_0_[20]\,
      O => UART_TX_START_inferred_i_5_n_0
    );
UART_TX_START_inferred_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^uart_tx_data\(0),
      I1 => \^uart_tx_data\(1),
      O => UART_TX_START_inferred_i_6_n_0
    );
UART_TX_START_inferred_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^uart_tx_data\(6),
      I1 => \^uart_tx_data\(7),
      I2 => \^uart_tx_data\(4),
      I3 => \^uart_tx_data\(5),
      I4 => \^uart_tx_data\(3),
      I5 => \^uart_tx_data\(2),
      O => UART_TX_START_inferred_i_7_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => state_read(1),
      I3 => S_AXI_RREADY,
      I4 => \^s_axi_rvalid\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => \slv_reg1[7]_i_1_n_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F233F3"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => state_write(1),
      I2 => \^s_axi_awready\,
      I3 => S_AXI_AWVALID,
      I4 => state_write(0),
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^s_axi_awready\,
      R => \slv_reg1[7]_i_1_n_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEFF00AAFE00"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => S_AXI_WVALID,
      I2 => axi_bvalid_i_3_n_0,
      I3 => state_write(0),
      I4 => state_write(1),
      I5 => axi_bvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E444"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_AWVALID,
      I4 => state_write(0),
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_BREADY,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_bvalid,
      O => \^s_axi_bvalid\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => axi_bvalid,
      R => \slv_reg1[7]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => S_AXI_RREADY,
      I5 => \^s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => S_AXI_WVALID,
      O => axi_wdata
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(0),
      Q => \axi_wdata__0\(0),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(10),
      Q => \axi_wdata__0\(10),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(11),
      Q => \axi_wdata__0\(11),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(12),
      Q => \axi_wdata__0\(12),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(13),
      Q => \axi_wdata__0\(13),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(14),
      Q => \axi_wdata__0\(14),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(15),
      Q => \axi_wdata__0\(15),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(16),
      Q => \axi_wdata__0\(16),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(17),
      Q => \axi_wdata__0\(17),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(18),
      Q => \axi_wdata__0\(18),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(19),
      Q => \axi_wdata__0\(19),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(1),
      Q => \axi_wdata__0\(1),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(20),
      Q => \axi_wdata__0\(20),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(21),
      Q => \axi_wdata__0\(21),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(22),
      Q => \axi_wdata__0\(22),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(23),
      Q => \axi_wdata__0\(23),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(24),
      Q => \axi_wdata__0\(24),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(25),
      Q => \axi_wdata__0\(25),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(26),
      Q => \axi_wdata__0\(26),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(27),
      Q => \axi_wdata__0\(27),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(28),
      Q => \axi_wdata__0\(28),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(29),
      Q => \axi_wdata__0\(29),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(2),
      Q => \axi_wdata__0\(2),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(30),
      Q => \axi_wdata__0\(30),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(31),
      Q => \axi_wdata__0\(31),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(3),
      Q => \axi_wdata__0\(3),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(4),
      Q => \axi_wdata__0\(4),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(5),
      Q => \axi_wdata__0\(5),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(6),
      Q => \axi_wdata__0\(6),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(7),
      Q => \axi_wdata__0\(7),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(8),
      Q => \axi_wdata__0\(8),
      R => \slv_reg1[7]_i_1_n_0\
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_wdata,
      D => S_AXI_WDATA(9),
      Q => \axi_wdata__0\(9),
      R => \slv_reg1[7]_i_1_n_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => UART_TX_READY,
      I2 => S_AXI_AWADDR(2),
      I3 => S_AXI_AWADDR(3),
      O => slv_reg1
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(0),
      Q => \^uart_tx_data\(0),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(1),
      Q => \^uart_tx_data\(1),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(2),
      Q => \^uart_tx_data\(2),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(3),
      Q => \^uart_tx_data\(3),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(4),
      Q => \^uart_tx_data\(4),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(5),
      Q => \^uart_tx_data\(5),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(6),
      Q => \^uart_tx_data\(6),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(7),
      Q => \^uart_tx_data\(7),
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => \axi_wdata__0\(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => \slv_reg1[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    UART_TX_READY : in STD_LOGIC;
    UART_TX_START : out STD_LOGIC;
    UART_TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_axi_segment_axi_slve_0_1,axi_slve,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_slve,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of inst : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute Idle : string;
  attribute Idle of inst : label is "2'b00";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of inst : label is 1;
  attribute Raddr : string;
  attribute Raddr of inst : label is "2'b10";
  attribute Rdata : string;
  attribute Rdata of inst : label is "2'b11";
  attribute Waddr : string;
  attribute Waddr of inst : label is "2'b10";
  attribute Wdata : string;
  attribute Wdata of inst : label is "2'b11";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 0) => B"0000",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARPROT(2 downto 0) => B"000",
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 2) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWADDR(1 downto 0) => B"00",
      S_AXI_AWPROT(2 downto 0) => B"000",
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => NLW_inst_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => NLW_inst_S_AXI_RDATA_UNCONNECTED(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_inst_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID,
      UART_TX_DATA(7 downto 0) => UART_TX_DATA(7 downto 0),
      UART_TX_READY => UART_TX_READY,
      UART_TX_START => UART_TX_START
    );
end STRUCTURE;
