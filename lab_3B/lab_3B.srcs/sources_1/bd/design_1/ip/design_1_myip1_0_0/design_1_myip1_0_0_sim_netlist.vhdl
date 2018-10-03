-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Wed Oct 03 22:40:58 2018
-- Host        : DESKTOP-1MJ901N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/klosey/lab_3B/lab_3B.srcs/sources_1/bd/design_1/ip/design_1_myip1_0_0/design_1_myip1_0_0_sim_netlist.vhdl
-- Design      : design_1_myip1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip1_0_0_myip_v1_0 is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip1_0_0_myip_v1_0 : entity is "myip_v1_0";
end design_1_myip1_0_0_myip_v1_0;

architecture STRUCTURE of design_1_myip1_0_0_myip_v1_0 is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal M_AXIS_TLAST_INST_0_i_1_n_0 : STD_LOGIC;
  signal nr_of_reads : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \nr_of_reads[0]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_reads[1]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_reads[2]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_reads[3]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_reads[3]_i_2_n_0\ : STD_LOGIC;
  signal nr_of_writes : STD_LOGIC;
  signal \nr_of_writes[0]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_writes[1]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_writes[2]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_writes[3]_i_1_n_0\ : STD_LOGIC;
  signal \nr_of_writes[3]_i_2_n_0\ : STD_LOGIC;
  signal \nr_of_writes_reg_n_0_[0]\ : STD_LOGIC;
  signal \nr_of_writes_reg_n_0_[1]\ : STD_LOGIC;
  signal \nr_of_writes_reg_n_0_[2]\ : STD_LOGIC;
  signal \nr_of_writes_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal sum0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_n_1\ : STD_LOGIC;
  signal \sum0_carry__0_n_2\ : STD_LOGIC;
  signal \sum0_carry__0_n_3\ : STD_LOGIC;
  signal \sum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_n_1\ : STD_LOGIC;
  signal \sum0_carry__1_n_2\ : STD_LOGIC;
  signal \sum0_carry__1_n_3\ : STD_LOGIC;
  signal \sum0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_n_1\ : STD_LOGIC;
  signal \sum0_carry__2_n_2\ : STD_LOGIC;
  signal \sum0_carry__2_n_3\ : STD_LOGIC;
  signal \sum0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_n_1\ : STD_LOGIC;
  signal \sum0_carry__3_n_2\ : STD_LOGIC;
  signal \sum0_carry__3_n_3\ : STD_LOGIC;
  signal \sum0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_n_1\ : STD_LOGIC;
  signal \sum0_carry__4_n_2\ : STD_LOGIC;
  signal \sum0_carry__4_n_3\ : STD_LOGIC;
  signal \sum0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_n_1\ : STD_LOGIC;
  signal \sum0_carry__5_n_2\ : STD_LOGIC;
  signal \sum0_carry__5_n_3\ : STD_LOGIC;
  signal \sum0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__6_n_1\ : STD_LOGIC;
  signal \sum0_carry__6_n_2\ : STD_LOGIC;
  signal \sum0_carry__6_n_3\ : STD_LOGIC;
  signal sum0_carry_i_1_n_0 : STD_LOGIC;
  signal sum0_carry_i_2_n_0 : STD_LOGIC;
  signal sum0_carry_i_3_n_0 : STD_LOGIC;
  signal sum0_carry_i_4_n_0 : STD_LOGIC;
  signal sum0_carry_n_0 : STD_LOGIC;
  signal sum0_carry_n_1 : STD_LOGIC;
  signal sum0_carry_n_2 : STD_LOGIC;
  signal sum0_carry_n_3 : STD_LOGIC;
  signal \sum[31]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_sum0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of M_AXIS_TLAST_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of M_AXIS_TLAST_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of M_AXIS_TVALID_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of S_AXIS_TREADY_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \nr_of_reads[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \nr_of_reads[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \nr_of_reads[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \nr_of_reads[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \nr_of_reads[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \nr_of_writes[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \nr_of_writes[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \nr_of_writes[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \nr_of_writes[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \nr_of_writes[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sum[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sum[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sum[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sum[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sum[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sum[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sum[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sum[18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sum[19]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sum[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sum[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sum[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sum[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sum[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sum[25]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sum[26]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sum[27]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sum[28]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sum[29]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sum[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sum[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sum[31]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sum[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sum[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sum[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sum[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sum[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sum[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sum[9]_i_1\ : label is "soft_lutpair13";
begin
  M_AXIS_TDATA(31 downto 0) <= \^m_axis_tdata\(31 downto 0);
M_AXIS_TLAST_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => M_AXIS_TLAST_INST_0_i_1_n_0,
      O => M_AXIS_TLAST
    );
M_AXIS_TLAST_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \nr_of_writes_reg_n_0_[3]\,
      I1 => \nr_of_writes_reg_n_0_[2]\,
      I2 => \nr_of_writes_reg_n_0_[0]\,
      I3 => \nr_of_writes_reg_n_0_[1]\,
      O => M_AXIS_TLAST_INST_0_i_1_n_0
    );
M_AXIS_TVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => M_AXIS_TVALID
    );
S_AXIS_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      O => S_AXIS_TREADY
    );
\nr_of_reads[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => nr_of_reads(0),
      O => \nr_of_reads[0]_i_1_n_0\
    );
\nr_of_reads[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => nr_of_reads(1),
      I2 => nr_of_reads(0),
      O => \nr_of_reads[1]_i_1_n_0\
    );
\nr_of_reads[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4441"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => nr_of_reads(2),
      I2 => nr_of_reads(0),
      I3 => nr_of_reads(1),
      O => \nr_of_reads[2]_i_1_n_0\
    );
\nr_of_reads[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400440"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => S_AXIS_TVALID,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => nr_of_writes,
      O => \nr_of_reads[3]_i_1_n_0\
    );
\nr_of_reads[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444441"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => nr_of_reads(3),
      I2 => nr_of_reads(1),
      I3 => nr_of_reads(0),
      I4 => nr_of_reads(2),
      O => \nr_of_reads[3]_i_2_n_0\
    );
\nr_of_reads[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nr_of_reads(3),
      I1 => nr_of_reads(2),
      I2 => nr_of_reads(0),
      I3 => nr_of_reads(1),
      O => nr_of_writes
    );
\nr_of_reads_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_reads[3]_i_1_n_0\,
      D => \nr_of_reads[0]_i_1_n_0\,
      Q => nr_of_reads(0),
      R => p_0_in
    );
\nr_of_reads_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_reads[3]_i_1_n_0\,
      D => \nr_of_reads[1]_i_1_n_0\,
      Q => nr_of_reads(1),
      R => p_0_in
    );
\nr_of_reads_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_reads[3]_i_1_n_0\,
      D => \nr_of_reads[2]_i_1_n_0\,
      Q => nr_of_reads(2),
      R => p_0_in
    );
\nr_of_reads_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_reads[3]_i_1_n_0\,
      D => \nr_of_reads[3]_i_2_n_0\,
      Q => nr_of_reads(3),
      R => p_0_in
    );
\nr_of_writes[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \nr_of_writes_reg_n_0_[0]\,
      O => \nr_of_writes[0]_i_1_n_0\
    );
\nr_of_writes[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \nr_of_writes_reg_n_0_[1]\,
      I2 => \nr_of_writes_reg_n_0_[0]\,
      O => \nr_of_writes[1]_i_1_n_0\
    );
\nr_of_writes[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4441"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \nr_of_writes_reg_n_0_[2]\,
      I2 => \nr_of_writes_reg_n_0_[0]\,
      I3 => \nr_of_writes_reg_n_0_[1]\,
      O => \nr_of_writes[2]_i_1_n_0\
    );
\nr_of_writes[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F004000000040"
    )
        port map (
      I0 => M_AXIS_TLAST_INST_0_i_1_n_0,
      I1 => M_AXIS_TREADY,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => state,
      O => \nr_of_writes[3]_i_1_n_0\
    );
\nr_of_writes[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444441"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \nr_of_writes_reg_n_0_[3]\,
      I2 => \nr_of_writes_reg_n_0_[1]\,
      I3 => \nr_of_writes_reg_n_0_[0]\,
      I4 => \nr_of_writes_reg_n_0_[2]\,
      O => \nr_of_writes[3]_i_2_n_0\
    );
\nr_of_writes[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => nr_of_reads(1),
      I2 => nr_of_reads(0),
      I3 => nr_of_reads(2),
      I4 => nr_of_reads(3),
      O => state
    );
\nr_of_writes_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_writes[3]_i_1_n_0\,
      D => \nr_of_writes[0]_i_1_n_0\,
      Q => \nr_of_writes_reg_n_0_[0]\,
      R => p_0_in
    );
\nr_of_writes_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_writes[3]_i_1_n_0\,
      D => \nr_of_writes[1]_i_1_n_0\,
      Q => \nr_of_writes_reg_n_0_[1]\,
      R => p_0_in
    );
\nr_of_writes_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_writes[3]_i_1_n_0\,
      D => \nr_of_writes[2]_i_1_n_0\,
      Q => \nr_of_writes_reg_n_0_[2]\,
      R => p_0_in
    );
\nr_of_writes_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \nr_of_writes[3]_i_1_n_0\,
      D => \nr_of_writes[3]_i_2_n_0\,
      Q => \nr_of_writes_reg_n_0_[3]\,
      R => p_0_in
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state[2]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => ARESETN,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state[2]_i_2_n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => ARESETN,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"26FF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state[2]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => ARESETN,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => \state[2]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => state,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => S_AXIS_TVALID,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => \nr_of_writes_reg_n_0_[1]\,
      I2 => \nr_of_writes_reg_n_0_[0]\,
      I3 => \nr_of_writes_reg_n_0_[2]\,
      I4 => \nr_of_writes_reg_n_0_[3]\,
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum0_carry_n_0,
      CO(2) => sum0_carry_n_1,
      CO(1) => sum0_carry_n_2,
      CO(0) => sum0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(3 downto 0),
      O(3 downto 0) => sum0(3 downto 0),
      S(3) => sum0_carry_i_1_n_0,
      S(2) => sum0_carry_i_2_n_0,
      S(1) => sum0_carry_i_3_n_0,
      S(0) => sum0_carry_i_4_n_0
    );
\sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum0_carry_n_0,
      CO(3) => \sum0_carry__0_n_0\,
      CO(2) => \sum0_carry__0_n_1\,
      CO(1) => \sum0_carry__0_n_2\,
      CO(0) => \sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(7 downto 4),
      O(3 downto 0) => sum0(7 downto 4),
      S(3) => \sum0_carry__0_i_1_n_0\,
      S(2) => \sum0_carry__0_i_2_n_0\,
      S(1) => \sum0_carry__0_i_3_n_0\,
      S(0) => \sum0_carry__0_i_4_n_0\
    );
\sum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(7),
      I1 => S_AXIS_TDATA(7),
      O => \sum0_carry__0_i_1_n_0\
    );
\sum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(6),
      I1 => S_AXIS_TDATA(6),
      O => \sum0_carry__0_i_2_n_0\
    );
\sum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(5),
      I1 => S_AXIS_TDATA(5),
      O => \sum0_carry__0_i_3_n_0\
    );
\sum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(4),
      I1 => S_AXIS_TDATA(4),
      O => \sum0_carry__0_i_4_n_0\
    );
\sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__0_n_0\,
      CO(3) => \sum0_carry__1_n_0\,
      CO(2) => \sum0_carry__1_n_1\,
      CO(1) => \sum0_carry__1_n_2\,
      CO(0) => \sum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(11 downto 8),
      O(3 downto 0) => sum0(11 downto 8),
      S(3) => \sum0_carry__1_i_1_n_0\,
      S(2) => \sum0_carry__1_i_2_n_0\,
      S(1) => \sum0_carry__1_i_3_n_0\,
      S(0) => \sum0_carry__1_i_4_n_0\
    );
\sum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(11),
      I1 => S_AXIS_TDATA(11),
      O => \sum0_carry__1_i_1_n_0\
    );
\sum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(10),
      I1 => S_AXIS_TDATA(10),
      O => \sum0_carry__1_i_2_n_0\
    );
\sum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(9),
      I1 => S_AXIS_TDATA(9),
      O => \sum0_carry__1_i_3_n_0\
    );
\sum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(8),
      I1 => S_AXIS_TDATA(8),
      O => \sum0_carry__1_i_4_n_0\
    );
\sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__1_n_0\,
      CO(3) => \sum0_carry__2_n_0\,
      CO(2) => \sum0_carry__2_n_1\,
      CO(1) => \sum0_carry__2_n_2\,
      CO(0) => \sum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(15 downto 12),
      O(3 downto 0) => sum0(15 downto 12),
      S(3) => \sum0_carry__2_i_1_n_0\,
      S(2) => \sum0_carry__2_i_2_n_0\,
      S(1) => \sum0_carry__2_i_3_n_0\,
      S(0) => \sum0_carry__2_i_4_n_0\
    );
\sum0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(15),
      I1 => S_AXIS_TDATA(15),
      O => \sum0_carry__2_i_1_n_0\
    );
\sum0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(14),
      I1 => S_AXIS_TDATA(14),
      O => \sum0_carry__2_i_2_n_0\
    );
\sum0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(13),
      I1 => S_AXIS_TDATA(13),
      O => \sum0_carry__2_i_3_n_0\
    );
\sum0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(12),
      I1 => S_AXIS_TDATA(12),
      O => \sum0_carry__2_i_4_n_0\
    );
\sum0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__2_n_0\,
      CO(3) => \sum0_carry__3_n_0\,
      CO(2) => \sum0_carry__3_n_1\,
      CO(1) => \sum0_carry__3_n_2\,
      CO(0) => \sum0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(19 downto 16),
      O(3 downto 0) => sum0(19 downto 16),
      S(3) => \sum0_carry__3_i_1_n_0\,
      S(2) => \sum0_carry__3_i_2_n_0\,
      S(1) => \sum0_carry__3_i_3_n_0\,
      S(0) => \sum0_carry__3_i_4_n_0\
    );
\sum0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(19),
      I1 => S_AXIS_TDATA(19),
      O => \sum0_carry__3_i_1_n_0\
    );
\sum0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(18),
      I1 => S_AXIS_TDATA(18),
      O => \sum0_carry__3_i_2_n_0\
    );
\sum0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(17),
      I1 => S_AXIS_TDATA(17),
      O => \sum0_carry__3_i_3_n_0\
    );
