-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Feb 10 19:16:22 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_AXI_SPI_0_0_sim_netlist.vhdl
-- Design      : AXI_SPI_block_AXI_SPI_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI is
  port (
    CSN : in STD_LOGIC;
    RAM_Rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_Addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_CMD : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute ADDR_LSB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is 32;
  attribute Idle : string;
  attribute Idle of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is "2'b00";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is 1;
  attribute Raddr : string;
  attribute Raddr of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is "2'b10";
  attribute Rdata : string;
  attribute Rdata of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is "2'b11";
  attribute Waddr : string;
  attribute Waddr of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is "2'b10";
  attribute Wdata : string;
  attribute Wdata of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is "2'b11";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI is
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
  signal \^wr_cmd\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^wr_cmd\ : signal is std.standard.true;
  signal \WR_CMD[0]_i_1_n_0\ : STD_LOGIC;
  signal \WR_CMD[0]_i_2_n_0\ : STD_LOGIC;
  signal \WR_CMD[0]_i_3_n_0\ : STD_LOGIC;
  signal \WR_CMD[1]_i_1_n_0\ : STD_LOGIC;
  signal \WR_CMD[1]_i_2_n_0\ : STD_LOGIC;
  signal \WR_CMD[1]_i_3_n_0\ : STD_LOGIC;
  signal \WR_CMD[1]_i_5_n_0\ : STD_LOGIC;
  signal \^write_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^write_data\ : signal is std.standard.true;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready05_out : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal read_state : STD_LOGIC;
  signal read_state_i_1_n_0 : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg0 : signal is std.standard.true;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg1 : signal is std.standard.true;
  signal \slv_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg2 : signal is std.standard.true;
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg3 : signal is std.standard.true;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WR_CMD[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \WR_CMD[1]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \WR_CMD[1]_i_5\ : label is "soft_lutpair1";
  attribute KEEP : string;
  attribute KEEP of \WR_CMD_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \WR_CMD_reg[0]\ : label is "true";
  attribute KEEP of \WR_CMD_reg[1]\ : label is "yes";
  attribute mark_debug_string of \WR_CMD_reg[1]\ : label is "true";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_bvalid_i_3 : label is "soft_lutpair2";
  attribute KEEP of \slv_reg0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[9]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[9]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[0]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[10]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[11]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[12]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[13]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[14]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[15]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[16]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[17]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[18]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[19]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[1]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[20]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[21]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[22]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[23]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[24]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[25]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[26]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[27]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[28]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[29]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[2]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[30]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[31]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[3]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[4]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[5]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[6]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[7]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[8]\ : label is "yes";
  attribute KEEP of \slv_reg2_reg[9]\ : label is "yes";
  attribute mark_debug_string of CSN : signal is "true";
  attribute mark_debug_string of RAM_Rdata : signal is "true";
  attribute mark_debug_string of WR_CMD : signal is "true";
  attribute mark_debug_string of Write_Addr : signal is "true";
  attribute mark_debug_string of Write_data : signal is "true";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  WR_CMD(1 downto 0) <= \^wr_cmd\(1 downto 0);
  Write_data(7 downto 0) <= \^write_data\(7 downto 0);
  slv_reg3(7 downto 0) <= RAM_Rdata(7 downto 0);
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFFFFFF"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^s_axi_rvalid\,
      I2 => S_AXI_ARVALID,
      I3 => \^s_axi_arready\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7777F0000000"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_RREADY,
      I2 => \^s_axi_arready\,
      I3 => S_AXI_ARVALID,
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
      INIT => X"FFFF88880FFFFFFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => state_write(0),
      I5 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7777F0000000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_AWVALID,
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
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(0),
      I4 => slv_reg1(0),
      I5 => slv_reg2(0),
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(10),
      I4 => slv_reg1(10),
      I5 => slv_reg2(10),
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(11),
      I4 => slv_reg1(11),
      I5 => slv_reg2(11),
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(12),
      I4 => slv_reg1(12),
      I5 => slv_reg2(12),
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(13),
      I4 => slv_reg1(13),
      I5 => slv_reg2(13),
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(14),
      I4 => slv_reg1(14),
      I5 => slv_reg2(14),
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(15),
      I4 => slv_reg1(15),
      I5 => slv_reg2(15),
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(16),
      I4 => slv_reg1(16),
      I5 => slv_reg2(16),
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(17),
      I4 => slv_reg1(17),
      I5 => slv_reg2(17),
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(18),
      I4 => slv_reg1(18),
      I5 => slv_reg2(18),
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(19),
      I4 => slv_reg1(19),
      I5 => slv_reg2(19),
      O => S_AXI_RDATA(19)
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(1),
      I4 => slv_reg1(1),
      I5 => slv_reg2(1),
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(20),
      I4 => slv_reg1(20),
      I5 => slv_reg2(20),
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(21),
      I4 => slv_reg1(21),
      I5 => slv_reg2(21),
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(22),
      I4 => slv_reg1(22),
      I5 => slv_reg2(22),
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(23),
      I4 => slv_reg1(23),
      I5 => slv_reg2(23),
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(24),
      I4 => slv_reg1(24),
      I5 => slv_reg2(24),
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(25),
      I4 => slv_reg1(25),
      I5 => slv_reg2(25),
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(26),
      I4 => slv_reg1(26),
      I5 => slv_reg2(26),
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(27),
      I4 => slv_reg1(27),
      I5 => slv_reg2(27),
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(28),
      I4 => slv_reg1(28),
      I5 => slv_reg2(28),
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(29),
      I4 => slv_reg1(29),
      I5 => slv_reg2(29),
      O => S_AXI_RDATA(29)
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(2),
      I4 => slv_reg1(2),
      I5 => slv_reg2(2),
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(30),
      I4 => slv_reg1(30),
      I5 => slv_reg2(30),
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(31),
      I4 => slv_reg1(31),
      I5 => slv_reg2(31),
      O => S_AXI_RDATA(31)
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(3),
      I4 => slv_reg1(3),
      I5 => slv_reg2(3),
      O => S_AXI_RDATA(3)
    );
\S_AXI_RDATA[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(4),
      I4 => slv_reg1(4),
      I5 => slv_reg2(4),
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(5),
      I4 => slv_reg1(5),
      I5 => slv_reg2(5),
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(6),
      I4 => slv_reg1(6),
      I5 => slv_reg2(6),
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^write_data\(7),
      I4 => slv_reg1(7),
      I5 => slv_reg2(7),
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(8),
      I4 => slv_reg1(8),
      I5 => slv_reg2(8),
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg0(9),
      I4 => slv_reg1(9),
      I5 => slv_reg2(9),
      O => S_AXI_RDATA(9)
    );
\WR_CMD[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEE0000"
    )
        port map (
      I0 => \WR_CMD[1]_i_2_n_0\,
      I1 => \WR_CMD[0]_i_2_n_0\,
      I2 => \WR_CMD[0]_i_3_n_0\,
      I3 => axi_bvalid,
      I4 => \WR_CMD[1]_i_5_n_0\,
      I5 => \^wr_cmd\(0),
      O => \WR_CMD[0]_i_1_n_0\
    );
\WR_CMD[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => state_write(0),
      I1 => \^wr_cmd\(0),
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      O => \WR_CMD[0]_i_2_n_0\
    );
\WR_CMD[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_2_in(1),
      O => \WR_CMD[0]_i_3_n_0\
    );
\WR_CMD[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEE0000"
    )
        port map (
      I0 => \WR_CMD[1]_i_2_n_0\,
      I1 => \WR_CMD[1]_i_3_n_0\,
      I2 => p_2_in(0),
      I3 => axi_bvalid,
      I4 => \WR_CMD[1]_i_5_n_0\,
      I5 => \^wr_cmd\(1),
      O => \WR_CMD[1]_i_1_n_0\
    );
\WR_CMD[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007000FFFFFFFF"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_bvalid\,
      I3 => S_AXI_BREADY,
      I4 => state_write(0),
      I5 => state_write(1),
      O => \WR_CMD[1]_i_2_n_0\
    );
\WR_CMD[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => state_write(0),
      I1 => \^wr_cmd\(1),
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      O => \WR_CMD[1]_i_3_n_0\
    );
\WR_CMD[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_WVALID,
      I2 => state_write(0),
      O => axi_bvalid
    );
\WR_CMD[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      O => \WR_CMD[1]_i_5_n_0\
    );
\WR_CMD_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \WR_CMD[0]_i_1_n_0\,
      Q => \^wr_cmd\(0),
      S => axi_awready_i_1_n_0
    );
