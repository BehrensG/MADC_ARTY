-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Wed Oct 14 20:06:57 2026
-- Host        : archlinux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MADC_ARTY_Z7_MADC_0_0_sim_netlist.vhdl
-- Design      : MADC_ARTY_Z7_MADC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC_slave_lite_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC_slave_lite_v1_0_S00_AXI is
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => AR(0)
    );
axi_awready0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      O => \axi_awready0__0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s00_axi_awready\,
      R => AR(0)
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => AR(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_clk_gen is
  port (
    pll_inst_0 : out STD_LOGIC;
    rst : out STD_LOGIC;
    clk_out : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_3\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_clk_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_clk_gen is
  signal clk_10mhz_raw : STD_LOGIC;
  signal clk_fb : STD_LOGIC;
  signal pll_locked : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal NLW_pll_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_pll_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_pll_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_pll_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_pll_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_pll_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_pll_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of bufg_10mhz : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of pll_inst : label is "PLLE2_BASE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of pll_inst : label is "GND:DWE,DEN,DCLK,DI[15],DI[14],DI[13],DI[12],DI[11],DI[10],DI[9],DI[8],DI[7],DI[6],DI[5],DI[4],DI[3],DI[2],DI[1],DI[0],DADDR[6],DADDR[5],DADDR[4],DADDR[3],DADDR[2],DADDR[1],DADDR[0],CLKIN2 VCC:CLKINSEL";
  attribute box_type of pll_inst : label is "PRIMITIVE";
begin
  rst <= \^rst\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAE0000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\,
      I1 => pll_locked,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \FSM_sequential_state_reg[0]_2\,
      I5 => \FSM_sequential_state_reg[0]_3\,
      O => pll_inst_0
    );
ad_iin_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^rst\
    );
bufg_10mhz: unisim.vcomponents.BUFG
     port map (
      I => clk_10mhz_raw,
      O => clk_out
    );