\sum0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(16),
      I1 => S_AXIS_TDATA(16),
      O => \sum0_carry__3_i_4_n_0\
    );
\sum0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__3_n_0\,
      CO(3) => \sum0_carry__4_n_0\,
      CO(2) => \sum0_carry__4_n_1\,
      CO(1) => \sum0_carry__4_n_2\,
      CO(0) => \sum0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(23 downto 20),
      O(3 downto 0) => sum0(23 downto 20),
      S(3) => \sum0_carry__4_i_1_n_0\,
      S(2) => \sum0_carry__4_i_2_n_0\,
      S(1) => \sum0_carry__4_i_3_n_0\,
      S(0) => \sum0_carry__4_i_4_n_0\
    );
\sum0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(23),
      I1 => S_AXIS_TDATA(23),
      O => \sum0_carry__4_i_1_n_0\
    );
\sum0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(22),
      I1 => S_AXIS_TDATA(22),
      O => \sum0_carry__4_i_2_n_0\
    );
\sum0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(21),
      I1 => S_AXIS_TDATA(21),
      O => \sum0_carry__4_i_3_n_0\
    );
\sum0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(20),
      I1 => S_AXIS_TDATA(20),
      O => \sum0_carry__4_i_4_n_0\
    );
\sum0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__4_n_0\,
      CO(3) => \sum0_carry__5_n_0\,
      CO(2) => \sum0_carry__5_n_1\,
      CO(1) => \sum0_carry__5_n_2\,
      CO(0) => \sum0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axis_tdata\(27 downto 24),
      O(3 downto 0) => sum0(27 downto 24),
      S(3) => \sum0_carry__5_i_1_n_0\,
      S(2) => \sum0_carry__5_i_2_n_0\,
      S(1) => \sum0_carry__5_i_3_n_0\,
      S(0) => \sum0_carry__5_i_4_n_0\
    );