\WR_CMD_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \WR_CMD[1]_i_1_n_0\,
      Q => \^wr_cmd\(1),
      S => axi_awready_i_1_n_0
    );
Write_Addr_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => slv_reg1(6),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(6)
    );
Write_Addr_inferred_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(5),
      I1 => slv_reg1(5),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(5)
    );
Write_Addr_inferred_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => slv_reg1(4),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(4)
    );
Write_Addr_inferred_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => slv_reg1(3),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(3)
    );
Write_Addr_inferred_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => slv_reg1(2),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(2)
    );
Write_Addr_inferred_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => slv_reg1(1),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(1)
    );
Write_Addr_inferred_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => slv_reg1(0),
      I2 => \^wr_cmd\(0),
      I3 => \^wr_cmd\(1),
      O => Write_Addr(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARESETN,
      I2 => state_read(0),
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => S_AXI_ARESETN,
      I2 => state_read(0),
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(1),
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFFF40554055"
    )
        port map (
      I0 => state_read(0),
      I1 => S_AXI_RREADY,
      I2 => \^s_axi_rvalid\,
      I3 => state_read(1),
      I4 => S_AXI_ARVALID,
      I5 => \^s_axi_arready\,
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
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => axi_wready,
      I2 => S_AXI_ARESETN,
      I3 => p_2_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => axi_wready,
      I2 => S_AXI_ARESETN,
      I3 => p_2_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_2_in(0),
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_2_in(1),
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
      INIT => X"FF55FFFF40554055"
    )
        port map (
      I0 => state_write(0),
      I1 => \^s_axi_wready\,
      I2 => S_AXI_WVALID,
      I3 => state_write(1),
      I4 => S_AXI_AWVALID,
      I5 => \^s_axi_awready\,
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
      INIT => X"440444040444FFEE"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s_axi_bvalid\,
      I2 => S_AXI_BREADY,
      I3 => state_write(1),
      I4 => axi_bvalid_i_3_n_0,
      I5 => state_write(0),
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state_write(1),
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => state_write(0),
      O => axi_wready
    );