pll_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 8,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE => 80,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clk_fb,
      CLKFBOUT => clk_fb,
      CLKIN1 => s00_axi_aclk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_10mhz_raw,
      CLKOUT1 => NLW_pll_inst_CLKOUT1_UNCONNECTED,
      CLKOUT2 => NLW_pll_inst_CLKOUT2_UNCONNECTED,
      CLKOUT3 => NLW_pll_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_pll_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_pll_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_pll_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_pll_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => pll_locked,
      PWRDWN => '0',
      RST => \^rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_madc_ctr is
  port (
    \??6_out\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    madc_busy : out STD_LOGIC;
    ad_iin : out STD_LOGIC;
    ad_irn : out STD_LOGIC;
    ad_irp : out STD_LOGIC;
    sw_vrh : out STD_LOGIC;
    madc_busy_reg_0 : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    madc_busy_reg_1 : in STD_LOGIC;
    ad_iin_reg_0 : in STD_LOGIC;
    ad_irn_reg_0 : in STD_LOGIC;
    ad_irp_reg_0 : in STD_LOGIC;
    sw_vrh_reg_0 : in STD_LOGIC;
    s00_axi_bvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ad_cmp : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_madc_ctr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_madc_ctr is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__0_n_1\ : STD_LOGIC;
  signal \ad_irn2_carry__0_n_2\ : STD_LOGIC;
  signal \ad_irn2_carry__0_n_3\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__1_n_1\ : STD_LOGIC;
  signal \ad_irn2_carry__1_n_2\ : STD_LOGIC;
  signal \ad_irn2_carry__1_n_3\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ad_irn2_carry__2_n_1\ : STD_LOGIC;
  signal \ad_irn2_carry__2_n_2\ : STD_LOGIC;
  signal \ad_irn2_carry__2_n_3\ : STD_LOGIC;
  signal ad_irn2_carry_i_1_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_2_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_3_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_4_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_5_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_6_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_7_n_0 : STD_LOGIC;
  signal ad_irn2_carry_i_8_n_0 : STD_LOGIC;
  signal ad_irn2_carry_n_0 : STD_LOGIC;
  signal ad_irn2_carry_n_1 : STD_LOGIC;
  signal ad_irn2_carry_n_2 : STD_LOGIC;
  signal ad_irn2_carry_n_3 : STD_LOGIC;
  signal \axi4l_reg_calib[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_calib[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_calib[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_calib[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[24]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[25]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[26]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[27]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[28]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[29]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[30]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[31]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi4l_reg_calib_reg_n_0_[9]\ : STD_LOGIC;
  signal axi4l_reg_n_cnt : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi4l_reg_n_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal axi4l_reg_nplc : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi4l_reg_nplc[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_nplc[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_nplc[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_nplc[7]_i_1_n_0\ : STD_LOGIC;
  signal axi4l_reg_p_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi4l_reg_status[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_status[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_status_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi4l_reg_status_reg_n_0_[1]\ : STD_LOGIC;
  signal axi4l_reg_totl_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi4l_reg_vref : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi4l_reg_vref[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_vref[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_vref[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi4l_reg_vref[7]_i_1_n_0\ : STD_LOGIC;
  signal calib_i_1_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \cnt_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \cnt_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \cnt_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \cnt_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \generate_madc_clock.hardware_clk_gen_inst_n_0\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in16 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in20 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^madc_busy\ : STD_LOGIC;
  signal madc_clk : STD_LOGIC;
  signal madc_n_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \madc_n_cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \madc_n_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal madc_n_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_i_5_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_i_6_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_i_7_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_n_0 : STD_LOGIC;
  signal madc_n_cnt0_carry_n_1 : STD_LOGIC;
  signal madc_n_cnt0_carry_n_2 : STD_LOGIC;
  signal madc_n_cnt0_carry_n_3 : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \madc_n_cnt1_carry__2_n_3\ : STD_LOGIC;
  signal madc_n_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_i_5_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_i_6_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_i_7_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_n_0 : STD_LOGIC;
  signal madc_n_cnt1_carry_n_1 : STD_LOGIC;
  signal madc_n_cnt1_carry_n_2 : STD_LOGIC;
  signal madc_n_cnt1_carry_n_3 : STD_LOGIC;
  signal \madc_n_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \madc_n_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal madc_p_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \madc_p_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \madc_p_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \madc_proc.T2_reg_n_0_[8]\ : STD_LOGIC;
  signal max_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \state0_carry__0_n_0\ : STD_LOGIC;
  signal \state0_carry__0_n_1\ : STD_LOGIC;
  signal \state0_carry__0_n_2\ : STD_LOGIC;
  signal \state0_carry__0_n_3\ : STD_LOGIC;
  signal \state0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state0_carry__1_n_0\ : STD_LOGIC;
  signal \state0_carry__1_n_1\ : STD_LOGIC;
  signal \state0_carry__1_n_2\ : STD_LOGIC;
  signal \state0_carry__1_n_3\ : STD_LOGIC;
  signal \state0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \state0_carry__2_n_1\ : STD_LOGIC;
  signal \state0_carry__2_n_2\ : STD_LOGIC;
  signal \state0_carry__2_n_3\ : STD_LOGIC;
  signal state0_carry_i_1_n_0 : STD_LOGIC;
  signal state0_carry_i_2_n_0 : STD_LOGIC;
  signal state0_carry_i_3_n_0 : STD_LOGIC;
  signal state0_carry_i_4_n_0 : STD_LOGIC;
  signal state0_carry_i_5_n_0 : STD_LOGIC;
  signal state0_carry_i_6_n_0 : STD_LOGIC;
  signal state0_carry_i_7_n_0 : STD_LOGIC;
  signal state0_carry_i_8_n_0 : STD_LOGIC;
  signal state0_carry_n_0 : STD_LOGIC;
  signal state0_carry_n_1 : STD_LOGIC;
  signal state0_carry_n_2 : STD_LOGIC;
  signal state0_carry_n_3 : STD_LOGIC;
  signal totl_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \totl_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \totl_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \totl_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \totl_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \totl_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_ad_irn2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_irn2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_irn2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_irn2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_madc_n_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_madc_n_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_madc_n_cnt0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_madc_n_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_madc_n_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_madc_n_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_madc_n_cnt1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_madc_n_cnt1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_inferred__2/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__2/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_totl_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_totl_cnt_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "p_vref_start:010,select_vref:010,pre_charge:001,n_vref:011,p_vref:100,discharge:101,init:000,update_regs:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "p_vref_start:010,select_vref:010,pre_charge:001,n_vref:011,p_vref:100,discharge:101,init:000,update_regs:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "p_vref_start:010,select_vref:010,pre_charge:001,n_vref:011,p_vref:100,discharge:101,init:000,update_regs:110";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ad_irn2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ad_irn2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ad_irn2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ad_irn2_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi4l_reg_status[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi4l_reg_status[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt[20]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cnt[21]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cnt[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cnt[23]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cnt[24]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \cnt[25]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \cnt[26]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \cnt[27]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \cnt[28]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cnt[29]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cnt[30]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cnt[31]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair54";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_2\ : label is 35;
  attribute COMPARATOR_THRESHOLD of madc_n_cnt0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \madc_n_cnt0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \madc_n_cnt0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \madc_n_cnt0_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of madc_n_cnt1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \madc_n_cnt1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \madc_n_cnt1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \madc_n_cnt1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \madc_n_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \madc_n_cnt[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \madc_n_cnt[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \madc_n_cnt[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \madc_n_cnt[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \madc_n_cnt[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \madc_n_cnt[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \madc_n_cnt[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \madc_n_cnt[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \madc_n_cnt[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \madc_n_cnt[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \madc_n_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \madc_n_cnt[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \madc_n_cnt[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \madc_n_cnt[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \madc_n_cnt[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \madc_n_cnt[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \madc_n_cnt[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \madc_n_cnt[26]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \madc_n_cnt[27]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \madc_n_cnt[28]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \madc_n_cnt[29]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \madc_n_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \madc_n_cnt[30]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \madc_n_cnt[31]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \madc_n_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \madc_n_cnt[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \madc_n_cnt[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \madc_n_cnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \madc_n_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \madc_n_cnt[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \madc_n_cnt[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \madc_p_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \madc_p_cnt[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \madc_p_cnt[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \madc_p_cnt[12]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \madc_p_cnt[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \madc_p_cnt[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \madc_p_cnt[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \madc_p_cnt[16]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \madc_p_cnt[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \madc_p_cnt[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \madc_p_cnt[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \madc_p_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \madc_p_cnt[20]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \madc_p_cnt[21]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \madc_p_cnt[22]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \madc_p_cnt[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \madc_p_cnt[24]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \madc_p_cnt[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \madc_p_cnt[26]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \madc_p_cnt[27]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \madc_p_cnt[28]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \madc_p_cnt[29]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \madc_p_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \madc_p_cnt[30]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \madc_p_cnt[31]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \madc_p_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \madc_p_cnt[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \madc_p_cnt[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \madc_p_cnt[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \madc_p_cnt[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \madc_p_cnt[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \madc_p_cnt[9]_i_1\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD of state0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \totl_cnt[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \totl_cnt[10]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \totl_cnt[11]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \totl_cnt[12]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \totl_cnt[13]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \totl_cnt[14]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \totl_cnt[15]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \totl_cnt[16]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \totl_cnt[17]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \totl_cnt[18]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \totl_cnt[19]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \totl_cnt[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \totl_cnt[20]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \totl_cnt[21]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \totl_cnt[22]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \totl_cnt[23]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \totl_cnt[24]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \totl_cnt[25]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \totl_cnt[26]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \totl_cnt[27]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \totl_cnt[28]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \totl_cnt[29]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \totl_cnt[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \totl_cnt[30]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \totl_cnt[31]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \totl_cnt[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \totl_cnt[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \totl_cnt[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \totl_cnt[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \totl_cnt[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \totl_cnt[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \totl_cnt[9]_i_1\ : label is "soft_lutpair38";
  attribute ADDER_THRESHOLD of \totl_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \totl_cnt_reg[8]_i_2\ : label is 35;
begin
  AR(0) <= \^ar\(0);
  CO(0) <= \^co\(0);
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  madc_busy <= \^madc_busy\;
  state(2 downto 0) <= \^state\(2 downto 0);
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000003F00"
    )
        port map (
      I0 => \madc_n_cnt1_carry__2_n_0\,
      I1 => \^co\(0),
      I2 => ad_cmp,
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^state\(2),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAAA0F33AA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \madc_n_cnt1_carry__2_n_0\,
      I2 => \madc_n_cnt0_carry__2_n_0\,
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \^state\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0222200FF0000"
    )
        port map (
      I0 => \^co\(0),
      I1 => ad_cmp,
      I2 => p_0_in,
      I3 => \madc_n_cnt1_carry__2_n_0\,
      I4 => \^state\(2),
      I5 => \^state\(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88FFFF000F0000"
    )
        port map (
      I0 => \^state\(1),
      I1 => p_0_in,
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => \^state\(0),
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \^state\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^co\(0),
      I1 => ad_cmp,
      I2 => \^state\(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F3FF35F"
    )
        port map (
      I0 => \madc_n_cnt1_carry__2_n_0\,
      I1 => \madc_n_cnt0_carry__2_n_0\,
      I2 => \^state\(0),
      I3 => \^state\(2),
      I4 => \^state\(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => madc_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \generate_madc_clock.hardware_clk_gen_inst_n_0\,
      Q => \^state\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => madc_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^state\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => madc_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \^state\(2)
    );
ad_iin_reg: unisim.vcomponents.FDPE
     port map (
      C => madc_clk,
      CE => '1',
      D => ad_iin_reg_0,
      PRE => \^ar\(0),
      Q => ad_iin
    );
ad_irn2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_irn2_carry_n_0,
      CO(2) => ad_irn2_carry_n_1,
      CO(1) => ad_irn2_carry_n_2,
      CO(0) => ad_irn2_carry_n_3,
      CYINIT => '0',
      DI(3) => ad_irn2_carry_i_1_n_0,
      DI(2) => ad_irn2_carry_i_2_n_0,
      DI(1) => ad_irn2_carry_i_3_n_0,
      DI(0) => ad_irn2_carry_i_4_n_0,
      O(3 downto 0) => NLW_ad_irn2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ad_irn2_carry_i_5_n_0,
      S(2) => ad_irn2_carry_i_6_n_0,
      S(1) => ad_irn2_carry_i_7_n_0,
      S(0) => ad_irn2_carry_i_8_n_0
    );
\ad_irn2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_irn2_carry_n_0,
      CO(3) => \ad_irn2_carry__0_n_0\,
      CO(2) => \ad_irn2_carry__0_n_1\,
      CO(1) => \ad_irn2_carry__0_n_2\,
      CO(0) => \ad_irn2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ad_irn2_carry__0_i_1_n_0\,
      DI(2) => \ad_irn2_carry__0_i_2_n_0\,
      DI(1) => \ad_irn2_carry__0_i_3_n_0\,
      DI(0) => \ad_irn2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_irn2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ad_irn2_carry__0_i_5_n_0\,
      S(2) => \ad_irn2_carry__0_i_6_n_0\,
      S(1) => \ad_irn2_carry__0_i_7_n_0\,
      S(0) => \ad_irn2_carry__0_i_8_n_0\
    );
\ad_irn2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(15),
      I1 => \totl_cnt_reg_n_0_[15]\,
      I2 => max_cnt(14),
      I3 => \totl_cnt_reg_n_0_[14]\,
      O => \ad_irn2_carry__0_i_1_n_0\
    );
\ad_irn2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(13),
      I1 => \totl_cnt_reg_n_0_[13]\,
      I2 => max_cnt(12),
      I3 => \totl_cnt_reg_n_0_[12]\,
      O => \ad_irn2_carry__0_i_2_n_0\
    );
\ad_irn2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(11),
      I1 => \totl_cnt_reg_n_0_[11]\,
      I2 => max_cnt(10),
      I3 => \totl_cnt_reg_n_0_[10]\,
      O => \ad_irn2_carry__0_i_3_n_0\
    );
\ad_irn2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(9),
      I1 => \totl_cnt_reg_n_0_[9]\,
      I2 => max_cnt(8),
      I3 => \totl_cnt_reg_n_0_[8]\,
      O => \ad_irn2_carry__0_i_4_n_0\
    );
\ad_irn2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[15]\,
      I1 => max_cnt(15),
      I2 => \totl_cnt_reg_n_0_[14]\,
      I3 => max_cnt(14),
      O => \ad_irn2_carry__0_i_5_n_0\
    );
\ad_irn2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[13]\,
      I1 => max_cnt(13),
      I2 => \totl_cnt_reg_n_0_[12]\,
      I3 => max_cnt(12),
      O => \ad_irn2_carry__0_i_6_n_0\
    );
\ad_irn2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[11]\,
      I1 => max_cnt(11),
      I2 => \totl_cnt_reg_n_0_[10]\,
      I3 => max_cnt(10),
      O => \ad_irn2_carry__0_i_7_n_0\
    );
\ad_irn2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[9]\,
      I1 => max_cnt(9),
      I2 => \totl_cnt_reg_n_0_[8]\,
      I3 => max_cnt(8),
      O => \ad_irn2_carry__0_i_8_n_0\
    );
\ad_irn2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_irn2_carry__0_n_0\,
      CO(3) => \ad_irn2_carry__1_n_0\,
      CO(2) => \ad_irn2_carry__1_n_1\,
      CO(1) => \ad_irn2_carry__1_n_2\,
      CO(0) => \ad_irn2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ad_irn2_carry__1_i_1_n_0\,
      DI(2) => \ad_irn2_carry__1_i_2_n_0\,
      DI(1) => \ad_irn2_carry__1_i_3_n_0\,
      DI(0) => \ad_irn2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_irn2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ad_irn2_carry__1_i_5_n_0\,
      S(2) => \ad_irn2_carry__1_i_6_n_0\,
      S(1) => \ad_irn2_carry__1_i_7_n_0\,
      S(0) => \ad_irn2_carry__1_i_8_n_0\
    );
\ad_irn2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(23),
      I1 => \totl_cnt_reg_n_0_[23]\,
      I2 => max_cnt(22),
      I3 => \totl_cnt_reg_n_0_[22]\,
      O => \ad_irn2_carry__1_i_1_n_0\
    );
\ad_irn2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(21),
      I1 => \totl_cnt_reg_n_0_[21]\,
      I2 => max_cnt(20),
      I3 => \totl_cnt_reg_n_0_[20]\,
      O => \ad_irn2_carry__1_i_2_n_0\
    );
\ad_irn2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(19),
      I1 => \totl_cnt_reg_n_0_[19]\,
      I2 => max_cnt(18),
      I3 => \totl_cnt_reg_n_0_[18]\,
      O => \ad_irn2_carry__1_i_3_n_0\
    );
\ad_irn2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(17),
      I1 => \totl_cnt_reg_n_0_[17]\,
      I2 => max_cnt(16),
      I3 => \totl_cnt_reg_n_0_[16]\,
      O => \ad_irn2_carry__1_i_4_n_0\
    );
\ad_irn2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[23]\,
      I1 => max_cnt(23),
      I2 => \totl_cnt_reg_n_0_[22]\,
      I3 => max_cnt(22),
      O => \ad_irn2_carry__1_i_5_n_0\
    );
\ad_irn2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[21]\,
      I1 => max_cnt(21),
      I2 => \totl_cnt_reg_n_0_[20]\,
      I3 => max_cnt(20),
      O => \ad_irn2_carry__1_i_6_n_0\
    );
\ad_irn2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[19]\,
      I1 => max_cnt(19),
      I2 => \totl_cnt_reg_n_0_[18]\,
      I3 => max_cnt(18),
      O => \ad_irn2_carry__1_i_7_n_0\
    );
\ad_irn2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[17]\,
      I1 => max_cnt(17),
      I2 => \totl_cnt_reg_n_0_[16]\,
      I3 => max_cnt(16),
      O => \ad_irn2_carry__1_i_8_n_0\
    );
\ad_irn2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_irn2_carry__1_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \ad_irn2_carry__2_n_1\,
      CO(1) => \ad_irn2_carry__2_n_2\,
      CO(0) => \ad_irn2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ad_irn2_carry__2_i_1_n_0\,
      DI(2) => \ad_irn2_carry__2_i_2_n_0\,
      DI(1) => \ad_irn2_carry__2_i_3_n_0\,
      DI(0) => \ad_irn2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_irn2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ad_irn2_carry__2_i_5_n_0\,
      S(2) => \ad_irn2_carry__2_i_6_n_0\,
      S(1) => \ad_irn2_carry__2_i_7_n_0\,
      S(0) => \ad_irn2_carry__2_i_8_n_0\
    );
\ad_irn2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(31),
      I1 => \totl_cnt_reg_n_0_[31]\,
      I2 => max_cnt(30),
      I3 => \totl_cnt_reg_n_0_[30]\,
      O => \ad_irn2_carry__2_i_1_n_0\
    );
\ad_irn2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(29),
      I1 => \totl_cnt_reg_n_0_[29]\,
      I2 => max_cnt(28),
      I3 => \totl_cnt_reg_n_0_[28]\,
      O => \ad_irn2_carry__2_i_2_n_0\
    );
\ad_irn2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(27),
      I1 => \totl_cnt_reg_n_0_[27]\,
      I2 => max_cnt(26),
      I3 => \totl_cnt_reg_n_0_[26]\,
      O => \ad_irn2_carry__2_i_3_n_0\
    );
\ad_irn2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(25),
      I1 => \totl_cnt_reg_n_0_[25]\,
      I2 => max_cnt(24),
      I3 => \totl_cnt_reg_n_0_[24]\,
      O => \ad_irn2_carry__2_i_4_n_0\
    );
\ad_irn2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[31]\,
      I1 => max_cnt(31),
      I2 => \totl_cnt_reg_n_0_[30]\,
      I3 => max_cnt(30),
      O => \ad_irn2_carry__2_i_5_n_0\
    );
\ad_irn2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[29]\,
      I1 => max_cnt(29),
      I2 => \totl_cnt_reg_n_0_[28]\,
      I3 => max_cnt(28),
      O => \ad_irn2_carry__2_i_6_n_0\
    );
\ad_irn2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[27]\,
      I1 => max_cnt(27),
      I2 => \totl_cnt_reg_n_0_[26]\,
      I3 => max_cnt(26),
      O => \ad_irn2_carry__2_i_7_n_0\
    );
\ad_irn2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[25]\,
      I1 => max_cnt(25),
      I2 => \totl_cnt_reg_n_0_[24]\,
      I3 => max_cnt(24),
      O => \ad_irn2_carry__2_i_8_n_0\
    );
ad_irn2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(7),
      I1 => \totl_cnt_reg_n_0_[7]\,
      I2 => max_cnt(6),
      I3 => \totl_cnt_reg_n_0_[6]\,
      O => ad_irn2_carry_i_1_n_0
    );
ad_irn2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(5),
      I1 => \totl_cnt_reg_n_0_[5]\,
      I2 => max_cnt(4),
      I3 => \totl_cnt_reg_n_0_[4]\,
      O => ad_irn2_carry_i_2_n_0
    );
ad_irn2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(3),
      I1 => \totl_cnt_reg_n_0_[3]\,
      I2 => max_cnt(2),
      I3 => \totl_cnt_reg_n_0_[2]\,
      O => ad_irn2_carry_i_3_n_0
    );
ad_irn2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => max_cnt(1),
      I1 => \totl_cnt_reg_n_0_[1]\,
      I2 => max_cnt(0),
      I3 => \totl_cnt_reg_n_0_[0]\,
      O => ad_irn2_carry_i_4_n_0
    );
ad_irn2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[7]\,
      I1 => max_cnt(7),
      I2 => \totl_cnt_reg_n_0_[6]\,
      I3 => max_cnt(6),
      O => ad_irn2_carry_i_5_n_0
    );
ad_irn2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[5]\,
      I1 => max_cnt(5),
      I2 => \totl_cnt_reg_n_0_[4]\,
      I3 => max_cnt(4),
      O => ad_irn2_carry_i_6_n_0
    );
ad_irn2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[3]\,
      I1 => max_cnt(3),
      I2 => \totl_cnt_reg_n_0_[2]\,
      I3 => max_cnt(2),
      O => ad_irn2_carry_i_7_n_0
    );
ad_irn2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \totl_cnt_reg_n_0_[1]\,
      I1 => max_cnt(1),
      I2 => \totl_cnt_reg_n_0_[0]\,
      I3 => max_cnt(0),
      O => ad_irn2_carry_i_8_n_0
    );
ad_irn_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"220022F0"
    )
        port map (
      I0 => \madc_n_cnt1_carry__2_n_0\,
      I1 => \^state\(1),
      I2 => \^co\(0),
      I3 => \^state\(0),
      I4 => \^state\(2),
      O => \^fsm_sequential_state_reg[1]_0\
    );
ad_irn_reg: unisim.vcomponents.FDPE
     port map (
      C => madc_clk,
      CE => '1',
      D => ad_irn_reg_0,
      PRE => \^ar\(0),
      Q => ad_irn
    );
ad_irp_reg: unisim.vcomponents.FDPE
     port map (
      C => madc_clk,
      CE => '1',
      D => ad_irp_reg_0,
      PRE => \^ar\(0),
      Q => ad_irp
    );
\axi4l_reg_calib[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      I5 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      O => \axi4l_reg_calib[15]_i_1_n_0\
    );
\axi4l_reg_calib[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      I5 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      O => \axi4l_reg_calib[23]_i_1_n_0\
    );
\axi4l_reg_calib[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      I5 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      O => \axi4l_reg_calib[31]_i_1_n_0\
    );
\axi4l_reg_calib[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      I5 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      O => \axi4l_reg_calib[7]_i_1_n_0\
    );
\axi4l_reg_calib_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(0),
      Q => \axi4l_reg_calib_reg_n_0_[0]\
    );
\axi4l_reg_calib_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(10),
      Q => \axi4l_reg_calib_reg_n_0_[10]\
    );
\axi4l_reg_calib_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(11),
      Q => \axi4l_reg_calib_reg_n_0_[11]\
    );
\axi4l_reg_calib_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(12),
      Q => \axi4l_reg_calib_reg_n_0_[12]\
    );
\axi4l_reg_calib_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(13),
      Q => \axi4l_reg_calib_reg_n_0_[13]\
    );
\axi4l_reg_calib_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(14),
      Q => \axi4l_reg_calib_reg_n_0_[14]\
    );
\axi4l_reg_calib_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(15),
      Q => \axi4l_reg_calib_reg_n_0_[15]\
    );
\axi4l_reg_calib_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(16),
      Q => \axi4l_reg_calib_reg_n_0_[16]\
    );
\axi4l_reg_calib_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(17),
      Q => \axi4l_reg_calib_reg_n_0_[17]\
    );
\axi4l_reg_calib_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(18),
      Q => \axi4l_reg_calib_reg_n_0_[18]\
    );
\axi4l_reg_calib_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(19),
      Q => \axi4l_reg_calib_reg_n_0_[19]\
    );
\axi4l_reg_calib_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(1),
      Q => \axi4l_reg_calib_reg_n_0_[1]\
    );
\axi4l_reg_calib_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(20),
      Q => \axi4l_reg_calib_reg_n_0_[20]\
    );
\axi4l_reg_calib_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(21),
      Q => \axi4l_reg_calib_reg_n_0_[21]\
    );
\axi4l_reg_calib_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(22),
      Q => \axi4l_reg_calib_reg_n_0_[22]\
    );
\axi4l_reg_calib_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(23),
      Q => \axi4l_reg_calib_reg_n_0_[23]\
    );
\axi4l_reg_calib_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(24),
      Q => \axi4l_reg_calib_reg_n_0_[24]\
    );
\axi4l_reg_calib_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(25),
      Q => \axi4l_reg_calib_reg_n_0_[25]\
    );
\axi4l_reg_calib_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(26),
      Q => \axi4l_reg_calib_reg_n_0_[26]\
    );
\axi4l_reg_calib_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(27),
      Q => \axi4l_reg_calib_reg_n_0_[27]\
    );
\axi4l_reg_calib_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(28),
      Q => \axi4l_reg_calib_reg_n_0_[28]\
    );
\axi4l_reg_calib_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(29),
      Q => \axi4l_reg_calib_reg_n_0_[29]\
    );
\axi4l_reg_calib_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(2),
      Q => \axi4l_reg_calib_reg_n_0_[2]\
    );
\axi4l_reg_calib_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(30),
      Q => \axi4l_reg_calib_reg_n_0_[30]\
    );
\axi4l_reg_calib_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(31),
      Q => \axi4l_reg_calib_reg_n_0_[31]\
    );