\sum0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(27),
      I1 => S_AXIS_TDATA(27),
      O => \sum0_carry__5_i_1_n_0\
    );
\sum0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(26),
      I1 => S_AXIS_TDATA(26),
      O => \sum0_carry__5_i_2_n_0\
    );
\sum0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(25),
      I1 => S_AXIS_TDATA(25),
      O => \sum0_carry__5_i_3_n_0\
    );
\sum0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(24),
      I1 => S_AXIS_TDATA(24),
      O => \sum0_carry__5_i_4_n_0\
    );
\sum0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__5_n_0\,
      CO(3) => \NLW_sum0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum0_carry__6_n_1\,
      CO(1) => \sum0_carry__6_n_2\,
      CO(0) => \sum0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^m_axis_tdata\(30 downto 28),
      O(3 downto 0) => sum0(31 downto 28),
      S(3) => \sum0_carry__6_i_1_n_0\,
      S(2) => \sum0_carry__6_i_2_n_0\,
      S(1) => \sum0_carry__6_i_3_n_0\,
      S(0) => \sum0_carry__6_i_4_n_0\
    );
\sum0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(31),
      I1 => S_AXIS_TDATA(31),
      O => \sum0_carry__6_i_1_n_0\
    );
\sum0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(30),
      I1 => S_AXIS_TDATA(30),
      O => \sum0_carry__6_i_2_n_0\
    );