axi_bvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      O => axi_bvalid_i_3_n_0
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
      INIT => X"A2A2A2A2FAAAAAAA"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_RREADY,
      I2 => state_read(0),
      I3 => \^s_axi_arready\,
      I4 => S_AXI_ARVALID,
      I5 => state_read(1),
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
      INIT => X"8CAA8C888C888C88"
    )
        port map (
      I0 => state_write(0),
      I1 => \^s_axi_wready\,
      I2 => S_AXI_WVALID,
      I3 => state_write(1),
      I4 => S_AXI_AWVALID,
      I5 => \^s_axi_awready\,
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
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(8)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(28)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => slv_reg3(22)
    );
read_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FF1500"
    )
        port map (
      I0 => CSN,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_ARESETN,
      I4 => read_state,
      O => read_state_i_1_n_0
    );
read_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_state_i_1_n_0,
      Q => read_state,
      R => '0'
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(0),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(0),
      O => \p_1_in__0\(0)
    );
\slv_reg0[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(10),
      O => \p_1_in__0\(10)
    );
\slv_reg0[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(11),
      O => \p_1_in__0\(11)
    );
\slv_reg0[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(12),
      O => \p_1_in__0\(12)
    );
\slv_reg0[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(13),
      O => \p_1_in__0\(13)
    );
