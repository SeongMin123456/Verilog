// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  9 16:05:50 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_axi_slve_0_1_sim_netlist.v
// Design      : zynq_axi_segment_axi_slve_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* Idle = "2'b00" *) (* OPT_MEM_ADDR_BITS = "1" *) (* Raddr = "2'b10" *) 
(* Rdata = "2'b11" *) (* Waddr = "2'b10" *) (* Wdata = "2'b11" *) 
(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve
   (UART_TX_READY,
    UART_TX_DATA,
    UART_TX_START,
    UART_RX_READY,
    UART_RX_DATA,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input UART_TX_READY;
  (* mark_debug = "true" *) output [7:0]UART_TX_DATA;
  output UART_TX_START;
  (* mark_debug = "true" *) input UART_RX_READY;
  (* mark_debug = "true" *) input [7:0]UART_RX_DATA;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire \<const0> ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  (* MARK_DEBUG *) wire [7:0]UART_RX_DATA;
  (* MARK_DEBUG *) wire UART_RX_READY;
  (* MARK_DEBUG *) wire [7:0]UART_TX_DATA;
  wire UART_TX_READY;
  wire UART_TX_START;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready0;
  wire axi_awready01_out;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [0:0]p_0_in__0;
  wire slv_reg1;
  (* MARK_DEBUG *) wire [31:0]slv_reg2;
  wire [31:1]slv_reg20_in;
  (* MARK_DEBUG *) wire [31:0]slv_reg3;
  wire [1:0]state_read;
  wire [1:0]state_write;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(state_write[0]),
        .I5(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(state_write[0]),
        .I5(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_awready_i_1_n_0));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    UART_TX_START_INST_0
       (.I0(UART_TX_READY),
        .I1(S_AXI_BVALID),
        .O(UART_TX_START));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(state_read[1]),
        .I3(S_AXI_RREADY),
        .I4(S_AXI_RVALID),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(S_AXI_ARESETN),
        .I2(axi_awready0),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_ARESETN),
        .I2(axi_awready0),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(state_write[1]),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_WVALID),
        .I5(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF3F73030C3F70000)) 
    axi_bvalid_i_1
       (.I0(axi_awready0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(S_AXI_BREADY),
        .I4(S_AXI_BVALID),
        .I5(axi_awready01_out),
        .O(axi_bvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(S_AXI_RREADY),
        .I5(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF08FF080000F000)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(state_write[1]),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_WVALID),
        .I5(state_write[0]),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg1[7]_i_1 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_WVALID),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(slv_reg1));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[0]),
        .Q(UART_TX_DATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[1]),
        .Q(UART_TX_DATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[2]),
        .Q(UART_TX_DATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[3]),
        .Q(UART_TX_DATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[4]),
        .Q(UART_TX_DATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[5]),
        .Q(UART_TX_DATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[6]),
        .Q(UART_TX_DATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[7]),
        .Q(UART_TX_DATA[7]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFDFFFDFF64FF2000)) 
    \slv_reg2[0]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(S_AXI_WDATA[0]),
        .I3(axi_awready01_out),
        .I4(UART_RX_READY),
        .I5(slv_reg2[0]),
        .O(p_0_in__0));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[10]),
        .O(slv_reg20_in[10]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[11]),
        .O(slv_reg20_in[11]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[12]),
        .O(slv_reg20_in[12]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[13]),
        .O(slv_reg20_in[13]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[14]),
        .O(slv_reg20_in[14]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[15]),
        .O(slv_reg20_in[15]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[16]),
        .O(slv_reg20_in[16]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[17]),
        .O(slv_reg20_in[17]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[18]),
        .O(slv_reg20_in[18]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[19]),
        .O(slv_reg20_in[19]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[1]),
        .O(slv_reg20_in[1]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[20]),
        .O(slv_reg20_in[20]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[21]),
        .O(slv_reg20_in[21]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[22]),
        .O(slv_reg20_in[22]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[23]),
        .O(slv_reg20_in[23]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[24]),
        .O(slv_reg20_in[24]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[25]),
        .O(slv_reg20_in[25]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[26]),
        .O(slv_reg20_in[26]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[27]),
        .O(slv_reg20_in[27]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[28]),
        .O(slv_reg20_in[28]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[29]),
        .O(slv_reg20_in[29]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[2]),
        .O(slv_reg20_in[2]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[30]),
        .O(slv_reg20_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
        .O(axi_awready01_out));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[31]_i_2 
       (.I0(slv_reg2[31]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[31]),
        .O(slv_reg20_in[31]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[3]),
        .O(slv_reg20_in[3]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[4]),
        .O(slv_reg20_in[4]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[5]),
        .O(slv_reg20_in[5]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[6]),
        .O(slv_reg20_in[6]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[7]),
        .O(slv_reg20_in[7]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[8]),
        .O(slv_reg20_in[8]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \slv_reg2[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(S_AXI_WDATA[9]),
        .O(slv_reg20_in[9]));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready01_out),
        .D(slv_reg20_in[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[0]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[0]),
        .Q(slv_reg3[0]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[10]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[10]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[11]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[11]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[12]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[12]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[13]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[13]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[14]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[14]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[15]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[15]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[16]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[16]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[17]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[17]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[18]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[18]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[19]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[19]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[1]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[1]),
        .Q(slv_reg3[1]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[20]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[20]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[21]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[21]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[22]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[22]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[23]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[23]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[24]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[24]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[25]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[25]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[26]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[26]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[27]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[27]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[28]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[28]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[29]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[29]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[2]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[2]),
        .Q(slv_reg3[2]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[30]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[30]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[31]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[31]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[3]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[3]),
        .Q(slv_reg3[3]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[4]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[4]),
        .Q(slv_reg3[4]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[5]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[5]),
        .Q(slv_reg3[5]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[6]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[6]),
        .Q(slv_reg3[6]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[7]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(UART_RX_DATA[7]),
        .Q(slv_reg3[7]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[8]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[8]),
        .R(1'b0));
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[9]__0 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(slv_reg3[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_axi_segment_axi_slve_0_1,axi_slve,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_slve,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (UART_TX_READY,
    UART_TX_DATA,
    UART_TX_START,
    UART_RX_READY,
    UART_RX_DATA,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input UART_TX_READY;
  output [7:0]UART_TX_DATA;
  output UART_TX_START;
  input UART_RX_READY;
  input [7:0]UART_RX_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [7:0]UART_RX_DATA;
  wire UART_RX_READY;
  wire [7:0]UART_TX_DATA;
  wire UART_TX_READY;
  wire UART_TX_START;
  wire [1:0]NLW_inst_S_AXI_BRESP_UNCONNECTED;
  wire [31:0]NLW_inst_S_AXI_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_LSB = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* Idle = "2'b00" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* OPT_MEM_ADDR_BITS = "1" *) 
  (* Raddr = "2'b10" *) 
  (* Rdata = "2'b11" *) 
  (* Waddr = "2'b10" *) 
  (* Wdata = "2'b11" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slve inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[3:2],1'b0,1'b0}),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_inst_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(NLW_inst_S_AXI_RDATA_UNCONNECTED[31:0]),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID),
        .UART_RX_DATA(UART_RX_DATA),
        .UART_RX_READY(UART_RX_READY),
        .UART_TX_DATA(UART_TX_DATA),
        .UART_TX_READY(UART_TX_READY),
        .UART_TX_START(UART_TX_START));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
