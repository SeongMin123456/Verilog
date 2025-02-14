-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Feb 10 15:20:59 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/verilog_lab/SPI_PJT/AXI_SPI/AXI_SPI.gen/sources_1/bd/AXI_SPI_block/ip/AXI_SPI_block_SPI_RAM_0_0/AXI_SPI_block_SPI_RAM_0_0_stub.vhdl
-- Design      : AXI_SPI_block_SPI_RAM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AXI_SPI_block_SPI_RAM_0_0 is
  Port ( 
    SCLK : in STD_LOGIC;
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WEN : in STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end AXI_SPI_block_SPI_RAM_0_0;

architecture stub of AXI_SPI_block_SPI_RAM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SCLK,ADDR[6:0],DIN[7:0],WEN,DOUT[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPI_RAM,Vivado 2023.2";
begin
end;
