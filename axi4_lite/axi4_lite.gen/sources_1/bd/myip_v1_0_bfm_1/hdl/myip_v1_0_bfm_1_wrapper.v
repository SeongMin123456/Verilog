//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Dec 12 20:54:41 2024
//Host        : COMSYS01 running 64-bit major release  (build 9200)
//Command     : generate_target myip_v1_0_bfm_1_wrapper.bd
//Design      : myip_v1_0_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module myip_v1_0_bfm_1_wrapper
   (ACLK,
    ARESETN);
  input ACLK;
  input ARESETN;

  wire ACLK;
  wire ARESETN;

  myip_v1_0_bfm_1 myip_v1_0_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN));
endmodule