\axi4l_reg_calib_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(3),
      Q => \axi4l_reg_calib_reg_n_0_[3]\
    );
\axi4l_reg_calib_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(4),
      Q => \axi4l_reg_calib_reg_n_0_[4]\
    );
\axi4l_reg_calib_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(5),
      Q => \axi4l_reg_calib_reg_n_0_[5]\
    );
\axi4l_reg_calib_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(6),
      Q => \axi4l_reg_calib_reg_n_0_[6]\
    );
\axi4l_reg_calib_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(7),
      Q => \axi4l_reg_calib_reg_n_0_[7]\
    );
\axi4l_reg_calib_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(8),
      Q => \axi4l_reg_calib_reg_n_0_[8]\
    );
\axi4l_reg_calib_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_calib[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(9),
      Q => \axi4l_reg_calib_reg_n_0_[9]\
    );
\axi4l_reg_n_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[0]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[0]\
    );
\axi4l_reg_n_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[10]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[10]\
    );
\axi4l_reg_n_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[11]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[11]\
    );
\axi4l_reg_n_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[12]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[12]\
    );
\axi4l_reg_n_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[13]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[13]\
    );
\axi4l_reg_n_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[14]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[14]\
    );
\axi4l_reg_n_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[15]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[15]\
    );
\axi4l_reg_n_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[16]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[16]\
    );
\axi4l_reg_n_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[17]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[17]\
    );
\axi4l_reg_n_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[18]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[18]\
    );
\axi4l_reg_n_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[19]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[19]\
    );
\axi4l_reg_n_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[1]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[1]\
    );
\axi4l_reg_n_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[20]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[20]\
    );
\axi4l_reg_n_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[21]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[21]\
    );
\axi4l_reg_n_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[22]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[22]\
    );
\axi4l_reg_n_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[23]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[23]\
    );
\axi4l_reg_n_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[24]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[24]\
    );
\axi4l_reg_n_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[25]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[25]\
    );
\axi4l_reg_n_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[26]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[26]\
    );
\axi4l_reg_n_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[27]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[27]\
    );
\axi4l_reg_n_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[28]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[28]\
    );
\axi4l_reg_n_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[29]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[29]\
    );
\axi4l_reg_n_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[2]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[2]\
    );
\axi4l_reg_n_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[30]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[30]\
    );
\axi4l_reg_n_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[31]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[31]\
    );
\axi4l_reg_n_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[3]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[3]\
    );
\axi4l_reg_n_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[4]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[4]\
    );
\axi4l_reg_n_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[5]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[5]\
    );
\axi4l_reg_n_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[6]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[6]\
    );
\axi4l_reg_n_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[7]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[7]\
    );
\axi4l_reg_n_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[8]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[8]\
    );
\axi4l_reg_n_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_n_cnt_reg_n_0_[9]\,
      Q => \axi4l_reg_n_cnt_reg_n_0_[9]\
    );
\axi4l_reg_nplc[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => s00_axi_awaddr(4),
      I2 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I3 => s00_axi_awaddr(7),
      I4 => s00_axi_awaddr(6),
      I5 => s00_axi_awaddr(5),
      O => \axi4l_reg_nplc[15]_i_1_n_0\
    );
\axi4l_reg_nplc[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => s00_axi_awaddr(4),
      I2 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I3 => s00_axi_awaddr(7),
      I4 => s00_axi_awaddr(6),
      I5 => s00_axi_awaddr(5),
      O => \axi4l_reg_nplc[23]_i_1_n_0\
    );
\axi4l_reg_nplc[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => s00_axi_awaddr(4),
      I2 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I3 => s00_axi_awaddr(7),
      I4 => s00_axi_awaddr(6),
      I5 => s00_axi_awaddr(5),
      O => \axi4l_reg_nplc[31]_i_1_n_0\
    );
\axi4l_reg_nplc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_awaddr(4),
      I2 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I3 => s00_axi_awaddr(7),
      I4 => s00_axi_awaddr(6),
      I5 => s00_axi_awaddr(5),
      O => \axi4l_reg_nplc[7]_i_1_n_0\
    );
\axi4l_reg_nplc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(0),
      Q => axi4l_reg_nplc(0)
    );
\axi4l_reg_nplc_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(10)
    );
\axi4l_reg_nplc_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(11),
      Q => axi4l_reg_nplc(11)
    );
\axi4l_reg_nplc_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(12),
      Q => axi4l_reg_nplc(12)
    );
\axi4l_reg_nplc_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(13),
      Q => axi4l_reg_nplc(13)
    );
\axi4l_reg_nplc_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(14),
      Q => axi4l_reg_nplc(14)
    );
\axi4l_reg_nplc_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(15)
    );
\axi4l_reg_nplc_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(16),
      Q => axi4l_reg_nplc(16)
    );
\axi4l_reg_nplc_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(17)
    );
\axi4l_reg_nplc_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(18)
    );
\axi4l_reg_nplc_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(19)
    );
\axi4l_reg_nplc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(1),
      Q => axi4l_reg_nplc(1)
    );
\axi4l_reg_nplc_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(20)
    );
\axi4l_reg_nplc_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(21),
      Q => axi4l_reg_nplc(21)
    );
\axi4l_reg_nplc_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(22),
      Q => axi4l_reg_nplc(22)
    );
\axi4l_reg_nplc_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(23),
      Q => axi4l_reg_nplc(23)
    );
\axi4l_reg_nplc_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(24),
      Q => axi4l_reg_nplc(24)
    );
\axi4l_reg_nplc_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(25),
      Q => axi4l_reg_nplc(25)
    );
\axi4l_reg_nplc_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(26),
      Q => axi4l_reg_nplc(26)
    );
\axi4l_reg_nplc_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(27),
      Q => axi4l_reg_nplc(27)
    );
\axi4l_reg_nplc_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(28),
      Q => axi4l_reg_nplc(28)
    );
\axi4l_reg_nplc_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(29),
      Q => axi4l_reg_nplc(29)
    );
\axi4l_reg_nplc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(2),
      Q => axi4l_reg_nplc(2)
    );
\axi4l_reg_nplc_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(30),
      Q => axi4l_reg_nplc(30)
    );
\axi4l_reg_nplc_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(31),
      Q => axi4l_reg_nplc(31)
    );
\axi4l_reg_nplc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(3),
      Q => axi4l_reg_nplc(3)
    );
\axi4l_reg_nplc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(4),
      Q => axi4l_reg_nplc(4)
    );
\axi4l_reg_nplc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(5),
      Q => axi4l_reg_nplc(5)
    );
\axi4l_reg_nplc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(6),
      Q => axi4l_reg_nplc(6)
    );
\axi4l_reg_nplc_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      PRE => \^ar\(0),
      Q => axi4l_reg_nplc(7)
    );
\axi4l_reg_nplc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(8),
      Q => axi4l_reg_nplc(8)
    );
\axi4l_reg_nplc_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_nplc[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(9),
      Q => axi4l_reg_nplc(9)
    );
\axi4l_reg_p_cnt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      O => axi4l_reg_n_cnt
    );
\axi4l_reg_p_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[0]\,
      Q => axi4l_reg_p_cnt(0)
    );
\axi4l_reg_p_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[10]\,
      Q => axi4l_reg_p_cnt(10)
    );
\axi4l_reg_p_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[11]\,
      Q => axi4l_reg_p_cnt(11)
    );
\axi4l_reg_p_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[12]\,
      Q => axi4l_reg_p_cnt(12)
    );
\axi4l_reg_p_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[13]\,
      Q => axi4l_reg_p_cnt(13)
    );
\axi4l_reg_p_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[14]\,
      Q => axi4l_reg_p_cnt(14)
    );
\axi4l_reg_p_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[15]\,
      Q => axi4l_reg_p_cnt(15)
    );
\axi4l_reg_p_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[16]\,
      Q => axi4l_reg_p_cnt(16)
    );
\axi4l_reg_p_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[17]\,
      Q => axi4l_reg_p_cnt(17)
    );
\axi4l_reg_p_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[18]\,
      Q => axi4l_reg_p_cnt(18)
    );
\axi4l_reg_p_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[19]\,
      Q => axi4l_reg_p_cnt(19)
    );
\axi4l_reg_p_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[1]\,
      Q => axi4l_reg_p_cnt(1)
    );
\axi4l_reg_p_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[20]\,
      Q => axi4l_reg_p_cnt(20)
    );
\axi4l_reg_p_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[21]\,
      Q => axi4l_reg_p_cnt(21)
    );
\axi4l_reg_p_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[22]\,
      Q => axi4l_reg_p_cnt(22)
    );
\axi4l_reg_p_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[23]\,
      Q => axi4l_reg_p_cnt(23)
    );
\axi4l_reg_p_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[24]\,
      Q => axi4l_reg_p_cnt(24)
    );
\axi4l_reg_p_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[25]\,
      Q => axi4l_reg_p_cnt(25)
    );
\axi4l_reg_p_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[26]\,
      Q => axi4l_reg_p_cnt(26)
    );
\axi4l_reg_p_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[27]\,
      Q => axi4l_reg_p_cnt(27)
    );
\axi4l_reg_p_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[28]\,
      Q => axi4l_reg_p_cnt(28)
    );
\axi4l_reg_p_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[29]\,
      Q => axi4l_reg_p_cnt(29)
    );
\axi4l_reg_p_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[2]\,
      Q => axi4l_reg_p_cnt(2)
    );
\axi4l_reg_p_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[30]\,
      Q => axi4l_reg_p_cnt(30)
    );
\axi4l_reg_p_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[31]\,
      Q => axi4l_reg_p_cnt(31)
    );
\axi4l_reg_p_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[3]\,
      Q => axi4l_reg_p_cnt(3)
    );
\axi4l_reg_p_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[4]\,
      Q => axi4l_reg_p_cnt(4)
    );
\axi4l_reg_p_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[5]\,
      Q => axi4l_reg_p_cnt(5)
    );
\axi4l_reg_p_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[6]\,
      Q => axi4l_reg_p_cnt(6)
    );
\axi4l_reg_p_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[7]\,
      Q => axi4l_reg_p_cnt(7)
    );
\axi4l_reg_p_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[8]\,
      Q => axi4l_reg_p_cnt(8)
    );
\axi4l_reg_p_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \madc_p_cnt_reg_n_0_[9]\,
      Q => axi4l_reg_p_cnt(9)
    );
\axi4l_reg_status[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB20"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(0),
      I2 => \^state\(2),
      I3 => \axi4l_reg_status_reg_n_0_[0]\,
      O => \axi4l_reg_status[0]_i_1_n_0\
    );
\axi4l_reg_status[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(0),
      I2 => \^state\(2),
      I3 => \axi4l_reg_status_reg_n_0_[1]\,
      O => \axi4l_reg_status[1]_i_1_n_0\
    );
\axi4l_reg_status_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \axi4l_reg_status[0]_i_1_n_0\,
      Q => \axi4l_reg_status_reg_n_0_[0]\
    );
\axi4l_reg_status_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \axi4l_reg_status[1]_i_1_n_0\,
      Q => \axi4l_reg_status_reg_n_0_[1]\
    );
\axi4l_reg_totl_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[0]\,
      Q => axi4l_reg_totl_cnt(0)
    );
\axi4l_reg_totl_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[10]\,
      Q => axi4l_reg_totl_cnt(10)
    );
\axi4l_reg_totl_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[11]\,
      Q => axi4l_reg_totl_cnt(11)
    );
\axi4l_reg_totl_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[12]\,
      Q => axi4l_reg_totl_cnt(12)
    );
\axi4l_reg_totl_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[13]\,
      Q => axi4l_reg_totl_cnt(13)
    );
\axi4l_reg_totl_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[14]\,
      Q => axi4l_reg_totl_cnt(14)
    );
\axi4l_reg_totl_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[15]\,
      Q => axi4l_reg_totl_cnt(15)
    );
\axi4l_reg_totl_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[16]\,
      Q => axi4l_reg_totl_cnt(16)
    );
\axi4l_reg_totl_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[17]\,
      Q => axi4l_reg_totl_cnt(17)
    );
\axi4l_reg_totl_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[18]\,
      Q => axi4l_reg_totl_cnt(18)
    );
\axi4l_reg_totl_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[19]\,
      Q => axi4l_reg_totl_cnt(19)
    );
\axi4l_reg_totl_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[1]\,
      Q => axi4l_reg_totl_cnt(1)
    );
\axi4l_reg_totl_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[20]\,
      Q => axi4l_reg_totl_cnt(20)
    );
\axi4l_reg_totl_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[21]\,
      Q => axi4l_reg_totl_cnt(21)
    );
\axi4l_reg_totl_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[22]\,
      Q => axi4l_reg_totl_cnt(22)
    );
\axi4l_reg_totl_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[23]\,
      Q => axi4l_reg_totl_cnt(23)
    );
\axi4l_reg_totl_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[24]\,
      Q => axi4l_reg_totl_cnt(24)
    );
\axi4l_reg_totl_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[25]\,
      Q => axi4l_reg_totl_cnt(25)
    );
\axi4l_reg_totl_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[26]\,
      Q => axi4l_reg_totl_cnt(26)
    );
\axi4l_reg_totl_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[27]\,
      Q => axi4l_reg_totl_cnt(27)
    );
\axi4l_reg_totl_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[28]\,
      Q => axi4l_reg_totl_cnt(28)
    );
\axi4l_reg_totl_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[29]\,
      Q => axi4l_reg_totl_cnt(29)
    );
\axi4l_reg_totl_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[2]\,
      Q => axi4l_reg_totl_cnt(2)
    );