\slv_reg0[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(14),
      O => \p_1_in__0\(14)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(15),
      O => \p_1_in__0\(15)
    );
\slv_reg0[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(16),
      O => \p_1_in__0\(16)
    );
\slv_reg0[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(17),
      O => \p_1_in__0\(17)
    );
\slv_reg0[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(18),
      O => \p_1_in__0\(18)
    );
\slv_reg0[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(19),
      O => \p_1_in__0\(19)
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(1),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(1),
      O => \p_1_in__0\(1)
    );
\slv_reg0[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(20),
      O => \p_1_in__0\(20)
    );
\slv_reg0[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(21),
      O => \p_1_in__0\(21)
    );
\slv_reg0[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(22),
      O => \p_1_in__0\(22)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(23),
      O => \p_1_in__0\(23)
    );
\slv_reg0[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(24),
      O => \p_1_in__0\(24)
    );
\slv_reg0[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(25),
      O => \p_1_in__0\(25)
    );
\slv_reg0[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(26),
      O => \p_1_in__0\(26)
    );
\slv_reg0[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(27),
      O => \p_1_in__0\(27)
    );
\slv_reg0[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(28),
      O => \p_1_in__0\(28)
    );
\slv_reg0[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(29),
      O => \p_1_in__0\(29)
    );
\slv_reg0[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(2),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(2),
      O => \p_1_in__0\(2)
    );
\slv_reg0[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(30),
      O => \p_1_in__0\(30)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_WVALID,
      O => axi_awready05_out
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(31),
      O => \p_1_in__0\(31)
    );
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(3),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(3),
      O => \p_1_in__0\(3)
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(4),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(4),
      O => \p_1_in__0\(4)
    );
\slv_reg0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(5),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(5),
      O => \p_1_in__0\(5)
    );
\slv_reg0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(6),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(6),
      O => \p_1_in__0\(6)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^write_data\(7),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(7),
      O => \p_1_in__0\(7)
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(8),
      O => \p_1_in__0\(8)
    );
\slv_reg0[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => S_AXI_WDATA(9),
      O => \p_1_in__0\(9)
    );
slv_reg0_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(7),
      O => \^write_data\(7)
    );
\slv_reg0_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(6),
      O => \^write_data\(6)
    );
\slv_reg0_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(5),
      O => \^write_data\(5)
    );
\slv_reg0_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(4),
      O => \^write_data\(4)
    );
\slv_reg0_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(3),
      O => \^write_data\(3)
    );
\slv_reg0_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(2),
      O => \^write_data\(2)
    );
\slv_reg0_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(1),
      O => \^write_data\(1)
    );
\slv_reg0_inst__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      O => \^write_data\(0)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \p_1_in__0\(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(0),
      O => \slv_reg1[0]_i_1_n_0\
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(10),
      O => \slv_reg1[10]_i_1_n_0\
    );
\slv_reg1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(11),
      O => \slv_reg1[11]_i_1_n_0\
    );
\slv_reg1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(12),
      O => \slv_reg1[12]_i_1_n_0\
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(13),
      O => \slv_reg1[13]_i_1_n_0\
    );
\slv_reg1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(14),
      O => \slv_reg1[14]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(15),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(16),
      O => \slv_reg1[16]_i_1_n_0\
    );
\slv_reg1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(17),
      O => \slv_reg1[17]_i_1_n_0\
    );
\slv_reg1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(18),
      O => \slv_reg1[18]_i_1_n_0\
    );
\slv_reg1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(19),
      O => \slv_reg1[19]_i_1_n_0\
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(1),
      O => \slv_reg1[1]_i_1_n_0\
    );
\slv_reg1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(20),
      O => \slv_reg1[20]_i_1_n_0\
    );
