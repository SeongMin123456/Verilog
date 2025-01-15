// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  9 16:05:50 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/verilog_lab/zynq_axi_uart_rxtx/zynq_axi_7segment.gen/sources_1/bd/zynq_axi_segment/ip/zynq_axi_segment_my_uart_tx_0_0/zynq_axi_segment_my_uart_tx_0_0_stub.v
// Design      : zynq_axi_segment_my_uart_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_uart_tx,Vivado 2023.2" *)
module zynq_axi_segment_my_uart_tx_0_0(RST, CLK, AXI_START, AXI_DATA, TX, TX_READY)
/* synthesis syn_black_box black_box_pad_pin="RST,AXI_START,AXI_DATA[7:0],TX,TX_READY" */
/* synthesis syn_force_seq_prim="CLK" */;
  input RST;
  input CLK /* synthesis syn_isclock = 1 */;
  input AXI_START;
  input [7:0]AXI_DATA;
  output TX;
  output TX_READY;
endmodule
