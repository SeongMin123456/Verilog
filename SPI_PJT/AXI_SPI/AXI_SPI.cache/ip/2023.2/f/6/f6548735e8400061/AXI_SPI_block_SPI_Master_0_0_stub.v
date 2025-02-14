// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb 10 16:09:48 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_SPI_Master_0_0_stub.v
// Design      : AXI_SPI_block_SPI_Master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPI_Master,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(RST, CLK, CMD, ADDR, WR_Data, MISO, RD_Data, SCLK, CSN, 
  MOSI)
/* synthesis syn_black_box black_box_pad_pin="RST,CMD[1:0],ADDR[6:0],WR_Data[7:0],MISO,RD_Data[7:0],CSN,MOSI" */
/* synthesis syn_force_seq_prim="CLK" */
/* synthesis syn_force_seq_prim="SCLK" */;
  input RST;
  input CLK /* synthesis syn_isclock = 1 */;
  input [1:0]CMD;
  input [6:0]ADDR;
  input [7:0]WR_Data;
  input MISO;
  output [7:0]RD_Data;
  output SCLK /* synthesis syn_isclock = 1 */;
  output CSN;
  output MOSI;
endmodule