\axi4l_reg_totl_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[30]\,
      Q => axi4l_reg_totl_cnt(30)
    );
\axi4l_reg_totl_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[31]\,
      Q => axi4l_reg_totl_cnt(31)
    );
\axi4l_reg_totl_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[3]\,
      Q => axi4l_reg_totl_cnt(3)
    );
\axi4l_reg_totl_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[4]\,
      Q => axi4l_reg_totl_cnt(4)
    );
\axi4l_reg_totl_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[5]\,
      Q => axi4l_reg_totl_cnt(5)
    );
\axi4l_reg_totl_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[6]\,
      Q => axi4l_reg_totl_cnt(6)
    );
\axi4l_reg_totl_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[7]\,
      Q => axi4l_reg_totl_cnt(7)
    );
\axi4l_reg_totl_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[8]\,
      Q => axi4l_reg_totl_cnt(8)
    );
\axi4l_reg_totl_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => axi4l_reg_n_cnt,
      CLR => \^ar\(0),
      D => \totl_cnt_reg_n_0_[9]\,
      Q => axi4l_reg_totl_cnt(9)
    );
\axi4l_reg_vref[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      I5 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      O => \axi4l_reg_vref[15]_i_1_n_0\
    );
\axi4l_reg_vref[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      I5 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      O => \axi4l_reg_vref[23]_i_1_n_0\
    );
\axi4l_reg_vref[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      I5 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      O => \axi4l_reg_vref[31]_i_1_n_0\
    );
\axi4l_reg_vref[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      I5 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      O => \axi4l_reg_vref[7]_i_1_n_0\
    );
\axi4l_reg_vref_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      PRE => \^ar\(0),
      Q => axi4l_reg_vref(0)
    );
\axi4l_reg_vref_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(10),
      Q => axi4l_reg_vref(10)
    );
\axi4l_reg_vref_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(11),
      Q => axi4l_reg_vref(11)
    );
\axi4l_reg_vref_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(12),
      Q => axi4l_reg_vref(12)
    );
\axi4l_reg_vref_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(13),
      Q => axi4l_reg_vref(13)
    );
\axi4l_reg_vref_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(14),
      Q => axi4l_reg_vref(14)
    );
\axi4l_reg_vref_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(15),
      Q => axi4l_reg_vref(15)
    );
\axi4l_reg_vref_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(16),
      Q => axi4l_reg_vref(16)
    );
\axi4l_reg_vref_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(17),
      Q => axi4l_reg_vref(17)
    );
\axi4l_reg_vref_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(18),
      Q => axi4l_reg_vref(18)
    );
\axi4l_reg_vref_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(19),
      Q => axi4l_reg_vref(19)
    );
\axi4l_reg_vref_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(1),
      Q => axi4l_reg_vref(1)
    );
\axi4l_reg_vref_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(20),
      Q => axi4l_reg_vref(20)
    );
\axi4l_reg_vref_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(21),
      Q => axi4l_reg_vref(21)
    );
\axi4l_reg_vref_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(22),
      Q => axi4l_reg_vref(22)
    );
\axi4l_reg_vref_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[23]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(23),
      Q => axi4l_reg_vref(23)
    );
\axi4l_reg_vref_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(24),
      Q => axi4l_reg_vref(24)
    );
\axi4l_reg_vref_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(25),
      Q => axi4l_reg_vref(25)
    );
\axi4l_reg_vref_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(26),
      Q => axi4l_reg_vref(26)
    );
\axi4l_reg_vref_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(27),
      Q => axi4l_reg_vref(27)
    );
\axi4l_reg_vref_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(28),
      Q => axi4l_reg_vref(28)
    );
\axi4l_reg_vref_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(29),
      Q => axi4l_reg_vref(29)
    );
\axi4l_reg_vref_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(2),
      Q => axi4l_reg_vref(2)
    );
\axi4l_reg_vref_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(30),
      Q => axi4l_reg_vref(30)
    );
\axi4l_reg_vref_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(31),
      Q => axi4l_reg_vref(31)
    );
\axi4l_reg_vref_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(3),
      Q => axi4l_reg_vref(3)
    );
\axi4l_reg_vref_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(4),
      Q => axi4l_reg_vref(4)
    );
\axi4l_reg_vref_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(5),
      Q => axi4l_reg_vref(5)
    );
\axi4l_reg_vref_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(6),
      Q => axi4l_reg_vref(6)
    );
\axi4l_reg_vref_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(7),
      Q => axi4l_reg_vref(7)
    );
\axi4l_reg_vref_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(8),
      Q => axi4l_reg_vref(8)
    );
\axi4l_reg_vref_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi4l_reg_vref[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => s00_axi_wdata(9),
      Q => axi4l_reg_vref(9)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^madc_busy\,
      I1 => s00_axi_bvalid,
      I2 => s00_axi_bready,
      O => madc_busy_reg_0
    );
calib_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      O => calib_i_1_n_0
    );
calib_reg: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => \axi4l_reg_calib_reg_n_0_[0]\,
      Q => \??6_out\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      O => cnt(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[12]_i_2_n_6\,
      O => cnt(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[12]_i_2_n_5\,
      O => cnt(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[12]_i_2_n_4\,
      O => cnt(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[16]_i_2_n_7\,
      O => cnt(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[16]_i_2_n_6\,
      O => cnt(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[16]_i_2_n_5\,
      O => cnt(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[16]_i_2_n_4\,
      O => cnt(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[20]_i_2_n_7\,
      O => cnt(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[20]_i_2_n_6\,
      O => cnt(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[20]_i_2_n_5\,
      O => cnt(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[4]_i_2_n_7\,
      O => cnt(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[20]_i_2_n_4\,
      O => cnt(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[24]_i_2_n_7\,
      O => cnt(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[24]_i_2_n_6\,
      O => cnt(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[24]_i_2_n_5\,
      O => cnt(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[24]_i_2_n_4\,
      O => cnt(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[28]_i_2_n_7\,
      O => cnt(25)
    );
\cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[28]_i_2_n_6\,
      O => cnt(26)
    );
\cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[28]_i_2_n_5\,
      O => cnt(27)
    );
\cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[28]_i_2_n_4\,
      O => cnt(28)
    );
\cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[31]_i_4_n_7\,
      O => cnt(29)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[4]_i_2_n_6\,
      O => cnt(2)
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[31]_i_4_n_6\,
      O => cnt(30)
    );
\cnt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      O => \cnt[31]_i_1_n_0\
    );
\cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[31]_i_4_n_5\,
      O => cnt(31)
    );
\cnt[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACFFFCF0AC00AC0"
    )
        port map (
      I0 => p_0_in,
      I1 => \madc_n_cnt1_carry__2_n_0\,
      I2 => \^state\(0),
      I3 => \^state\(1),
      I4 => \^state\(2),
      I5 => \madc_n_cnt0_carry__2_n_0\,
      O => \cnt[31]_i_3_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[4]_i_2_n_5\,
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[4]_i_2_n_4\,
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[8]_i_2_n_7\,
      O => cnt(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[8]_i_2_n_6\,
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[8]_i_2_n_5\,
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[8]_i_2_n_4\,
      O => cnt(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt[31]_i_3_n_0\,
      I1 => \cnt_reg[12]_i_2_n_7\,
      O => cnt(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(0),
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(10),
      Q => \cnt_reg_n_0_[10]\
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(11),
      Q => \cnt_reg_n_0_[11]\
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(12),
      Q => \cnt_reg_n_0_[12]\
    );
\cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CO(3) => \cnt_reg[12]_i_2_n_0\,
      CO(2) => \cnt_reg[12]_i_2_n_1\,
      CO(1) => \cnt_reg[12]_i_2_n_2\,
      CO(0) => \cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_2_n_4\,
      O(2) => \cnt_reg[12]_i_2_n_5\,
      O(1) => \cnt_reg[12]_i_2_n_6\,
      O(0) => \cnt_reg[12]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[12]\,
      S(2) => \cnt_reg_n_0_[11]\,
      S(1) => \cnt_reg_n_0_[10]\,
      S(0) => \cnt_reg_n_0_[9]\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(13),
      Q => \cnt_reg_n_0_[13]\
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(14),
      Q => \cnt_reg_n_0_[14]\
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(15),
      Q => \cnt_reg_n_0_[15]\
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(16),
      Q => \cnt_reg_n_0_[16]\
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_2_n_0\,
      CO(3) => \cnt_reg[16]_i_2_n_0\,
      CO(2) => \cnt_reg[16]_i_2_n_1\,
      CO(1) => \cnt_reg[16]_i_2_n_2\,
      CO(0) => \cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_2_n_4\,
      O(2) => \cnt_reg[16]_i_2_n_5\,
      O(1) => \cnt_reg[16]_i_2_n_6\,
      O(0) => \cnt_reg[16]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[16]\,
      S(2) => \cnt_reg_n_0_[15]\,
      S(1) => \cnt_reg_n_0_[14]\,
      S(0) => \cnt_reg_n_0_[13]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(17),
      Q => \cnt_reg_n_0_[17]\
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(18),
      Q => \cnt_reg_n_0_[18]\
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(19),
      Q => \cnt_reg_n_0_[19]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(20),
      Q => \cnt_reg_n_0_[20]\
    );
\cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_2_n_0\,
      CO(3) => \cnt_reg[20]_i_2_n_0\,
      CO(2) => \cnt_reg[20]_i_2_n_1\,
      CO(1) => \cnt_reg[20]_i_2_n_2\,
      CO(0) => \cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_2_n_4\,
      O(2) => \cnt_reg[20]_i_2_n_5\,
      O(1) => \cnt_reg[20]_i_2_n_6\,
      O(0) => \cnt_reg[20]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[20]\,
      S(2) => \cnt_reg_n_0_[19]\,
      S(1) => \cnt_reg_n_0_[18]\,
      S(0) => \cnt_reg_n_0_[17]\
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(21),
      Q => \cnt_reg_n_0_[21]\
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(22),
      Q => \cnt_reg_n_0_[22]\
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(23),
      Q => \cnt_reg_n_0_[23]\
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(24),
      Q => \cnt_reg_n_0_[24]\
    );
\cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_2_n_0\,
      CO(3) => \cnt_reg[24]_i_2_n_0\,
      CO(2) => \cnt_reg[24]_i_2_n_1\,
      CO(1) => \cnt_reg[24]_i_2_n_2\,
      CO(0) => \cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_2_n_4\,
      O(2) => \cnt_reg[24]_i_2_n_5\,
      O(1) => \cnt_reg[24]_i_2_n_6\,
      O(0) => \cnt_reg[24]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[24]\,
      S(2) => \cnt_reg_n_0_[23]\,
      S(1) => \cnt_reg_n_0_[22]\,
      S(0) => \cnt_reg_n_0_[21]\
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(25),
      Q => \cnt_reg_n_0_[25]\
    );
\cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(26),
      Q => \cnt_reg_n_0_[26]\
    );
\cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(27),
      Q => \cnt_reg_n_0_[27]\
    );
\cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(28),
      Q => \cnt_reg_n_0_[28]\
    );
\cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_2_n_0\,
      CO(3) => \cnt_reg[28]_i_2_n_0\,
      CO(2) => \cnt_reg[28]_i_2_n_1\,
      CO(1) => \cnt_reg[28]_i_2_n_2\,
      CO(0) => \cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_2_n_4\,
      O(2) => \cnt_reg[28]_i_2_n_5\,
      O(1) => \cnt_reg[28]_i_2_n_6\,
      O(0) => \cnt_reg[28]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[28]\,
      S(2) => \cnt_reg_n_0_[27]\,
      S(1) => \cnt_reg_n_0_[26]\,
      S(0) => \cnt_reg_n_0_[25]\
    );
\cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(29),
      Q => \cnt_reg_n_0_[29]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(30),
      Q => \cnt_reg_n_0_[30]\
    );
\cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(31),
      Q => \cnt_reg_n_0_[31]\
    );
\cnt_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_reg[31]_i_4_n_2\,
      CO(0) => \cnt_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2) => \cnt_reg[31]_i_4_n_5\,
      O(1) => \cnt_reg[31]_i_4_n_6\,
      O(0) => \cnt_reg[31]_i_4_n_7\,
      S(3) => '0',
      S(2) => \cnt_reg_n_0_[31]\,
      S(1) => \cnt_reg_n_0_[30]\,
      S(0) => \cnt_reg_n_0_[29]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\
    );
\cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[4]_i_2_n_0\,
      CO(2) => \cnt_reg[4]_i_2_n_1\,
      CO(1) => \cnt_reg[4]_i_2_n_2\,
      CO(0) => \cnt_reg[4]_i_2_n_3\,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_2_n_4\,
      O(2) => \cnt_reg[4]_i_2_n_5\,
      O(1) => \cnt_reg[4]_i_2_n_6\,
      O(0) => \cnt_reg[4]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[4]\,
      S(2) => \cnt_reg_n_0_[3]\,
      S(1) => \cnt_reg_n_0_[2]\,
      S(0) => \cnt_reg_n_0_[1]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(7),
      Q => \cnt_reg_n_0_[7]\
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(8),
      Q => \cnt_reg_n_0_[8]\
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_2_n_0\,
      CO(3) => \cnt_reg[8]_i_2_n_0\,
      CO(2) => \cnt_reg[8]_i_2_n_1\,
      CO(1) => \cnt_reg[8]_i_2_n_2\,
      CO(0) => \cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_2_n_4\,
      O(2) => \cnt_reg[8]_i_2_n_5\,
      O(1) => \cnt_reg[8]_i_2_n_6\,
      O(0) => \cnt_reg[8]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[8]\,
      S(2) => \cnt_reg_n_0_[7]\,
      S(1) => \cnt_reg_n_0_[6]\,
      S(0) => \cnt_reg_n_0_[5]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => cnt(9),
      Q => \cnt_reg_n_0_[9]\
    );
\generate_madc_clock.hardware_clk_gen_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_clk_gen
     port map (
      \FSM_sequential_state_reg[0]\ => \FSM_sequential_state[0]_i_2_n_0\,
      \FSM_sequential_state_reg[0]_0\ => \^state\(2),
      \FSM_sequential_state_reg[0]_1\ => \^state\(1),
      \FSM_sequential_state_reg[0]_2\ => \FSM_sequential_state[2]_i_3_n_0\,
      \FSM_sequential_state_reg[0]_3\ => \^state\(0),
      clk_out => madc_clk,
      pll_inst_0 => \generate_madc_clock.hardware_clk_gen_inst_n_0\,
      rst => \^ar\(0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
madc_busy_reg: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => madc_busy_reg_1,
      Q => \^madc_busy\
    );
madc_n_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => madc_n_cnt0_carry_n_0,
      CO(2) => madc_n_cnt0_carry_n_1,
      CO(1) => madc_n_cnt0_carry_n_2,
      CO(0) => madc_n_cnt0_carry_n_3,
      CYINIT => '0',
      DI(3) => madc_n_cnt0_carry_i_1_n_0,
      DI(2) => '0',
      DI(1) => madc_n_cnt0_carry_i_2_n_0,
      DI(0) => madc_n_cnt0_carry_i_3_n_0,
      O(3 downto 0) => NLW_madc_n_cnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => madc_n_cnt0_carry_i_4_n_0,
      S(2) => madc_n_cnt0_carry_i_5_n_0,
      S(1) => madc_n_cnt0_carry_i_6_n_0,
      S(0) => madc_n_cnt0_carry_i_7_n_0
    );
\madc_n_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => madc_n_cnt0_carry_n_0,
      CO(3) => \madc_n_cnt0_carry__0_n_0\,
      CO(2) => \madc_n_cnt0_carry__0_n_1\,
      CO(1) => \madc_n_cnt0_carry__0_n_2\,
      CO(0) => \madc_n_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \madc_n_cnt0_carry__0_i_1_n_0\,
      DI(0) => \madc_n_cnt0_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_madc_n_cnt0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \madc_n_cnt0_carry__0_i_3_n_0\,
      S(2) => \madc_n_cnt0_carry__0_i_4_n_0\,
      S(1) => \madc_n_cnt0_carry__0_i_5_n_0\,
      S(0) => \madc_n_cnt0_carry__0_i_6_n_0\
    );
