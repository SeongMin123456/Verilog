// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb 10 10:20:45 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_SPI_Slave_0_0_sim_netlist.v
// Design      : AXI_SPI_block_SPI_Slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_SPI_block_SPI_Slave_0_0,SPI_Slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SPI_Slave,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (RST,
    SCLK,
    CSN,
    MOSI,
    RAM_Rdata,
    MISO,
    RAM_WEN,
    RAM_Addr,
    RAM_Wdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  input SCLK;
  input CSN;
  input MOSI;
  input [7:0]RAM_Rdata;
  output MISO;
  output RAM_WEN;
  output [6:0]RAM_Addr;
  output [7:0]RAM_Wdata;

  wire CSN;
  wire MISO;
  wire MOSI;
  wire [6:0]RAM_Addr;
  wire [7:0]RAM_Rdata;
  wire RAM_WEN;
  wire [7:0]RAM_Wdata;
  wire RST;
  wire SCLK;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Slave inst
       (.CSN(CSN),
        .MISO(MISO),
        .MOSI(MOSI),
        .RAM_Addr(RAM_Addr),
        .RAM_Rdata(RAM_Rdata),
        .RAM_WEN(RAM_WEN),
        .RAM_Wdata(RAM_Wdata),
        .RST(RST),
        .SCLK(SCLK));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_Slave
   (RAM_WEN,
    RAM_Addr,
    RAM_Wdata,
    MISO,
    SCLK,
    RAM_Rdata,
    CSN,
    MOSI,
    RST);
  output RAM_WEN;
  output [6:0]RAM_Addr;
  output [7:0]RAM_Wdata;
  output MISO;
  input SCLK;
  input [7:0]RAM_Rdata;
  input CSN;
  input MOSI;
  input RST;

  wire CSN;
  wire \FSM_onehot_curr_state[5]_i_1_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[5] ;
  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_3_n_0 ;
  wire \FSM_onehot_next_state_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[5]_i_3_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state_reg_n_0_[5] ;
  wire MISO;
  wire MISO_cnt;
  wire \MISO_cnt[0]_i_1_n_0 ;
  wire [3:0]MISO_cnt_reg;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MOSI;
  wire [6:0]RAM_Addr;
  wire \RAM_Addr[0]_i_1_n_0 ;
  wire \RAM_Addr[1]_i_1_n_0 ;
  wire \RAM_Addr[2]_i_1_n_0 ;
  wire \RAM_Addr[3]_i_1_n_0 ;
  wire \RAM_Addr[4]_i_1_n_0 ;
  wire \RAM_Addr[5]_i_1_n_0 ;
  wire \RAM_Addr[6]_i_1_n_0 ;
  wire \RAM_Addr[6]_i_2_n_0 ;
  wire [7:0]RAM_Rdata;
  wire RAM_WEN;
  wire [7:0]RAM_Wdata;
  wire RST;
  wire R_dd;
  wire R_dd_i_1_n_0;
  wire R_start_done;
  wire R_start_done_0;
  wire R_start_done_i_1_n_0;
  wire SCLK;
  wire data_cnt;
  wire [4:0]data_cnt_reg;
  wire [15:0]in_data;
  wire next_state;
  wire [7:6]p_0_in;
  wire [4:0]p_0_in__0;
  wire [3:1]p_0_in__1;
  wire temp;
  wire temp0;
  wire temp_i_1_n_0;
  wire temp_i_2_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_curr_state[5]_i_1 
       (.I0(RST),
        .O(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(temp0),
        .S(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .R(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(R_start_done_0),
        .R(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(MISO_cnt),
        .R(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "W_START:000010,W_DONE:000100,R_START:001000,R_LOAD:010000,R_DONE:100000,IDLE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[5] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .R(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(CSN),
        .I1(temp0),
        .I2(RAM_WEN),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .I5(R_dd),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(\FSM_onehot_next_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_onehot_next_state_reg[3]_i_2_n_0 ),
        .I2(data_cnt_reg[4]),
        .I3(CSN),
        .I4(MOSI),
        .I5(temp0),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA2AA)) 
    \FSM_onehot_next_state_reg[1]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I1(data_cnt_reg[0]),
        .I2(data_cnt_reg[1]),
        .I3(data_cnt_reg[4]),
        .I4(data_cnt_reg[2]),
        .I5(data_cnt_reg[3]),
        .O(\FSM_onehot_next_state_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(RAM_WEN),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_next_state_reg[2]_i_2_n_0 ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_next_state_reg[2]_i_2 
       (.I0(data_cnt_reg[3]),
        .I1(data_cnt_reg[2]),
        .I2(data_cnt_reg[4]),
        .I3(data_cnt_reg[1]),
        .I4(data_cnt_reg[0]),
        .O(\FSM_onehot_next_state_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[3]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h4F444F444F444444)) 
    \FSM_onehot_next_state_reg[3]_i_1 
       (.I0(R_start_done),
        .I1(R_start_done_0),
        .I2(CSN),
        .I3(temp0),
        .I4(\FSM_onehot_next_state_reg[3]_i_2_n_0 ),
        .I5(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .O(\FSM_onehot_next_state_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state_reg[3]_i_2 
       (.I0(data_cnt_reg[3]),
        .I1(data_cnt_reg[2]),
        .I2(data_cnt_reg[1]),
        .I3(data_cnt_reg[0]),
        .O(\FSM_onehot_next_state_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_next_state_reg[3]_i_3 
       (.I0(MOSI),
        .I1(CSN),
        .I2(data_cnt_reg[4]),
        .O(\FSM_onehot_next_state_reg[3]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[4]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state_reg[4]_i_1 
       (.I0(\FSM_onehot_next_state_reg[5]_i_3_n_0 ),
        .I1(MISO_cnt),
        .I2(R_start_done_0),
        .I3(R_start_done),
        .O(\FSM_onehot_next_state_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[5]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state_reg[5]_i_1 
       (.I0(R_dd),
        .I1(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_next_state_reg[5]_i_3_n_0 ),
        .I3(MISO_cnt),
        .O(\FSM_onehot_next_state_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_next_state_reg[5]_i_2 
       (.I0(temp0),
        .I1(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .I2(R_start_done_0),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I5(MISO_cnt),
        .O(next_state));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_next_state_reg[5]_i_3 
       (.I0(MISO_cnt_reg[3]),
        .I1(MISO_cnt_reg[1]),
        .I2(MISO_cnt_reg[0]),
        .I3(MISO_cnt_reg[2]),
        .O(\FSM_onehot_next_state_reg[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \MISO_cnt[0]_i_1 
       (.I0(MISO_cnt_reg[0]),
        .O(\MISO_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \MISO_cnt[1]_i_1 
       (.I0(MISO_cnt_reg[1]),
        .I1(MISO_cnt_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \MISO_cnt[2]_i_1 
       (.I0(MISO_cnt_reg[2]),
        .I1(MISO_cnt_reg[0]),
        .I2(MISO_cnt_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \MISO_cnt[3]_i_1 
       (.I0(MISO_cnt_reg[3]),
        .I1(MISO_cnt_reg[2]),
        .I2(MISO_cnt_reg[1]),
        .I3(MISO_cnt_reg[0]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_cnt_reg[0] 
       (.C(SCLK),
        .CE(MISO_cnt),
        .D(\MISO_cnt[0]_i_1_n_0 ),
        .Q(MISO_cnt_reg[0]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_cnt_reg[1] 
       (.C(SCLK),
        .CE(MISO_cnt),
        .D(p_0_in__1[1]),
        .Q(MISO_cnt_reg[1]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_cnt_reg[2] 
       (.C(SCLK),
        .CE(MISO_cnt),
        .D(p_0_in__1[2]),
        .Q(MISO_cnt_reg[2]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_cnt_reg[3] 
       (.C(SCLK),
        .CE(MISO_cnt),
        .D(p_0_in__1[3]),
        .Q(MISO_cnt_reg[3]),
        .R(temp0));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    MISO_i_1
       (.I0(MISO_i_2_n_0),
        .I1(MISO_cnt_reg[2]),
        .I2(MISO_i_3_n_0),
        .I3(MISO_i_4_n_0),
        .I4(MISO_cnt),
        .I5(MISO),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    MISO_i_2
       (.I0(RAM_Rdata[6]),
        .I1(RAM_Rdata[5]),
        .I2(MISO_cnt_reg[1]),
        .I3(MISO_cnt_reg[0]),
        .I4(RAM_Rdata[4]),
        .I5(RAM_Rdata[3]),
        .O(MISO_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MISO_i_3
       (.I0(MISO_cnt_reg[1]),
        .I1(MISO_cnt_reg[0]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    MISO_i_4
       (.I0(RAM_Rdata[2]),
        .I1(RAM_Rdata[1]),
        .I2(MISO_cnt_reg[1]),
        .I3(MISO_cnt_reg[0]),
        .I4(RAM_Rdata[0]),
        .I5(RAM_Rdata[7]),
        .O(MISO_i_4_n_0));
  FDRE MISO_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(MISO_i_1_n_0),
        .Q(MISO),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[0]_i_1 
       (.I0(in_data[0]),
        .I1(R_start_done_0),
        .I2(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I3(in_data[9]),
        .O(\RAM_Addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[1]_i_1 
       (.I0(in_data[1]),
        .I1(R_start_done_0),
        .I2(in_data[10]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\RAM_Addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[2]_i_1 
       (.I0(in_data[2]),
        .I1(R_start_done_0),
        .I2(in_data[11]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\RAM_Addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[3]_i_1 
       (.I0(in_data[3]),
        .I1(R_start_done_0),
        .I2(in_data[12]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\RAM_Addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[4]_i_1 
       (.I0(in_data[4]),
        .I1(R_start_done_0),
        .I2(in_data[13]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\RAM_Addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[5]_i_1 
       (.I0(in_data[5]),
        .I1(R_start_done_0),
        .I2(in_data[14]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\RAM_Addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \RAM_Addr[6]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(data_cnt_reg[3]),
        .I2(data_cnt_reg[4]),
        .I3(R_start_done_0),
        .O(\RAM_Addr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \RAM_Addr[6]_i_2 
       (.I0(in_data[6]),
        .I1(R_start_done_0),
        .I2(in_data[15]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\RAM_Addr[6]_i_2_n_0 ));
  FDRE \RAM_Addr_reg[0] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[0]_i_1_n_0 ),
        .Q(RAM_Addr[0]),
        .R(temp0));
  FDRE \RAM_Addr_reg[1] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[1]_i_1_n_0 ),
        .Q(RAM_Addr[1]),
        .R(temp0));
  FDRE \RAM_Addr_reg[2] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[2]_i_1_n_0 ),
        .Q(RAM_Addr[2]),
        .R(temp0));
  FDRE \RAM_Addr_reg[3] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[3]_i_1_n_0 ),
        .Q(RAM_Addr[3]),
        .R(temp0));
  FDRE \RAM_Addr_reg[4] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[4]_i_1_n_0 ),
        .Q(RAM_Addr[4]),
        .R(temp0));
  FDRE \RAM_Addr_reg[5] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[5]_i_1_n_0 ),
        .Q(RAM_Addr[5]),
        .R(temp0));
  FDRE \RAM_Addr_reg[6] 
       (.C(SCLK),
        .CE(\RAM_Addr[6]_i_1_n_0 ),
        .D(\RAM_Addr[6]_i_2_n_0 ),
        .Q(RAM_Addr[6]),
        .R(temp0));
  FDRE RAM_WEN_reg
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[0]),
        .Q(RAM_WEN),
        .R(temp0));
  FDRE \RAM_Wdata_reg[0] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[1]),
        .Q(RAM_Wdata[0]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[1] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[2]),
        .Q(RAM_Wdata[1]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[2] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[3]),
        .Q(RAM_Wdata[2]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[3] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[4]),
        .Q(RAM_Wdata[3]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[4] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[5]),
        .Q(RAM_Wdata[4]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[5] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(in_data[6]),
        .Q(RAM_Wdata[5]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[6] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(p_0_in[6]),
        .Q(RAM_Wdata[6]),
        .R(temp0));
  FDRE \RAM_Wdata_reg[7] 
       (.C(SCLK),
        .CE(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .D(p_0_in[7]),
        .Q(RAM_Wdata[7]),
        .R(temp0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    R_dd_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .I1(temp0),
        .I2(R_dd),
        .O(R_dd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    R_dd_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(R_dd_i_1_n_0),
        .Q(R_dd),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    R_start_done_i_1
       (.I0(R_start_done),
        .I1(R_start_done_0),
        .I2(data_cnt_reg[4]),
        .I3(data_cnt_reg[3]),
        .I4(temp0),
        .O(R_start_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    R_start_done_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(R_start_done_i_1_n_0),
        .Q(R_start_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_cnt[0]_i_1 
       (.I0(data_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_cnt[1]_i_1 
       (.I0(data_cnt_reg[0]),
        .I1(data_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \data_cnt[2]_i_1 
       (.I0(data_cnt_reg[2]),
        .I1(data_cnt_reg[1]),
        .I2(data_cnt_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \data_cnt[3]_i_1 
       (.I0(data_cnt_reg[3]),
        .I1(data_cnt_reg[0]),
        .I2(data_cnt_reg[1]),
        .I3(data_cnt_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \data_cnt[4]_i_1 
       (.I0(data_cnt_reg[4]),
        .I1(data_cnt_reg[2]),
        .I2(data_cnt_reg[1]),
        .I3(data_cnt_reg[0]),
        .I4(data_cnt_reg[3]),
        .O(p_0_in__0[4]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_cnt_reg[0] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in__0[0]),
        .Q(data_cnt_reg[0]),
        .R(temp0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_cnt_reg[1] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in__0[1]),
        .Q(data_cnt_reg[1]),
        .R(temp0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_cnt_reg[2] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in__0[2]),
        .Q(data_cnt_reg[2]),
        .R(temp0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_cnt_reg[3] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in__0[3]),
        .Q(data_cnt_reg[3]),
        .R(temp0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_cnt_reg[4] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in__0[4]),
        .Q(data_cnt_reg[4]),
        .R(temp0));
  LUT5 #(
    .INIT(32'h00F2F0F2)) 
    \in_data[15]_i_1 
       (.I0(R_start_done_0),
        .I1(data_cnt_reg[3]),
        .I2(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I3(data_cnt_reg[4]),
        .I4(\FSM_onehot_next_state_reg[3]_i_2_n_0 ),
        .O(data_cnt));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[0] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(temp),
        .Q(in_data[0]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[10] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[9]),
        .Q(in_data[10]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[11] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[10]),
        .Q(in_data[11]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[12] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[11]),
        .Q(in_data[12]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[13] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[12]),
        .Q(in_data[13]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[14] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[13]),
        .Q(in_data[14]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[15] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[14]),
        .Q(in_data[15]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[1] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[0]),
        .Q(in_data[1]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[2] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[1]),
        .Q(in_data[2]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[3] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[2]),
        .Q(in_data[3]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[4] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[3]),
        .Q(in_data[4]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[5] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[4]),
        .Q(in_data[5]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[6] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[5]),
        .Q(in_data[6]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[7] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(in_data[6]),
        .Q(p_0_in[6]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[8] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(temp0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \in_data_reg[9] 
       (.C(SCLK),
        .CE(data_cnt),
        .D(p_0_in[7]),
        .Q(in_data[9]),
        .R(temp0));
  LUT6 #(
    .INIT(64'h00000000FFAE00A2)) 
    temp_i_1
       (.I0(temp),
        .I1(R_start_done_0),
        .I2(temp_i_2_n_0),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I4(MOSI),
        .I5(temp0),
        .O(temp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    temp_i_2
       (.I0(data_cnt_reg[3]),
        .I1(data_cnt_reg[4]),
        .O(temp_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(temp_i_1_n_0),
        .Q(temp),
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