\sum0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(29),
      I1 => S_AXIS_TDATA(29),
      O => \sum0_carry__6_i_3_n_0\
    );
\sum0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(28),
      I1 => S_AXIS_TDATA(28),
      O => \sum0_carry__6_i_4_n_0\
    );
sum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(3),
      I1 => S_AXIS_TDATA(3),
      O => sum0_carry_i_1_n_0
    );
sum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(2),
      I1 => S_AXIS_TDATA(2),
      O => sum0_carry_i_2_n_0
    );
sum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(1),
      I1 => S_AXIS_TDATA(1),
      O => sum0_carry_i_3_n_0
    );
sum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_tdata\(0),
      I1 => S_AXIS_TDATA(0),
      O => sum0_carry_i_4_n_0
    );
\sum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(0),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(0)
    );
\sum[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(10),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(10)
    );
\sum[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(11),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(11)
    );
\sum[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(12),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(12)
    );
\sum[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(13),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(13)
    );
\sum[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(14),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(14)
    );
\sum[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(15),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(15)
    );
\sum[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(16),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(16)
    );
\sum[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(17),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(17)
    );
\sum[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(18),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(18)
    );
\sum[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(19),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(19)
    );
\sum[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(1),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(1)
    );
\sum[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(20),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(20)
    );
