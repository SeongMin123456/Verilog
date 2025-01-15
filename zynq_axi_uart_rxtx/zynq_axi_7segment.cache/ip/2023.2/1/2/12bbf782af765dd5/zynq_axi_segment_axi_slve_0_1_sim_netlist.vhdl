-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Jan  9 14:16:32 2025
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
    UART_TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_TX_START : out STD_LOGIC;
    UART_RX_READY : in STD_LOGIC;
    UART_RX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready01_out : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of slv_reg2 : signal is std.standard.true;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg3 : signal is std.standard.true;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \slv_reg2_reg[0]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[10]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[11]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[12]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[13]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[14]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[15]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[16]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[17]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[18]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[19]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[1]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[20]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[21]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[22]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[23]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[24]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[25]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[26]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[27]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[28]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[29]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[2]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[30]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[31]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[3]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[4]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[5]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[6]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[7]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[8]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg2_reg[9]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[0]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[10]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[11]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[12]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[13]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[14]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[15]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[16]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[17]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[18]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[19]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[1]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[20]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[21]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[22]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[23]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[24]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[25]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[26]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[27]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[28]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[29]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[2]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[30]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[31]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[3]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[4]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[5]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[6]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[7]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[8]__0\ : label is "true";
  attribute mark_debug_string of \slv_reg3_reg[9]__0\ : label is "true";
  attribute mark_debug_string of UART_RX_READY : signal is "true";
  attribute mark_debug_string of UART_TX_READY : signal is "true";
  attribute mark_debug_string of UART_TX_START : signal is "true";
  attribute mark_debug_string of UART_RX_DATA : signal is "true";
  attribute mark_debug_string of UART_TX_DATA : signal is "true";
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
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      I5 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      I5 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => axi_awready_i_1_n_0
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
UART_TX_START_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => UART_TX_READY,
      I1 => \^s_axi_bvalid\,
      O => UART_TX_START
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
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => S_AXI_ARESETN,
      I2 => axi_awready0,
      I3 => state_write(0),
      I4 => state_write(1),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_ARESETN,
      I2 => axi_awready0,
      I3 => state_write(0),
      I4 => state_write(1),
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => state_write(1),
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F73030C3F70000"
    )
        port map (
      I0 => axi_awready0,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => S_AXI_BREADY,
      I4 => \^s_axi_bvalid\,
      I5 => axi_awready01_out,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      O => axi_awready01_out
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
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
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF080000F000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => state_write(1),
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => state_write(0),
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_WVALID,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => slv_reg1
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(0),
      Q => UART_TX_DATA(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(1),
      Q => UART_TX_DATA(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(2),
      Q => UART_TX_DATA(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(3),
      Q => UART_TX_DATA(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(4),
      Q => UART_TX_DATA(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(5),
      Q => UART_TX_DATA(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(6),
      Q => UART_TX_DATA(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg1,
      D => S_AXI_WDATA(7),
      Q => UART_TX_DATA(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_READY,
      Q => slv_reg2(0),
      R => '0'
    );
\slv_reg2_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(10),
      R => '0'
    );
\slv_reg2_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(11),
      R => '0'
    );
\slv_reg2_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(12),
      R => '0'
    );
\slv_reg2_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(13),
      R => '0'
    );
\slv_reg2_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(14),
      R => '0'
    );
\slv_reg2_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(15),
      R => '0'
    );
\slv_reg2_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(16),
      R => '0'
    );
\slv_reg2_reg[17]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(17),
      R => '0'
    );
\slv_reg2_reg[18]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(18),
      R => '0'
    );
\slv_reg2_reg[19]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(19),
      R => '0'
    );
\slv_reg2_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(1),
      R => '0'
    );
\slv_reg2_reg[20]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(20),
      R => '0'
    );
\slv_reg2_reg[21]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(21),
      R => '0'
    );
\slv_reg2_reg[22]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(22),
      R => '0'
    );
\slv_reg2_reg[23]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(23),
      R => '0'
    );
\slv_reg2_reg[24]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(24),
      R => '0'
    );