\slv_reg1[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(21),
      O => \slv_reg1[21]_i_1_n_0\
    );
\slv_reg1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(22),
      O => \slv_reg1[22]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(23),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(24),
      O => \slv_reg1[24]_i_1_n_0\
    );
\slv_reg1[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(25),
      O => \slv_reg1[25]_i_1_n_0\
    );
\slv_reg1[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(26),
      O => \slv_reg1[26]_i_1_n_0\
    );
\slv_reg1[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(27),
      O => \slv_reg1[27]_i_1_n_0\
    );
\slv_reg1[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(28),
      O => \slv_reg1[28]_i_1_n_0\
    );
\slv_reg1[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(29),
      O => \slv_reg1[29]_i_1_n_0\
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(2),
      O => \slv_reg1[2]_i_1_n_0\
    );
\slv_reg1[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(30),
      O => \slv_reg1[30]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(31),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(3),
      O => \slv_reg1[3]_i_1_n_0\
    );
\slv_reg1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(4),
      O => \slv_reg1[4]_i_1_n_0\
    );
\slv_reg1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(5),
      O => \slv_reg1[5]_i_1_n_0\
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(6),
      O => \slv_reg1[6]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(7),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(8),
      O => \slv_reg1[8]_i_1_n_0\
    );
\slv_reg1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => S_AXI_WDATA(9),
      O => \slv_reg1[9]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[0]_i_1_n_0\,
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[10]_i_1_n_0\,
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[11]_i_1_n_0\,
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[12]_i_1_n_0\,
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[13]_i_1_n_0\,
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[14]_i_1_n_0\,
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[15]_i_1_n_0\,
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[16]_i_1_n_0\,
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[17]_i_1_n_0\,
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[18]_i_1_n_0\,
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[19]_i_1_n_0\,
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[1]_i_1_n_0\,
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[20]_i_1_n_0\,
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[21]_i_1_n_0\,
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[22]_i_1_n_0\,
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[23]_i_1_n_0\,
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[24]_i_1_n_0\,
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[25]_i_1_n_0\,
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[26]_i_1_n_0\,
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[27]_i_1_n_0\,
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[28]_i_1_n_0\,
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[29]_i_1_n_0\,
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[2]_i_1_n_0\,
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[30]_i_1_n_0\,
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[31]_i_1_n_0\,
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[3]_i_1_n_0\,
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[4]_i_1_n_0\,
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[5]_i_1_n_0\,
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[6]_i_1_n_0\,
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[7]_i_1_n_0\,
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[8]_i_1_n_0\,
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready05_out,
      D => \slv_reg1[9]_i_1_n_0\,
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFFFF808080"
    )
        port map (
      I0 => CSN,
      I1 => read_state,
      I2 => axi_bvalid_i_3_n_0,
      I3 => slv_reg2(0),
      I4 => \slv_reg2[31]_i_2_n_0\,
      I5 => S_AXI_WDATA(0),
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(10),
      I2 => slv_reg2(10),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[10]_i_1_n_0\
    );
\slv_reg2[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(11),
      I2 => slv_reg2(11),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[11]_i_1_n_0\
    );
\slv_reg2[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(12),
      I2 => slv_reg2(12),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[12]_i_1_n_0\
    );
\slv_reg2[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(13),
      I2 => slv_reg2(13),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[13]_i_1_n_0\
    );
\slv_reg2[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(14),
      I2 => slv_reg2(14),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[14]_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(15),
      I2 => slv_reg2(15),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(16),
      I2 => slv_reg2(16),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[16]_i_1_n_0\
    );
\slv_reg2[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(17),
      I2 => slv_reg2(17),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[17]_i_1_n_0\
    );
\slv_reg2[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(18),
      I2 => slv_reg2(18),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[18]_i_1_n_0\
    );
\slv_reg2[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(19),
      I2 => slv_reg2(19),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[19]_i_1_n_0\
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(1),
      I2 => slv_reg2(1),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[1]_i_1_n_0\
    );