\sum[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(21),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(21)
    );
\sum[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(22),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(22)
    );
\sum[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(23),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(23)
    );
\sum[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(24),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(24)
    );
\sum[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(25),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(25)
    );
\sum[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(26),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(26)
    );
\sum[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(27),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(27)
    );
\sum[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(28),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(28)
    );
\sum[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(29),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(29)
    );
\sum[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(2),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\sum[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(30),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(30)
    );
\sum[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => p_0_in
    );
\sum[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => S_AXIS_TVALID,
      O => \sum[31]_i_2_n_0\
    );
\sum[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(31),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(31)
    );
\sum[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(3),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(3)
    );
\sum[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(4),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(4)
    );
\sum[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(5),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(5)
    );
\sum[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(6),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(6)
    );
\sum[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(7),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(7)
    );
\sum[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(8),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(8)
    );
\sum[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0(9),
      I1 => \state_reg_n_0_[2]\,
      O => p_2_in(9)
    );
\sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(0),
      Q => \^m_axis_tdata\(0),
      R => p_0_in
    );
\sum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(10),
      Q => \^m_axis_tdata\(10),
      R => p_0_in
    );
\sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(11),
      Q => \^m_axis_tdata\(11),
      R => p_0_in
    );
\sum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(12),
      Q => \^m_axis_tdata\(12),
      R => p_0_in
    );