\slv_reg2_reg[25]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(25),
      R => '0'
    );
\slv_reg2_reg[26]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(26),
      R => '0'
    );
\slv_reg2_reg[27]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(27),
      R => '0'
    );
\slv_reg2_reg[28]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(28),
      R => '0'
    );
\slv_reg2_reg[29]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(29),
      R => '0'
    );
\slv_reg2_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(2),
      R => '0'
    );
\slv_reg2_reg[30]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(30),
      R => '0'
    );
\slv_reg2_reg[31]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(31),
      R => '0'
    );
\slv_reg2_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(3),
      R => '0'
    );
\slv_reg2_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(4),
      R => '0'
    );
\slv_reg2_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(5),
      R => '0'
    );
\slv_reg2_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(6),
      R => '0'
    );
\slv_reg2_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(7),
      R => '0'
    );
\slv_reg2_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(8),
      R => '0'
    );
\slv_reg2_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg2(9),
      R => '0'
    );
\slv_reg3_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(0),
      Q => slv_reg3(0),
      R => '0'
    );
\slv_reg3_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(10),
      R => '0'
    );
\slv_reg3_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(11),
      R => '0'
    );
\slv_reg3_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(12),
      R => '0'
    );
\slv_reg3_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(13),
      R => '0'
    );
\slv_reg3_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(14),
      R => '0'
    );
\slv_reg3_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(15),
      R => '0'
    );
\slv_reg3_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(16),
      R => '0'
    );
\slv_reg3_reg[17]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(17),
      R => '0'
    );
\slv_reg3_reg[18]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(18),
      R => '0'
    );
\slv_reg3_reg[19]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(19),
      R => '0'
    );
\slv_reg3_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(1),
      Q => slv_reg3(1),
      R => '0'
    );
\slv_reg3_reg[20]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(20),
      R => '0'
    );
\slv_reg3_reg[21]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(21),
      R => '0'
    );
\slv_reg3_reg[22]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(22),
      R => '0'
    );
\slv_reg3_reg[23]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(23),
      R => '0'
    );
\slv_reg3_reg[24]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(24),
      R => '0'
    );
\slv_reg3_reg[25]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(25),
      R => '0'
    );
\slv_reg3_reg[26]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(26),
      R => '0'
    );
\slv_reg3_reg[27]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(27),
      R => '0'
    );
\slv_reg3_reg[28]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(28),
      R => '0'
    );
\slv_reg3_reg[29]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(29),
      R => '0'
    );
\slv_reg3_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(2),
      Q => slv_reg3(2),
      R => '0'
    );
\slv_reg3_reg[30]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(30),
      R => '0'
    );
\slv_reg3_reg[31]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(31),
      R => '0'
    );
\slv_reg3_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(3),
      Q => slv_reg3(3),
      R => '0'
    );
\slv_reg3_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(4),
      Q => slv_reg3(4),
      R => '0'
    );
\slv_reg3_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(5),
      Q => slv_reg3(5),
      R => '0'
    );
\slv_reg3_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(6),
      Q => slv_reg3(6),
      R => '0'
    );
\slv_reg3_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => UART_RX_DATA(7),
      Q => slv_reg3(7),
      R => '0'
    );
\slv_reg3_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(8),
      R => '0'
    );
\slv_reg3_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => slv_reg3(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    UART_TX_READY : in STD_LOGIC;
    UART_TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_TX_START : out STD_LOGIC;
    UART_RX_READY : in STD_LOGIC;
    UART_RX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
      S_AXI_WDATA(31 downto 8) => B"000000000000000000000000",
      S_AXI_WDATA(7 downto 0) => S_AXI_WDATA(7 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID,
      UART_RX_DATA(7 downto 0) => UART_RX_DATA(7 downto 0),
      UART_RX_READY => UART_RX_READY,
      UART_TX_DATA(7 downto 0) => UART_TX_DATA(7 downto 0),
      UART_TX_READY => UART_TX_READY,
      UART_TX_START => UART_TX_START
    );
end STRUCTURE;
