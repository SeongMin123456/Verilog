// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  9 15:00:08 2025
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
  wire \FSM_sequential_curr_state[1]_i_3_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_4_n_0 ;
  wire \FSM_sequential_curr_state_reg_n_0_[0] ;
  wire RST;
  (* MARK_DEBUG *) wire RX_READY;
  wire baud_cnt;
  wire \baud_cnt[2]_i_1_n_0 ;
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
  wire \cnt[9]_i_1_n_0 ;
  wire \cnt[9]_i_2_n_0 ;
  wire \cnt[9]_i_3_n_0 ;
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
  (* MARK_DEBUG *) wire [7:0]rx_data;
  wire \rx_data[0]_i_2_n_0 ;
  wire \rx_data[1]_i_2_n_0 ;
  wire \rx_data[2]_i_2_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_2_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire [7:0]rx_data__0;
  (* MARK_DEBUG *) wire rx_done;
  wire rxd;
  wire \sampling[3]_i_2_n_0 ;
  wire \sampling[3]_i_4_n_0 ;
  wire [3:0]sampling_reg;
  (* MARK_DEBUG *) wire [7:0]send_data;
  wire \send_data[7]_i_1_n_0 ;
  wire send_done_i_1_n_0;
  wire send_done_i_2_n_0;
  wire send_done_i_3_n_0;
  wire send_done_reg_n_0;
  wire shift_done_i_1_n_0;
  wire shift_done_i_2_n_0;
  wire shift_done_reg_n_0;
  wire start_bit_i_1_n_0;
  wire start_bit_i_2_n_0;
  wire start_bit_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h89CD0000)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(curr_state),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I2(rxd),
        .I3(send_done_reg_n_0),
        .I4(RST),
        .O(\FSM_sequential_curr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF082A00000000)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(curr_state),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I2(shift_done_reg_n_0),
        .I3(RX_READY),
        .I4(\FSM_sequential_curr_state[1]_i_2_n_0 ),
        .I5(RST),
        .O(\FSM_sequential_curr_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    \FSM_sequential_curr_state[1]_i_2 
       (.I0(send_done_reg_n_0),
        .I1(sampling_reg[3]),
        .I2(sampling_reg[2]),
        .I3(start_bit_reg_n_0),
        .I4(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_curr_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_curr_state[1]_i_3 
       (.I0(sampling_reg[0]),
        .I1(sampling_reg[1]),
        .O(\FSM_sequential_curr_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_curr_state[1]_i_4 
       (.I0(curr_state),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(\FSM_sequential_curr_state[1]_i_4_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \baud_cnt[0]_i_1 
       (.I0(baud_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \baud_cnt[1]_i_1 
       (.I0(baud_cnt_reg[0]),
        .I1(baud_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \baud_cnt[2]_i_1 
       (.I0(baud_cnt_reg[1]),
        .I1(baud_cnt_reg[0]),
        .I2(baud_cnt_reg[2]),
        .O(\baud_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \baud_cnt[3]_i_1 
       (.I0(\baud_cnt[3]_i_3_n_0 ),
        .I1(sampling_reg[3]),
        .I2(sampling_reg[2]),
        .I3(sampling_reg[1]),
        .I4(sampling_reg[0]),
        .I5(\sampling[3]_i_4_n_0 ),
        .O(baud_cnt));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \baud_cnt[3]_i_2 
       (.I0(baud_cnt_reg[0]),
        .I1(baud_cnt_reg[1]),
        .I2(baud_cnt_reg[2]),
        .I3(baud_cnt_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \baud_cnt[3]_i_3 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[5]),
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
        .D(\baud_cnt[2]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[5]),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[9]_i_3_n_0 ),
        .I1(cnt_reg[6]),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg[6]),
        .I1(\cnt[9]_i_3_n_0 ),
        .I2(cnt_reg[7]),
        .O(\cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[8]_i_1 
       (.I0(\cnt[9]_i_3_n_0 ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[8]),
        .O(\cnt[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \cnt[9]_i_1 
       (.I0(\sampling[3]_i_2_n_0 ),
        .I1(curr_state),
        .I2(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(\cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[9]_i_2 
       (.I0(\cnt[9]_i_3_n_0 ),
        .I1(cnt_reg[8]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[9]),
        .O(\cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[9]_i_3 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[0]),
        .I5(cnt_reg[4]),
        .O(\cnt[9]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_cnt[0]_i_1 
       (.I0(curr_state),
        .I1(\data_cnt_reg_n_0_[0] ),
        .O(\data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_cnt[1]_i_1 
       (.I0(curr_state),
        .I1(\data_cnt_reg_n_0_[1] ),
        .I2(\data_cnt_reg_n_0_[0] ),
        .O(\data_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \data_cnt[2]_i_1 
       (.I0(curr_state),
        .I1(\data_cnt_reg_n_0_[2] ),
        .I2(\data_cnt_reg_n_0_[0] ),
        .I3(\data_cnt_reg_n_0_[1] ),
        .O(\data_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h440044F0)) 
    \data_cnt[3]_i_1 
       (.I0(\data_cnt[3]_i_3_n_0 ),
        .I1(\data_cnt[3]_i_4_n_0 ),
        .I2(rxd),
        .I3(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I4(curr_state),
        .O(data_cnt));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \data_cnt[3]_i_2 
       (.I0(curr_state),
        .I1(\data_cnt_reg_n_0_[3] ),
        .I2(\data_cnt_reg_n_0_[2] ),
        .I3(\data_cnt_reg_n_0_[1] ),
        .I4(\data_cnt_reg_n_0_[0] ),
        .O(\data_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \data_cnt[3]_i_3 
       (.I0(sampling_reg[2]),
        .I1(sampling_reg[3]),
        .I2(sampling_reg[0]),
        .I3(sampling_reg[1]),
        .I4(curr_state),
        .O(\data_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \data_cnt[3]_i_4 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(baud_cnt_reg[1]),
        .I2(\data_cnt_reg_n_0_[0] ),
        .I3(baud_cnt_reg[0]),
        .I4(\data_cnt[3]_i_5_n_0 ),
        .O(\data_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \data_cnt[3]_i_5 
       (.I0(baud_cnt_reg[2]),
        .I1(\data_cnt_reg_n_0_[2] ),
        .I2(baud_cnt_reg[3]),
        .I3(\data_cnt_reg_n_0_[3] ),
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
    .INIT(64'hF0F10011FFEE0000)) 
    \rx_data[0]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[0]_i_2_n_0 ),
        .I4(rx_data[0]),
        .I5(rxd),
        .O(rx_data__0[0]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \rx_data[0]_i_2 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[2]),
        .I3(baud_cnt_reg[3]),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[1]),
        .O(\rx_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F10011FFEE0000)) 
    \rx_data[1]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[1]_i_2_n_0 ),
        .I4(rx_data[1]),
        .I5(rxd),
        .O(rx_data__0[1]));
  LUT6 #(
    .INIT(64'hDDDDDDDFDDDDDDDD)) 
    \rx_data[1]_i_2 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .I2(baud_cnt_reg[2]),
        .I3(baud_cnt_reg[3]),
        .I4(baud_cnt_reg[1]),
        .I5(baud_cnt_reg[0]),
        .O(\rx_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F10011FFEE0000)) 
    \rx_data[2]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[2]_i_2_n_0 ),
        .I4(rx_data[2]),
        .I5(rxd),
        .O(rx_data__0[2]));
  LUT6 #(
    .INIT(64'hDDDDDDDFDDDDDDDD)) 
    \rx_data[2]_i_2 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[2]),
        .I3(baud_cnt_reg[3]),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[1]),
        .O(\rx_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F10011FFEE0000)) 
    \rx_data[3]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(rx_data[3]),
        .I5(rxd),
        .O(rx_data__0[3]));
  LUT6 #(
    .INIT(64'h777F777777777777)) 
    \rx_data[3]_i_2 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[2]),
        .I3(baud_cnt_reg[3]),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[1]),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F20022FFDD0000)) 
    \rx_data[4]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[4]_i_2_n_0 ),
        .I4(rx_data[4]),
        .I5(rxd),
        .O(rx_data__0[4]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEFEE)) 
    \rx_data[4]_i_2 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[1]),
        .O(\rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F20022FFDD0000)) 
    \rx_data[5]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[5]_i_2_n_0 ),
        .I4(rx_data[5]),
        .I5(rxd),
        .O(rx_data__0[5]));
  LUT6 #(
    .INIT(64'hDDDDDFDDDDDDDDDD)) 
    \rx_data[5]_i_2 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .I4(baud_cnt_reg[1]),
        .I5(baud_cnt_reg[0]),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F20022FFDD0000)) 
    \rx_data[6]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[6]_i_2_n_0 ),
        .I4(rx_data[6]),
        .I5(rxd),
        .O(rx_data__0[6]));
  LUT6 #(
    .INIT(64'hDDDDDFDDDDDDDDDD)) 
    \rx_data[6]_i_2 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[1]),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_data[7]_i_1 
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(curr_state),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F20022FFDD0000)) 
    \rx_data[7]_i_2 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(curr_state),
        .I3(\rx_data[7]_i_4_n_0 ),
        .I4(rx_data[7]),
        .I5(rxd),
        .O(rx_data__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \rx_data[7]_i_3 
       (.I0(curr_state),
        .I1(sampling_reg[1]),
        .I2(sampling_reg[0]),
        .I3(sampling_reg[3]),
        .I4(sampling_reg[2]),
        .I5(\data_cnt_reg_n_0_[3] ),
        .O(\rx_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F77777777777777)) 
    \rx_data[7]_i_4 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(baud_cnt_reg[3]),
        .I3(baud_cnt_reg[2]),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[1]),
        .O(\rx_data[7]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[0]),
        .Q(rx_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[1]),
        .Q(rx_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[2]),
        .Q(rx_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[3]),
        .Q(rx_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[4]),
        .Q(rx_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[5]),
        .Q(rx_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[6]),
        .Q(rx_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data__0[7]),
        .Q(rx_data[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    rx_done_inferred_i_1
       (.I0(baud_cnt_reg[2]),
        .I1(baud_cnt_reg[3]),
        .I2(baud_cnt_reg[1]),
        .I3(baud_cnt_reg[0]),
        .O(rx_done));
  LUT1 #(
    .INIT(2'h2)) 
    rx_done_inst
       (.I0(rx_done),
        .O(RX_READY));
  LUT1 #(
    .INIT(2'h1)) 
    \sampling[0]_i_1 
       (.I0(sampling_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sampling[1]_i_1 
       (.I0(sampling_reg[0]),
        .I1(sampling_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sampling[2]_i_1 
       (.I0(sampling_reg[1]),
        .I1(sampling_reg[0]),
        .I2(sampling_reg[2]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \sampling[3]_i_1 
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(curr_state),
        .O(cnt));
  LUT5 #(
    .INIT(32'h80000000)) 
    \sampling[3]_i_2 
       (.I0(\sampling[3]_i_4_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[4]),
        .O(\sampling[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sampling[3]_i_3 
       (.I0(sampling_reg[2]),
        .I1(sampling_reg[0]),
        .I2(sampling_reg[1]),
        .I3(sampling_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sampling[3]_i_4 
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[9]),
        .I5(cnt_reg[8]),
        .O(\sampling[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[0] 
       (.C(CLK),
        .CE(\sampling[3]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(sampling_reg[0]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[1] 
       (.C(CLK),
        .CE(\sampling[3]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(sampling_reg[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[2] 
       (.C(CLK),
        .CE(\sampling[3]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(sampling_reg[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \sampling_reg[3] 
       (.C(CLK),
        .CE(\sampling[3]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(sampling_reg[3]),
        .R(cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \send_data[7]_i_1 
       (.I0(RST),
        .O(\send_data[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst
       (.I0(send_data[7]),
        .O(AXI_RX_DATA[7]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__0
       (.I0(send_data[6]),
        .O(AXI_RX_DATA[6]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__1
       (.I0(send_data[5]),
        .O(AXI_RX_DATA[5]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__2
       (.I0(send_data[4]),
        .O(AXI_RX_DATA[4]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__3
       (.I0(send_data[3]),
        .O(AXI_RX_DATA[3]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__4
       (.I0(send_data[2]),
        .O(AXI_RX_DATA[2]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__5
       (.I0(send_data[1]),
        .O(AXI_RX_DATA[1]));
  LUT1 #(
    .INIT(2'h2)) 
    send_data_inst__6
       (.I0(send_data[0]),
        .O(AXI_RX_DATA[0]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[0] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[0]),
        .Q(send_data[0]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[1] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[1]),
        .Q(send_data[1]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[2] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[2]),
        .Q(send_data[2]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[3] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[3]),
        .Q(send_data[3]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[4] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[4]),
        .Q(send_data[4]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[5] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[5]),
        .Q(send_data[5]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[6] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[6]),
        .Q(send_data[6]));
  (* KEEP = "yes" *) 
  FDCE \send_data_reg[7] 
       (.C(send_done_reg_n_0),
        .CE(1'b1),
        .CLR(\send_data[7]_i_1_n_0 ),
        .D(rx_data[7]),
        .Q(send_data[7]));
  LUT6 #(
    .INIT(64'hFFFFFF0F00002200)) 
    send_done_i_1
       (.I0(send_done_i_2_n_0),
        .I1(send_done_i_3_n_0),
        .I2(rxd),
        .I3(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I4(curr_state),
        .I5(send_done_reg_n_0),
        .O(send_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    send_done_i_2
       (.I0(baud_cnt_reg[3]),
        .I1(baud_cnt_reg[2]),
        .O(send_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    send_done_i_3
       (.I0(baud_cnt_reg[1]),
        .I1(baud_cnt_reg[0]),
        .O(send_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(send_done_i_1_n_0),
        .Q(send_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h08C888C80ACA8ACA)) 
    shift_done_i_1
       (.I0(shift_done_reg_n_0),
        .I1(curr_state),
        .I2(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I3(\data_cnt[3]_i_4_n_0 ),
        .I4(shift_done_i_2_n_0),
        .I5(rxd),
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
    .INIT(64'h0030000355555555)) 
    start_bit_i_2
       (.I0(rxd),
        .I1(baud_cnt_reg[1]),
        .I2(baud_cnt_reg[0]),
        .I3(baud_cnt_reg[2]),
        .I4(baud_cnt_reg[3]),
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