\slv_reg2[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(20),
      I2 => slv_reg2(20),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[20]_i_1_n_0\
    );
\slv_reg2[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(21),
      I2 => slv_reg2(21),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[21]_i_1_n_0\
    );
\slv_reg2[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(22),
      I2 => slv_reg2(22),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[22]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(23),
      I2 => slv_reg2(23),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(24),
      I2 => slv_reg2(24),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[24]_i_1_n_0\
    );
\slv_reg2[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(25),
      I2 => slv_reg2(25),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[25]_i_1_n_0\
    );
\slv_reg2[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(26),
      I2 => slv_reg2(26),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[26]_i_1_n_0\
    );
\slv_reg2[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(27),
      I2 => slv_reg2(27),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[27]_i_1_n_0\
    );
\slv_reg2[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(28),
      I2 => slv_reg2(28),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[28]_i_1_n_0\
    );
\slv_reg2[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(29),
      I2 => slv_reg2(29),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[29]_i_1_n_0\
    );
\slv_reg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(2),
      I2 => slv_reg2(2),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[2]_i_1_n_0\
    );
\slv_reg2[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(30),
      I2 => slv_reg2(30),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[30]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(31),
      I2 => slv_reg2(31),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_2_in(0),
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3555555F3FFFFFF"
    )
        port map (
      I0 => read_state,
      I1 => p_2_in(1),
      I2 => p_2_in(0),
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => CSN,
      O => \slv_reg2[31]_i_3_n_0\
    );
\slv_reg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(3),
      I2 => slv_reg2(3),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[3]_i_1_n_0\
    );
\slv_reg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(4),
      I2 => slv_reg2(4),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[4]_i_1_n_0\
    );
\slv_reg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(5),
      I2 => slv_reg2(5),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[5]_i_1_n_0\
    );
\slv_reg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(6),
      I2 => slv_reg2(6),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[6]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(7),
      I2 => slv_reg2(7),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(8),
      I2 => slv_reg2(8),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[8]_i_1_n_0\
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => S_AXI_WDATA(9),
      I2 => slv_reg2(9),
      I3 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[9]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[0]_i_1_n_0\,
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[10]_i_1_n_0\,
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[11]_i_1_n_0\,
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[12]_i_1_n_0\,
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[13]_i_1_n_0\,
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[14]_i_1_n_0\,
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[15]_i_1_n_0\,
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[16]_i_1_n_0\,
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[17]_i_1_n_0\,
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[18]_i_1_n_0\,
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[19]_i_1_n_0\,
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[1]_i_1_n_0\,
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[20]_i_1_n_0\,
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[21]_i_1_n_0\,
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[22]_i_1_n_0\,
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[23]_i_1_n_0\,
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[24]_i_1_n_0\,
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[25]_i_1_n_0\,
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[26]_i_1_n_0\,
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[27]_i_1_n_0\,
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[28]_i_1_n_0\,
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[29]_i_1_n_0\,
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[2]_i_1_n_0\,
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[30]_i_1_n_0\,
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[31]_i_1_n_0\,
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[3]_i_1_n_0\,
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[4]_i_1_n_0\,
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[5]_i_1_n_0\,
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[6]_i_1_n_0\,
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[7]_i_1_n_0\,
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[8]_i_1_n_0\,
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg2[9]_i_1_n_0\,
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CSN : in STD_LOGIC;
    RAM_Rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_Addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_CMD : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI_SPI_block_AXI_SPI_0_0,AXI_SPI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI_SPI,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_SPI_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN AXI_SPI_block_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_SPI
     port map (
      CSN => CSN,
      RAM_Rdata(7 downto 0) => RAM_Rdata(7 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 2) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
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
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_inst_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID,
      WR_CMD(1 downto 0) => WR_CMD(1 downto 0),
      Write_Addr(6 downto 0) => Write_Addr(6 downto 0),
      Write_data(7 downto 0) => Write_data(7 downto 0)
    );
end STRUCTURE;
