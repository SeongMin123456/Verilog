// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb 10 15:20:59 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/verilog_lab/SPI_PJT/AXI_SPI/AXI_SPI.gen/sources_1/bd/AXI_SPI_block/ip/AXI_SPI_block_SPI_RAM_0_0/AXI_SPI_block_SPI_RAM_0_0_stub.v
// Design      : AXI_SPI_block_SPI_RAM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPI_RAM,Vivado 2023.2" *)
module AXI_SPI_block_SPI_RAM_0_0(SCLK, ADDR, DIN, WEN, DOUT)
/* synthesis syn_black_box black_box_pad_pin="ADDR[6:0],DIN[7:0],WEN,DOUT[7:0]" */
/* synthesis syn_force_seq_prim="SCLK" */;
  input SCLK /* synthesis syn_isclock = 1 */;
  input [6:0]ADDR;
  input [7:0]DIN;
  input WEN;
  output [7:0]DOUT;
endmodule
