// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb 10 10:20:45 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_SPI_Slave_0_0_stub.v
// Design      : AXI_SPI_block_SPI_Slave_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPI_Slave,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(RST, SCLK, CSN, MOSI, RAM_Rdata, MISO, RAM_WEN, 
  RAM_Addr, RAM_Wdata)
/* synthesis syn_black_box black_box_pad_pin="RST,CSN,MOSI,RAM_Rdata[7:0],MISO,RAM_WEN,RAM_Addr[6:0],RAM_Wdata[7:0]" */
/* synthesis syn_force_seq_prim="SCLK" */;
  input RST;
  input SCLK /* synthesis syn_isclock = 1 */;
  input CSN;
  input MOSI;
  input [7:0]RAM_Rdata;
  output MISO;
  output RAM_WEN;
  output [6:0]RAM_Addr;
  output [7:0]RAM_Wdata;
endmodule
