-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 16 12:56:35 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/verilog_lab/zynq_axi_7segment/zynq_axi_7segment.gen/sources_1/bd/zynq_axi_segment/ip/zynq_axi_segment_test_SegDisp_0_0/zynq_axi_segment_test_SegDisp_0_0_stub.vhdl
-- Design      : zynq_axi_segment_test_SegDisp_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_axi_segment_test_SegDisp_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    CA : out STD_LOGIC;
    DIGIT_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DIGIT_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end zynq_axi_segment_test_SegDisp_0_0;

architecture stub of zynq_axi_segment_test_SegDisp_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CA,DIGIT_1[3:0],DIGIT_10[3:0],AN[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "test_SegDisp,Vivado 2023.2";
begin
end;