\madc_n_cnt0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_reg_n_0_[11]\,
      I1 => \madc_proc.T2_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[10]\,
      O => \madc_n_cnt0_carry__0_i_1_n_0\
    );
\madc_n_cnt0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => \madc_n_cnt0_carry__0_i_2_n_0\
    );
\madc_n_cnt0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[15]\,
      O => \madc_n_cnt0_carry__0_i_3_n_0\
    );
\madc_n_cnt0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      I1 => \cnt_reg_n_0_[13]\,
      O => \madc_n_cnt0_carry__0_i_4_n_0\
    );
\madc_n_cnt0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \cnt_reg_n_0_[10]\,
      I1 => \cnt_reg_n_0_[11]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => \madc_n_cnt0_carry__0_i_5_n_0\
    );
\madc_n_cnt0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[9]\,
      O => \madc_n_cnt0_carry__0_i_6_n_0\
    );
\madc_n_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \madc_n_cnt0_carry__0_n_0\,
      CO(3) => \madc_n_cnt0_carry__1_n_0\,
      CO(2) => \madc_n_cnt0_carry__1_n_1\,
      CO(1) => \madc_n_cnt0_carry__1_n_2\,
      CO(0) => \madc_n_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_madc_n_cnt0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \madc_n_cnt0_carry__1_i_1_n_0\,
      S(2) => \madc_n_cnt0_carry__1_i_2_n_0\,
      S(1) => \madc_n_cnt0_carry__1_i_3_n_0\,
      S(0) => \madc_n_cnt0_carry__1_i_4_n_0\
    );
\madc_n_cnt0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      I1 => \cnt_reg_n_0_[23]\,
      O => \madc_n_cnt0_carry__1_i_1_n_0\
    );
\madc_n_cnt0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[20]\,
      I1 => \cnt_reg_n_0_[21]\,
      O => \madc_n_cnt0_carry__1_i_2_n_0\
    );
\madc_n_cnt0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[18]\,
      I1 => \cnt_reg_n_0_[19]\,
      O => \madc_n_cnt0_carry__1_i_3_n_0\
    );
\madc_n_cnt0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[16]\,
      I1 => \cnt_reg_n_0_[17]\,
      O => \madc_n_cnt0_carry__1_i_4_n_0\
    );
\madc_n_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \madc_n_cnt0_carry__1_n_0\,
      CO(3) => \madc_n_cnt0_carry__2_n_0\,
      CO(2) => \madc_n_cnt0_carry__2_n_1\,
      CO(1) => \madc_n_cnt0_carry__2_n_2\,
      CO(0) => \madc_n_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_madc_n_cnt0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \madc_n_cnt0_carry__2_i_1_n_0\,
      S(2) => \madc_n_cnt0_carry__2_i_2_n_0\,
      S(1) => \madc_n_cnt0_carry__2_i_3_n_0\,
      S(0) => \madc_n_cnt0_carry__2_i_4_n_0\
    );
\madc_n_cnt0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[30]\,
      I1 => \cnt_reg_n_0_[31]\,
      O => \madc_n_cnt0_carry__2_i_1_n_0\
    );
\madc_n_cnt0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[28]\,
      I1 => \cnt_reg_n_0_[29]\,
      O => \madc_n_cnt0_carry__2_i_2_n_0\
    );
\madc_n_cnt0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[26]\,
      I1 => \cnt_reg_n_0_[27]\,
      O => \madc_n_cnt0_carry__2_i_3_n_0\
    );
\madc_n_cnt0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[24]\,
      I1 => \cnt_reg_n_0_[25]\,
      O => \madc_n_cnt0_carry__2_i_4_n_0\
    );
madc_n_cnt0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[7]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => madc_n_cnt0_carry_i_1_n_0
    );
madc_n_cnt0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => madc_n_cnt0_carry_i_2_n_0
    );
madc_n_cnt0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => madc_n_cnt0_carry_i_3_n_0
    );
madc_n_cnt0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[7]\,
      O => madc_n_cnt0_carry_i_4_n_0
    );
madc_n_cnt0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[5]\,
      O => madc_n_cnt0_carry_i_5_n_0
    );
madc_n_cnt0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[3]\,
      O => madc_n_cnt0_carry_i_6_n_0
    );
madc_n_cnt0_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => madc_n_cnt0_carry_i_7_n_0
    );
madc_n_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => madc_n_cnt1_carry_n_0,
      CO(2) => madc_n_cnt1_carry_n_1,
      CO(1) => madc_n_cnt1_carry_n_2,
      CO(0) => madc_n_cnt1_carry_n_3,
      CYINIT => '0',
      DI(3) => madc_n_cnt1_carry_i_1_n_0,
      DI(2) => '0',
      DI(1) => madc_n_cnt1_carry_i_2_n_0,
      DI(0) => madc_n_cnt1_carry_i_3_n_0,
      O(3 downto 0) => NLW_madc_n_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => madc_n_cnt1_carry_i_4_n_0,
      S(2) => madc_n_cnt1_carry_i_5_n_0,
      S(1) => madc_n_cnt1_carry_i_6_n_0,
      S(0) => madc_n_cnt1_carry_i_7_n_0
    );
\madc_n_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => madc_n_cnt1_carry_n_0,
      CO(3) => \madc_n_cnt1_carry__0_n_0\,
      CO(2) => \madc_n_cnt1_carry__0_n_1\,
      CO(1) => \madc_n_cnt1_carry__0_n_2\,
      CO(0) => \madc_n_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \madc_n_cnt1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_madc_n_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \madc_n_cnt1_carry__0_i_2_n_0\,
      S(2) => \madc_n_cnt1_carry__0_i_3_n_0\,
      S(1) => \madc_n_cnt1_carry__0_i_4_n_0\,
      S(0) => \madc_n_cnt1_carry__0_i_5_n_0\
    );
\madc_n_cnt1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \madc_proc.T2_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[8]\,
      O => \madc_n_cnt1_carry__0_i_1_n_0\
    );
\madc_n_cnt1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[15]\,
      O => \madc_n_cnt1_carry__0_i_2_n_0\
    );
\madc_n_cnt1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      I1 => \cnt_reg_n_0_[13]\,
      O => \madc_n_cnt1_carry__0_i_3_n_0\
    );
\madc_n_cnt1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[10]\,
      I1 => \cnt_reg_n_0_[11]\,
      O => \madc_n_cnt1_carry__0_i_4_n_0\
    );
\madc_n_cnt1_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \cnt_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[9]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => \madc_n_cnt1_carry__0_i_5_n_0\
    );
\madc_n_cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \madc_n_cnt1_carry__0_n_0\,
      CO(3) => \madc_n_cnt1_carry__1_n_0\,
      CO(2) => \madc_n_cnt1_carry__1_n_1\,
      CO(1) => \madc_n_cnt1_carry__1_n_2\,
      CO(0) => \madc_n_cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_madc_n_cnt1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \madc_n_cnt1_carry__1_i_1_n_0\,
      S(2) => \madc_n_cnt1_carry__1_i_2_n_0\,
      S(1) => \madc_n_cnt1_carry__1_i_3_n_0\,
      S(0) => \madc_n_cnt1_carry__1_i_4_n_0\
    );
\madc_n_cnt1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      I1 => \cnt_reg_n_0_[23]\,
      O => \madc_n_cnt1_carry__1_i_1_n_0\
    );
\madc_n_cnt1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[20]\,
      I1 => \cnt_reg_n_0_[21]\,
      O => \madc_n_cnt1_carry__1_i_2_n_0\
    );
\madc_n_cnt1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[18]\,
      I1 => \cnt_reg_n_0_[19]\,
      O => \madc_n_cnt1_carry__1_i_3_n_0\
    );
\madc_n_cnt1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[16]\,
      I1 => \cnt_reg_n_0_[17]\,
      O => \madc_n_cnt1_carry__1_i_4_n_0\
    );
\madc_n_cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \madc_n_cnt1_carry__1_n_0\,
      CO(3) => \madc_n_cnt1_carry__2_n_0\,
      CO(2) => \madc_n_cnt1_carry__2_n_1\,
      CO(1) => \madc_n_cnt1_carry__2_n_2\,
      CO(0) => \madc_n_cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_madc_n_cnt1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \madc_n_cnt1_carry__2_i_1_n_0\,
      S(2) => \madc_n_cnt1_carry__2_i_2_n_0\,
      S(1) => \madc_n_cnt1_carry__2_i_3_n_0\,
      S(0) => \madc_n_cnt1_carry__2_i_4_n_0\
    );
\madc_n_cnt1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[30]\,
      I1 => \cnt_reg_n_0_[31]\,
      O => \madc_n_cnt1_carry__2_i_1_n_0\
    );
\madc_n_cnt1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[28]\,
      I1 => \cnt_reg_n_0_[29]\,
      O => \madc_n_cnt1_carry__2_i_2_n_0\
    );
\madc_n_cnt1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[26]\,
      I1 => \cnt_reg_n_0_[27]\,
      O => \madc_n_cnt1_carry__2_i_3_n_0\
    );
\madc_n_cnt1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[24]\,
      I1 => \cnt_reg_n_0_[25]\,
      O => \madc_n_cnt1_carry__2_i_4_n_0\
    );
madc_n_cnt1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[7]\,
      O => madc_n_cnt1_carry_i_1_n_0
    );
madc_n_cnt1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => madc_n_cnt1_carry_i_2_n_0
    );
madc_n_cnt1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => madc_n_cnt1_carry_i_3_n_0
    );
madc_n_cnt1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      I1 => \cnt_reg_n_0_[7]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => madc_n_cnt1_carry_i_4_n_0
    );
madc_n_cnt1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[5]\,
      O => madc_n_cnt1_carry_i_5_n_0
    );
madc_n_cnt1_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[3]\,
      O => madc_n_cnt1_carry_i_6_n_0
    );
madc_n_cnt1_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => madc_n_cnt1_carry_i_7_n_0
    );
\madc_n_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => \madc_n_cnt_reg_n_0_[0]\,
      O => madc_n_cnt(0)
    );
\madc_n_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(10),
      O => madc_n_cnt(10)
    );
\madc_n_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(11),
      O => madc_n_cnt(11)
    );
\madc_n_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(12),
      O => madc_n_cnt(12)
    );
\madc_n_cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(13),
      O => madc_n_cnt(13)
    );
\madc_n_cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(14),
      O => madc_n_cnt(14)
    );
\madc_n_cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(15),
      O => madc_n_cnt(15)
    );
\madc_n_cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(16),
      O => madc_n_cnt(16)
    );
\madc_n_cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(17),
      O => madc_n_cnt(17)
    );
\madc_n_cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(18),
      O => madc_n_cnt(18)
    );
\madc_n_cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(19),
      O => madc_n_cnt(19)
    );
\madc_n_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(1),
      O => madc_n_cnt(1)
    );
\madc_n_cnt[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(20),
      O => madc_n_cnt(20)
    );
\madc_n_cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(21),
      O => madc_n_cnt(21)
    );
\madc_n_cnt[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(22),
      O => madc_n_cnt(22)
    );
\madc_n_cnt[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(23),
      O => madc_n_cnt(23)
    );
\madc_n_cnt[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(24),
      O => madc_n_cnt(24)
    );
\madc_n_cnt[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(25),
      O => madc_n_cnt(25)
    );
\madc_n_cnt[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(26),
      O => madc_n_cnt(26)
    );
\madc_n_cnt[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(27),
      O => madc_n_cnt(27)
    );
\madc_n_cnt[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(28),
      O => madc_n_cnt(28)
    );
\madc_n_cnt[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(29),
      O => madc_n_cnt(29)
    );
\madc_n_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(2),
      O => madc_n_cnt(2)
    );
\madc_n_cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(30),
      O => madc_n_cnt(30)
    );
\madc_n_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4101FFFF41014101"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => \madc_n_cnt0_carry__2_n_0\,
      I4 => ad_cmp,
      I5 => \^fsm_sequential_state_reg[1]_0\,
      O => \madc_n_cnt[31]_i_1_n_0\
    );
