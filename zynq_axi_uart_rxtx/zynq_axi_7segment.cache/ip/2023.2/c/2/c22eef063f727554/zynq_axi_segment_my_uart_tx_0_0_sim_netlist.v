// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan  7 13:25:29 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_my_uart_tx_0_0_sim_netlist.v
// Design      : zynq_axi_segment_my_uart_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* baud_rate = "868" *) (* idle = "2'b00" *) (* keep_hierarchy = "soft" *) 
(* shift = "2'b10" *) (* start = "2'b01" *) (* stop = "2'b11" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx
   (RST,
    CLK,
    AXI_START,
    AXI_DATA,
    TX,
    TX_READY);
  input RST;
  input CLK;
  input AXI_START;
  input [7:0]AXI_DATA;
  output TX;
  (* mark_debug = "true" *) output TX_READY;

  wire [7:0]AXI_DATA;
  wire AXI_START;
  wire CLK;
  wire \FSM_sequential_curr_state[0]_i_1_n_0 ;
  wire \FSM_sequential_curr_state[0]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[0]_i_3_n_0 ;
  wire \FSM_sequential_curr_state[0]_i_4_n_0 ;
  wire \FSM_sequential_curr_state[0]_i_5_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1_n_0 ;
  wire RST;
  wire TX;
  wire TX_INST_0_i_1_n_0;
  (* MARK_DEBUG *) wire TX_READY;
  wire TX_READY_i_1_n_0;
  wire \baud_cnt[0]_i_1_n_0 ;
  wire \baud_cnt[0]_i_3_n_0 ;
  wire \baud_cnt[0]_i_4_n_0 ;
  wire \baud_cnt[0]_i_5_n_0 ;
  wire [9:0]baud_cnt_reg;
  wire \baud_cnt_reg[0]_i_2_n_0 ;
  wire \baud_cnt_reg[0]_i_2_n_1 ;
  wire \baud_cnt_reg[0]_i_2_n_2 ;
  wire \baud_cnt_reg[0]_i_2_n_3 ;
  wire \baud_cnt_reg[0]_i_2_n_4 ;
  wire \baud_cnt_reg[0]_i_2_n_5 ;
  wire \baud_cnt_reg[0]_i_2_n_6 ;
  wire \baud_cnt_reg[0]_i_2_n_7 ;
  wire \baud_cnt_reg[4]_i_1_n_0 ;
  wire \baud_cnt_reg[4]_i_1_n_1 ;
  wire \baud_cnt_reg[4]_i_1_n_2 ;
  wire \baud_cnt_reg[4]_i_1_n_3 ;
  wire \baud_cnt_reg[4]_i_1_n_4 ;
  wire \baud_cnt_reg[4]_i_1_n_5 ;
  wire \baud_cnt_reg[4]_i_1_n_6 ;
  wire \baud_cnt_reg[4]_i_1_n_7 ;
  wire \baud_cnt_reg[8]_i_1_n_3 ;
  wire \baud_cnt_reg[8]_i_1_n_6 ;
  wire \baud_cnt_reg[8]_i_1_n_7 ;
  wire [1:0]curr_state;
  wire send_cnt;
  wire \send_cnt[0]_i_1_n_0 ;
  wire \send_cnt[1]_i_1_n_0 ;
  wire \send_cnt[2]_i_1_n_0 ;
  wire \send_cnt[3]_i_2_n_0 ;
  wire \send_cnt[3]_i_3_n_0 ;
  wire \send_cnt[3]_i_4_n_0 ;
  wire \send_cnt_reg_n_0_[0] ;
  wire \send_cnt_reg_n_0_[1] ;
  wire \send_cnt_reg_n_0_[2] ;
  wire \send_cnt_reg_n_0_[3] ;
  wire send_done_i_1_n_0;
  wire send_done_reg_n_0;
  wire send_i_1_n_0;
  wire send_reg_n_0;
  (* MARK_DEBUG *) wire [8:0]serial;
  wire \serial[1]_i_2_n_0 ;
  wire \serial[2]_i_2_n_0 ;
  wire \serial[3]_i_2_n_0 ;
  wire \serial[4]_i_2_n_0 ;
  wire \serial[5]_i_2_n_0 ;
  wire \serial[6]_i_2_n_0 ;
  wire \serial[7]_i_2_n_0 ;
  wire \serial[7]_i_3_n_0 ;
  wire \serial[7]_i_4_n_0 ;
  wire \serial[8]_i_3_n_0 ;
  wire [8:0]serial__0;
  wire serial_reg0;
  wire shift_done_i_1_n_0;
  wire shift_done_i_2_n_0;
  wire shift_done_reg_n_0;
  wire [3:1]\NLW_baud_cnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_baud_cnt_reg[8]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFEAA00000000)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(\FSM_sequential_curr_state[0]_i_2_n_0 ),
        .I1(TX_INST_0_i_1_n_0),
        .I2(\FSM_sequential_curr_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_curr_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_curr_state[0]_i_5_n_0 ),
        .I5(RST),
        .O(\FSM_sequential_curr_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_curr_state[0]_i_2 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(send_reg_n_0),
        .O(\FSM_sequential_curr_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_curr_state[0]_i_3 
       (.I0(serial[6]),
        .I1(serial[5]),
        .I2(serial[4]),
        .I3(serial[3]),
        .O(\FSM_sequential_curr_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_curr_state[0]_i_4 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .O(\FSM_sequential_curr_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA0E0)) 
    \FSM_sequential_curr_state[0]_i_5 
       (.I0(send_done_reg_n_0),
        .I1(shift_done_reg_n_0),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .O(\FSM_sequential_curr_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA406200000000)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(send_reg_n_0),
        .I3(shift_done_reg_n_0),
        .I4(send_done_reg_n_0),
        .I5(RST),
        .O(\FSM_sequential_curr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "shift:10,start:01,idle:00,stop:11" *) 
  FDRE \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1_n_0 ),
        .Q(curr_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shift:10,start:01,idle:00,stop:11" *) 
  FDRE \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1_n_0 ),
        .Q(curr_state[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    TX_INST_0
       (.I0(serial[0]),
        .I1(serial[6]),
        .I2(serial[5]),
        .I3(serial[4]),
        .I4(serial[3]),
        .I5(TX_INST_0_i_1_n_0),
        .O(TX));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    TX_INST_0_i_1
       (.I0(serial[0]),
        .I1(serial[1]),
        .I2(serial[2]),
        .I3(serial[8]),
        .I4(serial[7]),
        .O(TX_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAAAAAAAAAAA3333)) 
    TX_READY_i_1
       (.I0(TX_READY),
        .I1(AXI_START),
        .I2(\send_cnt[3]_i_3_n_0 ),
        .I3(\send_cnt[3]_i_4_n_0 ),
        .I4(curr_state[0]),
        .I5(curr_state[1]),
        .O(TX_READY_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    TX_READY_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TX_READY_i_1_n_0),
        .Q(TX_READY),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h800080008000FFFF)) 
    \baud_cnt[0]_i_1 
       (.I0(\baud_cnt[0]_i_3_n_0 ),
        .I1(\baud_cnt[0]_i_4_n_0 ),
        .I2(baud_cnt_reg[9]),
        .I3(baud_cnt_reg[8]),
        .I4(curr_state[1]),
        .I5(curr_state[0]),
        .O(\baud_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \baud_cnt[0]_i_3 
       (.I0(baud_cnt_reg[1]),
        .I1(baud_cnt_reg[0]),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .O(\baud_cnt[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \baud_cnt[0]_i_4 
       (.I0(baud_cnt_reg[7]),
        .I1(baud_cnt_reg[6]),
        .I2(baud_cnt_reg[4]),
        .I3(baud_cnt_reg[5]),
        .O(\baud_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \baud_cnt[0]_i_5 
       (.I0(baud_cnt_reg[0]),
        .O(\baud_cnt[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[0]_i_2_n_7 ),
        .Q(baud_cnt_reg[0]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  CARRY4 \baud_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\baud_cnt_reg[0]_i_2_n_0 ,\baud_cnt_reg[0]_i_2_n_1 ,\baud_cnt_reg[0]_i_2_n_2 ,\baud_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\baud_cnt_reg[0]_i_2_n_4 ,\baud_cnt_reg[0]_i_2_n_5 ,\baud_cnt_reg[0]_i_2_n_6 ,\baud_cnt_reg[0]_i_2_n_7 }),
        .S({baud_cnt_reg[3:1],\baud_cnt[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[0]_i_2_n_6 ),
        .Q(baud_cnt_reg[1]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[0]_i_2_n_5 ),
        .Q(baud_cnt_reg[2]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[0]_i_2_n_4 ),
        .Q(baud_cnt_reg[3]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[4]_i_1_n_7 ),
        .Q(baud_cnt_reg[4]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  CARRY4 \baud_cnt_reg[4]_i_1 
       (.CI(\baud_cnt_reg[0]_i_2_n_0 ),
        .CO({\baud_cnt_reg[4]_i_1_n_0 ,\baud_cnt_reg[4]_i_1_n_1 ,\baud_cnt_reg[4]_i_1_n_2 ,\baud_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baud_cnt_reg[4]_i_1_n_4 ,\baud_cnt_reg[4]_i_1_n_5 ,\baud_cnt_reg[4]_i_1_n_6 ,\baud_cnt_reg[4]_i_1_n_7 }),
        .S(baud_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[4]_i_1_n_6 ),
        .Q(baud_cnt_reg[5]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[4]_i_1_n_5 ),
        .Q(baud_cnt_reg[6]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[4]_i_1_n_4 ),
        .Q(baud_cnt_reg[7]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[8]_i_1_n_7 ),
        .Q(baud_cnt_reg[8]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  CARRY4 \baud_cnt_reg[8]_i_1 
       (.CI(\baud_cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_baud_cnt_reg[8]_i_1_CO_UNCONNECTED [3:1],\baud_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_baud_cnt_reg[8]_i_1_O_UNCONNECTED [3:2],\baud_cnt_reg[8]_i_1_n_6 ,\baud_cnt_reg[8]_i_1_n_7 }),
        .S({1'b0,1'b0,baud_cnt_reg[9:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\baud_cnt_reg[8]_i_1_n_6 ),
        .Q(baud_cnt_reg[9]),
        .R(\baud_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \send_cnt[0]_i_1 
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(curr_state[1]),
        .O(\send_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \send_cnt[1]_i_1 
       (.I0(curr_state[1]),
        .I1(\send_cnt_reg_n_0_[1] ),
        .I2(\send_cnt_reg_n_0_[0] ),
        .O(\send_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \send_cnt[2]_i_1 
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(\send_cnt_reg_n_0_[1] ),
        .I2(\send_cnt_reg_n_0_[2] ),
        .I3(curr_state[1]),
        .O(\send_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0000000CCCCAAAA)) 
    \send_cnt[3]_i_1 
       (.I0(AXI_START),
        .I1(send_reg_n_0),
        .I2(\send_cnt[3]_i_3_n_0 ),
        .I3(\send_cnt[3]_i_4_n_0 ),
        .I4(curr_state[0]),
        .I5(curr_state[1]),
        .O(send_cnt));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h070F0800)) 
    \send_cnt[3]_i_2 
       (.I0(\send_cnt_reg_n_0_[1] ),
        .I1(\send_cnt_reg_n_0_[0] ),
        .I2(curr_state[1]),
        .I3(\send_cnt_reg_n_0_[2] ),
        .I4(\send_cnt_reg_n_0_[3] ),
        .O(\send_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \send_cnt[3]_i_3 
       (.I0(AXI_DATA[3]),
        .I1(AXI_DATA[4]),
        .I2(AXI_DATA[5]),
        .I3(AXI_DATA[6]),
        .I4(AXI_DATA[7]),
        .I5(send_reg_n_0),
        .O(\send_cnt[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \send_cnt[3]_i_4 
       (.I0(AXI_DATA[2]),
        .I1(AXI_DATA[1]),
        .I2(AXI_DATA[0]),
        .O(\send_cnt[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[0] 
       (.C(CLK),
        .CE(send_cnt),
        .D(\send_cnt[0]_i_1_n_0 ),
        .Q(\send_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[1] 
       (.C(CLK),
        .CE(send_cnt),
        .D(\send_cnt[1]_i_1_n_0 ),
        .Q(\send_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[2] 
       (.C(CLK),
        .CE(send_cnt),
        .D(\send_cnt[2]_i_1_n_0 ),
        .Q(\send_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[3] 
       (.C(CLK),
        .CE(send_cnt),
        .D(\send_cnt[3]_i_2_n_0 ),
        .Q(\send_cnt_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h77FFFFFF00000F00)) 
    send_done_i_1
       (.I0(\send_cnt[3]_i_3_n_0 ),
        .I1(\send_cnt[3]_i_4_n_0 ),
        .I2(shift_done_i_2_n_0),
        .I3(curr_state[1]),
        .I4(curr_state[0]),
        .I5(send_done_reg_n_0),
        .O(send_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(send_done_i_1_n_0),
        .Q(send_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8080800000000000)) 
    send_i_1
       (.I0(\baud_cnt[0]_i_4_n_0 ),
        .I1(baud_cnt_reg[9]),
        .I2(baud_cnt_reg[8]),
        .I3(curr_state[1]),
        .I4(curr_state[0]),
        .I5(\baud_cnt[0]_i_3_n_0 ),
        .O(send_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_reg
       (.C(CLK),
        .CE(1'b1),
        .D(send_i_1_n_0),
        .Q(send_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00AAAA2200F0AA22)) 
    \serial[0]_i_1 
       (.I0(serial[0]),
        .I1(AXI_START),
        .I2(serial[1]),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .I5(\serial[8]_i_3_n_0 ),
        .O(serial__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[1]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[1]),
        .I4(serial[2]),
        .I5(\serial[1]_i_2_n_0 ),
        .O(serial__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[1]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[0]),
        .O(\serial[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[2]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[2]),
        .I4(serial[3]),
        .I5(\serial[2]_i_2_n_0 ),
        .O(serial__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[2]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[1]),
        .O(\serial[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[3]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[3]),
        .I4(serial[4]),
        .I5(\serial[3]_i_2_n_0 ),
        .O(serial__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[3]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[2]),
        .O(\serial[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[4]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[4]),
        .I4(serial[5]),
        .I5(\serial[4]_i_2_n_0 ),
        .O(serial__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[4]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[3]),
        .O(\serial[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[5]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[5]),
        .I4(serial[6]),
        .I5(\serial[5]_i_2_n_0 ),
        .O(serial__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[5]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[4]),
        .O(\serial[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[6]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[6]),
        .I4(serial[7]),
        .I5(\serial[6]_i_2_n_0 ),
        .O(serial__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[6]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[5]),
        .O(\serial[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFA30EA00)) 
    \serial[7]_i_1 
       (.I0(\serial[7]_i_2_n_0 ),
        .I1(\serial[8]_i_3_n_0 ),
        .I2(\serial[7]_i_3_n_0 ),
        .I3(serial[7]),
        .I4(serial[8]),
        .I5(\serial[7]_i_4_n_0 ),
        .O(serial__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h31)) 
    \serial[7]_i_2 
       (.I0(AXI_START),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .O(\serial[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \serial[7]_i_3 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .O(\serial[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \serial[7]_i_4 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(AXI_START),
        .I3(AXI_DATA[6]),
        .O(\serial[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \serial[8]_i_1 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .O(serial_reg0));
  LUT6 #(
    .INIT(64'h00C0CCAA00C0CCCC)) 
    \serial[8]_i_2 
       (.I0(AXI_DATA[7]),
        .I1(serial[8]),
        .I2(\serial[8]_i_3_n_0 ),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .I5(AXI_START),
        .O(serial__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \serial[8]_i_3 
       (.I0(shift_done_reg_n_0),
        .I1(\send_cnt_reg_n_0_[2] ),
        .I2(\send_cnt_reg_n_0_[3] ),
        .I3(\send_cnt_reg_n_0_[1] ),
        .I4(\send_cnt_reg_n_0_[0] ),
        .O(\serial[8]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[0]),
        .Q(serial[0]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[1]),
        .Q(serial[1]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[2]),
        .Q(serial[2]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[3]),
        .Q(serial[3]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[4]),
        .Q(serial[4]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[5]),
        .Q(serial[5]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[6]),
        .Q(serial[6]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[7]),
        .Q(serial[7]),
        .R(serial_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(serial__0[8]),
        .Q(serial[8]),
        .R(serial_reg0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hC708)) 
    shift_done_i_1
       (.I0(shift_done_i_2_n_0),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(shift_done_reg_n_0),
        .O(shift_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    shift_done_i_2
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(\send_cnt_reg_n_0_[1] ),
        .I2(\send_cnt_reg_n_0_[3] ),
        .I3(\send_cnt_reg_n_0_[2] ),
        .O(shift_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shift_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(shift_done_i_1_n_0),
        .Q(shift_done_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_axi_segment_my_uart_tx_0_0,my_uart_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_uart_tx,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (RST,
    CLK,
    AXI_START,
    AXI_DATA,
    TX,
    TX_READY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input AXI_START;
  input [7:0]AXI_DATA;
  output TX;
  output TX_READY;

  wire [7:0]AXI_DATA;
  wire AXI_START;
  wire CLK;
  wire RST;
  wire TX;
  wire TX_READY;

  (* KEEP_HIERARCHY = "soft" *) 
  (* baud_rate = "868" *) 
  (* idle = "2'b00" *) 
  (* shift = "2'b10" *) 
  (* start = "2'b01" *) 
  (* stop = "2'b11" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_uart_tx inst
       (.AXI_DATA(AXI_DATA),
        .AXI_START(AXI_START),
        .CLK(CLK),
        .RST(RST),
        .TX(TX),
        .TX_READY(TX_READY));
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
