-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 16 11:45:26 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_test_SegDisp_0_0_sim_netlist.vhdl
-- Design      : zynq_axi_segment_test_SegDisp_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test_SegDisp is
  port (
    AN : out STD_LOGIC_VECTOR ( 0 to 0 );
    CA : out STD_LOGIC;
    CLK : in STD_LOGIC;
    DIGIT_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIGIT_10 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test_SegDisp;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test_SegDisp is
  signal \^ca\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal enable_i_1_n_0 : STD_LOGIC;
  signal enable_i_2_n_0 : STD_LOGIC;
  signal enable_i_3_n_0 : STD_LOGIC;
  signal enable_i_4_n_0 : STD_LOGIC;
  signal enable_i_5_n_0 : STD_LOGIC;
  signal enable_i_6_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \NLW_cnt0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of enable_i_5 : label is "soft_lutpair0";
begin
  CA <= \^ca\;
\AN__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => DIGIT_1(0),
      I1 => \^ca\,
      I2 => DIGIT_10(0),
      O => AN(0)
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3) => \NLW_cnt0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \cnt0_carry__3_n_1\,
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => cnt(20 downto 17)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => p_1_in(0)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => enable_i_6_n_0,
      I1 => enable_i_5_n_0,
      I2 => enable_i_4_n_0,
      I3 => enable_i_3_n_0,
      I4 => enable_i_2_n_0,
      O => enable
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(0),
      Q => cnt(0),
      R => enable
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(10),
      Q => cnt(10),
      R => enable
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(11),
      Q => cnt(11),
      R => enable
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(12),
      Q => cnt(12),
      R => enable
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(13),
      Q => cnt(13),
      R => enable
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(14),
      Q => cnt(14),
      R => enable
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(15),
      Q => cnt(15),
      R => enable
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(16),
      Q => cnt(16),
      R => enable
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(17),
      Q => cnt(17),
      R => enable
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(18),
      Q => cnt(18),
      R => enable
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(19),
      Q => cnt(19),
      R => enable
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(1),
      Q => cnt(1),
      R => enable
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(20),
      Q => cnt(20),
      R => enable
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(2),
      Q => cnt(2),
      R => enable
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(3),
      Q => cnt(3),
      R => enable
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(4),
      Q => cnt(4),
      R => enable
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(5),
      Q => cnt(5),
      R => enable
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(6),
      Q => cnt(6),
      R => enable
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(7),
      Q => cnt(7),
      R => enable
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(8),
      Q => cnt(8),
      R => enable
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(9),
      Q => cnt(9),
      R => enable
    );
enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00010000"
    )
        port map (
      I0 => enable_i_2_n_0,
      I1 => enable_i_3_n_0,
      I2 => enable_i_4_n_0,
      I3 => enable_i_5_n_0,
      I4 => enable_i_6_n_0,
      I5 => \^ca\,
      O => enable_i_1_n_0
    );
enable_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => cnt(11),
      I1 => cnt(18),
      I2 => cnt(3),
      I3 => cnt(10),
      O => enable_i_2_n_0
    );
enable_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cnt(12),
      I1 => cnt(17),
      I2 => cnt(7),
      I3 => cnt(19),
      O => enable_i_3_n_0
    );
enable_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => cnt(9),
      I1 => cnt(13),
      I2 => cnt(14),
      I3 => cnt(8),
      O => enable_i_4_n_0
    );
enable_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(4),
      I2 => cnt(0),
      O => enable_i_5_n_0
    );
enable_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => cnt(16),
      I1 => cnt(1),
      I2 => cnt(5),
      I3 => cnt(20),
      I4 => cnt(15),
      I5 => cnt(2),
      O => enable_i_6_n_0
    );
enable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => enable_i_1_n_0,
      Q => \^ca\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    CA : out STD_LOGIC;
    DIGIT_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DIGIT_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_axi_segment_test_SegDisp_0_0,test_SegDisp,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "test_SegDisp,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^an\ : STD_LOGIC_VECTOR ( 5 to 5 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  AN(6) <= \<const0>\;
  AN(5) <= \^an\(5);
  AN(4) <= \^an\(5);
  AN(3) <= \^an\(5);
  AN(2) <= \<const1>\;
  AN(1) <= \<const1>\;
  AN(0) <= \^an\(5);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test_SegDisp
     port map (
      AN(0) => \^an\(5),
      CA => CA,
      CLK => CLK,
      DIGIT_1(0) => DIGIT_1(0),
      DIGIT_10(0) => DIGIT_10(0)
    );
end STRUCTURE;