\madc_n_cnt[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(31),
      O => madc_n_cnt(31)
    );
\madc_n_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(3),
      O => madc_n_cnt(3)
    );
\madc_n_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(4),
      O => madc_n_cnt(4)
    );
\madc_n_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(5),
      O => madc_n_cnt(5)
    );
\madc_n_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(6),
      O => madc_n_cnt(6)
    );
\madc_n_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(7),
      O => madc_n_cnt(7)
    );
\madc_n_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(8),
      O => madc_n_cnt(8)
    );
\madc_n_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => in12(9),
      O => madc_n_cnt(9)
    );
\madc_n_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(0),
      Q => \madc_n_cnt_reg_n_0_[0]\
    );
\madc_n_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(10),
      Q => \madc_n_cnt_reg_n_0_[10]\
    );
\madc_n_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(11),
      Q => \madc_n_cnt_reg_n_0_[11]\
    );
\madc_n_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(12),
      Q => \madc_n_cnt_reg_n_0_[12]\
    );
\madc_n_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(13),
      Q => \madc_n_cnt_reg_n_0_[13]\
    );
\madc_n_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(14),
      Q => \madc_n_cnt_reg_n_0_[14]\
    );
\madc_n_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(15),
      Q => \madc_n_cnt_reg_n_0_[15]\
    );
\madc_n_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(16),
      Q => \madc_n_cnt_reg_n_0_[16]\
    );
\madc_n_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(17),
      Q => \madc_n_cnt_reg_n_0_[17]\
    );
\madc_n_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(18),
      Q => \madc_n_cnt_reg_n_0_[18]\
    );
\madc_n_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(19),
      Q => \madc_n_cnt_reg_n_0_[19]\
    );
\madc_n_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(1),
      Q => \madc_n_cnt_reg_n_0_[1]\
    );
\madc_n_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(20),
      Q => \madc_n_cnt_reg_n_0_[20]\
    );
\madc_n_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(21),
      Q => \madc_n_cnt_reg_n_0_[21]\
    );
\madc_n_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(22),
      Q => \madc_n_cnt_reg_n_0_[22]\
    );
\madc_n_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(23),
      Q => \madc_n_cnt_reg_n_0_[23]\
    );
\madc_n_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(24),
      Q => \madc_n_cnt_reg_n_0_[24]\
    );
\madc_n_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(25),
      Q => \madc_n_cnt_reg_n_0_[25]\
    );
\madc_n_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(26),
      Q => \madc_n_cnt_reg_n_0_[26]\
    );
\madc_n_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(27),
      Q => \madc_n_cnt_reg_n_0_[27]\
    );
\madc_n_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(28),
      Q => \madc_n_cnt_reg_n_0_[28]\
    );
\madc_n_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(29),
      Q => \madc_n_cnt_reg_n_0_[29]\
    );
\madc_n_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(2),
      Q => \madc_n_cnt_reg_n_0_[2]\
    );
\madc_n_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(30),
      Q => \madc_n_cnt_reg_n_0_[30]\
    );
\madc_n_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(31),
      Q => \madc_n_cnt_reg_n_0_[31]\
    );
\madc_n_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(3),
      Q => \madc_n_cnt_reg_n_0_[3]\
    );
\madc_n_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(4),
      Q => \madc_n_cnt_reg_n_0_[4]\
    );
\madc_n_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(5),
      Q => \madc_n_cnt_reg_n_0_[5]\
    );
\madc_n_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(6),
      Q => \madc_n_cnt_reg_n_0_[6]\
    );
\madc_n_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(7),
      Q => \madc_n_cnt_reg_n_0_[7]\
    );
\madc_n_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(8),
      Q => \madc_n_cnt_reg_n_0_[8]\
    );
\madc_n_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_n_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_n_cnt(9),
      Q => \madc_n_cnt_reg_n_0_[9]\
    );
\madc_p_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0076"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => \madc_p_cnt_reg_n_0_[0]\,
      O => madc_p_cnt(0)
    );
\madc_p_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(10),
      O => madc_p_cnt(10)
    );
\madc_p_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(11),
      O => madc_p_cnt(11)
    );
\madc_p_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(12),
      O => madc_p_cnt(12)
    );
\madc_p_cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(13),
      O => madc_p_cnt(13)
    );
\madc_p_cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(14),
      O => madc_p_cnt(14)
    );
\madc_p_cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(15),
      O => madc_p_cnt(15)
    );
\madc_p_cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(16),
      O => madc_p_cnt(16)
    );
\madc_p_cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(17),
      O => madc_p_cnt(17)
    );
\madc_p_cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(18),
      O => madc_p_cnt(18)
    );
\madc_p_cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(19),
      O => madc_p_cnt(19)
    );
\madc_p_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(1),
      O => madc_p_cnt(1)
    );
\madc_p_cnt[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(20),
      O => madc_p_cnt(20)
    );
\madc_p_cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(21),
      O => madc_p_cnt(21)
    );
\madc_p_cnt[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(22),
      O => madc_p_cnt(22)
    );
\madc_p_cnt[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(23),
      O => madc_p_cnt(23)
    );
\madc_p_cnt[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(24),
      O => madc_p_cnt(24)
    );
\madc_p_cnt[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(25),
      O => madc_p_cnt(25)
    );
\madc_p_cnt[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(26),
      O => madc_p_cnt(26)
    );
\madc_p_cnt[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(27),
      O => madc_p_cnt(27)
    );
\madc_p_cnt[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(28),
      O => madc_p_cnt(28)
    );
\madc_p_cnt[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(29),
      O => madc_p_cnt(29)
    );
\madc_p_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(2),
      O => madc_p_cnt(2)
    );
\madc_p_cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(30),
      O => madc_p_cnt(30)
    );
\madc_p_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF030103010301"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => \madc_n_cnt0_carry__2_n_0\,
      I4 => ad_cmp,
      I5 => \^fsm_sequential_state_reg[1]_0\,
      O => \madc_p_cnt[31]_i_1_n_0\
    );
\madc_p_cnt[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(31),
      O => madc_p_cnt(31)
    );
\madc_p_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(3),
      O => madc_p_cnt(3)
    );
\madc_p_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(4),
      O => madc_p_cnt(4)
    );
\madc_p_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(5),
      O => madc_p_cnt(5)
    );
\madc_p_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(6),
      O => madc_p_cnt(6)
    );
\madc_p_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(7),
      O => madc_p_cnt(7)
    );
\madc_p_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(8),
      O => madc_p_cnt(8)
    );
\madc_p_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in16(9),
      O => madc_p_cnt(9)
    );
\madc_p_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(0),
      Q => \madc_p_cnt_reg_n_0_[0]\
    );
\madc_p_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(10),
      Q => \madc_p_cnt_reg_n_0_[10]\
    );
\madc_p_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(11),
      Q => \madc_p_cnt_reg_n_0_[11]\
    );
\madc_p_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(12),
      Q => \madc_p_cnt_reg_n_0_[12]\
    );
\madc_p_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(13),
      Q => \madc_p_cnt_reg_n_0_[13]\
    );
\madc_p_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(14),
      Q => \madc_p_cnt_reg_n_0_[14]\
    );
\madc_p_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(15),
      Q => \madc_p_cnt_reg_n_0_[15]\
    );
\madc_p_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(16),
      Q => \madc_p_cnt_reg_n_0_[16]\
    );
\madc_p_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(17),
      Q => \madc_p_cnt_reg_n_0_[17]\
    );
\madc_p_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(18),
      Q => \madc_p_cnt_reg_n_0_[18]\
    );
\madc_p_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(19),
      Q => \madc_p_cnt_reg_n_0_[19]\
    );
\madc_p_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(1),
      Q => \madc_p_cnt_reg_n_0_[1]\
    );
\madc_p_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(20),
      Q => \madc_p_cnt_reg_n_0_[20]\
    );
\madc_p_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(21),
      Q => \madc_p_cnt_reg_n_0_[21]\
    );
\madc_p_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(22),
      Q => \madc_p_cnt_reg_n_0_[22]\
    );
\madc_p_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(23),
      Q => \madc_p_cnt_reg_n_0_[23]\
    );
\madc_p_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(24),
      Q => \madc_p_cnt_reg_n_0_[24]\
    );
\madc_p_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(25),
      Q => \madc_p_cnt_reg_n_0_[25]\
    );
\madc_p_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(26),
      Q => \madc_p_cnt_reg_n_0_[26]\
    );
\madc_p_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(27),
      Q => \madc_p_cnt_reg_n_0_[27]\
    );
\madc_p_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(28),
      Q => \madc_p_cnt_reg_n_0_[28]\
    );
\madc_p_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(29),
      Q => \madc_p_cnt_reg_n_0_[29]\
    );
\madc_p_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(2),
      Q => \madc_p_cnt_reg_n_0_[2]\
    );
\madc_p_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(30),
      Q => \madc_p_cnt_reg_n_0_[30]\
    );
\madc_p_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(31),
      Q => \madc_p_cnt_reg_n_0_[31]\
    );
\madc_p_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(3),
      Q => \madc_p_cnt_reg_n_0_[3]\
    );
\madc_p_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(4),
      Q => \madc_p_cnt_reg_n_0_[4]\
    );
\madc_p_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(5),
      Q => \madc_p_cnt_reg_n_0_[5]\
    );
\madc_p_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(6),
      Q => \madc_p_cnt_reg_n_0_[6]\
    );
\madc_p_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(7),
      Q => \madc_p_cnt_reg_n_0_[7]\
    );
\madc_p_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(8),
      Q => \madc_p_cnt_reg_n_0_[8]\
    );
\madc_p_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \madc_p_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => madc_p_cnt(9),
      Q => \madc_p_cnt_reg_n_0_[9]\
    );
\madc_proc.T2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => '1',
      Q => \madc_proc.T2_reg_n_0_[8]\
    );
\max_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(0),
      Q => max_cnt(0)
    );
\max_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(10),
      Q => max_cnt(10)
    );
\max_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(11),
      Q => max_cnt(11)
    );
\max_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(12),
      Q => max_cnt(12)
    );
\max_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(13),
      Q => max_cnt(13)
    );
\max_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(14),
      Q => max_cnt(14)
    );
\max_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(15),
      Q => max_cnt(15)
    );
\max_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(16),
      Q => max_cnt(16)
    );
\max_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(17),
      Q => max_cnt(17)
    );
\max_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(18),
      Q => max_cnt(18)
    );
\max_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(19),
      Q => max_cnt(19)
    );
\max_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(1),
      Q => max_cnt(1)
    );
\max_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(20),
      Q => max_cnt(20)
    );
\max_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(21),
      Q => max_cnt(21)
    );
\max_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(22),
      Q => max_cnt(22)
    );
\max_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(23),
      Q => max_cnt(23)
    );
\max_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(24),
      Q => max_cnt(24)
    );
\max_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(25),
      Q => max_cnt(25)
    );
\max_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(26),
      Q => max_cnt(26)
    );
\max_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(27),
      Q => max_cnt(27)
    );
\max_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(28),
      Q => max_cnt(28)
    );
\max_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(29),
      Q => max_cnt(29)
    );
\max_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(2),
      Q => max_cnt(2)
    );
\max_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(30),
      Q => max_cnt(30)
    );
\max_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(31),
      Q => max_cnt(31)
    );
\max_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(3),
      Q => max_cnt(3)
    );
\max_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(4),
      Q => max_cnt(4)
    );
\max_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(5),
      Q => max_cnt(5)
    );
\max_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(6),
      Q => max_cnt(6)
    );
\max_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(7),
      Q => max_cnt(7)
    );
\max_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(8),
      Q => max_cnt(8)
    );
\max_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => calib_i_1_n_0,
      CLR => \^ar\(0),
      D => axi4l_reg_nplc(9),
      Q => max_cnt(9)
    );
\plusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__1/i__carry_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry_n_3\,
      CYINIT => \madc_p_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(4 downto 1),
      S(3) => \madc_p_cnt_reg_n_0_[4]\,
      S(2) => \madc_p_cnt_reg_n_0_[3]\,
      S(1) => \madc_p_cnt_reg_n_0_[2]\,
      S(0) => \madc_p_cnt_reg_n_0_[1]\
    );
\plusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(8 downto 5),
      S(3) => \madc_p_cnt_reg_n_0_[8]\,
      S(2) => \madc_p_cnt_reg_n_0_[7]\,
      S(1) => \madc_p_cnt_reg_n_0_[6]\,
      S(0) => \madc_p_cnt_reg_n_0_[5]\
    );
\plusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(12 downto 9),
      S(3) => \madc_p_cnt_reg_n_0_[12]\,
      S(2) => \madc_p_cnt_reg_n_0_[11]\,
      S(1) => \madc_p_cnt_reg_n_0_[10]\,
      S(0) => \madc_p_cnt_reg_n_0_[9]\
    );
\plusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(16 downto 13),
      S(3) => \madc_p_cnt_reg_n_0_[16]\,
      S(2) => \madc_p_cnt_reg_n_0_[15]\,
      S(1) => \madc_p_cnt_reg_n_0_[14]\,
      S(0) => \madc_p_cnt_reg_n_0_[13]\
    );
\plusOp_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(20 downto 17),
      S(3) => \madc_p_cnt_reg_n_0_[20]\,
      S(2) => \madc_p_cnt_reg_n_0_[19]\,
      S(1) => \madc_p_cnt_reg_n_0_[18]\,
      S(0) => \madc_p_cnt_reg_n_0_[17]\
    );
\plusOp_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(24 downto 21),
      S(3) => \madc_p_cnt_reg_n_0_[24]\,
      S(2) => \madc_p_cnt_reg_n_0_[23]\,
      S(1) => \madc_p_cnt_reg_n_0_[22]\,
      S(0) => \madc_p_cnt_reg_n_0_[21]\
    );
\plusOp_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__4_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__5_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__5_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(28 downto 25),
      S(3) => \madc_p_cnt_reg_n_0_[28]\,
      S(2) => \madc_p_cnt_reg_n_0_[27]\,
      S(1) => \madc_p_cnt_reg_n_0_[26]\,
      S(0) => \madc_p_cnt_reg_n_0_[25]\
    );
