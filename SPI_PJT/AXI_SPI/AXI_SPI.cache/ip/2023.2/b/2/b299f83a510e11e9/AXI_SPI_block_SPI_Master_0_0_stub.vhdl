-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Feb 10 10:58:21 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXI_SPI_block_SPI_Master_0_0_stub.vhdl
-- Design      : AXI_SPI_block_SPI_Master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CMD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WR_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : in STD_LOGIC;
    RD_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MOSI : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RST,CLK,CMD[1:0],ADDR[6:0],WR_Data[7:0],MISO,RD_Data[7:0],SCLK,CSN,MOSI";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPI_Master,Vivado 2023.2";
begin
end;
