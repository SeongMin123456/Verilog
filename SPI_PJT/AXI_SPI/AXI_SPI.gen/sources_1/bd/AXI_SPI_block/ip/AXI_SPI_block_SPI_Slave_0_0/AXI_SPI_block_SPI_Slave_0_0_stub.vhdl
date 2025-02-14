-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Feb 10 10:38:09 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/verilog_lab/SPI_PJT/AXI_SPI/AXI_SPI.gen/sources_1/bd/AXI_SPI_block/ip/AXI_SPI_block_SPI_Slave_0_0/AXI_SPI_block_SPI_Slave_0_0_stub.vhdl
-- Design      : AXI_SPI_block_SPI_Slave_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AXI_SPI_block_SPI_Slave_0_0 is
  Port ( 
    RST : in STD_LOGIC;
    SCLK : in STD_LOGIC;
    CSN : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    RAM_Rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : out STD_LOGIC;
    RAM_WEN : out STD_LOGIC;
    RAM_Addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RAM_Wdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end AXI_SPI_block_SPI_Slave_0_0;

architecture stub of AXI_SPI_block_SPI_Slave_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RST,SCLK,CSN,MOSI,RAM_Rdata[7:0],MISO,RAM_WEN,RAM_Addr[6:0],RAM_Wdata[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPI_Slave,Vivado 2023.2";
begin
end;
