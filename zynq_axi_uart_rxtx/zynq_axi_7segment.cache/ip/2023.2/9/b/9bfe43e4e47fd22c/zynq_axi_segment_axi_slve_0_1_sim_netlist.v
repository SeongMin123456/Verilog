// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan  7 14:28:31 2025
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
    UART_TX_START,
    UART_TX_DATA,
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
  (* mark_debug = "true" *) output UART_TX_START;
  output [7:0]UART_TX_DATA;
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
  (* mark_debug = "true" *) output S_AXI_BVALID;
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
  (* MARK_DEBUG *) wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [7:0]UART_TX_DATA;
  wire UART_TX_READY;
  (* MARK_DEBUG *) wire UART_TX_START;
  wire UART_TX_START_inferred_i_2_n_0;
  wire UART_TX_START_inferred_i_3_n_0;
  wire UART_TX_START_inferred_i_4_n_0;
  wire UART_TX_START_inferred_i_5_n_0;
  wire UART_TX_START_inferred_i_6_n_0;
  wire UART_TX_START_inferred_i_7_n_0;
  wire axi_arready_i_1_n_0;
  wire axi_awready_i_1_n_0;
  (* MARK_DEBUG *) wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wdata;
  wire [31:0]axi_wdata__0;
  wire axi_wready_i_1_n_0;
  wire slv_reg1;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
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
        .R(\slv_reg1[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFC055FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF3FAA00)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:01,Waddr:10" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:01,Waddr:10" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    UART_TX_START_inferred_i_1
       (.I0(UART_TX_START_inferred_i_2_n_0),
        .I1(UART_TX_START_inferred_i_3_n_0),
        .I2(UART_TX_START_inferred_i_4_n_0),
        .I3(UART_TX_START_inferred_i_5_n_0),
        .I4(UART_TX_START_inferred_i_6_n_0),
        .I5(UART_TX_START_inferred_i_7_n_0),
        .O(UART_TX_START));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    UART_TX_START_inferred_i_2
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg1_reg_n_0_[13] ),
        .I2(\slv_reg1_reg_n_0_[10] ),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(\slv_reg1_reg_n_0_[9] ),
        .I5(\slv_reg1_reg_n_0_[8] ),
        .O(UART_TX_START_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    UART_TX_START_inferred_i_3
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\slv_reg1_reg_n_0_[16] ),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(\slv_reg1_reg_n_0_[15] ),
        .I5(\slv_reg1_reg_n_0_[14] ),
        .O(UART_TX_START_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    UART_TX_START_inferred_i_4
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(\slv_reg1_reg_n_0_[28] ),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(\slv_reg1_reg_n_0_[27] ),
        .I5(\slv_reg1_reg_n_0_[26] ),
        .O(UART_TX_START_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    UART_TX_START_inferred_i_5
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(\slv_reg1_reg_n_0_[22] ),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .I4(\slv_reg1_reg_n_0_[21] ),
        .I5(\slv_reg1_reg_n_0_[20] ),
        .O(UART_TX_START_inferred_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    UART_TX_START_inferred_i_6
       (.I0(UART_TX_DATA[0]),
        .I1(UART_TX_DATA[1]),
        .O(UART_TX_START_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    UART_TX_START_inferred_i_7
       (.I0(UART_TX_DATA[6]),
        .I1(UART_TX_DATA[7]),
        .I2(UART_TX_DATA[4]),
        .I3(UART_TX_DATA[5]),
        .I4(UART_TX_DATA[3]),
        .I5(UART_TX_DATA[2]),
        .O(UART_TX_START_inferred_i_7_n_0));
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
        .R(\slv_reg1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF2F233F3)) 
    axi_awready_i_1
       (.I0(S_AXI_WVALID),
        .I1(state_write[1]),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(state_write[0]),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(S_AXI_AWREADY),
        .R(\slv_reg1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFEFF00AAFE00)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(S_AXI_WVALID),
        .I2(axi_bvalid_i_3_n_0),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .I5(axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000E444)) 
    axi_bvalid_i_2
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(state_write[0]),
        .O(axi_bvalid_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_bvalid_i_3
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_BREADY),
        .O(axi_bvalid_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    axi_bvalid_inst
       (.I0(axi_bvalid),
        .O(S_AXI_BVALID));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid),
        .R(\slv_reg1[7]_i_1_n_0 ));
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
        .R(\slv_reg1[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \axi_wdata[31]_i_1 
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(S_AXI_WVALID),
        .O(axi_wdata));
  FDRE \axi_wdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[0]),
        .Q(axi_wdata__0[0]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[10]),
        .Q(axi_wdata__0[10]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[11]),
        .Q(axi_wdata__0[11]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[12]),
        .Q(axi_wdata__0[12]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[13]),
        .Q(axi_wdata__0[13]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[14]),
        .Q(axi_wdata__0[14]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[15]),
        .Q(axi_wdata__0[15]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[16]),
        .Q(axi_wdata__0[16]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[17]),
        .Q(axi_wdata__0[17]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[18]),
        .Q(axi_wdata__0[18]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[19]),
        .Q(axi_wdata__0[19]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[1]),
        .Q(axi_wdata__0[1]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[20]),
        .Q(axi_wdata__0[20]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[21]),
        .Q(axi_wdata__0[21]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[22]),
        .Q(axi_wdata__0[22]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[23]),
        .Q(axi_wdata__0[23]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[24]),
        .Q(axi_wdata__0[24]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[25]),
        .Q(axi_wdata__0[25]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[26]),
        .Q(axi_wdata__0[26]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[27]),
        .Q(axi_wdata__0[27]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[28]),
        .Q(axi_wdata__0[28]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[29]),
        .Q(axi_wdata__0[29]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[2]),
        .Q(axi_wdata__0[2]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[30]),
        .Q(axi_wdata__0[30]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[31]),
        .Q(axi_wdata__0[31]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[3]),
        .Q(axi_wdata__0[3]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[4]),
        .Q(axi_wdata__0[4]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[5]),
        .Q(axi_wdata__0[5]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[6]),
        .Q(axi_wdata__0[6]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[7]),
        .Q(axi_wdata__0[7]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[8]),
        .Q(axi_wdata__0[8]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \axi_wdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_wdata),
        .D(S_AXI_WDATA[9]),
        .Q(axi_wdata__0[9]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(\slv_reg1[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg1[7]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\slv_reg1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(UART_TX_READY),
        .I2(S_AXI_AWADDR[2]),
        .I3(S_AXI_AWADDR[3]),
        .O(slv_reg1));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[0]),
        .Q(UART_TX_DATA[0]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[1]),
        .Q(UART_TX_DATA[1]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[2]),
        .Q(UART_TX_DATA[2]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[3]),
        .Q(UART_TX_DATA[3]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[4]),
        .Q(UART_TX_DATA[4]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[5]),
        .Q(UART_TX_DATA[5]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[6]),
        .Q(UART_TX_DATA[6]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[7]),
        .Q(UART_TX_DATA[7]),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg1),
        .D(axi_wdata__0[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(\slv_reg1[7]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_axi_segment_axi_slve_0_1,axi_slve,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_slve,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (UART_TX_READY,
    UART_TX_START,
    UART_TX_DATA,
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
  output UART_TX_START;
  output [7:0]UART_TX_DATA;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

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