\plusOp_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__1/i__carry__6_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in16(31 downto 29),
      S(3) => '0',
      S(2) => \madc_p_cnt_reg_n_0_[31]\,
      S(1) => \madc_p_cnt_reg_n_0_[30]\,
      S(0) => \madc_p_cnt_reg_n_0_[29]\
    );
\plusOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__2/i__carry_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry_n_3\,
      CYINIT => \madc_n_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(4 downto 1),
      S(3) => \madc_n_cnt_reg_n_0_[4]\,
      S(2) => \madc_n_cnt_reg_n_0_[3]\,
      S(1) => \madc_n_cnt_reg_n_0_[2]\,
      S(0) => \madc_n_cnt_reg_n_0_[1]\
    );
\plusOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(8 downto 5),
      S(3) => \madc_n_cnt_reg_n_0_[8]\,
      S(2) => \madc_n_cnt_reg_n_0_[7]\,
      S(1) => \madc_n_cnt_reg_n_0_[6]\,
      S(0) => \madc_n_cnt_reg_n_0_[5]\
    );
\plusOp_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(12 downto 9),
      S(3) => \madc_n_cnt_reg_n_0_[12]\,
      S(2) => \madc_n_cnt_reg_n_0_[11]\,
      S(1) => \madc_n_cnt_reg_n_0_[10]\,
      S(0) => \madc_n_cnt_reg_n_0_[9]\
    );
\plusOp_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(16 downto 13),
      S(3) => \madc_n_cnt_reg_n_0_[16]\,
      S(2) => \madc_n_cnt_reg_n_0_[15]\,
      S(1) => \madc_n_cnt_reg_n_0_[14]\,
      S(0) => \madc_n_cnt_reg_n_0_[13]\
    );
\plusOp_inferred__2/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(20 downto 17),
      S(3) => \madc_n_cnt_reg_n_0_[20]\,
      S(2) => \madc_n_cnt_reg_n_0_[19]\,
      S(1) => \madc_n_cnt_reg_n_0_[18]\,
      S(0) => \madc_n_cnt_reg_n_0_[17]\
    );
\plusOp_inferred__2/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(24 downto 21),
      S(3) => \madc_n_cnt_reg_n_0_[24]\,
      S(2) => \madc_n_cnt_reg_n_0_[23]\,
      S(1) => \madc_n_cnt_reg_n_0_[22]\,
      S(0) => \madc_n_cnt_reg_n_0_[21]\
    );
\plusOp_inferred__2/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__4_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__5_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__5_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(28 downto 25),
      S(3) => \madc_n_cnt_reg_n_0_[28]\,
      S(2) => \madc_n_cnt_reg_n_0_[27]\,
      S(1) => \madc_n_cnt_reg_n_0_[26]\,
      S(0) => \madc_n_cnt_reg_n_0_[25]\
    );
\plusOp_inferred__2/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__2/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__2/i__carry__6_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__2/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in12(31 downto 29),
      S(3) => '0',
      S(2) => \madc_n_cnt_reg_n_0_[31]\,
      S(1) => \madc_n_cnt_reg_n_0_[30]\,
      S(0) => \madc_n_cnt_reg_n_0_[29]\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88888"
    )
        port map (
      I0 => \axi4l_reg_status_reg_n_0_[0]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      I2 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I3 => axi4l_reg_nplc(0),
      I4 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF444444F4"
    )
        port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I3 => \s00_axi_rdata[0]_INST_0_i_3_n_0\,
      I4 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      I5 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => axi4l_reg_p_cnt(0),
      I1 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I3 => \axi4l_reg_n_cnt_reg_n_0_[0]\,
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFCFFFFFDFFFF"
    )
        port map (
      I0 => \axi4l_reg_calib_reg_n_0_[0]\,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awaddr(1),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awaddr(3),
      I5 => axi4l_reg_vref(0),
      O => \s00_axi_rdata[0]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(10),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[10]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(10),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[10]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(10),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(10),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(11),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[11]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(11),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[11]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(11),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(11),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(12),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[12]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(12),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[12]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(12),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(12),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(13),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[13]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(13),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[13]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I3 => axi4l_reg_p_cnt(13),
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(13),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(14),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[14]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(14),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(14),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => \axi4l_reg_n_cnt_reg_n_0_[14]\,
      I3 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I4 => axi4l_reg_p_cnt(14),
      I5 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(15),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[15]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(15),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[15]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I3 => axi4l_reg_p_cnt(15),
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(15),
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(16),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[16]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(16),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(16),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => axi4l_reg_p_cnt(16),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => \axi4l_reg_n_cnt_reg_n_0_[16]\,
      I5 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(17),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[17]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(17),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[17]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(17),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(17),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(18),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[18]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(18),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(18),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => \axi4l_reg_n_cnt_reg_n_0_[18]\,
      I3 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I4 => axi4l_reg_p_cnt(18),
      I5 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(19),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[19]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(19),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[19]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I3 => axi4l_reg_p_cnt(19),
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(19),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88888"
    )
        port map (
      I0 => \axi4l_reg_status_reg_n_0_[1]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      I2 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I3 => axi4l_reg_nplc(1),
      I4 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => s00_axi_awaddr(4),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF444444F4"
    )
        port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I3 => \s00_axi_rdata[1]_INST_0_i_4_n_0\,
      I4 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      I5 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_p_cnt(1),
      I1 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I2 => \axi4l_reg_n_cnt_reg_n_0_[1]\,
      I3 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I4 => axi4l_reg_totl_cnt(1),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFCFFFFFDFFFF"
    )
        port map (
      I0 => \axi4l_reg_calib_reg_n_0_[1]\,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awaddr(1),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awaddr(3),
      I5 => axi4l_reg_vref(1),
      O => \s00_axi_rdata[1]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(20),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[20]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(20),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[20]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I3 => axi4l_reg_p_cnt(20),
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(20),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(21),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[21]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(21),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(21),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => \axi4l_reg_n_cnt_reg_n_0_[21]\,
      I3 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I4 => axi4l_reg_p_cnt(21),
      I5 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(22),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[22]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(22),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => axi4l_reg_p_cnt(22),
      I1 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I3 => \axi4l_reg_n_cnt_reg_n_0_[22]\,
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(22),
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(23),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[23]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(23),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[23]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I3 => axi4l_reg_p_cnt(23),
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(23),
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(24),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[24]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(24),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[24]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(24),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(24),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(25),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[25]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(25),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[25]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(25),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(25),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(26),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[26]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(26),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[26]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(26),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(26),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(27),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[27]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(27),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[27]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(27),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(27),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(28),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[28]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(28),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[28]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(28),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(28),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(29),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[29]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(29),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[29]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I3 => axi4l_reg_p_cnt(29),
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(29),
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(2),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[2]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(2),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[2]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(2),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(2),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(30),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[30]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(30),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => axi4l_reg_p_cnt(30),
      I1 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I3 => \axi4l_reg_n_cnt_reg_n_0_[30]\,
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(30),
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_3_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(31),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[31]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(31),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => s00_axi_araddr(4),
      I1 => s00_axi_araddr(3),
      I2 => s00_axi_araddr(0),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(2),
      O => \s00_axi_rdata[31]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_araddr(4),
      I2 => s00_axi_araddr(3),
      I3 => s00_axi_araddr(0),
      I4 => s00_axi_araddr(1),
      O => \s00_axi_rdata[31]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_araddr(1),
      I2 => s00_axi_araddr(2),
      I3 => s00_axi_araddr(4),
      I4 => s00_axi_araddr(3),
      O => \s00_axi_rdata[31]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s00_axi_araddr(7),
      I1 => s00_axi_araddr(6),
      I2 => s00_axi_araddr(5),
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[31]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(31),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(31),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I1 => s00_axi_awaddr(7),
      I2 => s00_axi_awaddr(6),
      I3 => s00_axi_awaddr(5),
      I4 => s00_axi_awaddr(4),
      O => \s00_axi_rdata[31]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I1 => s00_axi_araddr(4),
      I2 => s00_axi_araddr(3),
      I3 => s00_axi_araddr(2),
      I4 => s00_axi_araddr(1),
      I5 => s00_axi_araddr(0),
      O => \s00_axi_rdata[31]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFDFFFDFFFF"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I1 => s00_axi_araddr(0),
      I2 => s00_axi_araddr(1),
      I3 => s00_axi_araddr(2),
      I4 => s00_axi_araddr(4),
      I5 => s00_axi_araddr(3),
      O => \s00_axi_rdata[31]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awaddr(3),
      I3 => s00_axi_awaddr(2),
      O => \s00_axi_rdata[31]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awaddr(3),
      O => \s00_axi_rdata[31]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => s00_axi_awaddr(5),
      I1 => s00_axi_awaddr(6),
      I2 => s00_axi_awaddr(7),
      I3 => s00_axi_awaddr(4),
      O => \s00_axi_rdata[31]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(3),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[3]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(3),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => axi4l_reg_p_cnt(3),
      I1 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I3 => \axi4l_reg_n_cnt_reg_n_0_[3]\,
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(4),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[4]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(4),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(4),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => \axi4l_reg_n_cnt_reg_n_0_[4]\,
      I3 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I4 => axi4l_reg_p_cnt(4),
      I5 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(5),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[5]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(5),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(5),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => axi4l_reg_p_cnt(5),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => \axi4l_reg_n_cnt_reg_n_0_[5]\,
      I5 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(6),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[6]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(6),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[6]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(6),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(6),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(7),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[7]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(7),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => axi4l_reg_totl_cnt(7),
      I1 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I2 => \axi4l_reg_n_cnt_reg_n_0_[7]\,
      I3 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I4 => axi4l_reg_p_cnt(7),
      I5 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(8),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[8]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(8),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => axi4l_reg_p_cnt(8),
      I1 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I2 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I3 => \axi4l_reg_n_cnt_reg_n_0_[8]\,
      I4 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      I5 => axi4l_reg_totl_cnt(8),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      I4 => axi4l_reg_nplc(9),
      I5 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      I1 => \axi4l_reg_calib_reg_n_0_[9]\,
      I2 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I3 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      I4 => axi4l_reg_vref(9),
      I5 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi4l_reg_n_cnt_reg_n_0_[9]\,
      I1 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      I2 => axi4l_reg_p_cnt(9),
      I3 => \s00_axi_rdata[31]_INST_0_i_11_n_0\,
      I4 => axi4l_reg_totl_cnt(9),
      I5 => \s00_axi_rdata[31]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
state0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state0_carry_n_0,
      CO(2) => state0_carry_n_1,
      CO(1) => state0_carry_n_2,
      CO(0) => state0_carry_n_3,
      CYINIT => '0',
      DI(3) => state0_carry_i_1_n_0,
      DI(2) => state0_carry_i_2_n_0,
      DI(1) => state0_carry_i_3_n_0,
      DI(0) => state0_carry_i_4_n_0,
      O(3 downto 0) => NLW_state0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state0_carry_i_5_n_0,
      S(2) => state0_carry_i_6_n_0,
      S(1) => state0_carry_i_7_n_0,
      S(0) => state0_carry_i_8_n_0
    );
\state0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state0_carry_n_0,
      CO(3) => \state0_carry__0_n_0\,
      CO(2) => \state0_carry__0_n_1\,
      CO(1) => \state0_carry__0_n_2\,
      CO(0) => \state0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \state0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_state0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state0_carry__0_i_2_n_0\,
      S(2) => \state0_carry__0_i_3_n_0\,
      S(1) => \state0_carry__0_i_4_n_0\,
      S(0) => \state0_carry__0_i_5_n_0\
    );
\state0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => \state0_carry__0_i_1_n_0\
    );
\state0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[15]\,
      O => \state0_carry__0_i_2_n_0\
    );
\state0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      I1 => \cnt_reg_n_0_[13]\,
      O => \state0_carry__0_i_3_n_0\
    );
\state0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[10]\,
      I1 => \cnt_reg_n_0_[11]\,
      O => \state0_carry__0_i_4_n_0\
    );
\state0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[9]\,
      O => \state0_carry__0_i_5_n_0\
    );
\state0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_carry__0_n_0\,
      CO(3) => \state0_carry__1_n_0\,
      CO(2) => \state0_carry__1_n_1\,
      CO(1) => \state0_carry__1_n_2\,
      CO(0) => \state0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \state0_carry__1_i_1_n_0\,
      S(2) => \state0_carry__1_i_2_n_0\,
      S(1) => \state0_carry__1_i_3_n_0\,
      S(0) => \state0_carry__1_i_4_n_0\
    );
\state0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      I1 => \cnt_reg_n_0_[23]\,
      O => \state0_carry__1_i_1_n_0\
    );
\state0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[20]\,
      I1 => \cnt_reg_n_0_[21]\,
      O => \state0_carry__1_i_2_n_0\
    );
\state0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[18]\,
      I1 => \cnt_reg_n_0_[19]\,
      O => \state0_carry__1_i_3_n_0\
    );
\state0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[16]\,
      I1 => \cnt_reg_n_0_[17]\,
      O => \state0_carry__1_i_4_n_0\
    );
\state0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_carry__1_n_0\,
      CO(3) => p_0_in,
      CO(2) => \state0_carry__2_n_1\,
      CO(1) => \state0_carry__2_n_2\,
      CO(0) => \state0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \state0_carry__2_i_1_n_0\,
      S(2) => \state0_carry__2_i_2_n_0\,
      S(1) => \state0_carry__2_i_3_n_0\,
      S(0) => \state0_carry__2_i_4_n_0\
    );
\state0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[30]\,
      I1 => \cnt_reg_n_0_[31]\,
      O => \state0_carry__2_i_1_n_0\
    );
\state0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[28]\,
      I1 => \cnt_reg_n_0_[29]\,
      O => \state0_carry__2_i_2_n_0\
    );
\state0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[26]\,
      I1 => \cnt_reg_n_0_[27]\,
      O => \state0_carry__2_i_3_n_0\
    );
