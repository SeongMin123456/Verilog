// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  9 16:52:19 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/verilog_lab/zynq_axi_uart_rxtx/zynq_axi_uart_rxtx_final/zynq_axi_uart_rxtx_final.gen/sources_1/bd/axi_uart/ip/axi_uart_uart_rx_0_0/axi_uart_uart_rx_0_0_stub.v
// Design      : axi_uart_uart_rx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_rx,Vivado 2023.2" *)
module axi_uart_uart_rx_0_0(RST, CLK, rxd, AXI_RX_DATA, RX_READY)
/* synthesis syn_black_box black_box_pad_pin="RST,rxd,AXI_RX_DATA[7:0],RX_READY" */
/* synthesis syn_force_seq_prim="CLK" */;
  input RST;
  input CLK /* synthesis syn_isclock = 1 */;
  input rxd;
  output [7:0]AXI_RX_DATA;
  output RX_READY;
endmodule
