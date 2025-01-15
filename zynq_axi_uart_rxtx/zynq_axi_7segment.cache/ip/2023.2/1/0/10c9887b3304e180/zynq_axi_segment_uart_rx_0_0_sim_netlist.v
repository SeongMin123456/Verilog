// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  9 16:05:50 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_uart_rx_0_0_sim_netlist.v
// Design      : zynq_axi_segment_uart_rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CLK_FREQ = "100000000" *) (* keep_hierarchy = "soft" *) (* overrate = "54" *) 
(* shift = "2'b10" *) (* standby = "2'b00" *) (* start = "2'b01" *) 
(* stop = "2'b11" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (RST,
    CLK,
    rxd,
    AXI_RX_DATA,
    RX_READY);
  input RST;
  input CLK;
  input rxd;
  (* mark_debug = "true" *) output [7:0]AXI_RX_DATA;
  (* mark_debug = "true" *) output RX_READY;

  (* MARK_DEBUG *) wire [7:0]AXI_RX_DATA;
  wire CLK;
  wire \FSM_sequential_curr_state[0]_i_1_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_2_n_0 ;
  wire \FSM_sequential_curr_state_reg_n_0_[0] ;
  wire RST;
  (* MARK_DEBUG *) wire RX_READY;
  wire baud_cnt;
  wire \baud_cnt[3]_i_3_n_0 ;
  wire [3:0]baud_cnt_reg;
  wire cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[8]_i_1_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[9]_i_1_n_0 ;
  wire \cnt[9]_i_2_n_0 ;
  wire \cnt[9]_i_3_n_0 ;
  wire \cnt[9]_i_4_n_0 ;
  wire \cnt[9]_i_5_n_0 ;
  wire [9:0]cnt_reg;
  wire [1:1]curr_state;
  wire data_cnt;
  wire \data_cnt[0]_i_1_n_0 ;
  wire \data_cnt[1]_i_1_n_0 ;
  wire \data_cnt[2]_i_1_n_0 ;
  wire \data_cnt[3]_i_2_n_0 ;
  wire \data_cnt[3]_i_3_n_0 ;
  wire \data_cnt[3]_i_4_n_0 ;
  wire \data_cnt[3]_i_5_n_0 ;
  wire \data_cnt_reg_n_0_[0] ;
  wire \data_cnt_reg_n_0_[1] ;
  wire \data_cnt_reg_n_0_[2] ;
  wire \data_cnt_reg_n_0_[3] ;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [7:7]rx_data0_in;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[4]_i_2_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire \rx_data[7]_i_5_n_0 ;
  wire \rx_data_reg_n_0_[0] ;
  wire \rx_data_reg_n_0_[1] ;
  wire \rx_data_reg_n_0_[2] ;
  wire \rx_data_reg_n_0_[3] ;
  wire \rx_data_reg_n_0_[4] ;
  wire \rx_data_reg_n_0_[5] ;
  wire \rx_data_reg_n_0_[6] ;
  wire \rx_data_reg_n_0_[7] ;
  (* MARK_DEBUG *) wire rx_done;
  wire rxd;
  wire sampling;
  wire [3:0]sampling_reg;
  wire \send_data[7]_i_1_n_0 ;
  wire send_done_i_1_n_0;
  wire send_done_i_2_n_0;
  wire send_done_reg_n_0;
  wire shift_done_i_1_n_0;
  wire shift_done_i_2_n_0;
  wire shift_done_i_3_n_0;
  wire shift_done_reg_n_0;
  wire start_bit_i_1_n_0;
  wire start_bit_i_2_n_0;
  wire start_bit_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC1F10000)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(rxd),
        .I1(curr_state),
        .I2(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I3(send_done_reg_n_0),
        .I4(RST),
        .O(\FSM_sequential_curr_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4040000)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(RX_READY),
        .I1(curr_state),
        .I2(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I3(\FSM_sequential_curr_state[1]_i_2_n_0 ),
        .I4(RST),
        .O(\FSM_sequential_curr_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FF0101)) 
    \FSM_sequential_curr_state[1]_i_2 
       (.I0(sampling_reg[3]),
        .I1(start_bit_reg_n_0),
        .I2(\baud_cnt[3]_i_3_n_0 ),
        .I3(shift_done_reg_n_0),
        .I4(curr_state),
        .I5(send_done_reg_n_0),
        .O(\FSM_sequential_curr_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "shift:11,start:01,stop:10,standby:00" *) 
  FDRE \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shift:11,start:01,stop:10,standby:00" *) 
  FDRE \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1_n_0 ),
        .Q(curr_state),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \baud_cnt[0]_i_1 
       (.I0(baud_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \baud_cnt[1]_i_1 
       (.I0(baud_cnt_reg[0]),
        .I1(baud_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \baud_cnt[2]_i_1 
       (.I0(baud_cnt_reg[2]),
        .I1(baud_cnt_reg[1]),
        .I2(baud_cnt_reg[0]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \baud_cnt[3]_i_1 
       (.I0(\baud_cnt[3]_i_3_n_0 ),
        .I1(sampling_reg[3]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[0]),
        .I5(\cnt[9]_i_3_n_0 ),
        .O(baud_cnt));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \baud_cnt[3]_i_2 
       (.I0(baud_cnt_reg[3]),
        .I1(baud_cnt_reg[0]),
        .I2(baud_cnt_reg[1]),
        .I3(baud_cnt_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \baud_cnt[3]_i_3 
       (.I0(sampling_reg[1]),
        .I1(sampling_reg[0]),
        .I2(sampling_reg[2]),
        .O(\baud_cnt[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[0] 
       (.C(CLK),
        .CE(baud_cnt),
        .D(p_0_in__1[0]),
        .Q(baud_cnt_reg[0]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[1] 
       (.C(CLK),
        .CE(baud_cnt),
        .D(p_0_in__1[1]),
        .Q(baud_cnt_reg[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[2] 
       (.C(CLK),
        .CE(baud_cnt),
        .D(p_0_in__1[2]),
        .Q(baud_cnt_reg[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \baud_cnt_reg[3] 
       (.C(CLK),
        .CE(baud_cnt),
        .D(p_0_in__1[3]),
        .Q(baud_cnt_reg[3]),
        .R(cnt));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[3]),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[4]),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[6]_i_1 
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(\cnt[8]_i_2_n_0 ),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg[7]),
        .I1(\cnt[8]_i_2_n_0 ),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[4]),
        .I4(cnt_reg[6]),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[8]_i_1 
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[5]),
        .I4(\cnt[8]_i_2_n_0 ),
        .I5(cnt_reg[7]),
        .O(\cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[8]_i_2 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .O(\cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \cnt[9]_i_1 
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[0]),
        .I3(\cnt[9]_i_3_n_0 ),
        .I4(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I5(curr_state),
        .O(\cnt[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[9]_i_2 
       (.I0(cnt_reg[9]),
        .I1(cnt_reg[7]),
        .I2(\cnt[9]_i_4_n_0 ),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[8]),
        .O(\cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \cnt[9]_i_3 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[8]),
        .I4(cnt_reg[9]),
        .I5(\cnt[9]_i_5_n_0 ),
        .O(\cnt[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[9]_i_4 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[5]),
        .I5(cnt_reg[4]),
        .O(\cnt[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[9]_i_5 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .O(\cnt[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt_reg[3]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt_reg[4]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt_reg[5]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt_reg[6]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(cnt_reg[7]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[8]_i_1_n_0 ),
        .Q(cnt_reg[8]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[9]_i_2_n_0 ),
        .Q(cnt_reg[9]),
        .R(\cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_cnt[0]_i_1 
       (.I0(curr_state),
        .I1(\data_cnt_reg_n_0_[0] ),
        .O(\data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \data_cnt[1]_i_1 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(curr_state),
        .O(\data_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \data_cnt[2]_i_1 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .I2(\data_cnt_reg_n_0_[2] ),
        .I3(curr_state),
        .O(\data_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \data_cnt[3]_i_1 
       (.I0(curr_state),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I2(rxd),
        .I3(\data_cnt[3]_i_3_n_0 ),
        .O(data_cnt));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \data_cnt[3]_i_2 
       (.I0(curr_state),
        .I1(\data_cnt_reg_n_0_[2] ),
        .I2(\data_cnt_reg_n_0_[1] ),
        .I3(\data_cnt_reg_n_0_[0] ),
        .I4(\data_cnt_reg_n_0_[3] ),
        .O(\data_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h51000000)) 
    \data_cnt[3]_i_3 
       (.I0(shift_done_i_2_n_0),
        .I1(\data_cnt[3]_i_4_n_0 ),
        .I2(\data_cnt[3]_i_5_n_0 ),
        .I3(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I4(curr_state),
        .O(\data_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \data_cnt[3]_i_4 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(baud_cnt_reg[1]),
        .I2(\data_cnt_reg_n_0_[0] ),
        .I3(baud_cnt_reg[0]),
        .O(\data_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \data_cnt[3]_i_5 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(baud_cnt_reg[2]),
        .I2(\data_cnt_reg_n_0_[3] ),
        .I3(baud_cnt_reg[3]),
        .O(\data_cnt[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[0] 
       (.C(CLK),
        .CE(data_cnt),
        .D(\data_cnt[0]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[1] 
       (.C(CLK),
        .CE(data_cnt),
        .D(\data_cnt[1]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[2] 
       (.C(CLK),
        .CE(data_cnt),
        .D(\data_cnt[2]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[3] 
       (.C(CLK),
        .CE(data_cnt),
        .D(\data_cnt[3]_i_2_n_0 ),
        .Q(\data_cnt_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_data[0]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[4]_i_2_n_0 ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[0] ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_data[1]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[5]_i_2_n_0 ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[1] ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_data[2]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[6]_i_2_n_0 ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[2] ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \rx_data[3]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[3]_i_2_n_0 ),
        .I3(\rx_data[7]_i_5_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[3] ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[3]_i_2 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\data_cnt_reg_n_0_[3] ),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_data[4]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[7]_i_4_n_0 ),
        .I3(\rx_data[4]_i_2_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[4]_i_2 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .O(\rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_data[5]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[7]_i_4_n_0 ),
        .I3(\rx_data[5]_i_2_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[5] ),
        .O(\rx_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[5]_i_2 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_data[6]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[7]_i_4_n_0 ),
        .I3(\rx_data[6]_i_2_n_0 ),
        .I4(\data_cnt[3]_i_3_n_0 ),
        .I5(\rx_data_reg_n_0_[6] ),
        .O(\rx_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[6]_i_2 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFABAFAFA0A8A0A0)) 
    \rx_data[7]_i_1 
       (.I0(rx_data0_in),
        .I1(\data_cnt[3]_i_3_n_0 ),
        .I2(\rx_data[7]_i_3_n_0 ),
        .I3(\rx_data[7]_i_4_n_0 ),
        .I4(\rx_data[7]_i_5_n_0 ),
        .I5(\rx_data_reg_n_0_[7] ),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_data[7]_i_2 
       (.I0(curr_state),
        .I1(rxd),
        .O(rx_data0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rx_data[7]_i_3 
       (.I0(rxd),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I2(curr_state),
        .O(\rx_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[7]_i_4 
       (.I0(\data_cnt_reg_n_0_[3] ),
        .I1(\data_cnt_reg_n_0_[2] ),
        .O(\rx_data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_data[7]_i_5 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .O(\rx_data[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    rx_done_inferred_i_1
       (.I0(baud_cnt_reg[0]),
        .I1(baud_cnt_reg[1]),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .O(rx_done));
  LUT1 #(
    .INIT(2'h2)) 
    rx_done_inst
       (.I0(rx_done),
        .O(RX_READY));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sampling[0]_i_1 
       (.I0(sampling_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sampling[1]_i_1 
       (.I0(sampling_reg[0]),
        .I1(sampling_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sampling[2]_i_1 
       (.I0(sampling_reg[2]),
        .I1(sampling_reg[0]),
        .I2(sampling_reg[1]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \sampling[3]_i_1 
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(curr_state),
        .O(cnt));
  LUT4 #(
    .INIT(16'h0008)) 
    \sampling[3]_i_2 
       (.I0(\cnt[9]_i_3_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[7]),
        .O(sampling));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sampling[3]_i_3 
       (.I0(sampling_reg[1]),
        .I1(sampling_reg[0]),
        .I2(sampling_reg[2]),
        .I3(sampling_reg[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[0] 
       (.C(CLK),
        .CE(sampling),
        .D(p_0_in__0[0]),
        .Q(sampling_reg[0]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[1] 
       (.C(CLK),
        .CE(sampling),
        .D(p_0_in__0[1]),
        .Q(sampling_reg[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[2] 
       (.C(CLK),
        .CE(sampling),
        .D(p_0_in__0[2]),
        .Q(sampling_reg[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[3] 
       (.C(CLK),
        .CE(sampling),
        .D(p_0_in__0[3]),
        .Q(sampling_reg[3]),
        .R(cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \send_data[7]_i_1 
       (.I0(RST),
        .O(\send_data[7]_i_1_n_0 ));
  FDCE \send_data_reg[0] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[0] ),
        .Q(AXI_RX_DATA[0]));
  FDCE \send_data_reg[1] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[1] ),
        .Q(AXI_RX_DATA[1]));
  FDCE \send_data_reg[2] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[2] ),
        .Q(AXI_RX_DATA[2]));
  FDCE \send_data_reg[3] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[3] ),
        .Q(AXI_RX_DATA[3]));
  FDCE \send_data_reg[4] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[4] ),
        .Q(AXI_RX_DATA[4]));
  FDCE \send_data_reg[5] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[5] ),
        .Q(AXI_RX_DATA[5]));
  FDCE \send_data_reg[6] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[6] ),
        .Q(AXI_RX_DATA[6]));
  FDCE \send_data_reg[7] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(\rx_data_reg_n_0_[7] ),
        .Q(AXI_RX_DATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFDFD0C00)) 
    send_done_i_1
       (.I0(rxd),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I2(curr_state),
        .I3(send_done_i_2_n_0),
        .I4(send_done_reg_n_0),
        .O(send_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    send_done_i_2
       (.I0(baud_cnt_reg[1]),
        .I1(baud_cnt_reg[0]),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .O(send_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(send_done_i_1_n_0),
        .Q(send_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF2F20000AAAA00AA)) 
    shift_done_i_1
       (.I0(shift_done_reg_n_0),
        .I1(shift_done_i_2_n_0),
        .I2(shift_done_i_3_n_0),
        .I3(rxd),
        .I4(curr_state),
        .I5(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(shift_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    shift_done_i_2
       (.I0(sampling_reg[1]),
        .I1(sampling_reg[0]),
        .I2(sampling_reg[3]),
        .I3(sampling_reg[2]),
        .O(shift_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00009009)) 
    shift_done_i_3
       (.I0(baud_cnt_reg[0]),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[1]),
        .I3(\data_cnt_reg_n_0_[1] ),
        .I4(\data_cnt[3]_i_5_n_0 ),
        .O(shift_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shift_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(shift_done_i_1_n_0),
        .Q(shift_done_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    start_bit_i_1
       (.I0(start_bit_reg_n_0),
        .I1(curr_state),
        .I2(start_bit_i_2_n_0),
        .O(start_bit_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000300355555555)) 
    start_bit_i_2
       (.I0(rxd),
        .I1(baud_cnt_reg[1]),
        .I2(baud_cnt_reg[0]),
        .I3(baud_cnt_reg[3]),
        .I4(baud_cnt_reg[2]),
        .I5(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(start_bit_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_bit_reg
       (.C(CLK),
        .CE(1'b1),
        .D(start_bit_i_1_n_0),
        .Q(start_bit_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_axi_segment_uart_rx_0_0,uart_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_rx,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (RST,
    CLK,
    rxd,
    AXI_RX_DATA,
    RX_READY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input rxd;
  output [7:0]AXI_RX_DATA;
  output RX_READY;

  wire [7:0]AXI_RX_DATA;
  wire CLK;
  wire RST;
  wire RX_READY;
  wire rxd;

  (* CLK_FREQ = "100000000" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* overrate = "54" *) 
  (* shift = "2'b10" *) 
  (* standby = "2'b00" *) 
  (* start = "2'b01" *) 
  (* stop = "2'b11" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx inst
       (.AXI_RX_DATA(AXI_RX_DATA),
        .CLK(CLK),
        .RST(RST),
        .RX_READY(RX_READY),
        .rxd(rxd));
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