\state0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[24]\,
      I1 => \cnt_reg_n_0_[25]\,
      O => \state0_carry__2_i_4_n_0\
    );
state0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[7]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => state0_carry_i_1_n_0
    );
state0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[5]\,
      O => state0_carry_i_2_n_0
    );
state0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \madc_proc.T2_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => state0_carry_i_3_n_0
    );
state0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => state0_carry_i_4_n_0
    );
state0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[7]\,
      O => state0_carry_i_5_n_0
    );
state0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[5]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => state0_carry_i_6_n_0
    );
state0_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \madc_proc.T2_reg_n_0_[8]\,
      O => state0_carry_i_7_n_0
    );
state0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \madc_proc.T2_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => state0_carry_i_8_n_0
    );
sw_vrh_reg: unisim.vcomponents.FDRE
     port map (
      C => madc_clk,
      CE => '1',
      D => sw_vrh_reg_0,
      Q => sw_vrh,
      R => '0'
    );
\totl_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0076"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => \totl_cnt_reg_n_0_[0]\,
      O => totl_cnt(0)
    );
\totl_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(10),
      O => totl_cnt(10)
    );
\totl_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(11),
      O => totl_cnt(11)
    );
\totl_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(12),
      O => totl_cnt(12)
    );
\totl_cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(13),
      O => totl_cnt(13)
    );
\totl_cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(14),
      O => totl_cnt(14)
    );
\totl_cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(15),
      O => totl_cnt(15)
    );
\totl_cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(16),
      O => totl_cnt(16)
    );
\totl_cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(17),
      O => totl_cnt(17)
    );
\totl_cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(18),
      O => totl_cnt(18)
    );
\totl_cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(19),
      O => totl_cnt(19)
    );
\totl_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(1),
      O => totl_cnt(1)
    );
\totl_cnt[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(20),
      O => totl_cnt(20)
    );
\totl_cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(21),
      O => totl_cnt(21)
    );
\totl_cnt[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(22),
      O => totl_cnt(22)
    );
\totl_cnt[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(23),
      O => totl_cnt(23)
    );
\totl_cnt[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(24),
      O => totl_cnt(24)
    );
\totl_cnt[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(25),
      O => totl_cnt(25)
    );
\totl_cnt[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(26),
      O => totl_cnt(26)
    );
\totl_cnt[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(27),
      O => totl_cnt(27)
    );
\totl_cnt[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(28),
      O => totl_cnt(28)
    );
\totl_cnt[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(29),
      O => totl_cnt(29)
    );
\totl_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(2),
      O => totl_cnt(2)
    );
\totl_cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(30),
      O => totl_cnt(30)
    );
\totl_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"554F0545"
    )
        port map (
      I0 => \^state\(2),
      I1 => \madc_n_cnt1_carry__2_n_0\,
      I2 => \^state\(0),
      I3 => \^state\(1),
      I4 => \madc_n_cnt0_carry__2_n_0\,
      O => \totl_cnt[31]_i_1_n_0\
    );
\totl_cnt[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(31),
      O => totl_cnt(31)
    );
\totl_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(3),
      O => totl_cnt(3)
    );
\totl_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(4),
      O => totl_cnt(4)
    );
\totl_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(5),
      O => totl_cnt(5)
    );
\totl_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(6),
      O => totl_cnt(6)
    );
\totl_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(7),
      O => totl_cnt(7)
    );
\totl_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(8),
      O => totl_cnt(8)
    );
\totl_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7600"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => in20(9),
      O => totl_cnt(9)
    );
\totl_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(0),
      Q => \totl_cnt_reg_n_0_[0]\
    );
\totl_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(10),
      Q => \totl_cnt_reg_n_0_[10]\
    );
\totl_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(11),
      Q => \totl_cnt_reg_n_0_[11]\
    );
\totl_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(12),
      Q => \totl_cnt_reg_n_0_[12]\
    );
\totl_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[8]_i_2_n_0\,
      CO(3) => \totl_cnt_reg[12]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[12]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[12]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(12 downto 9),
      S(3) => \totl_cnt_reg_n_0_[12]\,
      S(2) => \totl_cnt_reg_n_0_[11]\,
      S(1) => \totl_cnt_reg_n_0_[10]\,
      S(0) => \totl_cnt_reg_n_0_[9]\
    );
\totl_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(13),
      Q => \totl_cnt_reg_n_0_[13]\
    );
\totl_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(14),
      Q => \totl_cnt_reg_n_0_[14]\
    );
\totl_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(15),
      Q => \totl_cnt_reg_n_0_[15]\
    );
\totl_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(16),
      Q => \totl_cnt_reg_n_0_[16]\
    );
\totl_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[12]_i_2_n_0\,
      CO(3) => \totl_cnt_reg[16]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[16]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[16]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(16 downto 13),
      S(3) => \totl_cnt_reg_n_0_[16]\,
      S(2) => \totl_cnt_reg_n_0_[15]\,
      S(1) => \totl_cnt_reg_n_0_[14]\,
      S(0) => \totl_cnt_reg_n_0_[13]\
    );
\totl_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(17),
      Q => \totl_cnt_reg_n_0_[17]\
    );
\totl_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(18),
      Q => \totl_cnt_reg_n_0_[18]\
    );
\totl_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(19),
      Q => \totl_cnt_reg_n_0_[19]\
    );
\totl_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(1),
      Q => \totl_cnt_reg_n_0_[1]\
    );
\totl_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(20),
      Q => \totl_cnt_reg_n_0_[20]\
    );
\totl_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[16]_i_2_n_0\,
      CO(3) => \totl_cnt_reg[20]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[20]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[20]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(20 downto 17),
      S(3) => \totl_cnt_reg_n_0_[20]\,
      S(2) => \totl_cnt_reg_n_0_[19]\,
      S(1) => \totl_cnt_reg_n_0_[18]\,
      S(0) => \totl_cnt_reg_n_0_[17]\
    );
\totl_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(21),
      Q => \totl_cnt_reg_n_0_[21]\
    );
\totl_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(22),
      Q => \totl_cnt_reg_n_0_[22]\
    );
\totl_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(23),
      Q => \totl_cnt_reg_n_0_[23]\
    );
\totl_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(24),
      Q => \totl_cnt_reg_n_0_[24]\
    );
\totl_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[20]_i_2_n_0\,
      CO(3) => \totl_cnt_reg[24]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[24]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[24]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(24 downto 21),
      S(3) => \totl_cnt_reg_n_0_[24]\,
      S(2) => \totl_cnt_reg_n_0_[23]\,
      S(1) => \totl_cnt_reg_n_0_[22]\,
      S(0) => \totl_cnt_reg_n_0_[21]\
    );
\totl_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(25),
      Q => \totl_cnt_reg_n_0_[25]\
    );
\totl_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(26),
      Q => \totl_cnt_reg_n_0_[26]\
    );
\totl_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(27),
      Q => \totl_cnt_reg_n_0_[27]\
    );
\totl_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(28),
      Q => \totl_cnt_reg_n_0_[28]\
    );
\totl_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[24]_i_2_n_0\,
      CO(3) => \totl_cnt_reg[28]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[28]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[28]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(28 downto 25),
      S(3) => \totl_cnt_reg_n_0_[28]\,
      S(2) => \totl_cnt_reg_n_0_[27]\,
      S(1) => \totl_cnt_reg_n_0_[26]\,
      S(0) => \totl_cnt_reg_n_0_[25]\
    );
\totl_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(29),
      Q => \totl_cnt_reg_n_0_[29]\
    );
\totl_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(2),
      Q => \totl_cnt_reg_n_0_[2]\
    );
\totl_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(30),
      Q => \totl_cnt_reg_n_0_[30]\
    );
\totl_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(31),
      Q => \totl_cnt_reg_n_0_[31]\
    );
\totl_cnt_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_totl_cnt_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \totl_cnt_reg[31]_i_3_n_2\,
      CO(0) => \totl_cnt_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_totl_cnt_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in20(31 downto 29),
      S(3) => '0',
      S(2) => \totl_cnt_reg_n_0_[31]\,
      S(1) => \totl_cnt_reg_n_0_[30]\,
      S(0) => \totl_cnt_reg_n_0_[29]\
    );
\totl_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(3),
      Q => \totl_cnt_reg_n_0_[3]\
    );
\totl_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(4),
      Q => \totl_cnt_reg_n_0_[4]\
    );
\totl_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \totl_cnt_reg[4]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[4]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[4]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[4]_i_2_n_3\,
      CYINIT => \totl_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(4 downto 1),
      S(3) => \totl_cnt_reg_n_0_[4]\,
      S(2) => \totl_cnt_reg_n_0_[3]\,
      S(1) => \totl_cnt_reg_n_0_[2]\,
      S(0) => \totl_cnt_reg_n_0_[1]\
    );
\totl_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(5),
      Q => \totl_cnt_reg_n_0_[5]\
    );
\totl_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(6),
      Q => \totl_cnt_reg_n_0_[6]\
    );
\totl_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(7),
      Q => \totl_cnt_reg_n_0_[7]\
    );
\totl_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(8),
      Q => \totl_cnt_reg_n_0_[8]\
    );
\totl_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \totl_cnt_reg[4]_i_2_n_0\,
      CO(3) => \totl_cnt_reg[8]_i_2_n_0\,
      CO(2) => \totl_cnt_reg[8]_i_2_n_1\,
      CO(1) => \totl_cnt_reg[8]_i_2_n_2\,
      CO(0) => \totl_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in20(8 downto 5),
      S(3) => \totl_cnt_reg_n_0_[8]\,
      S(2) => \totl_cnt_reg_n_0_[7]\,
      S(1) => \totl_cnt_reg_n_0_[6]\,
      S(0) => \totl_cnt_reg_n_0_[5]\
    );
\totl_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => madc_clk,
      CE => \totl_cnt[31]_i_1_n_0\,
      CLR => \^ar\(0),
      D => totl_cnt(9),
      Q => \totl_cnt_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ad_iin : out STD_LOGIC;
    sw_vrh : out STD_LOGIC;
    ad_irp : out STD_LOGIC;
    ad_irn : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ad_cmp : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC is
  signal \??6_out\ : STD_LOGIC;
  signal \^ad_iin\ : STD_LOGIC;
  signal ad_iin_i_1_n_0 : STD_LOGIC;
  signal \^ad_irn\ : STD_LOGIC;
  signal ad_irn2 : STD_LOGIC;
  signal ad_irn_i_1_n_0 : STD_LOGIC;
  signal \^ad_irp\ : STD_LOGIC;
  signal ad_irp_i_1_n_0 : STD_LOGIC;
  signal madc_busy : STD_LOGIC;
  signal madc_busy_i_1_n_0 : STD_LOGIC;
  signal madc_ctr_inst_n_1 : STD_LOGIC;
  signal madc_ctr_inst_n_44 : STD_LOGIC;
  signal madc_ctr_inst_n_7 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sw_vrh\ : STD_LOGIC;
  signal sw_vrh_i_1_n_0 : STD_LOGIC;
begin
  ad_iin <= \^ad_iin\;
  ad_irn <= \^ad_irn\;
  ad_irp <= \^ad_irp\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  sw_vrh <= \^sw_vrh\;
MADC_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC_slave_lite_v1_0_S00_AXI
     port map (
      AR(0) => madc_ctr_inst_n_1,
      axi_bvalid_reg_0 => madc_ctr_inst_n_7,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wvalid => s00_axi_wvalid
    );
ad_iin_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF00E3"
    )
        port map (
      I0 => \??6_out\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \^ad_iin\,
      O => ad_iin_i_1_n_0
    );
ad_irn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08CFFFFF08CF000F"
    )
        port map (
      I0 => ad_irn2,
      I1 => ad_cmp,
      I2 => state(2),
      I3 => state(1),
      I4 => madc_ctr_inst_n_44,
      I5 => \^ad_irn\,
      O => ad_irn_i_1_n_0
    );
ad_irp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"023FFFFF023F000F"
    )
        port map (
      I0 => ad_irn2,
      I1 => ad_cmp,
      I2 => state(2),
      I3 => state(1),
      I4 => madc_ctr_inst_n_44,
      I5 => \^ad_irp\,
      O => ad_irp_i_1_n_0
    );
madc_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F701"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => madc_busy,
      O => madc_busy_i_1_n_0
    );
madc_ctr_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_madc_ctr
     port map (
      \??6_out\ => \??6_out\,
      AR(0) => madc_ctr_inst_n_1,
      CO(0) => ad_irn2,
      \FSM_sequential_state_reg[1]_0\ => madc_ctr_inst_n_44,
      ad_cmp => ad_cmp,
      ad_iin => \^ad_iin\,
      ad_iin_reg_0 => ad_iin_i_1_n_0,
      ad_irn => \^ad_irn\,
      ad_irn_reg_0 => ad_irn_i_1_n_0,
      ad_irp => \^ad_irp\,
      ad_irp_reg_0 => ad_irp_i_1_n_0,
      madc_busy => madc_busy,
      madc_busy_reg_0 => madc_ctr_inst_n_7,
      madc_busy_reg_1 => madc_busy_i_1_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(7 downto 0),
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      state(2 downto 0) => state(2 downto 0),
      sw_vrh => \^sw_vrh\,
      sw_vrh_reg_0 => sw_vrh_i_1_n_0
    );
sw_vrh_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0002"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \^sw_vrh\,
      O => sw_vrh_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ad_iin : out STD_LOGIC;
    ad_irn : out STD_LOGIC;
    ad_irp : out STD_LOGIC;
    sw_vrh : out STD_LOGIC;
    ad_id : out STD_LOGIC;
    ad_cmp : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MADC_ARTY_Z7_MADC_0_0,MADC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MADC,Vivado 2024.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MADC_ARTY_Z7_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN MADC_ARTY_Z7_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  ad_id <= \<const1>\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_wready <= \^s00_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC
     port map (
      ad_cmp => ad_cmp,
      ad_iin => ad_iin,
      ad_irn => ad_irn,
      ad_irp => ad_irp,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(7 downto 0),
      s00_axi_awready => \^s00_axi_awready\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sw_vrh => sw_vrh
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
