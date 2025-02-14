// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb 10 10:58:21 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_SPI_Master_0_0_sim_netlist.v
// Design      : AXI_SPI_block_SPI_Master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_SPI_block_SPI_Master_0_0,SPI_Master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SPI_Master,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (RST,
    CLK,
    CMD,
    ADDR,
    WR_Data,
    MISO,
    RD_Data,
    SCLK,
    CSN,
    MOSI);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_SPI_block_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input [1:0]CMD;
  input [6:0]ADDR;
  input [7:0]WR_Data;
  input MISO;
  output [7:0]RD_Data;
  output SCLK;
  output CSN;
  output MOSI;

  wire [6:0]ADDR;
  wire CLK;
  wire [1:0]CMD;
  wire CSN;
  wire MISO;
  wire MOSI;
  wire [7:0]RD_Data;
  wire RST;
  wire SCLK;
  wire [7:0]WR_Data;

  (* IDLE = "3'b000" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* R_DONE = "3'b111" *) 
  (* R_LOAD = "3'b100" *) 
  (* R_START = "3'b011" *) 
  (* W_DONE = "3'b010" *) 
  (* W_START = "3'b001" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master inst
       (.ADDR(ADDR),
        .CLK(CLK),
        .CMD(CMD),
        .CSN(CSN),
        .MISO(MISO),
        .MOSI(MOSI),
        .RD_Data(RD_Data),
        .RST(RST),
        .SCLK(SCLK),
        .WR_Data(WR_Data));
endmodule

(* IDLE = "3'b000" *) (* R_DONE = "3'b111" *) (* R_LOAD = "3'b100" *) 
(* R_START = "3'b011" *) (* W_DONE = "3'b010" *) (* W_START = "3'b001" *) 
(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Master
   (RST,
    CLK,
    CMD,
    ADDR,
    WR_Data,
    MISO,
    RD_Data,
    SCLK,
    CSN,
    MOSI);
  input RST;
  input CLK;
  input [1:0]CMD;
  input [6:0]ADDR;
  input [7:0]WR_Data;
  input MISO;
  (* mark_debug = "true" *) output [7:0]RD_Data;
  output SCLK;
  output CSN;
  (* mark_debug = "true" *) output MOSI;

  wire [6:0]ADDR;
  wire CLK;
  wire \CLK_cnt[0]_i_1_n_0 ;
  wire \CLK_cnt[1]_i_1_n_0 ;
  wire \CLK_cnt[2]_i_1_n_0 ;
  wire \CLK_cnt[3]_i_1_n_0 ;
  wire \CLK_cnt[3]_i_2_n_0 ;
  wire [3:0]CLK_cnt_reg;
  wire [1:0]CMD;
  wire CSN;
  wire CSN_i_1_n_0;
  wire CSN_i_2_n_0;
  wire MISO;
  (* MARK_DEBUG *) wire MOSI;
  wire [16:1]MOSI_data0;
  wire \MOSI_data[16]_i_1_n_0 ;
  wire MOSI_i_1_n_0;
  wire MOSI_i_2_n_0;
  (* MARK_DEBUG *) wire [7:0]RD_Data;
  wire \RD_Data[7]_i_1_n_0 ;
  wire \RD_cnt[0]_i_1_n_0 ;
  wire \RD_cnt[1]_i_1_n_0 ;
  wire \RD_cnt[2]_i_1_n_0 ;
  wire \RD_cnt[3]_i_1_n_0 ;
  wire \RD_cnt[3]_i_2_n_0 ;
  wire \RD_cnt[3]_i_3_n_0 ;
  wire \RD_cnt_reg_n_0_[0] ;
  wire \RD_cnt_reg_n_0_[1] ;
  wire \RD_cnt_reg_n_0_[2] ;
  wire \RD_cnt_reg_n_0_[3] ;
  wire RST;
  wire [7:0]R_data;
  wire R_data0;
  wire \R_data[7]_i_1_n_0 ;
  wire \R_data[7]_i_3_n_0 ;
  wire R_temp__0;
  wire SCLK;
  wire SCLK_i_1_n_0;
  wire SCLK_i_2_n_0;
  wire [7:0]WR_Data;
  wire W_temp;
  (* MARK_DEBUG *) wire [2:0]curr_state;
  wire \curr_state[0]_i_1_n_0 ;
  wire \curr_state[1]_i_1_n_0 ;
  wire \curr_state[2]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [2:0]next_state;
  wire [2:0]next_state1_out;
  wire \next_state_reg[0]__0_i_1_n_0 ;
  wire \next_state_reg[0]__0_i_2_n_0 ;
  wire \next_state_reg[0]__0_i_3_n_0 ;
  wire \next_state_reg[0]__0_i_4_n_0 ;
  wire \next_state_reg[0]__0_i_5_n_0 ;
  wire \next_state_reg[0]__0_i_6_n_0 ;
  wire \next_state_reg[0]__0_i_7_n_0 ;
  wire \next_state_reg[0]_i_2_n_0 ;
  wire \next_state_reg[1]__0_i_1_n_0 ;
  wire \next_state_reg[1]__0_i_2_n_0 ;
  wire \next_state_reg[1]_i_2_n_0 ;
  wire \next_state_reg[2]__0_i_1_n_0 ;
  wire \next_state_reg[2]_i_2_n_0 ;
  wire \next_state_reg[2]_i_3_n_0 ;
  wire \next_state_reg[2]_i_4_n_0 ;
  wire \next_state_reg[2]_i_5_n_0 ;
  wire \next_state_reg[2]_i_6_n_0 ;
  wire \next_state_reg[2]_i_7_n_0 ;
  wire [2:0]out;
  wire [16:0]p_1_in;
  wire [1:0]seq_done_cnt;
  wire \seq_done_cnt[0]_i_1_n_0 ;
  wire \seq_done_cnt[1]_i_1_n_0 ;
  wire \seq_done_cnt[1]_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CLK_cnt[0]_i_1 
       (.I0(CLK_cnt_reg[0]),
        .O(\CLK_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CLK_cnt[1]_i_1 
       (.I0(CLK_cnt_reg[0]),
        .I1(CLK_cnt_reg[1]),
        .O(\CLK_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CLK_cnt[2]_i_1 
       (.I0(CLK_cnt_reg[1]),
        .I1(CLK_cnt_reg[0]),
        .I2(CLK_cnt_reg[2]),
        .O(\CLK_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008FFFF)) 
    \CLK_cnt[3]_i_1 
       (.I0(CLK_cnt_reg[0]),
        .I1(CLK_cnt_reg[3]),
        .I2(CLK_cnt_reg[2]),
        .I3(CLK_cnt_reg[1]),
        .I4(SCLK_i_2_n_0),
        .O(\CLK_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CLK_cnt[3]_i_2 
       (.I0(CLK_cnt_reg[0]),
        .I1(CLK_cnt_reg[1]),
        .I2(CLK_cnt_reg[2]),
        .I3(CLK_cnt_reg[3]),
        .O(\CLK_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\CLK_cnt[0]_i_1_n_0 ),
        .Q(CLK_cnt_reg[0]),
        .R(\CLK_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\CLK_cnt[1]_i_1_n_0 ),
        .Q(CLK_cnt_reg[1]),
        .R(\CLK_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\CLK_cnt[2]_i_1_n_0 ),
        .Q(CLK_cnt_reg[2]),
        .R(\CLK_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\CLK_cnt[3]_i_2_n_0 ),
        .Q(CLK_cnt_reg[3]),
        .R(\CLK_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    CSN_i_1
       (.I0(SCLK),
        .I1(curr_state[1]),
        .I2(CMD[1]),
        .I3(CSN_i_2_n_0),
        .I4(CSN),
        .O(CSN_i_1_n_0));
  LUT6 #(
    .INIT(64'h08000008000000FF)) 
    CSN_i_2
       (.I0(SCLK),
        .I1(seq_done_cnt[1]),
        .I2(seq_done_cnt[0]),
        .I3(curr_state[2]),
        .I4(curr_state[0]),
        .I5(curr_state[1]),
        .O(CSN_i_2_n_0));
  FDRE CSN_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CSN_i_1_n_0),
        .Q(CSN),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \MOSI_data[0]_i_1 
       (.I0(curr_state[0]),
        .I1(CMD[1]),
        .I2(CMD[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[10]_i_1 
       (.I0(MOSI_data0[10]),
        .I1(ADDR[1]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[11]_i_1 
       (.I0(MOSI_data0[11]),
        .I1(ADDR[2]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[12]_i_1 
       (.I0(MOSI_data0[12]),
        .I1(ADDR[3]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[13]_i_1 
       (.I0(MOSI_data0[13]),
        .I1(ADDR[4]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[14]_i_1 
       (.I0(MOSI_data0[14]),
        .I1(ADDR[5]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[15]_i_1 
       (.I0(MOSI_data0[15]),
        .I1(ADDR[6]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h2023)) 
    \MOSI_data[16]_i_1 
       (.I0(SCLK),
        .I1(curr_state[2]),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .O(\MOSI_data[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA03)) 
    \MOSI_data[16]_i_2 
       (.I0(MOSI_data0[16]),
        .I1(CMD[0]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hA0A0A0AC)) 
    \MOSI_data[1]_i_1 
       (.I0(MOSI_data0[1]),
        .I1(WR_Data[0]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .I4(CMD[0]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hA0A0A0AC)) 
    \MOSI_data[2]_i_1 
       (.I0(MOSI_data0[2]),
        .I1(WR_Data[1]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .I4(CMD[0]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hA0A0A0AC)) 
    \MOSI_data[3]_i_1 
       (.I0(MOSI_data0[3]),
        .I1(WR_Data[2]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .I4(CMD[0]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hA0A0A0AC)) 
    \MOSI_data[4]_i_1 
       (.I0(MOSI_data0[4]),
        .I1(WR_Data[3]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .I4(CMD[0]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hA0A0A0AC)) 
    \MOSI_data[5]_i_1 
       (.I0(MOSI_data0[5]),
        .I1(WR_Data[4]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .I4(CMD[0]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hA0A0A0AC)) 
    \MOSI_data[6]_i_1 
       (.I0(MOSI_data0[6]),
        .I1(WR_Data[5]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .I4(CMD[0]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFF540054)) 
    \MOSI_data[7]_i_1 
       (.I0(CMD[1]),
        .I1(CMD[0]),
        .I2(WR_Data[6]),
        .I3(curr_state[0]),
        .I4(MOSI_data0[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFF540054)) 
    \MOSI_data[8]_i_1 
       (.I0(CMD[1]),
        .I1(CMD[0]),
        .I2(WR_Data[7]),
        .I3(curr_state[0]),
        .I4(MOSI_data0[8]),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \MOSI_data[9]_i_1 
       (.I0(MOSI_data0[9]),
        .I1(ADDR[0]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[0] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(MOSI_data0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[10] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(MOSI_data0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[11] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(MOSI_data0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[12] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(MOSI_data0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[13] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(MOSI_data0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[14] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(MOSI_data0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[15] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(MOSI_data0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[16] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(W_temp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[1] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(MOSI_data0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[2] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(MOSI_data0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[3] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(MOSI_data0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[4] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(MOSI_data0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[5] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(MOSI_data0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[6] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(MOSI_data0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[7] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(MOSI_data0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[8] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(MOSI_data0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_data_reg[9] 
       (.C(CLK),
        .CE(\MOSI_data[16]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(MOSI_data0[10]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    MOSI_i_1
       (.I0(MOSI_i_2_n_0),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(curr_state[2]),
        .I4(MOSI),
        .O(MOSI_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA0C)) 
    MOSI_i_2
       (.I0(W_temp),
        .I1(MOSI),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .O(MOSI_i_2_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE MOSI_reg
       (.C(CLK),
        .CE(1'b1),
        .D(MOSI_i_1_n_0),
        .Q(MOSI),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \RD_Data[7]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .O(\RD_Data[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[0] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[0]),
        .Q(RD_Data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[1] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[1]),
        .Q(RD_Data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[2] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[2]),
        .Q(RD_Data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[3] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[3]),
        .Q(RD_Data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[4] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[4]),
        .Q(RD_Data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[5] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[5]),
        .Q(RD_Data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[6] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[6]),
        .Q(RD_Data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \RD_Data_reg[7] 
       (.C(CLK),
        .CE(\RD_Data[7]_i_1_n_0 ),
        .D(R_data[7]),
        .Q(RD_Data[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \RD_cnt[0]_i_1 
       (.I0(\RD_cnt_reg_n_0_[0] ),
        .O(\RD_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \RD_cnt[1]_i_1 
       (.I0(\RD_cnt_reg_n_0_[0] ),
        .I1(\RD_cnt_reg_n_0_[1] ),
        .O(\RD_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \RD_cnt[2]_i_1 
       (.I0(\RD_cnt_reg_n_0_[1] ),
        .I1(\RD_cnt_reg_n_0_[0] ),
        .I2(\RD_cnt_reg_n_0_[2] ),
        .O(\RD_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \RD_cnt[3]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(CMD[1]),
        .I3(curr_state[2]),
        .O(\RD_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \RD_cnt[3]_i_2 
       (.I0(CMD[1]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(curr_state[2]),
        .I4(SCLK),
        .O(\RD_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \RD_cnt[3]_i_3 
       (.I0(\RD_cnt_reg_n_0_[0] ),
        .I1(\RD_cnt_reg_n_0_[1] ),
        .I2(\RD_cnt_reg_n_0_[2] ),
        .I3(\RD_cnt_reg_n_0_[3] ),
        .O(\RD_cnt[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_cnt_reg[0] 
       (.C(CLK),
        .CE(\RD_cnt[3]_i_2_n_0 ),
        .D(\RD_cnt[0]_i_1_n_0 ),
        .Q(\RD_cnt_reg_n_0_[0] ),
        .R(\RD_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_cnt_reg[1] 
       (.C(CLK),
        .CE(\RD_cnt[3]_i_2_n_0 ),
        .D(\RD_cnt[1]_i_1_n_0 ),
        .Q(\RD_cnt_reg_n_0_[1] ),
        .R(\RD_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_cnt_reg[2] 
       (.C(CLK),
        .CE(\RD_cnt[3]_i_2_n_0 ),
        .D(\RD_cnt[2]_i_1_n_0 ),
        .Q(\RD_cnt_reg_n_0_[2] ),
        .R(\RD_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_cnt_reg[3] 
       (.C(CLK),
        .CE(\RD_cnt[3]_i_2_n_0 ),
        .D(\RD_cnt[3]_i_3_n_0 ),
        .Q(\RD_cnt_reg_n_0_[3] ),
        .R(\RD_cnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \R_data[7]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .O(\R_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4341)) 
    \R_data[7]_i_2 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\R_data[7]_i_3_n_0 ),
        .O(R_data0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \R_data[7]_i_3 
       (.I0(\RD_cnt_reg_n_0_[1] ),
        .I1(\RD_cnt_reg_n_0_[0] ),
        .I2(\RD_cnt_reg_n_0_[3] ),
        .I3(\RD_cnt_reg_n_0_[2] ),
        .O(\R_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[0] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_temp__0),
        .Q(R_data[0]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[1] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[0]),
        .Q(R_data[1]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[2] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[1]),
        .Q(R_data[2]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[3] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[2]),
        .Q(R_data[3]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[4] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[3]),
        .Q(R_data[4]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[5] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[4]),
        .Q(R_data[5]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[6] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[5]),
        .Q(R_data[6]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \R_data_reg[7] 
       (.C(SCLK),
        .CE(R_data0),
        .D(R_data[6]),
        .Q(R_data[7]),
        .R(\R_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    R_temp_reg
       (.C(CLK),
        .CE(\RD_cnt[3]_i_2_n_0 ),
        .D(MISO),
        .Q(R_temp__0),
        .R(\RD_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    SCLK_i_1
       (.I0(CLK_cnt_reg[1]),
        .I1(CLK_cnt_reg[2]),
        .I2(CLK_cnt_reg[3]),
        .I3(CLK_cnt_reg[0]),
        .I4(SCLK_i_2_n_0),
        .I5(SCLK),
        .O(SCLK_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    SCLK_i_2
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .O(SCLK_i_2_n_0));
  FDRE SCLK_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SCLK_i_1_n_0),
        .Q(SCLK),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \curr_state[0]_i_1 
       (.I0(out[0]),
        .I1(RST),
        .O(\curr_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \curr_state[1]_i_1 
       (.I0(out[1]),
        .I1(RST),
        .O(\curr_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \curr_state[2]_i_1 
       (.I0(out[2]),
        .I1(RST),
        .O(\curr_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,W_START:001,W_DONE:010,R_START:011,R_LOAD:100,R_DONE:111" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\curr_state[0]_i_1_n_0 ),
        .Q(curr_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,W_START:001,W_DONE:010,R_START:011,R_LOAD:100,R_DONE:111" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\curr_state[1]_i_1_n_0 ),
        .Q(curr_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,W_START:001,W_DONE:010,R_START:011,R_LOAD:100,R_DONE:111" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \curr_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\curr_state[2]_i_1_n_0 ),
        .Q(curr_state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.CLR(1'b0),
        .D(next_state1_out[0]),
        .G(\next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0]__0 
       (.CLR(1'b0),
        .D(\next_state_reg[0]__0_i_1_n_0 ),
        .G(\next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \next_state_reg[0]__0_i_1 
       (.I0(\next_state_reg[0]__0_i_2_n_0 ),
        .I1(curr_state[1]),
        .I2(\next_state_reg[0]__0_i_3_n_0 ),
        .I3(\next_state_reg[0]__0_i_4_n_0 ),
        .I4(\next_state_reg[0]__0_i_5_n_0 ),
        .I5(\next_state_reg[0]__0_i_6_n_0 ),
        .O(\next_state_reg[0]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \next_state_reg[0]__0_i_2 
       (.I0(\next_state_reg[2]_i_4_n_0 ),
        .I1(\next_state_reg[2]_i_5_n_0 ),
        .I2(\next_state_reg[2]_i_6_n_0 ),
        .I3(\next_state_reg[2]_i_7_n_0 ),
        .I4(curr_state[0]),
        .I5(curr_state[2]),
        .O(\next_state_reg[0]__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \next_state_reg[0]__0_i_3 
       (.I0(CSN),
        .I1(curr_state[2]),
        .I2(curr_state[1]),
        .O(\next_state_reg[0]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \next_state_reg[0]__0_i_4 
       (.I0(curr_state[1]),
        .I1(curr_state[2]),
        .I2(\RD_cnt_reg_n_0_[2] ),
        .I3(\RD_cnt_reg_n_0_[3] ),
        .I4(\RD_cnt_reg_n_0_[0] ),
        .I5(\RD_cnt_reg_n_0_[1] ),
        .O(\next_state_reg[0]__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state_reg[0]__0_i_5 
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(CMD[1]),
        .O(\next_state_reg[0]__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \next_state_reg[0]__0_i_6 
       (.I0(\next_state_reg[2]_i_7_n_0 ),
        .I1(\next_state_reg[2]_i_6_n_0 ),
        .I2(\next_state_reg[2]_i_5_n_0 ),
        .I3(\next_state_reg[2]_i_4_n_0 ),
        .I4(curr_state[1]),
        .I5(\next_state_reg[0]__0_i_7_n_0 ),
        .O(\next_state_reg[0]__0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \next_state_reg[0]__0_i_7 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .O(\next_state_reg[0]__0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \next_state_reg[0]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .I2(\next_state_reg[2]_i_3_n_0 ),
        .I3(\next_state_reg[0]_i_2_n_0 ),
        .O(next_state1_out[0]));
  LUT6 #(
    .INIT(64'h0F0F000000FF1111)) 
    \next_state_reg[0]_i_2 
       (.I0(CMD[1]),
        .I1(curr_state[0]),
        .I2(CSN),
        .I3(\R_data[7]_i_3_n_0 ),
        .I4(curr_state[2]),
        .I5(curr_state[1]),
        .O(\next_state_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.CLR(1'b0),
        .D(next_state1_out[1]),
        .G(\next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1]__0 
       (.CLR(1'b0),
        .D(\next_state_reg[1]__0_i_1_n_0 ),
        .G(\next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4004F0B4)) 
    \next_state_reg[1]__0_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\next_state_reg[2]_i_3_n_0 ),
        .I4(CSN),
        .I5(\next_state_reg[1]__0_i_2_n_0 ),
        .O(\next_state_reg[1]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000550300005500)) 
    \next_state_reg[1]__0_i_2 
       (.I0(\R_data[7]_i_3_n_0 ),
        .I1(CMD[1]),
        .I2(curr_state[0]),
        .I3(curr_state[2]),
        .I4(curr_state[1]),
        .I5(CMD[0]),
        .O(\next_state_reg[1]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCCCFCCEEDDCFCC)) 
    \next_state_reg[1]_i_1 
       (.I0(\next_state_reg[2]_i_3_n_0 ),
        .I1(\next_state_reg[1]_i_2_n_0 ),
        .I2(CSN),
        .I3(curr_state[1]),
        .I4(curr_state[0]),
        .I5(curr_state[2]),
        .O(next_state1_out[1]));
  LUT6 #(
    .INIT(64'h000000005555000C)) 
    \next_state_reg[1]_i_2 
       (.I0(\R_data[7]_i_3_n_0 ),
        .I1(CMD[0]),
        .I2(CMD[1]),
        .I3(curr_state[0]),
        .I4(curr_state[2]),
        .I5(curr_state[1]),
        .O(\next_state_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.CLR(1'b0),
        .D(next_state1_out[2]),
        .G(\next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2]__0 
       (.CLR(1'b0),
        .D(\next_state_reg[2]__0_i_1_n_0 ),
        .G(\next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT5 #(
    .INIT(32'h04F0F4F0)) 
    \next_state_reg[2]__0_i_1 
       (.I0(\next_state_reg[2]_i_3_n_0 ),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .I3(curr_state[1]),
        .I4(CSN),
        .O(\next_state_reg[2]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F3000)) 
    \next_state_reg[2]_i_1 
       (.I0(CSN),
        .I1(\next_state_reg[2]_i_3_n_0 ),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .I4(curr_state[2]),
        .O(next_state1_out[2]));
  LUT3 #(
    .INIT(8'h9F)) 
    \next_state_reg[2]_i_2 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .O(\next_state_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state_reg[2]_i_3 
       (.I0(\next_state_reg[2]_i_4_n_0 ),
        .I1(\next_state_reg[2]_i_5_n_0 ),
        .I2(\next_state_reg[2]_i_6_n_0 ),
        .I3(\next_state_reg[2]_i_7_n_0 ),
        .O(\next_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state_reg[2]_i_4 
       (.I0(MOSI_data0[5]),
        .I1(MOSI_data0[4]),
        .I2(MOSI_data0[7]),
        .I3(MOSI_data0[6]),
        .O(\next_state_reg[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \next_state_reg[2]_i_5 
       (.I0(MOSI_data0[1]),
        .I1(MOSI_data0[16]),
        .I2(W_temp),
        .I3(MOSI_data0[3]),
        .I4(MOSI_data0[2]),
        .O(\next_state_reg[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state_reg[2]_i_6 
       (.I0(MOSI_data0[13]),
        .I1(MOSI_data0[12]),
        .I2(MOSI_data0[15]),
        .I3(MOSI_data0[14]),
        .O(\next_state_reg[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state_reg[2]_i_7 
       (.I0(MOSI_data0[9]),
        .I1(MOSI_data0[8]),
        .I2(MOSI_data0[11]),
        .I3(MOSI_data0[10]),
        .O(\next_state_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3CFDFFFDC3000000)) 
    \seq_done_cnt[0]_i_1 
       (.I0(CMD[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .I3(curr_state[1]),
        .I4(SCLK),
        .I5(seq_done_cnt[0]),
        .O(\seq_done_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \seq_done_cnt[1]_i_1 
       (.I0(seq_done_cnt[0]),
        .I1(curr_state[1]),
        .I2(\seq_done_cnt[1]_i_2_n_0 ),
        .I3(seq_done_cnt[1]),
        .O(\seq_done_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC3020002)) 
    \seq_done_cnt[1]_i_2 
       (.I0(CMD[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .I3(curr_state[1]),
        .I4(SCLK),
        .O(\seq_done_cnt[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seq_done_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\seq_done_cnt[0]_i_1_n_0 ),
        .Q(seq_done_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seq_done_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\seq_done_cnt[1]_i_1_n_0 ),
        .Q(seq_done_cnt[1]),
        .R(1'b0));
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
