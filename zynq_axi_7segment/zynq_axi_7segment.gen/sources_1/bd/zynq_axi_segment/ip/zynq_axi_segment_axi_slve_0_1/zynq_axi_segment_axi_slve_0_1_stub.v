// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 16 12:53:49 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top zynq_axi_segment_axi_slve_0_1 -prefix
//               zynq_axi_segment_axi_slve_0_1_ zynq_axi_segment_axi_slve_0_1_stub.v
// Design      : zynq_axi_segment_axi_slve_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_slve,Vivado 2023.2" *)
module zynq_axi_segment_axi_slve_0_1(SW, DIGIT_1, DIGIT_10, S_AXI_ACLK, S_AXI_ARESETN, 
  S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, 
  S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, 
  S_AXI_ARPROT, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, 
  S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="SW[3:0],DIGIT_1[3:0],DIGIT_10[3:0],S_AXI_ARESETN,S_AXI_AWADDR[3:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[3:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY" */
/* synthesis syn_force_seq_prim="S_AXI_ACLK" */;
  input [3:0]SW;
  output [3:0]DIGIT_1;
  output [3:0]DIGIT_10;
  input S_AXI_ACLK /* synthesis syn_isclock = 1 */;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