\sum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(13),
      Q => \^m_axis_tdata\(13),
      R => p_0_in
    );
\sum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(14),
      Q => \^m_axis_tdata\(14),
      R => p_0_in
    );
\sum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(15),
      Q => \^m_axis_tdata\(15),
      R => p_0_in
    );
\sum_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(16),
      Q => \^m_axis_tdata\(16),
      R => p_0_in
    );
\sum_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(17),
      Q => \^m_axis_tdata\(17),
      R => p_0_in
    );
\sum_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(18),
      Q => \^m_axis_tdata\(18),
      R => p_0_in
    );
\sum_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(19),
      Q => \^m_axis_tdata\(19),
      R => p_0_in
    );
\sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^m_axis_tdata\(1),
      R => p_0_in
    );
\sum_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(20),
      Q => \^m_axis_tdata\(20),
      R => p_0_in
    );
\sum_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(21),
      Q => \^m_axis_tdata\(21),
      R => p_0_in
    );
\sum_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(22),
      Q => \^m_axis_tdata\(22),
      R => p_0_in
    );
\sum_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(23),
      Q => \^m_axis_tdata\(23),
      R => p_0_in
    );
\sum_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(24),
      Q => \^m_axis_tdata\(24),
      R => p_0_in
    );
\sum_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(25),
      Q => \^m_axis_tdata\(25),
      R => p_0_in
    );
\sum_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(26),
      Q => \^m_axis_tdata\(26),
      R => p_0_in
    );
\sum_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(27),
      Q => \^m_axis_tdata\(27),
      R => p_0_in
    );
\sum_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(28),
      Q => \^m_axis_tdata\(28),
      R => p_0_in
    );
\sum_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(29),
      Q => \^m_axis_tdata\(29),
      R => p_0_in
    );
\sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^m_axis_tdata\(2),
      R => p_0_in
    );
\sum_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(30),
      Q => \^m_axis_tdata\(30),
      R => p_0_in
    );
\sum_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(31),
      Q => \^m_axis_tdata\(31),
      R => p_0_in
    );
\sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^m_axis_tdata\(3),
      R => p_0_in
    );
\sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(4),
      Q => \^m_axis_tdata\(4),
      R => p_0_in
    );
\sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(5),
      Q => \^m_axis_tdata\(5),
      R => p_0_in
    );
\sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(6),
      Q => \^m_axis_tdata\(6),
      R => p_0_in
    );
\sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(7),
      Q => \^m_axis_tdata\(7),
      R => p_0_in
    );
\sum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(8),
      Q => \^m_axis_tdata\(8),
      R => p_0_in
    );
\sum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \sum[31]_i_2_n_0\,
      D => p_2_in(9),
      Q => \^m_axis_tdata\(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip1_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_myip1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_myip1_0_0 : entity is "design_1_myip1_0_0,myip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_myip1_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_myip1_0_0 : entity is "myip_v1_0,Vivado 2016.3";
end design_1_myip1_0_0;

architecture STRUCTURE of design_1_myip1_0_0 is
begin
inst: entity work.design_1_myip1_0_0_myip_v1_0
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_AXIS_TDATA(31 downto 0) => M_AXIS_TDATA(31 downto 0),
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(31 downto 0) => S_AXIS_TDATA(31 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID
    );
end STRUCTURE;
