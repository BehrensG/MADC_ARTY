// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Sep  9 16:41:01 2026
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MADC_ARTY_Z7_MADC_0_0_sim_netlist.v
// Design      : MADC_ARTY_Z7_MADC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC
   (s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_rvalid,
    ad_iin,
    ad_id,
    ad_irn,
    ad_irp,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_arvalid,
    ad_cmp,
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_aresetn);
  output s00_axi_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output ad_iin;
  output ad_id;
  output ad_irn;
  output ad_irp;
  input [7:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input ad_cmp;
  input [7:0]s00_axi_araddr;
  input s00_axi_bready;
  input s00_axi_rready;
  input s00_axi_aresetn;

  wire ad_cmp;
  wire ad_id;
  wire ad_iin;
  wire ad_irn;
  wire ad_irp;
  wire madc_ctr_inst_n_0;
  wire madc_ctr_inst_n_5;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC_slave_lite_v1_0_S00_AXI MADC_slave_lite_v1_0_S00_AXI_inst
       (.axi_bvalid_reg_0(madc_ctr_inst_n_5),
        .axi_rvalid_reg_0(madc_ctr_inst_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wvalid(s00_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_madc_ctr madc_ctr_inst
       (.AR(madc_ctr_inst_n_0),
        .ad_cmp(ad_cmp),
        .ad_id(ad_id),
        .ad_iin(ad_iin),
        .ad_irn(ad_irn),
        .ad_irp(ad_irp),
        .madc_busy_reg_0(madc_ctr_inst_n_5),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb));
endmodule

(* CHECK_LICENSE_TYPE = "MADC_ARTY_Z7_MADC_0_0,MADC,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "MADC,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ad_iin,
    ad_irn,
    ad_irp,
    sw_vrh,
    ad_id,
    ad_cmp,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output ad_iin;
  output ad_irn;
  output ad_irp;
  output sw_vrh;
  output ad_id;
  input ad_cmp;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MADC_ARTY_Z7_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN MADC_ARTY_Z7_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [7:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire ad_cmp;
  wire ad_id;
  wire ad_iin;
  wire ad_irn;
  wire ad_irp;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axi_wready = s00_axi_awready;
  assign sw_vrh = \<const1> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC U0
       (.ad_cmp(ad_cmp),
        .ad_id(ad_id),
        .ad_iin(ad_iin),
        .ad_irn(ad_irn),
        .ad_irp(ad_irp),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MADC_slave_lite_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    axi_rvalid_reg_0,
    s00_axi_aclk,
    axi_bvalid_reg_0,
    s00_axi_arvalid,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input axi_rvalid_reg_0;
  input s00_axi_aclk;
  input axi_bvalid_reg_0;
  input s00_axi_arvalid;
  input s00_axi_rready;

  wire axi_arready0;
  wire axi_awready0__0;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wvalid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(axi_rvalid_reg_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready0
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0__0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(s00_axi_awready),
        .R(axi_rvalid_reg_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(axi_rvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_rvalid_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_clk_gen_1mhz
   (pll_locked,
    s00_axi_aresetn_0,
    madc_clk,
    s00_axi_aclk,
    s00_axi_aresetn);
  output pll_locked;
  output s00_axi_aresetn_0;
  output madc_clk;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire CE;
  wire CLKFBIN;
  wire ce_1mhz_n_0;
  wire [3:0]ce_counter;
  wire \ce_counter[0]_i_1_n_0 ;
  wire \ce_counter[1]_i_1_n_0 ;
  wire \ce_counter[2]_i_1_n_0 ;
  wire \ce_counter[3]_i_1_n_0 ;
  wire clk_10mhz_buf;
  wire clk_10mhz_raw;
  wire madc_clk;
  wire pll_locked;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire NLW_pll_inst_CLKOUT1_UNCONNECTED;
  wire NLW_pll_inst_CLKOUT2_UNCONNECTED;
  wire NLW_pll_inst_CLKOUT3_UNCONNECTED;
  wire NLW_pll_inst_CLKOUT4_UNCONNECTED;
  wire NLW_pll_inst_CLKOUT5_UNCONNECTED;
  wire NLW_pll_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_pll_inst_DO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    ad_iin_i_2
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_10mhz
       (.I(clk_10mhz_raw),
        .O(clk_10mhz_buf));
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0 GND:S1,IGNORE0,CE1 VCC:S0,IGNORE1,I1" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    bufgce_1mhz
       (.CE0(CE),
        .CE1(1'b0),
        .I0(clk_10mhz_buf),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(madc_clk),
        .S0(1'b1),
        .S1(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    ce_1mhz
       (.I0(ce_counter[2]),
        .I1(ce_counter[1]),
        .I2(ce_counter[3]),
        .I3(ce_counter[0]),
        .O(ce_1mhz_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ce_1mhz_reg
       (.C(clk_10mhz_buf),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(ce_1mhz_n_0),
        .Q(CE));
  LUT1 #(
    .INIT(2'h1)) 
    \ce_counter[0]_i_1 
       (.I0(ce_counter[0]),
        .O(\ce_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h23CC)) 
    \ce_counter[1]_i_1 
       (.I0(ce_counter[2]),
        .I1(ce_counter[1]),
        .I2(ce_counter[3]),
        .I3(ce_counter[0]),
        .O(\ce_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ce_counter[2]_i_1 
       (.I0(ce_counter[2]),
        .I1(ce_counter[1]),
        .I2(ce_counter[0]),
        .O(\ce_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h68F0)) 
    \ce_counter[3]_i_1 
       (.I0(ce_counter[2]),
        .I1(ce_counter[1]),
        .I2(ce_counter[3]),
        .I3(ce_counter[0]),
        .O(\ce_counter[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ce_counter_reg[0] 
       (.C(clk_10mhz_buf),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\ce_counter[0]_i_1_n_0 ),
        .Q(ce_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ce_counter_reg[1] 
       (.C(clk_10mhz_buf),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\ce_counter[1]_i_1_n_0 ),
        .Q(ce_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ce_counter_reg[2] 
       (.C(clk_10mhz_buf),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\ce_counter[2]_i_1_n_0 ),
        .Q(ce_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ce_counter_reg[3] 
       (.C(clk_10mhz_buf),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\ce_counter[3]_i_1_n_0 ),
        .Q(ce_counter[3]));
  (* XILINX_LEGACY_PRIM = "PLLE2_BASE" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DWE,DEN,DCLK,DI[15],DI[14],DI[13],DI[12],DI[11],DI[10],DI[9],DI[8],DI[7],DI[6],DI[5],DI[4],DI[3],DI[2],DI[1],DI[0],DADDR[6],DADDR[5],DADDR[4],DADDR[3],DADDR[2],DADDR[1],DADDR[0],CLKIN2 VCC:CLKINSEL" *) 
  (* box_type = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(8),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE(80),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010000),
    .STARTUP_WAIT("FALSE")) 
    pll_inst
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKIN1(s00_axi_aclk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_10mhz_raw),
        .CLKOUT1(NLW_pll_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_pll_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_pll_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_pll_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_pll_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_pll_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_pll_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(pll_locked),
        .PWRDWN(1'b0),
        .RST(s00_axi_aresetn_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_madc_ctr
   (AR,
    ad_iin,
    ad_irn,
    ad_irp,
    ad_id,
    madc_busy_reg_0,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_aresetn,
    ad_cmp,
    s00_axi_wdata,
    s00_axi_araddr);
  output [0:0]AR;
  output ad_iin;
  output ad_irn;
  output ad_irp;
  output ad_id;
  output madc_busy_reg_0;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [7:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bvalid;
  input s00_axi_bready;
  input s00_axi_aresetn;
  input ad_cmp;
  input [31:0]s00_axi_wdata;
  input [7:0]s00_axi_araddr;

  wire [0:0]AR;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [7:7]T1;
  wire T1_0;
  wire ad_cmp;
  wire ad_id;
  wire ad_id_i_1_n_0;
  wire ad_iin;
  wire ad_iin_i_1_n_0;
  wire ad_irn;
  wire ad_irn2;
  wire ad_irn2_carry__0_i_1_n_0;
  wire ad_irn2_carry__0_i_2_n_0;
  wire ad_irn2_carry__0_i_3_n_0;
  wire ad_irn2_carry__0_i_4_n_0;
  wire ad_irn2_carry__0_i_5_n_0;
  wire ad_irn2_carry__0_i_6_n_0;
  wire ad_irn2_carry__0_i_7_n_0;
  wire ad_irn2_carry__0_i_8_n_0;
  wire ad_irn2_carry__0_n_0;
  wire ad_irn2_carry__0_n_1;
  wire ad_irn2_carry__0_n_2;
  wire ad_irn2_carry__0_n_3;
  wire ad_irn2_carry__1_i_1_n_0;
  wire ad_irn2_carry__1_i_2_n_0;
  wire ad_irn2_carry__1_i_3_n_0;
  wire ad_irn2_carry__1_i_4_n_0;
  wire ad_irn2_carry__1_i_5_n_0;
  wire ad_irn2_carry__1_i_6_n_0;
  wire ad_irn2_carry__1_i_7_n_0;
  wire ad_irn2_carry__1_i_8_n_0;
  wire ad_irn2_carry__1_n_0;
  wire ad_irn2_carry__1_n_1;
  wire ad_irn2_carry__1_n_2;
  wire ad_irn2_carry__1_n_3;
  wire ad_irn2_carry__2_i_1_n_0;
  wire ad_irn2_carry__2_i_2_n_0;
  wire ad_irn2_carry__2_i_3_n_0;
  wire ad_irn2_carry__2_i_4_n_0;
  wire ad_irn2_carry__2_i_5_n_0;
  wire ad_irn2_carry__2_i_6_n_0;
  wire ad_irn2_carry__2_i_7_n_0;
  wire ad_irn2_carry__2_i_8_n_0;
  wire ad_irn2_carry__2_n_1;
  wire ad_irn2_carry__2_n_2;
  wire ad_irn2_carry__2_n_3;
  wire ad_irn2_carry_i_1_n_0;
  wire ad_irn2_carry_i_2_n_0;
  wire ad_irn2_carry_i_3_n_0;
  wire ad_irn2_carry_i_4_n_0;
  wire ad_irn2_carry_i_5_n_0;
  wire ad_irn2_carry_i_6_n_0;
  wire ad_irn2_carry_i_7_n_0;
  wire ad_irn2_carry_i_8_n_0;
  wire ad_irn2_carry_n_0;
  wire ad_irn2_carry_n_1;
  wire ad_irn2_carry_n_2;
  wire ad_irn2_carry_n_3;
  wire ad_irn_i_1_n_0;
  wire ad_irp;
  wire ad_irp_i_1_n_0;
  wire [31:0]axi4l_reg_n_cnt;
  wire axi4l_reg_n_cnt_1;
  wire [31:0]axi4l_reg_nplc;
  wire \axi4l_reg_nplc[15]_i_1_n_0 ;
  wire \axi4l_reg_nplc[23]_i_1_n_0 ;
  wire \axi4l_reg_nplc[31]_i_1_n_0 ;
  wire \axi4l_reg_nplc[7]_i_1_n_0 ;
  wire [31:0]axi4l_reg_p_cnt;
  wire \axi4l_reg_status[0]_i_1_n_0 ;
  wire \axi4l_reg_status[1]_i_1_n_0 ;
  wire \axi4l_reg_status_reg_n_0_[0] ;
  wire \axi4l_reg_status_reg_n_0_[1] ;
  wire [31:0]axi4l_reg_totl_cnt;
  wire [31:0]axi4l_reg_vref;
  wire \axi4l_reg_vref[15]_i_1_n_0 ;
  wire \axi4l_reg_vref[23]_i_1_n_0 ;
  wire \axi4l_reg_vref[31]_i_1_n_0 ;
  wire \axi4l_reg_vref[31]_i_2_n_0 ;
  wire \axi4l_reg_vref[7]_i_1_n_0 ;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[11]_i_1_n_0 ;
  wire \cnt[12]_i_1_n_0 ;
  wire \cnt[13]_i_1_n_0 ;
  wire \cnt[14]_i_1_n_0 ;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[16]_i_1_n_0 ;
  wire \cnt[17]_i_1_n_0 ;
  wire \cnt[18]_i_1_n_0 ;
  wire \cnt[19]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[20]_i_1_n_0 ;
  wire \cnt[21]_i_1_n_0 ;
  wire \cnt[22]_i_1_n_0 ;
  wire \cnt[23]_i_1_n_0 ;
  wire \cnt[24]_i_1_n_0 ;
  wire \cnt[25]_i_1_n_0 ;
  wire \cnt[26]_i_1_n_0 ;
  wire \cnt[27]_i_1_n_0 ;
  wire \cnt[28]_i_1_n_0 ;
  wire \cnt[29]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[30]_i_1_n_0 ;
  wire \cnt[31]_i_1_n_0 ;
  wire \cnt[31]_i_2_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[8]_i_1_n_0 ;
  wire \cnt[9]_i_1_n_0 ;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[12]_i_2_n_4 ;
  wire \cnt_reg[12]_i_2_n_5 ;
  wire \cnt_reg[12]_i_2_n_6 ;
  wire \cnt_reg[12]_i_2_n_7 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_4 ;
  wire \cnt_reg[16]_i_2_n_5 ;
  wire \cnt_reg[16]_i_2_n_6 ;
  wire \cnt_reg[16]_i_2_n_7 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_1 ;
  wire \cnt_reg[20]_i_2_n_2 ;
  wire \cnt_reg[20]_i_2_n_3 ;
  wire \cnt_reg[20]_i_2_n_4 ;
  wire \cnt_reg[20]_i_2_n_5 ;
  wire \cnt_reg[20]_i_2_n_6 ;
  wire \cnt_reg[20]_i_2_n_7 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_1 ;
  wire \cnt_reg[24]_i_2_n_2 ;
  wire \cnt_reg[24]_i_2_n_3 ;
  wire \cnt_reg[24]_i_2_n_4 ;
  wire \cnt_reg[24]_i_2_n_5 ;
  wire \cnt_reg[24]_i_2_n_6 ;
  wire \cnt_reg[24]_i_2_n_7 ;
  wire \cnt_reg[28]_i_2_n_0 ;
  wire \cnt_reg[28]_i_2_n_1 ;
  wire \cnt_reg[28]_i_2_n_2 ;
  wire \cnt_reg[28]_i_2_n_3 ;
  wire \cnt_reg[28]_i_2_n_4 ;
  wire \cnt_reg[28]_i_2_n_5 ;
  wire \cnt_reg[28]_i_2_n_6 ;
  wire \cnt_reg[28]_i_2_n_7 ;
  wire \cnt_reg[31]_i_3_n_2 ;
  wire \cnt_reg[31]_i_3_n_3 ;
  wire \cnt_reg[31]_i_3_n_5 ;
  wire \cnt_reg[31]_i_3_n_6 ;
  wire \cnt_reg[31]_i_3_n_7 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[4]_i_2_n_4 ;
  wire \cnt_reg[4]_i_2_n_5 ;
  wire \cnt_reg[4]_i_2_n_6 ;
  wire \cnt_reg[4]_i_2_n_7 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_4 ;
  wire \cnt_reg[8]_i_2_n_5 ;
  wire \cnt_reg[8]_i_2_n_6 ;
  wire \cnt_reg[8]_i_2_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[26] ;
  wire \cnt_reg_n_0_[27] ;
  wire \cnt_reg_n_0_[28] ;
  wire \cnt_reg_n_0_[29] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[30] ;
  wire \cnt_reg_n_0_[31] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire [31:1]in12;
  wire [31:1]in15;
  wire [31:1]in8;
  wire madc_busy;
  wire madc_busy_i_1_n_0;
  wire madc_busy_reg_0;
  wire madc_clk;
  wire [31:0]madc_n_cnt;
  wire madc_n_cnt0_carry__0_i_1_n_0;
  wire madc_n_cnt0_carry__0_i_2_n_0;
  wire madc_n_cnt0_carry__0_i_3_n_0;
  wire madc_n_cnt0_carry__0_i_4_n_0;
  wire madc_n_cnt0_carry__0_n_0;
  wire madc_n_cnt0_carry__0_n_1;
  wire madc_n_cnt0_carry__0_n_2;
  wire madc_n_cnt0_carry__0_n_3;
  wire madc_n_cnt0_carry__1_i_1_n_0;
  wire madc_n_cnt0_carry__1_i_2_n_0;
  wire madc_n_cnt0_carry__1_i_3_n_0;
  wire madc_n_cnt0_carry__1_i_4_n_0;
  wire madc_n_cnt0_carry__1_n_0;
  wire madc_n_cnt0_carry__1_n_1;
  wire madc_n_cnt0_carry__1_n_2;
  wire madc_n_cnt0_carry__1_n_3;
  wire madc_n_cnt0_carry__2_i_1_n_0;
  wire madc_n_cnt0_carry__2_i_2_n_0;
  wire madc_n_cnt0_carry__2_i_3_n_0;
  wire madc_n_cnt0_carry__2_i_4_n_0;
  wire madc_n_cnt0_carry__2_n_0;
  wire madc_n_cnt0_carry__2_n_1;
  wire madc_n_cnt0_carry__2_n_2;
  wire madc_n_cnt0_carry__2_n_3;
  wire madc_n_cnt0_carry_i_1_n_0;
  wire madc_n_cnt0_carry_i_2_n_0;
  wire madc_n_cnt0_carry_i_3_n_0;
  wire madc_n_cnt0_carry_i_4_n_0;
  wire madc_n_cnt0_carry_i_5_n_0;
  wire madc_n_cnt0_carry_i_6_n_0;
  wire madc_n_cnt0_carry_i_7_n_0;
  wire madc_n_cnt0_carry_n_0;
  wire madc_n_cnt0_carry_n_1;
  wire madc_n_cnt0_carry_n_2;
  wire madc_n_cnt0_carry_n_3;
  wire \madc_n_cnt1_inferred__0/i__carry__0_n_0 ;
  wire \madc_n_cnt1_inferred__0/i__carry__0_n_1 ;
  wire \madc_n_cnt1_inferred__0/i__carry__0_n_2 ;
  wire \madc_n_cnt1_inferred__0/i__carry__0_n_3 ;
  wire \madc_n_cnt1_inferred__0/i__carry__1_n_0 ;
  wire \madc_n_cnt1_inferred__0/i__carry__1_n_1 ;
  wire \madc_n_cnt1_inferred__0/i__carry__1_n_2 ;
  wire \madc_n_cnt1_inferred__0/i__carry__1_n_3 ;
  wire \madc_n_cnt1_inferred__0/i__carry__2_n_1 ;
  wire \madc_n_cnt1_inferred__0/i__carry__2_n_2 ;
  wire \madc_n_cnt1_inferred__0/i__carry__2_n_3 ;
  wire \madc_n_cnt1_inferred__0/i__carry_n_0 ;
  wire \madc_n_cnt1_inferred__0/i__carry_n_1 ;
  wire \madc_n_cnt1_inferred__0/i__carry_n_2 ;
  wire \madc_n_cnt1_inferred__0/i__carry_n_3 ;
  wire \madc_n_cnt[31]_i_1_n_0 ;
  wire \madc_n_cnt_reg_n_0_[0] ;
  wire \madc_n_cnt_reg_n_0_[10] ;
  wire \madc_n_cnt_reg_n_0_[11] ;
  wire \madc_n_cnt_reg_n_0_[12] ;
  wire \madc_n_cnt_reg_n_0_[13] ;
  wire \madc_n_cnt_reg_n_0_[14] ;
  wire \madc_n_cnt_reg_n_0_[15] ;
  wire \madc_n_cnt_reg_n_0_[16] ;
  wire \madc_n_cnt_reg_n_0_[17] ;
  wire \madc_n_cnt_reg_n_0_[18] ;
  wire \madc_n_cnt_reg_n_0_[19] ;
  wire \madc_n_cnt_reg_n_0_[1] ;
  wire \madc_n_cnt_reg_n_0_[20] ;
  wire \madc_n_cnt_reg_n_0_[21] ;
  wire \madc_n_cnt_reg_n_0_[22] ;
  wire \madc_n_cnt_reg_n_0_[23] ;
  wire \madc_n_cnt_reg_n_0_[24] ;
  wire \madc_n_cnt_reg_n_0_[25] ;
  wire \madc_n_cnt_reg_n_0_[26] ;
  wire \madc_n_cnt_reg_n_0_[27] ;
  wire \madc_n_cnt_reg_n_0_[28] ;
  wire \madc_n_cnt_reg_n_0_[29] ;
  wire \madc_n_cnt_reg_n_0_[2] ;
  wire \madc_n_cnt_reg_n_0_[30] ;
  wire \madc_n_cnt_reg_n_0_[31] ;
  wire \madc_n_cnt_reg_n_0_[3] ;
  wire \madc_n_cnt_reg_n_0_[4] ;
  wire \madc_n_cnt_reg_n_0_[5] ;
  wire \madc_n_cnt_reg_n_0_[6] ;
  wire \madc_n_cnt_reg_n_0_[7] ;
  wire \madc_n_cnt_reg_n_0_[8] ;
  wire \madc_n_cnt_reg_n_0_[9] ;
  wire [31:0]madc_p_cnt;
  wire \madc_p_cnt[31]_i_1_n_0 ;
  wire \madc_p_cnt[31]_i_3_n_0 ;
  wire \madc_p_cnt_reg_n_0_[0] ;
  wire \madc_p_cnt_reg_n_0_[10] ;
  wire \madc_p_cnt_reg_n_0_[11] ;
  wire \madc_p_cnt_reg_n_0_[12] ;
  wire \madc_p_cnt_reg_n_0_[13] ;
  wire \madc_p_cnt_reg_n_0_[14] ;
  wire \madc_p_cnt_reg_n_0_[15] ;
  wire \madc_p_cnt_reg_n_0_[16] ;
  wire \madc_p_cnt_reg_n_0_[17] ;
  wire \madc_p_cnt_reg_n_0_[18] ;
  wire \madc_p_cnt_reg_n_0_[19] ;
  wire \madc_p_cnt_reg_n_0_[1] ;
  wire \madc_p_cnt_reg_n_0_[20] ;
  wire \madc_p_cnt_reg_n_0_[21] ;
  wire \madc_p_cnt_reg_n_0_[22] ;
  wire \madc_p_cnt_reg_n_0_[23] ;
  wire \madc_p_cnt_reg_n_0_[24] ;
  wire \madc_p_cnt_reg_n_0_[25] ;
  wire \madc_p_cnt_reg_n_0_[26] ;
  wire \madc_p_cnt_reg_n_0_[27] ;
  wire \madc_p_cnt_reg_n_0_[28] ;
  wire \madc_p_cnt_reg_n_0_[29] ;
  wire \madc_p_cnt_reg_n_0_[2] ;
  wire \madc_p_cnt_reg_n_0_[30] ;
  wire \madc_p_cnt_reg_n_0_[31] ;
  wire \madc_p_cnt_reg_n_0_[3] ;
  wire \madc_p_cnt_reg_n_0_[4] ;
  wire \madc_p_cnt_reg_n_0_[5] ;
  wire \madc_p_cnt_reg_n_0_[6] ;
  wire \madc_p_cnt_reg_n_0_[7] ;
  wire \madc_p_cnt_reg_n_0_[8] ;
  wire \madc_p_cnt_reg_n_0_[9] ;
  wire [31:0]max_cnt;
  wire pll_locked;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_0 ;
  wire \plusOp_inferred__1/i__carry__2_n_1 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__3_n_0 ;
  wire \plusOp_inferred__1/i__carry__3_n_1 ;
  wire \plusOp_inferred__1/i__carry__3_n_2 ;
  wire \plusOp_inferred__1/i__carry__3_n_3 ;
  wire \plusOp_inferred__1/i__carry__4_n_0 ;
  wire \plusOp_inferred__1/i__carry__4_n_1 ;
  wire \plusOp_inferred__1/i__carry__4_n_2 ;
  wire \plusOp_inferred__1/i__carry__4_n_3 ;
  wire \plusOp_inferred__1/i__carry__5_n_0 ;
  wire \plusOp_inferred__1/i__carry__5_n_1 ;
  wire \plusOp_inferred__1/i__carry__5_n_2 ;
  wire \plusOp_inferred__1/i__carry__5_n_3 ;
  wire \plusOp_inferred__1/i__carry__6_n_2 ;
  wire \plusOp_inferred__1/i__carry__6_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__2/i__carry__0_n_0 ;
  wire \plusOp_inferred__2/i__carry__0_n_1 ;
  wire \plusOp_inferred__2/i__carry__0_n_2 ;
  wire \plusOp_inferred__2/i__carry__0_n_3 ;
  wire \plusOp_inferred__2/i__carry__1_n_0 ;
  wire \plusOp_inferred__2/i__carry__1_n_1 ;
  wire \plusOp_inferred__2/i__carry__1_n_2 ;
  wire \plusOp_inferred__2/i__carry__1_n_3 ;
  wire \plusOp_inferred__2/i__carry__2_n_0 ;
  wire \plusOp_inferred__2/i__carry__2_n_1 ;
  wire \plusOp_inferred__2/i__carry__2_n_2 ;
  wire \plusOp_inferred__2/i__carry__2_n_3 ;
  wire \plusOp_inferred__2/i__carry__3_n_0 ;
  wire \plusOp_inferred__2/i__carry__3_n_1 ;
  wire \plusOp_inferred__2/i__carry__3_n_2 ;
  wire \plusOp_inferred__2/i__carry__3_n_3 ;
  wire \plusOp_inferred__2/i__carry__4_n_0 ;
  wire \plusOp_inferred__2/i__carry__4_n_1 ;
  wire \plusOp_inferred__2/i__carry__4_n_2 ;
  wire \plusOp_inferred__2/i__carry__4_n_3 ;
  wire \plusOp_inferred__2/i__carry__5_n_0 ;
  wire \plusOp_inferred__2/i__carry__5_n_1 ;
  wire \plusOp_inferred__2/i__carry__5_n_2 ;
  wire \plusOp_inferred__2/i__carry__5_n_3 ;
  wire \plusOp_inferred__2/i__carry__6_n_2 ;
  wire \plusOp_inferred__2/i__carry__6_n_3 ;
  wire \plusOp_inferred__2/i__carry_n_0 ;
  wire \plusOp_inferred__2/i__carry_n_1 ;
  wire \plusOp_inferred__2/i__carry_n_2 ;
  wire \plusOp_inferred__2/i__carry_n_3 ;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire [2:0]state;
  wire state1;
  wire [31:0]totl_cnt;
  wire \totl_cnt[31]_i_10_n_0 ;
  wire \totl_cnt[31]_i_11_n_0 ;
  wire \totl_cnt[31]_i_12_n_0 ;
  wire \totl_cnt[31]_i_13_n_0 ;
  wire \totl_cnt[31]_i_15_n_0 ;
  wire \totl_cnt[31]_i_16_n_0 ;
  wire \totl_cnt[31]_i_17_n_0 ;
  wire \totl_cnt[31]_i_18_n_0 ;
  wire \totl_cnt[31]_i_19_n_0 ;
  wire \totl_cnt[31]_i_1_n_0 ;
  wire \totl_cnt[31]_i_20_n_0 ;
  wire \totl_cnt[31]_i_21_n_0 ;
  wire \totl_cnt[31]_i_22_n_0 ;
  wire \totl_cnt[31]_i_23_n_0 ;
  wire \totl_cnt[31]_i_24_n_0 ;
  wire \totl_cnt[31]_i_25_n_0 ;
  wire \totl_cnt[31]_i_6_n_0 ;
  wire \totl_cnt[31]_i_7_n_0 ;
  wire \totl_cnt[31]_i_8_n_0 ;
  wire \totl_cnt_reg[12]_i_2_n_0 ;
  wire \totl_cnt_reg[12]_i_2_n_1 ;
  wire \totl_cnt_reg[12]_i_2_n_2 ;
  wire \totl_cnt_reg[12]_i_2_n_3 ;
  wire \totl_cnt_reg[16]_i_2_n_0 ;
  wire \totl_cnt_reg[16]_i_2_n_1 ;
  wire \totl_cnt_reg[16]_i_2_n_2 ;
  wire \totl_cnt_reg[16]_i_2_n_3 ;
  wire \totl_cnt_reg[20]_i_2_n_0 ;
  wire \totl_cnt_reg[20]_i_2_n_1 ;
  wire \totl_cnt_reg[20]_i_2_n_2 ;
  wire \totl_cnt_reg[20]_i_2_n_3 ;
  wire \totl_cnt_reg[24]_i_2_n_0 ;
  wire \totl_cnt_reg[24]_i_2_n_1 ;
  wire \totl_cnt_reg[24]_i_2_n_2 ;
  wire \totl_cnt_reg[24]_i_2_n_3 ;
  wire \totl_cnt_reg[28]_i_2_n_0 ;
  wire \totl_cnt_reg[28]_i_2_n_1 ;
  wire \totl_cnt_reg[28]_i_2_n_2 ;
  wire \totl_cnt_reg[28]_i_2_n_3 ;
  wire \totl_cnt_reg[31]_i_14_n_0 ;
  wire \totl_cnt_reg[31]_i_14_n_1 ;
  wire \totl_cnt_reg[31]_i_14_n_2 ;
  wire \totl_cnt_reg[31]_i_14_n_3 ;
  wire \totl_cnt_reg[31]_i_3_n_1 ;
  wire \totl_cnt_reg[31]_i_3_n_2 ;
  wire \totl_cnt_reg[31]_i_3_n_3 ;
  wire \totl_cnt_reg[31]_i_4_n_2 ;
  wire \totl_cnt_reg[31]_i_4_n_3 ;
  wire \totl_cnt_reg[31]_i_5_n_0 ;
  wire \totl_cnt_reg[31]_i_5_n_1 ;
  wire \totl_cnt_reg[31]_i_5_n_2 ;
  wire \totl_cnt_reg[31]_i_5_n_3 ;
  wire \totl_cnt_reg[31]_i_9_n_0 ;
  wire \totl_cnt_reg[31]_i_9_n_1 ;
  wire \totl_cnt_reg[31]_i_9_n_2 ;
  wire \totl_cnt_reg[31]_i_9_n_3 ;
  wire \totl_cnt_reg[4]_i_2_n_0 ;
  wire \totl_cnt_reg[4]_i_2_n_1 ;
  wire \totl_cnt_reg[4]_i_2_n_2 ;
  wire \totl_cnt_reg[4]_i_2_n_3 ;
  wire \totl_cnt_reg[8]_i_2_n_0 ;
  wire \totl_cnt_reg[8]_i_2_n_1 ;
  wire \totl_cnt_reg[8]_i_2_n_2 ;
  wire \totl_cnt_reg[8]_i_2_n_3 ;
  wire \totl_cnt_reg_n_0_[0] ;
  wire \totl_cnt_reg_n_0_[10] ;
  wire \totl_cnt_reg_n_0_[11] ;
  wire \totl_cnt_reg_n_0_[12] ;
  wire \totl_cnt_reg_n_0_[13] ;
  wire \totl_cnt_reg_n_0_[14] ;
  wire \totl_cnt_reg_n_0_[15] ;
  wire \totl_cnt_reg_n_0_[16] ;
  wire \totl_cnt_reg_n_0_[17] ;
  wire \totl_cnt_reg_n_0_[18] ;
  wire \totl_cnt_reg_n_0_[19] ;
  wire \totl_cnt_reg_n_0_[1] ;
  wire \totl_cnt_reg_n_0_[20] ;
  wire \totl_cnt_reg_n_0_[21] ;
  wire \totl_cnt_reg_n_0_[22] ;
  wire \totl_cnt_reg_n_0_[23] ;
  wire \totl_cnt_reg_n_0_[24] ;
  wire \totl_cnt_reg_n_0_[25] ;
  wire \totl_cnt_reg_n_0_[26] ;
  wire \totl_cnt_reg_n_0_[27] ;
  wire \totl_cnt_reg_n_0_[28] ;
  wire \totl_cnt_reg_n_0_[29] ;
  wire \totl_cnt_reg_n_0_[2] ;
  wire \totl_cnt_reg_n_0_[30] ;
  wire \totl_cnt_reg_n_0_[31] ;
  wire \totl_cnt_reg_n_0_[3] ;
  wire \totl_cnt_reg_n_0_[4] ;
  wire \totl_cnt_reg_n_0_[5] ;
  wire \totl_cnt_reg_n_0_[6] ;
  wire \totl_cnt_reg_n_0_[7] ;
  wire \totl_cnt_reg_n_0_[8] ;
  wire \totl_cnt_reg_n_0_[9] ;
  wire [3:0]NLW_ad_irn2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ad_irn2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ad_irn2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ad_irn2_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_madc_n_cnt0_carry_O_UNCONNECTED;
  wire [3:0]NLW_madc_n_cnt0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_madc_n_cnt0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_madc_n_cnt0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_madc_n_cnt1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_madc_n_cnt1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_madc_n_cnt1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_madc_n_cnt1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__2/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__2/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW_totl_cnt_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:3]\NLW_totl_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_totl_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_totl_cnt_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_totl_cnt_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_totl_cnt_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_totl_cnt_reg[31]_i_9_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF00FFFFFF320000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(pll_locked),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66EA22AA22AA22A)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state1),
        .I4(ad_irn2),
        .I5(ad_cmp),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD1FFFFFFFFCC0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(ad_irn2),
        .I1(state[2]),
        .I2(state1),
        .I3(state[0]),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF550F330FFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\totl_cnt_reg[31]_i_3_n_1 ),
        .I1(state1),
        .I2(madc_n_cnt0_carry__2_n_0),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFF0C0C0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state1),
        .I1(madc_n_cnt0_carry__2_n_0),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:010,s5:011,s3:001,s7:100,s6:101,s8:110,s0:000,s9:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(madc_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "s4:010,s5:011,s3:001,s7:100,s6:101,s8:110,s0:000,s9:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(madc_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "s4:010,s5:011,s3:001,s7:100,s6:101,s8:110,s0:000,s9:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(madc_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF01)) 
    ad_id_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(ad_id),
        .O(ad_id_i_1_n_0));
  FDPE ad_id_reg
       (.C(madc_clk),
        .CE(1'b1),
        .D(ad_id_i_1_n_0),
        .PRE(AR),
        .Q(ad_id));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFD41)) 
    ad_iin_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(ad_iin),
        .O(ad_iin_i_1_n_0));
  FDPE ad_iin_reg
       (.C(madc_clk),
        .CE(1'b1),
        .D(ad_iin_i_1_n_0),
        .PRE(AR),
        .Q(ad_iin));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ad_irn2_carry
       (.CI(1'b0),
        .CO({ad_irn2_carry_n_0,ad_irn2_carry_n_1,ad_irn2_carry_n_2,ad_irn2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ad_irn2_carry_i_1_n_0,ad_irn2_carry_i_2_n_0,ad_irn2_carry_i_3_n_0,ad_irn2_carry_i_4_n_0}),
        .O(NLW_ad_irn2_carry_O_UNCONNECTED[3:0]),
        .S({ad_irn2_carry_i_5_n_0,ad_irn2_carry_i_6_n_0,ad_irn2_carry_i_7_n_0,ad_irn2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ad_irn2_carry__0
       (.CI(ad_irn2_carry_n_0),
        .CO({ad_irn2_carry__0_n_0,ad_irn2_carry__0_n_1,ad_irn2_carry__0_n_2,ad_irn2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ad_irn2_carry__0_i_1_n_0,ad_irn2_carry__0_i_2_n_0,ad_irn2_carry__0_i_3_n_0,ad_irn2_carry__0_i_4_n_0}),
        .O(NLW_ad_irn2_carry__0_O_UNCONNECTED[3:0]),
        .S({ad_irn2_carry__0_i_5_n_0,ad_irn2_carry__0_i_6_n_0,ad_irn2_carry__0_i_7_n_0,ad_irn2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__0_i_1
       (.I0(max_cnt[15]),
        .I1(\totl_cnt_reg_n_0_[15] ),
        .I2(max_cnt[14]),
        .I3(\totl_cnt_reg_n_0_[14] ),
        .O(ad_irn2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__0_i_2
       (.I0(max_cnt[13]),
        .I1(\totl_cnt_reg_n_0_[13] ),
        .I2(max_cnt[12]),
        .I3(\totl_cnt_reg_n_0_[12] ),
        .O(ad_irn2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__0_i_3
       (.I0(max_cnt[11]),
        .I1(\totl_cnt_reg_n_0_[11] ),
        .I2(max_cnt[10]),
        .I3(\totl_cnt_reg_n_0_[10] ),
        .O(ad_irn2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__0_i_4
       (.I0(max_cnt[9]),
        .I1(\totl_cnt_reg_n_0_[9] ),
        .I2(max_cnt[8]),
        .I3(\totl_cnt_reg_n_0_[8] ),
        .O(ad_irn2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__0_i_5
       (.I0(\totl_cnt_reg_n_0_[15] ),
        .I1(max_cnt[15]),
        .I2(\totl_cnt_reg_n_0_[14] ),
        .I3(max_cnt[14]),
        .O(ad_irn2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__0_i_6
       (.I0(\totl_cnt_reg_n_0_[13] ),
        .I1(max_cnt[13]),
        .I2(\totl_cnt_reg_n_0_[12] ),
        .I3(max_cnt[12]),
        .O(ad_irn2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__0_i_7
       (.I0(\totl_cnt_reg_n_0_[11] ),
        .I1(max_cnt[11]),
        .I2(\totl_cnt_reg_n_0_[10] ),
        .I3(max_cnt[10]),
        .O(ad_irn2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__0_i_8
       (.I0(\totl_cnt_reg_n_0_[9] ),
        .I1(max_cnt[9]),
        .I2(\totl_cnt_reg_n_0_[8] ),
        .I3(max_cnt[8]),
        .O(ad_irn2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ad_irn2_carry__1
       (.CI(ad_irn2_carry__0_n_0),
        .CO({ad_irn2_carry__1_n_0,ad_irn2_carry__1_n_1,ad_irn2_carry__1_n_2,ad_irn2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ad_irn2_carry__1_i_1_n_0,ad_irn2_carry__1_i_2_n_0,ad_irn2_carry__1_i_3_n_0,ad_irn2_carry__1_i_4_n_0}),
        .O(NLW_ad_irn2_carry__1_O_UNCONNECTED[3:0]),
        .S({ad_irn2_carry__1_i_5_n_0,ad_irn2_carry__1_i_6_n_0,ad_irn2_carry__1_i_7_n_0,ad_irn2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__1_i_1
       (.I0(max_cnt[23]),
        .I1(\totl_cnt_reg_n_0_[23] ),
        .I2(max_cnt[22]),
        .I3(\totl_cnt_reg_n_0_[22] ),
        .O(ad_irn2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__1_i_2
       (.I0(max_cnt[21]),
        .I1(\totl_cnt_reg_n_0_[21] ),
        .I2(max_cnt[20]),
        .I3(\totl_cnt_reg_n_0_[20] ),
        .O(ad_irn2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__1_i_3
       (.I0(max_cnt[19]),
        .I1(\totl_cnt_reg_n_0_[19] ),
        .I2(max_cnt[18]),
        .I3(\totl_cnt_reg_n_0_[18] ),
        .O(ad_irn2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__1_i_4
       (.I0(max_cnt[17]),
        .I1(\totl_cnt_reg_n_0_[17] ),
        .I2(max_cnt[16]),
        .I3(\totl_cnt_reg_n_0_[16] ),
        .O(ad_irn2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__1_i_5
       (.I0(\totl_cnt_reg_n_0_[23] ),
        .I1(max_cnt[23]),
        .I2(\totl_cnt_reg_n_0_[22] ),
        .I3(max_cnt[22]),
        .O(ad_irn2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__1_i_6
       (.I0(\totl_cnt_reg_n_0_[21] ),
        .I1(max_cnt[21]),
        .I2(\totl_cnt_reg_n_0_[20] ),
        .I3(max_cnt[20]),
        .O(ad_irn2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__1_i_7
       (.I0(\totl_cnt_reg_n_0_[19] ),
        .I1(max_cnt[19]),
        .I2(\totl_cnt_reg_n_0_[18] ),
        .I3(max_cnt[18]),
        .O(ad_irn2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__1_i_8
       (.I0(\totl_cnt_reg_n_0_[17] ),
        .I1(max_cnt[17]),
        .I2(\totl_cnt_reg_n_0_[16] ),
        .I3(max_cnt[16]),
        .O(ad_irn2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ad_irn2_carry__2
       (.CI(ad_irn2_carry__1_n_0),
        .CO({ad_irn2,ad_irn2_carry__2_n_1,ad_irn2_carry__2_n_2,ad_irn2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ad_irn2_carry__2_i_1_n_0,ad_irn2_carry__2_i_2_n_0,ad_irn2_carry__2_i_3_n_0,ad_irn2_carry__2_i_4_n_0}),
        .O(NLW_ad_irn2_carry__2_O_UNCONNECTED[3:0]),
        .S({ad_irn2_carry__2_i_5_n_0,ad_irn2_carry__2_i_6_n_0,ad_irn2_carry__2_i_7_n_0,ad_irn2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__2_i_1
       (.I0(max_cnt[31]),
        .I1(\totl_cnt_reg_n_0_[31] ),
        .I2(max_cnt[30]),
        .I3(\totl_cnt_reg_n_0_[30] ),
        .O(ad_irn2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__2_i_2
       (.I0(max_cnt[29]),
        .I1(\totl_cnt_reg_n_0_[29] ),
        .I2(max_cnt[28]),
        .I3(\totl_cnt_reg_n_0_[28] ),
        .O(ad_irn2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__2_i_3
       (.I0(max_cnt[27]),
        .I1(\totl_cnt_reg_n_0_[27] ),
        .I2(max_cnt[26]),
        .I3(\totl_cnt_reg_n_0_[26] ),
        .O(ad_irn2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry__2_i_4
       (.I0(max_cnt[25]),
        .I1(\totl_cnt_reg_n_0_[25] ),
        .I2(max_cnt[24]),
        .I3(\totl_cnt_reg_n_0_[24] ),
        .O(ad_irn2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__2_i_5
       (.I0(\totl_cnt_reg_n_0_[31] ),
        .I1(max_cnt[31]),
        .I2(\totl_cnt_reg_n_0_[30] ),
        .I3(max_cnt[30]),
        .O(ad_irn2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__2_i_6
       (.I0(\totl_cnt_reg_n_0_[29] ),
        .I1(max_cnt[29]),
        .I2(\totl_cnt_reg_n_0_[28] ),
        .I3(max_cnt[28]),
        .O(ad_irn2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__2_i_7
       (.I0(\totl_cnt_reg_n_0_[27] ),
        .I1(max_cnt[27]),
        .I2(\totl_cnt_reg_n_0_[26] ),
        .I3(max_cnt[26]),
        .O(ad_irn2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry__2_i_8
       (.I0(\totl_cnt_reg_n_0_[25] ),
        .I1(max_cnt[25]),
        .I2(\totl_cnt_reg_n_0_[24] ),
        .I3(max_cnt[24]),
        .O(ad_irn2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry_i_1
       (.I0(max_cnt[7]),
        .I1(\totl_cnt_reg_n_0_[7] ),
        .I2(max_cnt[6]),
        .I3(\totl_cnt_reg_n_0_[6] ),
        .O(ad_irn2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry_i_2
       (.I0(max_cnt[5]),
        .I1(\totl_cnt_reg_n_0_[5] ),
        .I2(max_cnt[4]),
        .I3(\totl_cnt_reg_n_0_[4] ),
        .O(ad_irn2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry_i_3
       (.I0(max_cnt[3]),
        .I1(\totl_cnt_reg_n_0_[3] ),
        .I2(max_cnt[2]),
        .I3(\totl_cnt_reg_n_0_[2] ),
        .O(ad_irn2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_irn2_carry_i_4
       (.I0(max_cnt[1]),
        .I1(\totl_cnt_reg_n_0_[1] ),
        .I2(max_cnt[0]),
        .I3(\totl_cnt_reg_n_0_[0] ),
        .O(ad_irn2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry_i_5
       (.I0(\totl_cnt_reg_n_0_[7] ),
        .I1(max_cnt[7]),
        .I2(\totl_cnt_reg_n_0_[6] ),
        .I3(max_cnt[6]),
        .O(ad_irn2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry_i_6
       (.I0(\totl_cnt_reg_n_0_[5] ),
        .I1(max_cnt[5]),
        .I2(\totl_cnt_reg_n_0_[4] ),
        .I3(max_cnt[4]),
        .O(ad_irn2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry_i_7
       (.I0(\totl_cnt_reg_n_0_[3] ),
        .I1(max_cnt[3]),
        .I2(\totl_cnt_reg_n_0_[2] ),
        .I3(max_cnt[2]),
        .O(ad_irn2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_irn2_carry_i_8
       (.I0(\totl_cnt_reg_n_0_[1] ),
        .I1(max_cnt[1]),
        .I2(\totl_cnt_reg_n_0_[0] ),
        .I3(max_cnt[0]),
        .O(ad_irn2_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF33B300FF)) 
    ad_irn_i_1
       (.I0(ad_cmp),
        .I1(state[0]),
        .I2(ad_irn2),
        .I3(state[2]),
        .I4(state[1]),
        .I5(ad_irn),
        .O(ad_irn_i_1_n_0));
  FDPE ad_irn_reg
       (.C(madc_clk),
        .CE(1'b1),
        .D(ad_irn_i_1_n_0),
        .PRE(AR),
        .Q(ad_irn));
  LUT6 #(
    .INIT(64'hFF4CFFFF334000FF)) 
    ad_irp_i_1
       (.I0(ad_cmp),
        .I1(state[0]),
        .I2(ad_irn2),
        .I3(state[2]),
        .I4(state[1]),
        .I5(ad_irp),
        .O(ad_irp_i_1_n_0));
  FDPE ad_irp_reg
       (.C(madc_clk),
        .CE(1'b1),
        .D(ad_irp_i_1_n_0),
        .PRE(AR),
        .Q(ad_irp));
  FDCE \axi4l_reg_n_cnt_reg[0] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[0] ),
        .Q(axi4l_reg_n_cnt[0]));
  FDCE \axi4l_reg_n_cnt_reg[10] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[10] ),
        .Q(axi4l_reg_n_cnt[10]));
  FDCE \axi4l_reg_n_cnt_reg[11] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[11] ),
        .Q(axi4l_reg_n_cnt[11]));
  FDCE \axi4l_reg_n_cnt_reg[12] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[12] ),
        .Q(axi4l_reg_n_cnt[12]));
  FDCE \axi4l_reg_n_cnt_reg[13] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[13] ),
        .Q(axi4l_reg_n_cnt[13]));
  FDCE \axi4l_reg_n_cnt_reg[14] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[14] ),
        .Q(axi4l_reg_n_cnt[14]));
  FDCE \axi4l_reg_n_cnt_reg[15] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[15] ),
        .Q(axi4l_reg_n_cnt[15]));
  FDCE \axi4l_reg_n_cnt_reg[16] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[16] ),
        .Q(axi4l_reg_n_cnt[16]));
  FDCE \axi4l_reg_n_cnt_reg[17] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[17] ),
        .Q(axi4l_reg_n_cnt[17]));
  FDCE \axi4l_reg_n_cnt_reg[18] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[18] ),
        .Q(axi4l_reg_n_cnt[18]));
  FDCE \axi4l_reg_n_cnt_reg[19] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[19] ),
        .Q(axi4l_reg_n_cnt[19]));
  FDCE \axi4l_reg_n_cnt_reg[1] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[1] ),
        .Q(axi4l_reg_n_cnt[1]));
  FDCE \axi4l_reg_n_cnt_reg[20] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[20] ),
        .Q(axi4l_reg_n_cnt[20]));
  FDCE \axi4l_reg_n_cnt_reg[21] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[21] ),
        .Q(axi4l_reg_n_cnt[21]));
  FDCE \axi4l_reg_n_cnt_reg[22] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[22] ),
        .Q(axi4l_reg_n_cnt[22]));
  FDCE \axi4l_reg_n_cnt_reg[23] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[23] ),
        .Q(axi4l_reg_n_cnt[23]));
  FDCE \axi4l_reg_n_cnt_reg[24] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[24] ),
        .Q(axi4l_reg_n_cnt[24]));
  FDCE \axi4l_reg_n_cnt_reg[25] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[25] ),
        .Q(axi4l_reg_n_cnt[25]));
  FDCE \axi4l_reg_n_cnt_reg[26] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[26] ),
        .Q(axi4l_reg_n_cnt[26]));
  FDCE \axi4l_reg_n_cnt_reg[27] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[27] ),
        .Q(axi4l_reg_n_cnt[27]));
  FDCE \axi4l_reg_n_cnt_reg[28] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[28] ),
        .Q(axi4l_reg_n_cnt[28]));
  FDCE \axi4l_reg_n_cnt_reg[29] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[29] ),
        .Q(axi4l_reg_n_cnt[29]));
  FDCE \axi4l_reg_n_cnt_reg[2] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[2] ),
        .Q(axi4l_reg_n_cnt[2]));
  FDCE \axi4l_reg_n_cnt_reg[30] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[30] ),
        .Q(axi4l_reg_n_cnt[30]));
  FDCE \axi4l_reg_n_cnt_reg[31] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[31] ),
        .Q(axi4l_reg_n_cnt[31]));
  FDCE \axi4l_reg_n_cnt_reg[3] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[3] ),
        .Q(axi4l_reg_n_cnt[3]));
  FDCE \axi4l_reg_n_cnt_reg[4] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[4] ),
        .Q(axi4l_reg_n_cnt[4]));
  FDCE \axi4l_reg_n_cnt_reg[5] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[5] ),
        .Q(axi4l_reg_n_cnt[5]));
  FDCE \axi4l_reg_n_cnt_reg[6] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[6] ),
        .Q(axi4l_reg_n_cnt[6]));
  FDCE \axi4l_reg_n_cnt_reg[7] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[7] ),
        .Q(axi4l_reg_n_cnt[7]));
  FDCE \axi4l_reg_n_cnt_reg[8] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[8] ),
        .Q(axi4l_reg_n_cnt[8]));
  FDCE \axi4l_reg_n_cnt_reg[9] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_n_cnt_reg_n_0_[9] ),
        .Q(axi4l_reg_n_cnt[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \axi4l_reg_nplc[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .O(\axi4l_reg_nplc[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi4l_reg_nplc[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .O(\axi4l_reg_nplc[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi4l_reg_nplc[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .O(\axi4l_reg_nplc[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi4l_reg_nplc[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .O(\axi4l_reg_nplc[7]_i_1_n_0 ));
  FDCE \axi4l_reg_nplc_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[0]),
        .Q(axi4l_reg_nplc[0]));
  FDPE \axi4l_reg_nplc_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .PRE(AR),
        .Q(axi4l_reg_nplc[10]));
  FDPE \axi4l_reg_nplc_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .PRE(AR),
        .Q(axi4l_reg_nplc[11]));
  FDCE \axi4l_reg_nplc_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[12]),
        .Q(axi4l_reg_nplc[12]));
  FDCE \axi4l_reg_nplc_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[13]),
        .Q(axi4l_reg_nplc[13]));
  FDPE \axi4l_reg_nplc_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .PRE(AR),
        .Q(axi4l_reg_nplc[14]));
  FDCE \axi4l_reg_nplc_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[15]),
        .Q(axi4l_reg_nplc[15]));
  FDCE \axi4l_reg_nplc_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[16]),
        .Q(axi4l_reg_nplc[16]));
  FDCE \axi4l_reg_nplc_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[17]),
        .Q(axi4l_reg_nplc[17]));
  FDCE \axi4l_reg_nplc_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[18]),
        .Q(axi4l_reg_nplc[18]));
  FDCE \axi4l_reg_nplc_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[19]),
        .Q(axi4l_reg_nplc[19]));
  FDCE \axi4l_reg_nplc_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[1]),
        .Q(axi4l_reg_nplc[1]));
  FDCE \axi4l_reg_nplc_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[20]),
        .Q(axi4l_reg_nplc[20]));
  FDCE \axi4l_reg_nplc_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[21]),
        .Q(axi4l_reg_nplc[21]));
  FDCE \axi4l_reg_nplc_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[22]),
        .Q(axi4l_reg_nplc[22]));
  FDCE \axi4l_reg_nplc_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[23]),
        .Q(axi4l_reg_nplc[23]));
  FDCE \axi4l_reg_nplc_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[24]),
        .Q(axi4l_reg_nplc[24]));
  FDCE \axi4l_reg_nplc_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[25]),
        .Q(axi4l_reg_nplc[25]));
  FDCE \axi4l_reg_nplc_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[26]),
        .Q(axi4l_reg_nplc[26]));
  FDCE \axi4l_reg_nplc_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[27]),
        .Q(axi4l_reg_nplc[27]));
  FDCE \axi4l_reg_nplc_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[28]),
        .Q(axi4l_reg_nplc[28]));
  FDCE \axi4l_reg_nplc_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[29]),
        .Q(axi4l_reg_nplc[29]));
  FDCE \axi4l_reg_nplc_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[2]),
        .Q(axi4l_reg_nplc[2]));
  FDCE \axi4l_reg_nplc_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[30]),
        .Q(axi4l_reg_nplc[30]));
  FDCE \axi4l_reg_nplc_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[31]),
        .Q(axi4l_reg_nplc[31]));
  FDCE \axi4l_reg_nplc_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[3]),
        .Q(axi4l_reg_nplc[3]));
  FDCE \axi4l_reg_nplc_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[4]),
        .Q(axi4l_reg_nplc[4]));
  FDPE \axi4l_reg_nplc_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .PRE(AR),
        .Q(axi4l_reg_nplc[5]));
  FDCE \axi4l_reg_nplc_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[6]),
        .Q(axi4l_reg_nplc[6]));
  FDCE \axi4l_reg_nplc_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[7]),
        .Q(axi4l_reg_nplc[7]));
  FDCE \axi4l_reg_nplc_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[8]),
        .Q(axi4l_reg_nplc[8]));
  FDPE \axi4l_reg_nplc_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_nplc[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .PRE(AR),
        .Q(axi4l_reg_nplc[9]));
  LUT3 #(
    .INIT(8'h80)) 
    \axi4l_reg_p_cnt[31]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(axi4l_reg_n_cnt_1));
  FDCE \axi4l_reg_p_cnt_reg[0] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[0] ),
        .Q(axi4l_reg_p_cnt[0]));
  FDCE \axi4l_reg_p_cnt_reg[10] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[10] ),
        .Q(axi4l_reg_p_cnt[10]));
  FDCE \axi4l_reg_p_cnt_reg[11] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[11] ),
        .Q(axi4l_reg_p_cnt[11]));
  FDCE \axi4l_reg_p_cnt_reg[12] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[12] ),
        .Q(axi4l_reg_p_cnt[12]));
  FDCE \axi4l_reg_p_cnt_reg[13] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[13] ),
        .Q(axi4l_reg_p_cnt[13]));
  FDCE \axi4l_reg_p_cnt_reg[14] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[14] ),
        .Q(axi4l_reg_p_cnt[14]));
  FDCE \axi4l_reg_p_cnt_reg[15] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[15] ),
        .Q(axi4l_reg_p_cnt[15]));
  FDCE \axi4l_reg_p_cnt_reg[16] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[16] ),
        .Q(axi4l_reg_p_cnt[16]));
  FDCE \axi4l_reg_p_cnt_reg[17] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[17] ),
        .Q(axi4l_reg_p_cnt[17]));
  FDCE \axi4l_reg_p_cnt_reg[18] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[18] ),
        .Q(axi4l_reg_p_cnt[18]));
  FDCE \axi4l_reg_p_cnt_reg[19] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[19] ),
        .Q(axi4l_reg_p_cnt[19]));
  FDCE \axi4l_reg_p_cnt_reg[1] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[1] ),
        .Q(axi4l_reg_p_cnt[1]));
  FDCE \axi4l_reg_p_cnt_reg[20] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[20] ),
        .Q(axi4l_reg_p_cnt[20]));
  FDCE \axi4l_reg_p_cnt_reg[21] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[21] ),
        .Q(axi4l_reg_p_cnt[21]));
  FDCE \axi4l_reg_p_cnt_reg[22] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[22] ),
        .Q(axi4l_reg_p_cnt[22]));
  FDCE \axi4l_reg_p_cnt_reg[23] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[23] ),
        .Q(axi4l_reg_p_cnt[23]));
  FDCE \axi4l_reg_p_cnt_reg[24] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[24] ),
        .Q(axi4l_reg_p_cnt[24]));
  FDCE \axi4l_reg_p_cnt_reg[25] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[25] ),
        .Q(axi4l_reg_p_cnt[25]));
  FDCE \axi4l_reg_p_cnt_reg[26] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[26] ),
        .Q(axi4l_reg_p_cnt[26]));
  FDCE \axi4l_reg_p_cnt_reg[27] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[27] ),
        .Q(axi4l_reg_p_cnt[27]));
  FDCE \axi4l_reg_p_cnt_reg[28] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[28] ),
        .Q(axi4l_reg_p_cnt[28]));
  FDCE \axi4l_reg_p_cnt_reg[29] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[29] ),
        .Q(axi4l_reg_p_cnt[29]));
  FDCE \axi4l_reg_p_cnt_reg[2] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[2] ),
        .Q(axi4l_reg_p_cnt[2]));
  FDCE \axi4l_reg_p_cnt_reg[30] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[30] ),
        .Q(axi4l_reg_p_cnt[30]));
  FDCE \axi4l_reg_p_cnt_reg[31] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[31] ),
        .Q(axi4l_reg_p_cnt[31]));
  FDCE \axi4l_reg_p_cnt_reg[3] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[3] ),
        .Q(axi4l_reg_p_cnt[3]));
  FDCE \axi4l_reg_p_cnt_reg[4] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[4] ),
        .Q(axi4l_reg_p_cnt[4]));
  FDCE \axi4l_reg_p_cnt_reg[5] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[5] ),
        .Q(axi4l_reg_p_cnt[5]));
  FDCE \axi4l_reg_p_cnt_reg[6] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[6] ),
        .Q(axi4l_reg_p_cnt[6]));
  FDCE \axi4l_reg_p_cnt_reg[7] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[7] ),
        .Q(axi4l_reg_p_cnt[7]));
  FDCE \axi4l_reg_p_cnt_reg[8] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[8] ),
        .Q(axi4l_reg_p_cnt[8]));
  FDCE \axi4l_reg_p_cnt_reg[9] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\madc_p_cnt_reg_n_0_[9] ),
        .Q(axi4l_reg_p_cnt[9]));
  LUT4 #(
    .INIT(16'hEF80)) 
    \axi4l_reg_status[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\axi4l_reg_status_reg_n_0_[0] ),
        .O(\axi4l_reg_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F10)) 
    \axi4l_reg_status[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\axi4l_reg_status_reg_n_0_[1] ),
        .O(\axi4l_reg_status[1]_i_1_n_0 ));
  FDCE \axi4l_reg_status_reg[0] 
       (.C(madc_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\axi4l_reg_status[0]_i_1_n_0 ),
        .Q(\axi4l_reg_status_reg_n_0_[0] ));
  FDCE \axi4l_reg_status_reg[1] 
       (.C(madc_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\axi4l_reg_status[1]_i_1_n_0 ),
        .Q(\axi4l_reg_status_reg_n_0_[1] ));
  FDCE \axi4l_reg_totl_cnt_reg[0] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[0] ),
        .Q(axi4l_reg_totl_cnt[0]));
  FDCE \axi4l_reg_totl_cnt_reg[10] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[10] ),
        .Q(axi4l_reg_totl_cnt[10]));
  FDCE \axi4l_reg_totl_cnt_reg[11] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[11] ),
        .Q(axi4l_reg_totl_cnt[11]));
  FDCE \axi4l_reg_totl_cnt_reg[12] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[12] ),
        .Q(axi4l_reg_totl_cnt[12]));
  FDCE \axi4l_reg_totl_cnt_reg[13] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[13] ),
        .Q(axi4l_reg_totl_cnt[13]));
  FDCE \axi4l_reg_totl_cnt_reg[14] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[14] ),
        .Q(axi4l_reg_totl_cnt[14]));
  FDCE \axi4l_reg_totl_cnt_reg[15] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[15] ),
        .Q(axi4l_reg_totl_cnt[15]));
  FDCE \axi4l_reg_totl_cnt_reg[16] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[16] ),
        .Q(axi4l_reg_totl_cnt[16]));
  FDCE \axi4l_reg_totl_cnt_reg[17] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[17] ),
        .Q(axi4l_reg_totl_cnt[17]));
  FDCE \axi4l_reg_totl_cnt_reg[18] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[18] ),
        .Q(axi4l_reg_totl_cnt[18]));
  FDCE \axi4l_reg_totl_cnt_reg[19] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[19] ),
        .Q(axi4l_reg_totl_cnt[19]));
  FDCE \axi4l_reg_totl_cnt_reg[1] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[1] ),
        .Q(axi4l_reg_totl_cnt[1]));
  FDCE \axi4l_reg_totl_cnt_reg[20] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[20] ),
        .Q(axi4l_reg_totl_cnt[20]));
  FDCE \axi4l_reg_totl_cnt_reg[21] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[21] ),
        .Q(axi4l_reg_totl_cnt[21]));
  FDCE \axi4l_reg_totl_cnt_reg[22] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[22] ),
        .Q(axi4l_reg_totl_cnt[22]));
  FDCE \axi4l_reg_totl_cnt_reg[23] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[23] ),
        .Q(axi4l_reg_totl_cnt[23]));
  FDCE \axi4l_reg_totl_cnt_reg[24] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[24] ),
        .Q(axi4l_reg_totl_cnt[24]));
  FDCE \axi4l_reg_totl_cnt_reg[25] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[25] ),
        .Q(axi4l_reg_totl_cnt[25]));
  FDCE \axi4l_reg_totl_cnt_reg[26] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[26] ),
        .Q(axi4l_reg_totl_cnt[26]));
  FDCE \axi4l_reg_totl_cnt_reg[27] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[27] ),
        .Q(axi4l_reg_totl_cnt[27]));
  FDCE \axi4l_reg_totl_cnt_reg[28] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[28] ),
        .Q(axi4l_reg_totl_cnt[28]));
  FDCE \axi4l_reg_totl_cnt_reg[29] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[29] ),
        .Q(axi4l_reg_totl_cnt[29]));
  FDCE \axi4l_reg_totl_cnt_reg[2] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[2] ),
        .Q(axi4l_reg_totl_cnt[2]));
  FDCE \axi4l_reg_totl_cnt_reg[30] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[30] ),
        .Q(axi4l_reg_totl_cnt[30]));
  FDCE \axi4l_reg_totl_cnt_reg[31] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[31] ),
        .Q(axi4l_reg_totl_cnt[31]));
  FDCE \axi4l_reg_totl_cnt_reg[3] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[3] ),
        .Q(axi4l_reg_totl_cnt[3]));
  FDCE \axi4l_reg_totl_cnt_reg[4] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[4] ),
        .Q(axi4l_reg_totl_cnt[4]));
  FDCE \axi4l_reg_totl_cnt_reg[5] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[5] ),
        .Q(axi4l_reg_totl_cnt[5]));
  FDCE \axi4l_reg_totl_cnt_reg[6] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[6] ),
        .Q(axi4l_reg_totl_cnt[6]));
  FDCE \axi4l_reg_totl_cnt_reg[7] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[7] ),
        .Q(axi4l_reg_totl_cnt[7]));
  FDCE \axi4l_reg_totl_cnt_reg[8] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[8] ),
        .Q(axi4l_reg_totl_cnt[8]));
  FDCE \axi4l_reg_totl_cnt_reg[9] 
       (.C(madc_clk),
        .CE(axi4l_reg_n_cnt_1),
        .CLR(AR),
        .D(\totl_cnt_reg_n_0_[9] ),
        .Q(axi4l_reg_totl_cnt[9]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \axi4l_reg_vref[15]_i_1 
       (.I0(s00_axi_awaddr[4]),
        .I1(s00_axi_awaddr[7]),
        .I2(s00_axi_awaddr[6]),
        .I3(s00_axi_awaddr[0]),
        .I4(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\axi4l_reg_vref[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \axi4l_reg_vref[23]_i_1 
       (.I0(s00_axi_awaddr[4]),
        .I1(s00_axi_awaddr[7]),
        .I2(s00_axi_awaddr[6]),
        .I3(s00_axi_awaddr[0]),
        .I4(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(\axi4l_reg_vref[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \axi4l_reg_vref[31]_i_1 
       (.I0(s00_axi_awaddr[4]),
        .I1(s00_axi_awaddr[7]),
        .I2(s00_axi_awaddr[6]),
        .I3(s00_axi_awaddr[0]),
        .I4(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(\axi4l_reg_vref[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \axi4l_reg_vref[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awaddr[5]),
        .I3(s00_axi_awaddr[3]),
        .O(\axi4l_reg_vref[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \axi4l_reg_vref[7]_i_1 
       (.I0(s00_axi_awaddr[4]),
        .I1(s00_axi_awaddr[7]),
        .I2(s00_axi_awaddr[6]),
        .I3(s00_axi_awaddr[0]),
        .I4(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(\axi4l_reg_vref[7]_i_1_n_0 ));
  FDPE \axi4l_reg_vref_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .PRE(AR),
        .Q(axi4l_reg_vref[0]));
  FDCE \axi4l_reg_vref_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[10]),
        .Q(axi4l_reg_vref[10]));
  FDCE \axi4l_reg_vref_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[11]),
        .Q(axi4l_reg_vref[11]));
  FDCE \axi4l_reg_vref_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[12]),
        .Q(axi4l_reg_vref[12]));
  FDCE \axi4l_reg_vref_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[13]),
        .Q(axi4l_reg_vref[13]));
  FDCE \axi4l_reg_vref_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[14]),
        .Q(axi4l_reg_vref[14]));
  FDCE \axi4l_reg_vref_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[15]),
        .Q(axi4l_reg_vref[15]));
  FDCE \axi4l_reg_vref_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[16]),
        .Q(axi4l_reg_vref[16]));
  FDCE \axi4l_reg_vref_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[17]),
        .Q(axi4l_reg_vref[17]));
  FDCE \axi4l_reg_vref_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[18]),
        .Q(axi4l_reg_vref[18]));
  FDCE \axi4l_reg_vref_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[19]),
        .Q(axi4l_reg_vref[19]));
  FDCE \axi4l_reg_vref_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[1]),
        .Q(axi4l_reg_vref[1]));
  FDCE \axi4l_reg_vref_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[20]),
        .Q(axi4l_reg_vref[20]));
  FDCE \axi4l_reg_vref_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[21]),
        .Q(axi4l_reg_vref[21]));
  FDCE \axi4l_reg_vref_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[22]),
        .Q(axi4l_reg_vref[22]));
  FDCE \axi4l_reg_vref_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[23]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[23]),
        .Q(axi4l_reg_vref[23]));
  FDCE \axi4l_reg_vref_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[24]),
        .Q(axi4l_reg_vref[24]));
  FDCE \axi4l_reg_vref_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[25]),
        .Q(axi4l_reg_vref[25]));
  FDCE \axi4l_reg_vref_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[26]),
        .Q(axi4l_reg_vref[26]));
  FDCE \axi4l_reg_vref_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[27]),
        .Q(axi4l_reg_vref[27]));
  FDCE \axi4l_reg_vref_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[28]),
        .Q(axi4l_reg_vref[28]));
  FDCE \axi4l_reg_vref_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[29]),
        .Q(axi4l_reg_vref[29]));
  FDCE \axi4l_reg_vref_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[2]),
        .Q(axi4l_reg_vref[2]));
  FDCE \axi4l_reg_vref_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[30]),
        .Q(axi4l_reg_vref[30]));
  FDCE \axi4l_reg_vref_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[31]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[31]),
        .Q(axi4l_reg_vref[31]));
  FDCE \axi4l_reg_vref_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[3]),
        .Q(axi4l_reg_vref[3]));
  FDCE \axi4l_reg_vref_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[4]),
        .Q(axi4l_reg_vref[4]));
  FDCE \axi4l_reg_vref_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[5]),
        .Q(axi4l_reg_vref[5]));
  FDCE \axi4l_reg_vref_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[6]),
        .Q(axi4l_reg_vref[6]));
  FDCE \axi4l_reg_vref_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[7]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[7]),
        .Q(axi4l_reg_vref[7]));
  FDCE \axi4l_reg_vref_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[8]),
        .Q(axi4l_reg_vref[8]));
  FDCE \axi4l_reg_vref_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi4l_reg_vref[15]_i_1_n_0 ),
        .CLR(AR),
        .D(s00_axi_wdata[9]),
        .Q(axi4l_reg_vref[9]));
  LUT3 #(
    .INIT(8'h1D)) 
    axi_bvalid_i_1
       (.I0(madc_busy),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_bready),
        .O(madc_busy_reg_0));
  LUT6 #(
    .INIT(64'h00000000EEF322C0)) 
    \cnt[0]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[10]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[12]_i_2_n_6 ),
        .O(\cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[11]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[12]_i_2_n_5 ),
        .O(\cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[12]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[12]_i_2_n_4 ),
        .O(\cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[13]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[16]_i_2_n_7 ),
        .O(\cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[14]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[16]_i_2_n_6 ),
        .O(\cnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[15]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[16]_i_2_n_5 ),
        .O(\cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[16]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[16]_i_2_n_4 ),
        .O(\cnt[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[17]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[20]_i_2_n_7 ),
        .O(\cnt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[18]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[20]_i_2_n_6 ),
        .O(\cnt[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[19]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[20]_i_2_n_5 ),
        .O(\cnt[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[1]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[4]_i_2_n_7 ),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[20]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[20]_i_2_n_4 ),
        .O(\cnt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[21]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[24]_i_2_n_7 ),
        .O(\cnt[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[22]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[24]_i_2_n_6 ),
        .O(\cnt[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[23]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[24]_i_2_n_5 ),
        .O(\cnt[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[24]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[24]_i_2_n_4 ),
        .O(\cnt[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[25]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[28]_i_2_n_7 ),
        .O(\cnt[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[26]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[28]_i_2_n_6 ),
        .O(\cnt[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[27]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[28]_i_2_n_5 ),
        .O(\cnt[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[28]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[28]_i_2_n_4 ),
        .O(\cnt[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[29]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[31]_i_3_n_7 ),
        .O(\cnt[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[2]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[4]_i_2_n_6 ),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[30]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[31]_i_3_n_6 ),
        .O(\cnt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \cnt[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\cnt[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[31]_i_2 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[31]_i_3_n_5 ),
        .O(\cnt[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[3]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[4]_i_2_n_5 ),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[4]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[4]_i_2_n_4 ),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[5]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[8]_i_2_n_7 ),
        .O(\cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[6]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[8]_i_2_n_6 ),
        .O(\cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[7]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[8]_i_2_n_5 ),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[8]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[8]_i_2_n_4 ),
        .O(\cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEF322C000000000)) 
    \cnt[9]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(state[1]),
        .I2(\totl_cnt_reg[31]_i_3_n_1 ),
        .I3(state[2]),
        .I4(state1),
        .I5(\cnt_reg[12]_i_2_n_7 ),
        .O(\cnt[9]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[10] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[10]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE \cnt_reg[11] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[11]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE \cnt_reg[12] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[12]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_2_n_4 ,\cnt_reg[12]_i_2_n_5 ,\cnt_reg[12]_i_2_n_6 ,\cnt_reg[12]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDCE \cnt_reg[13] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[13]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE \cnt_reg[14] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[14]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[14] ));
  FDCE \cnt_reg[15] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[15]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[15] ));
  FDCE \cnt_reg[16] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[16]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_2_n_4 ,\cnt_reg[16]_i_2_n_5 ,\cnt_reg[16]_i_2_n_6 ,\cnt_reg[16]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDCE \cnt_reg[17] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[17]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[17] ));
  FDCE \cnt_reg[18] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[18]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[18] ));
  FDCE \cnt_reg[19] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[19]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[19] ));
  FDCE \cnt_reg[1] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[20] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[20]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\cnt_reg[20]_i_2_n_1 ,\cnt_reg[20]_i_2_n_2 ,\cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_2_n_4 ,\cnt_reg[20]_i_2_n_5 ,\cnt_reg[20]_i_2_n_6 ,\cnt_reg[20]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDCE \cnt_reg[21] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[21]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[21] ));
  FDCE \cnt_reg[22] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[22]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[22] ));
  FDCE \cnt_reg[23] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[23]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[23] ));
  FDCE \cnt_reg[24] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[24]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\cnt_reg[24]_i_2_n_1 ,\cnt_reg[24]_i_2_n_2 ,\cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_2_n_4 ,\cnt_reg[24]_i_2_n_5 ,\cnt_reg[24]_i_2_n_6 ,\cnt_reg[24]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  FDCE \cnt_reg[25] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[25]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[25] ));
  FDCE \cnt_reg[26] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[26]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[26] ));
  FDCE \cnt_reg[27] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[27]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[27] ));
  FDCE \cnt_reg[28] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[28]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[28]_i_2 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO({\cnt_reg[28]_i_2_n_0 ,\cnt_reg[28]_i_2_n_1 ,\cnt_reg[28]_i_2_n_2 ,\cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_2_n_4 ,\cnt_reg[28]_i_2_n_5 ,\cnt_reg[28]_i_2_n_6 ,\cnt_reg[28]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[28] ,\cnt_reg_n_0_[27] ,\cnt_reg_n_0_[26] ,\cnt_reg_n_0_[25] }));
  FDCE \cnt_reg[29] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[29]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[29] ));
  FDCE \cnt_reg[2] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[30] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[30]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[30] ));
  FDCE \cnt_reg[31] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[31]_i_2_n_0 ),
        .Q(\cnt_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[31]_i_3 
       (.CI(\cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\cnt_reg[31]_i_3_n_2 ,\cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[31]_i_3_O_UNCONNECTED [3],\cnt_reg[31]_i_3_n_5 ,\cnt_reg[31]_i_3_n_6 ,\cnt_reg[31]_i_3_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[31] ,\cnt_reg_n_0_[30] ,\cnt_reg_n_0_[29] }));
  FDCE \cnt_reg[3] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_2_n_4 ,\cnt_reg[4]_i_2_n_5 ,\cnt_reg[4]_i_2_n_6 ,\cnt_reg[4]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDCE \cnt_reg[5] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE \cnt_reg[6] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE \cnt_reg[7] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE \cnt_reg[8] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[8]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_2_n_4 ,\cnt_reg[8]_i_2_n_5 ,\cnt_reg[8]_i_2_n_6 ,\cnt_reg[8]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDCE \cnt_reg[9] 
       (.C(madc_clk),
        .CE(\cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(\cnt[9]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[9] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_clk_gen_1mhz \generate_madc_clock.hardware_clk_gen_1mhz_inst 
       (.madc_clk(madc_clk),
        .pll_locked(pll_locked),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(AR));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(\cnt_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[15] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\cnt_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[13] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(\cnt_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[11] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[9] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[23] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(\cnt_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[21] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(\cnt_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[19] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(\cnt_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[17] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(\cnt_reg_n_0_[30] ),
        .I1(\cnt_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2
       (.I0(\cnt_reg_n_0_[28] ),
        .I1(\cnt_reg_n_0_[29] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3
       (.I0(\cnt_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[27] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4
       (.I0(\cnt_reg_n_0_[24] ),
        .I1(\cnt_reg_n_0_[25] ),
        .O(i__carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_1
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(T1),
        .I2(\cnt_reg_n_0_[6] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2
       (.I0(T1),
        .I1(\cnt_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    i__carry_i_3
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(T1),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    i__carry_i_4
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(T1),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_5
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(T1),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .O(i__carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    i__carry_i_7
       (.I0(T1),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(i__carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F01)) 
    madc_busy_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(madc_busy),
        .O(madc_busy_i_1_n_0));
  FDCE madc_busy_reg
       (.C(madc_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(madc_busy_i_1_n_0),
        .Q(madc_busy));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 madc_n_cnt0_carry
       (.CI(1'b0),
        .CO({madc_n_cnt0_carry_n_0,madc_n_cnt0_carry_n_1,madc_n_cnt0_carry_n_2,madc_n_cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({madc_n_cnt0_carry_i_1_n_0,1'b0,madc_n_cnt0_carry_i_2_n_0,madc_n_cnt0_carry_i_3_n_0}),
        .O(NLW_madc_n_cnt0_carry_O_UNCONNECTED[3:0]),
        .S({madc_n_cnt0_carry_i_4_n_0,madc_n_cnt0_carry_i_5_n_0,madc_n_cnt0_carry_i_6_n_0,madc_n_cnt0_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 madc_n_cnt0_carry__0
       (.CI(madc_n_cnt0_carry_n_0),
        .CO({madc_n_cnt0_carry__0_n_0,madc_n_cnt0_carry__0_n_1,madc_n_cnt0_carry__0_n_2,madc_n_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_madc_n_cnt0_carry__0_O_UNCONNECTED[3:0]),
        .S({madc_n_cnt0_carry__0_i_1_n_0,madc_n_cnt0_carry__0_i_2_n_0,madc_n_cnt0_carry__0_i_3_n_0,madc_n_cnt0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__0_i_1
       (.I0(\cnt_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[15] ),
        .O(madc_n_cnt0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__0_i_2
       (.I0(\cnt_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[13] ),
        .O(madc_n_cnt0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__0_i_3
       (.I0(\cnt_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[11] ),
        .O(madc_n_cnt0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__0_i_4
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[9] ),
        .O(madc_n_cnt0_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 madc_n_cnt0_carry__1
       (.CI(madc_n_cnt0_carry__0_n_0),
        .CO({madc_n_cnt0_carry__1_n_0,madc_n_cnt0_carry__1_n_1,madc_n_cnt0_carry__1_n_2,madc_n_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_madc_n_cnt0_carry__1_O_UNCONNECTED[3:0]),
        .S({madc_n_cnt0_carry__1_i_1_n_0,madc_n_cnt0_carry__1_i_2_n_0,madc_n_cnt0_carry__1_i_3_n_0,madc_n_cnt0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__1_i_1
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[23] ),
        .O(madc_n_cnt0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__1_i_2
       (.I0(\cnt_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[21] ),
        .O(madc_n_cnt0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__1_i_3
       (.I0(\cnt_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[19] ),
        .O(madc_n_cnt0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__1_i_4
       (.I0(\cnt_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[17] ),
        .O(madc_n_cnt0_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 madc_n_cnt0_carry__2
       (.CI(madc_n_cnt0_carry__1_n_0),
        .CO({madc_n_cnt0_carry__2_n_0,madc_n_cnt0_carry__2_n_1,madc_n_cnt0_carry__2_n_2,madc_n_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_madc_n_cnt0_carry__2_O_UNCONNECTED[3:0]),
        .S({madc_n_cnt0_carry__2_i_1_n_0,madc_n_cnt0_carry__2_i_2_n_0,madc_n_cnt0_carry__2_i_3_n_0,madc_n_cnt0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__2_i_1
       (.I0(\cnt_reg_n_0_[30] ),
        .I1(\cnt_reg_n_0_[31] ),
        .O(madc_n_cnt0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__2_i_2
       (.I0(\cnt_reg_n_0_[28] ),
        .I1(\cnt_reg_n_0_[29] ),
        .O(madc_n_cnt0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__2_i_3
       (.I0(\cnt_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[27] ),
        .O(madc_n_cnt0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry__2_i_4
       (.I0(\cnt_reg_n_0_[24] ),
        .I1(\cnt_reg_n_0_[25] ),
        .O(madc_n_cnt0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    madc_n_cnt0_carry_i_1
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(T1),
        .O(madc_n_cnt0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    madc_n_cnt0_carry_i_2
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(T1),
        .I2(\cnt_reg_n_0_[2] ),
        .O(madc_n_cnt0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    madc_n_cnt0_carry_i_3
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(T1),
        .O(madc_n_cnt0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    madc_n_cnt0_carry_i_4
       (.I0(T1),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[7] ),
        .O(madc_n_cnt0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    madc_n_cnt0_carry_i_5
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .O(madc_n_cnt0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    madc_n_cnt0_carry_i_6
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(T1),
        .O(madc_n_cnt0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    madc_n_cnt0_carry_i_7
       (.I0(T1),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(madc_n_cnt0_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \madc_n_cnt1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\madc_n_cnt1_inferred__0/i__carry_n_0 ,\madc_n_cnt1_inferred__0/i__carry_n_1 ,\madc_n_cnt1_inferred__0/i__carry_n_2 ,\madc_n_cnt1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,1'b0,i__carry_i_3_n_0}),
        .O(\NLW_madc_n_cnt1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \madc_n_cnt1_inferred__0/i__carry__0 
       (.CI(\madc_n_cnt1_inferred__0/i__carry_n_0 ),
        .CO({\madc_n_cnt1_inferred__0/i__carry__0_n_0 ,\madc_n_cnt1_inferred__0/i__carry__0_n_1 ,\madc_n_cnt1_inferred__0/i__carry__0_n_2 ,\madc_n_cnt1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_madc_n_cnt1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \madc_n_cnt1_inferred__0/i__carry__1 
       (.CI(\madc_n_cnt1_inferred__0/i__carry__0_n_0 ),
        .CO({\madc_n_cnt1_inferred__0/i__carry__1_n_0 ,\madc_n_cnt1_inferred__0/i__carry__1_n_1 ,\madc_n_cnt1_inferred__0/i__carry__1_n_2 ,\madc_n_cnt1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_madc_n_cnt1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \madc_n_cnt1_inferred__0/i__carry__2 
       (.CI(\madc_n_cnt1_inferred__0/i__carry__1_n_0 ),
        .CO({state1,\madc_n_cnt1_inferred__0/i__carry__2_n_1 ,\madc_n_cnt1_inferred__0/i__carry__2_n_2 ,\madc_n_cnt1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_madc_n_cnt1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \madc_n_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\madc_n_cnt_reg_n_0_[0] ),
        .O(madc_n_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[10]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[10]),
        .O(madc_n_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[11]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[11]),
        .O(madc_n_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[12]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[12]),
        .O(madc_n_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[13]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[13]),
        .O(madc_n_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[14]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[14]),
        .O(madc_n_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[15]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[15]),
        .O(madc_n_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[16]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[16]),
        .O(madc_n_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[17]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[17]),
        .O(madc_n_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[18]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[18]),
        .O(madc_n_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[19]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[19]),
        .O(madc_n_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[1]),
        .O(madc_n_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[20]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[20]),
        .O(madc_n_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[21]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[21]),
        .O(madc_n_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[22]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[22]),
        .O(madc_n_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[23]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[23]),
        .O(madc_n_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[24]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[24]),
        .O(madc_n_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[25]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[25]),
        .O(madc_n_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[26]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[26]),
        .O(madc_n_cnt[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[27]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[27]),
        .O(madc_n_cnt[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[28]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[28]),
        .O(madc_n_cnt[28]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[29]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[29]),
        .O(madc_n_cnt[29]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[2]),
        .O(madc_n_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[30]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[30]),
        .O(madc_n_cnt[30]));
  LUT6 #(
    .INIT(64'h1101FFFF11011101)) 
    \madc_n_cnt[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(madc_n_cnt0_carry__2_n_0),
        .I4(ad_cmp),
        .I5(\madc_p_cnt[31]_i_3_n_0 ),
        .O(\madc_n_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[31]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[31]),
        .O(madc_n_cnt[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[3]),
        .O(madc_n_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[4]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[4]),
        .O(madc_n_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[5]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[5]),
        .O(madc_n_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[6]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[6]),
        .O(madc_n_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[7]),
        .O(madc_n_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[8]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[8]),
        .O(madc_n_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \madc_n_cnt[9]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in8[9]),
        .O(madc_n_cnt[9]));
  FDCE \madc_n_cnt_reg[0] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[0]),
        .Q(\madc_n_cnt_reg_n_0_[0] ));
  FDCE \madc_n_cnt_reg[10] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[10]),
        .Q(\madc_n_cnt_reg_n_0_[10] ));
  FDCE \madc_n_cnt_reg[11] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[11]),
        .Q(\madc_n_cnt_reg_n_0_[11] ));
  FDCE \madc_n_cnt_reg[12] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[12]),
        .Q(\madc_n_cnt_reg_n_0_[12] ));
  FDCE \madc_n_cnt_reg[13] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[13]),
        .Q(\madc_n_cnt_reg_n_0_[13] ));
  FDCE \madc_n_cnt_reg[14] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[14]),
        .Q(\madc_n_cnt_reg_n_0_[14] ));
  FDCE \madc_n_cnt_reg[15] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[15]),
        .Q(\madc_n_cnt_reg_n_0_[15] ));
  FDCE \madc_n_cnt_reg[16] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[16]),
        .Q(\madc_n_cnt_reg_n_0_[16] ));
  FDCE \madc_n_cnt_reg[17] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[17]),
        .Q(\madc_n_cnt_reg_n_0_[17] ));
  FDCE \madc_n_cnt_reg[18] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[18]),
        .Q(\madc_n_cnt_reg_n_0_[18] ));
  FDCE \madc_n_cnt_reg[19] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[19]),
        .Q(\madc_n_cnt_reg_n_0_[19] ));
  FDCE \madc_n_cnt_reg[1] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[1]),
        .Q(\madc_n_cnt_reg_n_0_[1] ));
  FDCE \madc_n_cnt_reg[20] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[20]),
        .Q(\madc_n_cnt_reg_n_0_[20] ));
  FDCE \madc_n_cnt_reg[21] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[21]),
        .Q(\madc_n_cnt_reg_n_0_[21] ));
  FDCE \madc_n_cnt_reg[22] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[22]),
        .Q(\madc_n_cnt_reg_n_0_[22] ));
  FDCE \madc_n_cnt_reg[23] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[23]),
        .Q(\madc_n_cnt_reg_n_0_[23] ));
  FDCE \madc_n_cnt_reg[24] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[24]),
        .Q(\madc_n_cnt_reg_n_0_[24] ));
  FDCE \madc_n_cnt_reg[25] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[25]),
        .Q(\madc_n_cnt_reg_n_0_[25] ));
  FDCE \madc_n_cnt_reg[26] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[26]),
        .Q(\madc_n_cnt_reg_n_0_[26] ));
  FDCE \madc_n_cnt_reg[27] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[27]),
        .Q(\madc_n_cnt_reg_n_0_[27] ));
  FDCE \madc_n_cnt_reg[28] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[28]),
        .Q(\madc_n_cnt_reg_n_0_[28] ));
  FDCE \madc_n_cnt_reg[29] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[29]),
        .Q(\madc_n_cnt_reg_n_0_[29] ));
  FDCE \madc_n_cnt_reg[2] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[2]),
        .Q(\madc_n_cnt_reg_n_0_[2] ));
  FDCE \madc_n_cnt_reg[30] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[30]),
        .Q(\madc_n_cnt_reg_n_0_[30] ));
  FDCE \madc_n_cnt_reg[31] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[31]),
        .Q(\madc_n_cnt_reg_n_0_[31] ));
  FDCE \madc_n_cnt_reg[3] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[3]),
        .Q(\madc_n_cnt_reg_n_0_[3] ));
  FDCE \madc_n_cnt_reg[4] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[4]),
        .Q(\madc_n_cnt_reg_n_0_[4] ));
  FDCE \madc_n_cnt_reg[5] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[5]),
        .Q(\madc_n_cnt_reg_n_0_[5] ));
  FDCE \madc_n_cnt_reg[6] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[6]),
        .Q(\madc_n_cnt_reg_n_0_[6] ));
  FDCE \madc_n_cnt_reg[7] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[7]),
        .Q(\madc_n_cnt_reg_n_0_[7] ));
  FDCE \madc_n_cnt_reg[8] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[8]),
        .Q(\madc_n_cnt_reg_n_0_[8] ));
  FDCE \madc_n_cnt_reg[9] 
       (.C(madc_clk),
        .CE(\madc_n_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_n_cnt[9]),
        .Q(\madc_n_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \madc_p_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\madc_p_cnt_reg_n_0_[0] ),
        .O(madc_p_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[10]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[10]),
        .O(madc_p_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[11]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[11]),
        .O(madc_p_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[12]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[12]),
        .O(madc_p_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[13]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[13]),
        .O(madc_p_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[14]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[14]),
        .O(madc_p_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[15]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[15]),
        .O(madc_p_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[16]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[16]),
        .O(madc_p_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[17]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[17]),
        .O(madc_p_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[18]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[18]),
        .O(madc_p_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[19]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[19]),
        .O(madc_p_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[1]),
        .O(madc_p_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[20]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[20]),
        .O(madc_p_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[21]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[21]),
        .O(madc_p_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[22]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[22]),
        .O(madc_p_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[23]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[23]),
        .O(madc_p_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[24]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[24]),
        .O(madc_p_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[25]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[25]),
        .O(madc_p_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[26]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[26]),
        .O(madc_p_cnt[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[27]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[27]),
        .O(madc_p_cnt[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[28]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[28]),
        .O(madc_p_cnt[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[29]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[29]),
        .O(madc_p_cnt[29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[2]),
        .O(madc_p_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[30]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[30]),
        .O(madc_p_cnt[30]));
  LUT6 #(
    .INIT(64'hC0C0C0C0EAC0C0FF)) 
    \madc_p_cnt[31]_i_1 
       (.I0(madc_n_cnt0_carry__2_n_0),
        .I1(\madc_p_cnt[31]_i_3_n_0 ),
        .I2(ad_cmp),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\madc_p_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[31]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[31]),
        .O(madc_p_cnt[31]));
  LUT5 #(
    .INIT(32'h004F0044)) 
    \madc_p_cnt[31]_i_3 
       (.I0(state[1]),
        .I1(state1),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\totl_cnt_reg[31]_i_3_n_1 ),
        .O(\madc_p_cnt[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[3]),
        .O(madc_p_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[4]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[4]),
        .O(madc_p_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[5]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[5]),
        .O(madc_p_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[6]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[6]),
        .O(madc_p_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[7]),
        .O(madc_p_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[8]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[8]),
        .O(madc_p_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \madc_p_cnt[9]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(in12[9]),
        .O(madc_p_cnt[9]));
  FDCE \madc_p_cnt_reg[0] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[0]),
        .Q(\madc_p_cnt_reg_n_0_[0] ));
  FDCE \madc_p_cnt_reg[10] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[10]),
        .Q(\madc_p_cnt_reg_n_0_[10] ));
  FDCE \madc_p_cnt_reg[11] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[11]),
        .Q(\madc_p_cnt_reg_n_0_[11] ));
  FDCE \madc_p_cnt_reg[12] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[12]),
        .Q(\madc_p_cnt_reg_n_0_[12] ));
  FDCE \madc_p_cnt_reg[13] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[13]),
        .Q(\madc_p_cnt_reg_n_0_[13] ));
  FDCE \madc_p_cnt_reg[14] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[14]),
        .Q(\madc_p_cnt_reg_n_0_[14] ));
  FDCE \madc_p_cnt_reg[15] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[15]),
        .Q(\madc_p_cnt_reg_n_0_[15] ));
  FDCE \madc_p_cnt_reg[16] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[16]),
        .Q(\madc_p_cnt_reg_n_0_[16] ));
  FDCE \madc_p_cnt_reg[17] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[17]),
        .Q(\madc_p_cnt_reg_n_0_[17] ));
  FDCE \madc_p_cnt_reg[18] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[18]),
        .Q(\madc_p_cnt_reg_n_0_[18] ));
  FDCE \madc_p_cnt_reg[19] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[19]),
        .Q(\madc_p_cnt_reg_n_0_[19] ));
  FDCE \madc_p_cnt_reg[1] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[1]),
        .Q(\madc_p_cnt_reg_n_0_[1] ));
  FDCE \madc_p_cnt_reg[20] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[20]),
        .Q(\madc_p_cnt_reg_n_0_[20] ));
  FDCE \madc_p_cnt_reg[21] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[21]),
        .Q(\madc_p_cnt_reg_n_0_[21] ));
  FDCE \madc_p_cnt_reg[22] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[22]),
        .Q(\madc_p_cnt_reg_n_0_[22] ));
  FDCE \madc_p_cnt_reg[23] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[23]),
        .Q(\madc_p_cnt_reg_n_0_[23] ));
  FDCE \madc_p_cnt_reg[24] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[24]),
        .Q(\madc_p_cnt_reg_n_0_[24] ));
  FDCE \madc_p_cnt_reg[25] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[25]),
        .Q(\madc_p_cnt_reg_n_0_[25] ));
  FDCE \madc_p_cnt_reg[26] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[26]),
        .Q(\madc_p_cnt_reg_n_0_[26] ));
  FDCE \madc_p_cnt_reg[27] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[27]),
        .Q(\madc_p_cnt_reg_n_0_[27] ));
  FDCE \madc_p_cnt_reg[28] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[28]),
        .Q(\madc_p_cnt_reg_n_0_[28] ));
  FDCE \madc_p_cnt_reg[29] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[29]),
        .Q(\madc_p_cnt_reg_n_0_[29] ));
  FDCE \madc_p_cnt_reg[2] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[2]),
        .Q(\madc_p_cnt_reg_n_0_[2] ));
  FDCE \madc_p_cnt_reg[30] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[30]),
        .Q(\madc_p_cnt_reg_n_0_[30] ));
  FDCE \madc_p_cnt_reg[31] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[31]),
        .Q(\madc_p_cnt_reg_n_0_[31] ));
  FDCE \madc_p_cnt_reg[3] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[3]),
        .Q(\madc_p_cnt_reg_n_0_[3] ));
  FDCE \madc_p_cnt_reg[4] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[4]),
        .Q(\madc_p_cnt_reg_n_0_[4] ));
  FDCE \madc_p_cnt_reg[5] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[5]),
        .Q(\madc_p_cnt_reg_n_0_[5] ));
  FDCE \madc_p_cnt_reg[6] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[6]),
        .Q(\madc_p_cnt_reg_n_0_[6] ));
  FDCE \madc_p_cnt_reg[7] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[7]),
        .Q(\madc_p_cnt_reg_n_0_[7] ));
  FDCE \madc_p_cnt_reg[8] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[8]),
        .Q(\madc_p_cnt_reg_n_0_[8] ));
  FDCE \madc_p_cnt_reg[9] 
       (.C(madc_clk),
        .CE(\madc_p_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(madc_p_cnt[9]),
        .Q(\madc_p_cnt_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \madc_proc.T1_reg[7] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(1'b1),
        .Q(T1));
  LUT3 #(
    .INIT(8'h01)) 
    \max_cnt[31]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(T1_0));
  FDCE \max_cnt_reg[0] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[0]),
        .Q(max_cnt[0]));
  FDCE \max_cnt_reg[10] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[10]),
        .Q(max_cnt[10]));
  FDCE \max_cnt_reg[11] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[11]),
        .Q(max_cnt[11]));
  FDCE \max_cnt_reg[12] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[12]),
        .Q(max_cnt[12]));
  FDCE \max_cnt_reg[13] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[13]),
        .Q(max_cnt[13]));
  FDCE \max_cnt_reg[14] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[14]),
        .Q(max_cnt[14]));
  FDCE \max_cnt_reg[15] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[15]),
        .Q(max_cnt[15]));
  FDCE \max_cnt_reg[16] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[16]),
        .Q(max_cnt[16]));
  FDCE \max_cnt_reg[17] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[17]),
        .Q(max_cnt[17]));
  FDCE \max_cnt_reg[18] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[18]),
        .Q(max_cnt[18]));
  FDCE \max_cnt_reg[19] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[19]),
        .Q(max_cnt[19]));
  FDCE \max_cnt_reg[1] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[1]),
        .Q(max_cnt[1]));
  FDCE \max_cnt_reg[20] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[20]),
        .Q(max_cnt[20]));
  FDCE \max_cnt_reg[21] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[21]),
        .Q(max_cnt[21]));
  FDCE \max_cnt_reg[22] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[22]),
        .Q(max_cnt[22]));
  FDCE \max_cnt_reg[23] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[23]),
        .Q(max_cnt[23]));
  FDCE \max_cnt_reg[24] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[24]),
        .Q(max_cnt[24]));
  FDCE \max_cnt_reg[25] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[25]),
        .Q(max_cnt[25]));
  FDCE \max_cnt_reg[26] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[26]),
        .Q(max_cnt[26]));
  FDCE \max_cnt_reg[27] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[27]),
        .Q(max_cnt[27]));
  FDCE \max_cnt_reg[28] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[28]),
        .Q(max_cnt[28]));
  FDCE \max_cnt_reg[29] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[29]),
        .Q(max_cnt[29]));
  FDCE \max_cnt_reg[2] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[2]),
        .Q(max_cnt[2]));
  FDCE \max_cnt_reg[30] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[30]),
        .Q(max_cnt[30]));
  FDCE \max_cnt_reg[31] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[31]),
        .Q(max_cnt[31]));
  FDCE \max_cnt_reg[3] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[3]),
        .Q(max_cnt[3]));
  FDCE \max_cnt_reg[4] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[4]),
        .Q(max_cnt[4]));
  FDCE \max_cnt_reg[5] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[5]),
        .Q(max_cnt[5]));
  FDCE \max_cnt_reg[6] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[6]),
        .Q(max_cnt[6]));
  FDCE \max_cnt_reg[7] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[7]),
        .Q(max_cnt[7]));
  FDCE \max_cnt_reg[8] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[8]),
        .Q(max_cnt[8]));
  FDCE \max_cnt_reg[9] 
       (.C(madc_clk),
        .CE(T1_0),
        .CLR(AR),
        .D(axi4l_reg_nplc[9]),
        .Q(max_cnt[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(\madc_p_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[4:1]),
        .S({\madc_p_cnt_reg_n_0_[4] ,\madc_p_cnt_reg_n_0_[3] ,\madc_p_cnt_reg_n_0_[2] ,\madc_p_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[8:5]),
        .S({\madc_p_cnt_reg_n_0_[8] ,\madc_p_cnt_reg_n_0_[7] ,\madc_p_cnt_reg_n_0_[6] ,\madc_p_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[12:9]),
        .S({\madc_p_cnt_reg_n_0_[12] ,\madc_p_cnt_reg_n_0_[11] ,\madc_p_cnt_reg_n_0_[10] ,\madc_p_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__2_n_0 ,\plusOp_inferred__1/i__carry__2_n_1 ,\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[16:13]),
        .S({\madc_p_cnt_reg_n_0_[16] ,\madc_p_cnt_reg_n_0_[15] ,\madc_p_cnt_reg_n_0_[14] ,\madc_p_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__3 
       (.CI(\plusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__3_n_0 ,\plusOp_inferred__1/i__carry__3_n_1 ,\plusOp_inferred__1/i__carry__3_n_2 ,\plusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[20:17]),
        .S({\madc_p_cnt_reg_n_0_[20] ,\madc_p_cnt_reg_n_0_[19] ,\madc_p_cnt_reg_n_0_[18] ,\madc_p_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__4 
       (.CI(\plusOp_inferred__1/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__4_n_0 ,\plusOp_inferred__1/i__carry__4_n_1 ,\plusOp_inferred__1/i__carry__4_n_2 ,\plusOp_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[24:21]),
        .S({\madc_p_cnt_reg_n_0_[24] ,\madc_p_cnt_reg_n_0_[23] ,\madc_p_cnt_reg_n_0_[22] ,\madc_p_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__5 
       (.CI(\plusOp_inferred__1/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__5_n_0 ,\plusOp_inferred__1/i__carry__5_n_1 ,\plusOp_inferred__1/i__carry__5_n_2 ,\plusOp_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[28:25]),
        .S({\madc_p_cnt_reg_n_0_[28] ,\madc_p_cnt_reg_n_0_[27] ,\madc_p_cnt_reg_n_0_[26] ,\madc_p_cnt_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__6 
       (.CI(\plusOp_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__1/i__carry__6_n_2 ,\plusOp_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED [3],in12[31:29]}),
        .S({1'b0,\madc_p_cnt_reg_n_0_[31] ,\madc_p_cnt_reg_n_0_[30] ,\madc_p_cnt_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__2/i__carry_n_0 ,\plusOp_inferred__2/i__carry_n_1 ,\plusOp_inferred__2/i__carry_n_2 ,\plusOp_inferred__2/i__carry_n_3 }),
        .CYINIT(\madc_n_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S({\madc_n_cnt_reg_n_0_[4] ,\madc_n_cnt_reg_n_0_[3] ,\madc_n_cnt_reg_n_0_[2] ,\madc_n_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__0 
       (.CI(\plusOp_inferred__2/i__carry_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__0_n_0 ,\plusOp_inferred__2/i__carry__0_n_1 ,\plusOp_inferred__2/i__carry__0_n_2 ,\plusOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S({\madc_n_cnt_reg_n_0_[8] ,\madc_n_cnt_reg_n_0_[7] ,\madc_n_cnt_reg_n_0_[6] ,\madc_n_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__1 
       (.CI(\plusOp_inferred__2/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__1_n_0 ,\plusOp_inferred__2/i__carry__1_n_1 ,\plusOp_inferred__2/i__carry__1_n_2 ,\plusOp_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S({\madc_n_cnt_reg_n_0_[12] ,\madc_n_cnt_reg_n_0_[11] ,\madc_n_cnt_reg_n_0_[10] ,\madc_n_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__2 
       (.CI(\plusOp_inferred__2/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__2_n_0 ,\plusOp_inferred__2/i__carry__2_n_1 ,\plusOp_inferred__2/i__carry__2_n_2 ,\plusOp_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S({\madc_n_cnt_reg_n_0_[16] ,\madc_n_cnt_reg_n_0_[15] ,\madc_n_cnt_reg_n_0_[14] ,\madc_n_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__3 
       (.CI(\plusOp_inferred__2/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__3_n_0 ,\plusOp_inferred__2/i__carry__3_n_1 ,\plusOp_inferred__2/i__carry__3_n_2 ,\plusOp_inferred__2/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S({\madc_n_cnt_reg_n_0_[20] ,\madc_n_cnt_reg_n_0_[19] ,\madc_n_cnt_reg_n_0_[18] ,\madc_n_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__4 
       (.CI(\plusOp_inferred__2/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__4_n_0 ,\plusOp_inferred__2/i__carry__4_n_1 ,\plusOp_inferred__2/i__carry__4_n_2 ,\plusOp_inferred__2/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S({\madc_n_cnt_reg_n_0_[24] ,\madc_n_cnt_reg_n_0_[23] ,\madc_n_cnt_reg_n_0_[22] ,\madc_n_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__5 
       (.CI(\plusOp_inferred__2/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__5_n_0 ,\plusOp_inferred__2/i__carry__5_n_1 ,\plusOp_inferred__2/i__carry__5_n_2 ,\plusOp_inferred__2/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S({\madc_n_cnt_reg_n_0_[28] ,\madc_n_cnt_reg_n_0_[27] ,\madc_n_cnt_reg_n_0_[26] ,\madc_n_cnt_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__6 
       (.CI(\plusOp_inferred__2/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__2/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__2/i__carry__6_n_2 ,\plusOp_inferred__2/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__2/i__carry__6_O_UNCONNECTED [3],in8[31:29]}),
        .S({1'b0,\madc_n_cnt_reg_n_0_[31] ,\madc_n_cnt_reg_n_0_[30] ,\madc_n_cnt_reg_n_0_[29] }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(axi4l_reg_totl_cnt[0]),
        .I2(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .I3(axi4l_reg_n_cnt[0]),
        .I4(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\axi4l_reg_status_reg_n_0_[0] ),
        .I1(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .I2(s00_axi_araddr[4]),
        .I3(s00_axi_araddr[2]),
        .I4(s00_axi_araddr[3]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[0]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[0]),
        .I4(axi4l_reg_p_cnt[0]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[10]),
        .I3(axi4l_reg_totl_cnt[10]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[10]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[10]),
        .I4(axi4l_reg_p_cnt[10]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[11]),
        .I3(axi4l_reg_totl_cnt[11]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[11]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[11]),
        .I4(axi4l_reg_p_cnt[11]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[12]),
        .I3(axi4l_reg_totl_cnt[12]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[12]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[12]),
        .I4(axi4l_reg_p_cnt[12]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[13]),
        .I3(axi4l_reg_totl_cnt[13]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[13]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[13]),
        .I4(axi4l_reg_p_cnt[13]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[14]),
        .I3(axi4l_reg_totl_cnt[14]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[14]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[14]),
        .I4(axi4l_reg_p_cnt[14]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[15]),
        .I3(axi4l_reg_totl_cnt[15]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[15]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[15]),
        .I4(axi4l_reg_p_cnt[15]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[16]),
        .I3(axi4l_reg_totl_cnt[16]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[16]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[16]),
        .I4(axi4l_reg_p_cnt[16]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[17]),
        .I3(axi4l_reg_totl_cnt[17]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[17]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[17]),
        .I4(axi4l_reg_p_cnt[17]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[18]),
        .I3(axi4l_reg_totl_cnt[18]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[18]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[18]),
        .I4(axi4l_reg_p_cnt[18]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[19]),
        .I3(axi4l_reg_totl_cnt[19]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[19]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[19]),
        .I4(axi4l_reg_p_cnt[19]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(axi4l_reg_totl_cnt[1]),
        .I2(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .I3(axi4l_reg_n_cnt[1]),
        .I4(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I5(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\axi4l_reg_status_reg_n_0_[1] ),
        .I1(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .I2(s00_axi_araddr[4]),
        .I3(s00_axi_araddr[2]),
        .I4(s00_axi_araddr[3]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[1]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[1]),
        .I4(axi4l_reg_p_cnt[1]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[20]),
        .I3(axi4l_reg_totl_cnt[20]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[20]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[20]),
        .I4(axi4l_reg_p_cnt[20]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[21]),
        .I3(axi4l_reg_totl_cnt[21]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[21]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[21]),
        .I4(axi4l_reg_p_cnt[21]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[22]),
        .I3(axi4l_reg_totl_cnt[22]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[22]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[22]),
        .I4(axi4l_reg_p_cnt[22]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[23]),
        .I3(axi4l_reg_totl_cnt[23]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[23]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[23]),
        .I4(axi4l_reg_p_cnt[23]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[24]),
        .I3(axi4l_reg_totl_cnt[24]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[24]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[24]),
        .I4(axi4l_reg_p_cnt[24]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[25]),
        .I3(axi4l_reg_totl_cnt[25]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[25]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[25]),
        .I4(axi4l_reg_p_cnt[25]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[26]),
        .I3(axi4l_reg_totl_cnt[26]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[26]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[26]),
        .I4(axi4l_reg_p_cnt[26]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[27]),
        .I3(axi4l_reg_totl_cnt[27]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[27]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[27]),
        .I4(axi4l_reg_p_cnt[27]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[28]),
        .I3(axi4l_reg_totl_cnt[28]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[28]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[28]),
        .I4(axi4l_reg_p_cnt[28]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[29]),
        .I3(axi4l_reg_totl_cnt[29]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[29]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[29]),
        .I4(axi4l_reg_p_cnt[29]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[2]),
        .I3(axi4l_reg_totl_cnt[2]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[2]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[2]),
        .I4(axi4l_reg_p_cnt[2]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[30]),
        .I3(axi4l_reg_totl_cnt[30]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[30]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[30]),
        .I4(axi4l_reg_p_cnt[30]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[31]),
        .I3(axi4l_reg_totl_cnt[31]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[31]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[31]),
        .I4(axi4l_reg_p_cnt[31]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \s00_axi_rdata[31]_INST_0_i_10 
       (.I0(s00_axi_awaddr[7]),
        .I1(s00_axi_awaddr[6]),
        .I2(s00_axi_awaddr[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s00_axi_rdata[31]_INST_0_i_11 
       (.I0(s00_axi_araddr[4]),
        .I1(s00_axi_araddr[3]),
        .I2(s00_axi_araddr[2]),
        .O(\s00_axi_rdata[31]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(s00_axi_araddr[3]),
        .I1(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .I2(s00_axi_araddr[4]),
        .I3(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .I4(s00_axi_araddr[2]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \s00_axi_rdata[31]_INST_0_i_3 
       (.I0(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .I2(s00_axi_araddr[2]),
        .I3(s00_axi_araddr[3]),
        .I4(s00_axi_araddr[4]),
        .O(\s00_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \s00_axi_rdata[31]_INST_0_i_4 
       (.I0(\s00_axi_rdata[31]_INST_0_i_9_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(s00_axi_araddr[3]),
        .I3(s00_axi_awaddr[4]),
        .I4(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I5(\s00_axi_rdata[31]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10101000)) 
    \s00_axi_rdata[31]_INST_0_i_5 
       (.I0(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_10_n_0 ),
        .I2(s00_axi_awaddr[4]),
        .I3(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .I4(\s00_axi_rdata[31]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAA8)) 
    \s00_axi_rdata[31]_INST_0_i_6 
       (.I0(s00_axi_araddr[3]),
        .I1(s00_axi_awaddr[4]),
        .I2(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I3(\s00_axi_rdata[31]_INST_0_i_10_n_0 ),
        .I4(\s00_axi_rdata[31]_INST_0_i_9_n_0 ),
        .I5(s00_axi_araddr[2]),
        .O(\s00_axi_rdata[31]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s00_axi_rdata[31]_INST_0_i_7 
       (.I0(s00_axi_awaddr[7]),
        .I1(s00_axi_awaddr[6]),
        .I2(s00_axi_awaddr[0]),
        .I3(\axi4l_reg_vref[31]_i_2_n_0 ),
        .I4(s00_axi_awaddr[4]),
        .O(\s00_axi_rdata[31]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s00_axi_rdata[31]_INST_0_i_8 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_araddr[6]),
        .I2(s00_axi_araddr[7]),
        .I3(s00_axi_araddr[5]),
        .I4(s00_axi_araddr[1]),
        .O(\s00_axi_rdata[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s00_axi_rdata[31]_INST_0_i_9 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_araddr[5]),
        .I2(s00_axi_araddr[7]),
        .I3(s00_axi_araddr[6]),
        .I4(s00_axi_araddr[0]),
        .I5(s00_axi_araddr[4]),
        .O(\s00_axi_rdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[3]),
        .I3(axi4l_reg_totl_cnt[3]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[3]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[3]),
        .I4(axi4l_reg_p_cnt[3]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[4]),
        .I3(axi4l_reg_totl_cnt[4]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[4]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[4]),
        .I4(axi4l_reg_p_cnt[4]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[5]),
        .I3(axi4l_reg_totl_cnt[5]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[5]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[5]),
        .I4(axi4l_reg_p_cnt[5]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[6]),
        .I3(axi4l_reg_totl_cnt[6]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[6]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[6]),
        .I4(axi4l_reg_p_cnt[6]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[7]),
        .I3(axi4l_reg_totl_cnt[7]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[7]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[7]),
        .I4(axi4l_reg_p_cnt[7]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[8]),
        .I3(axi4l_reg_totl_cnt[8]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[8]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[8]),
        .I4(axi4l_reg_p_cnt[8]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(axi4l_reg_n_cnt[9]),
        .I3(axi4l_reg_totl_cnt[9]),
        .I4(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .I1(axi4l_reg_nplc[9]),
        .I2(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I3(axi4l_reg_vref[9]),
        .I4(axi4l_reg_p_cnt[9]),
        .I5(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \totl_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\totl_cnt_reg_n_0_[0] ),
        .O(totl_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[10]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[10]),
        .O(totl_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[11]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[11]),
        .O(totl_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[12]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[12]),
        .O(totl_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[13]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[13]),
        .O(totl_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[14]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[14]),
        .O(totl_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[15]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[15]),
        .O(totl_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[16]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[16]),
        .O(totl_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[17]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[17]),
        .O(totl_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[18]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[18]),
        .O(totl_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[19]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[19]),
        .O(totl_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[1]),
        .O(totl_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[20]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[20]),
        .O(totl_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[21]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[21]),
        .O(totl_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[22]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[22]),
        .O(totl_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[23]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[23]),
        .O(totl_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[24]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[24]),
        .O(totl_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[25]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[25]),
        .O(totl_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[26]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[26]),
        .O(totl_cnt[26]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[27]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[27]),
        .O(totl_cnt[27]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[28]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[28]),
        .O(totl_cnt[28]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[29]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[29]),
        .O(totl_cnt[29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[2]),
        .O(totl_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[30]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[30]),
        .O(totl_cnt[30]));
  LUT6 #(
    .INIT(64'h33FB00FB33CB00CB)) 
    \totl_cnt[31]_i_1 
       (.I0(\totl_cnt_reg[31]_i_3_n_1 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(madc_n_cnt0_carry__2_n_0),
        .I5(state1),
        .O(\totl_cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_10 
       (.I0(\cnt_reg_n_0_[24] ),
        .I1(\cnt_reg_n_0_[25] ),
        .O(\totl_cnt[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_11 
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[23] ),
        .O(\totl_cnt[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_12 
       (.I0(\cnt_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[21] ),
        .O(\totl_cnt[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_13 
       (.I0(\cnt_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[19] ),
        .O(\totl_cnt[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_15 
       (.I0(\cnt_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[17] ),
        .O(\totl_cnt[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_16 
       (.I0(\cnt_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[15] ),
        .O(\totl_cnt[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_17 
       (.I0(\cnt_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[13] ),
        .O(\totl_cnt[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_18 
       (.I0(\cnt_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[11] ),
        .O(\totl_cnt[31]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \totl_cnt[31]_i_19 
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(T1),
        .I2(\cnt_reg_n_0_[6] ),
        .O(\totl_cnt[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[31]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[31]),
        .O(totl_cnt[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \totl_cnt[31]_i_20 
       (.I0(T1),
        .I1(\cnt_reg_n_0_[5] ),
        .O(\totl_cnt[31]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \totl_cnt[31]_i_21 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(T1),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\totl_cnt[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_22 
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[9] ),
        .O(\totl_cnt[31]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \totl_cnt[31]_i_23 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(T1),
        .O(\totl_cnt[31]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \totl_cnt[31]_i_24 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(T1),
        .O(\totl_cnt[31]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \totl_cnt[31]_i_25 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(T1),
        .O(\totl_cnt[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_6 
       (.I0(\cnt_reg_n_0_[30] ),
        .I1(\cnt_reg_n_0_[31] ),
        .O(\totl_cnt[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_7 
       (.I0(\cnt_reg_n_0_[28] ),
        .I1(\cnt_reg_n_0_[29] ),
        .O(\totl_cnt[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \totl_cnt[31]_i_8 
       (.I0(\cnt_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[27] ),
        .O(\totl_cnt[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[3]),
        .O(totl_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[4]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[4]),
        .O(totl_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[5]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[5]),
        .O(totl_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[6]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[6]),
        .O(totl_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[7]),
        .O(totl_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[8]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[8]),
        .O(totl_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \totl_cnt[9]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in15[9]),
        .O(totl_cnt[9]));
  FDCE \totl_cnt_reg[0] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[0]),
        .Q(\totl_cnt_reg_n_0_[0] ));
  FDCE \totl_cnt_reg[10] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[10]),
        .Q(\totl_cnt_reg_n_0_[10] ));
  FDCE \totl_cnt_reg[11] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[11]),
        .Q(\totl_cnt_reg_n_0_[11] ));
  FDCE \totl_cnt_reg[12] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[12]),
        .Q(\totl_cnt_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[12]_i_2 
       (.CI(\totl_cnt_reg[8]_i_2_n_0 ),
        .CO({\totl_cnt_reg[12]_i_2_n_0 ,\totl_cnt_reg[12]_i_2_n_1 ,\totl_cnt_reg[12]_i_2_n_2 ,\totl_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[12:9]),
        .S({\totl_cnt_reg_n_0_[12] ,\totl_cnt_reg_n_0_[11] ,\totl_cnt_reg_n_0_[10] ,\totl_cnt_reg_n_0_[9] }));
  FDCE \totl_cnt_reg[13] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[13]),
        .Q(\totl_cnt_reg_n_0_[13] ));
  FDCE \totl_cnt_reg[14] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[14]),
        .Q(\totl_cnt_reg_n_0_[14] ));
  FDCE \totl_cnt_reg[15] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[15]),
        .Q(\totl_cnt_reg_n_0_[15] ));
  FDCE \totl_cnt_reg[16] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[16]),
        .Q(\totl_cnt_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[16]_i_2 
       (.CI(\totl_cnt_reg[12]_i_2_n_0 ),
        .CO({\totl_cnt_reg[16]_i_2_n_0 ,\totl_cnt_reg[16]_i_2_n_1 ,\totl_cnt_reg[16]_i_2_n_2 ,\totl_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[16:13]),
        .S({\totl_cnt_reg_n_0_[16] ,\totl_cnt_reg_n_0_[15] ,\totl_cnt_reg_n_0_[14] ,\totl_cnt_reg_n_0_[13] }));
  FDCE \totl_cnt_reg[17] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[17]),
        .Q(\totl_cnt_reg_n_0_[17] ));
  FDCE \totl_cnt_reg[18] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[18]),
        .Q(\totl_cnt_reg_n_0_[18] ));
  FDCE \totl_cnt_reg[19] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[19]),
        .Q(\totl_cnt_reg_n_0_[19] ));
  FDCE \totl_cnt_reg[1] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[1]),
        .Q(\totl_cnt_reg_n_0_[1] ));
  FDCE \totl_cnt_reg[20] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[20]),
        .Q(\totl_cnt_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[20]_i_2 
       (.CI(\totl_cnt_reg[16]_i_2_n_0 ),
        .CO({\totl_cnt_reg[20]_i_2_n_0 ,\totl_cnt_reg[20]_i_2_n_1 ,\totl_cnt_reg[20]_i_2_n_2 ,\totl_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[20:17]),
        .S({\totl_cnt_reg_n_0_[20] ,\totl_cnt_reg_n_0_[19] ,\totl_cnt_reg_n_0_[18] ,\totl_cnt_reg_n_0_[17] }));
  FDCE \totl_cnt_reg[21] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[21]),
        .Q(\totl_cnt_reg_n_0_[21] ));
  FDCE \totl_cnt_reg[22] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[22]),
        .Q(\totl_cnt_reg_n_0_[22] ));
  FDCE \totl_cnt_reg[23] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[23]),
        .Q(\totl_cnt_reg_n_0_[23] ));
  FDCE \totl_cnt_reg[24] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[24]),
        .Q(\totl_cnt_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[24]_i_2 
       (.CI(\totl_cnt_reg[20]_i_2_n_0 ),
        .CO({\totl_cnt_reg[24]_i_2_n_0 ,\totl_cnt_reg[24]_i_2_n_1 ,\totl_cnt_reg[24]_i_2_n_2 ,\totl_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[24:21]),
        .S({\totl_cnt_reg_n_0_[24] ,\totl_cnt_reg_n_0_[23] ,\totl_cnt_reg_n_0_[22] ,\totl_cnt_reg_n_0_[21] }));
  FDCE \totl_cnt_reg[25] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[25]),
        .Q(\totl_cnt_reg_n_0_[25] ));
  FDCE \totl_cnt_reg[26] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[26]),
        .Q(\totl_cnt_reg_n_0_[26] ));
  FDCE \totl_cnt_reg[27] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[27]),
        .Q(\totl_cnt_reg_n_0_[27] ));
  FDCE \totl_cnt_reg[28] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[28]),
        .Q(\totl_cnt_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[28]_i_2 
       (.CI(\totl_cnt_reg[24]_i_2_n_0 ),
        .CO({\totl_cnt_reg[28]_i_2_n_0 ,\totl_cnt_reg[28]_i_2_n_1 ,\totl_cnt_reg[28]_i_2_n_2 ,\totl_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[28:25]),
        .S({\totl_cnt_reg_n_0_[28] ,\totl_cnt_reg_n_0_[27] ,\totl_cnt_reg_n_0_[26] ,\totl_cnt_reg_n_0_[25] }));
  FDCE \totl_cnt_reg[29] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[29]),
        .Q(\totl_cnt_reg_n_0_[29] ));
  FDCE \totl_cnt_reg[2] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[2]),
        .Q(\totl_cnt_reg_n_0_[2] ));
  FDCE \totl_cnt_reg[30] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[30]),
        .Q(\totl_cnt_reg_n_0_[30] ));
  FDCE \totl_cnt_reg[31] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[31]),
        .Q(\totl_cnt_reg_n_0_[31] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \totl_cnt_reg[31]_i_14 
       (.CI(1'b0),
        .CO({\totl_cnt_reg[31]_i_14_n_0 ,\totl_cnt_reg[31]_i_14_n_1 ,\totl_cnt_reg[31]_i_14_n_2 ,\totl_cnt_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\totl_cnt[31]_i_19_n_0 ,\totl_cnt[31]_i_20_n_0 ,\totl_cnt[31]_i_21_n_0 }),
        .O(\NLW_totl_cnt_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({\totl_cnt[31]_i_22_n_0 ,\totl_cnt[31]_i_23_n_0 ,\totl_cnt[31]_i_24_n_0 ,\totl_cnt[31]_i_25_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \totl_cnt_reg[31]_i_3 
       (.CI(\totl_cnt_reg[31]_i_5_n_0 ),
        .CO({\NLW_totl_cnt_reg[31]_i_3_CO_UNCONNECTED [3],\totl_cnt_reg[31]_i_3_n_1 ,\totl_cnt_reg[31]_i_3_n_2 ,\totl_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_totl_cnt_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\totl_cnt[31]_i_6_n_0 ,\totl_cnt[31]_i_7_n_0 ,\totl_cnt[31]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[31]_i_4 
       (.CI(\totl_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_totl_cnt_reg[31]_i_4_CO_UNCONNECTED [3:2],\totl_cnt_reg[31]_i_4_n_2 ,\totl_cnt_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_totl_cnt_reg[31]_i_4_O_UNCONNECTED [3],in15[31:29]}),
        .S({1'b0,\totl_cnt_reg_n_0_[31] ,\totl_cnt_reg_n_0_[30] ,\totl_cnt_reg_n_0_[29] }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \totl_cnt_reg[31]_i_5 
       (.CI(\totl_cnt_reg[31]_i_9_n_0 ),
        .CO({\totl_cnt_reg[31]_i_5_n_0 ,\totl_cnt_reg[31]_i_5_n_1 ,\totl_cnt_reg[31]_i_5_n_2 ,\totl_cnt_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_totl_cnt_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\totl_cnt[31]_i_10_n_0 ,\totl_cnt[31]_i_11_n_0 ,\totl_cnt[31]_i_12_n_0 ,\totl_cnt[31]_i_13_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \totl_cnt_reg[31]_i_9 
       (.CI(\totl_cnt_reg[31]_i_14_n_0 ),
        .CO({\totl_cnt_reg[31]_i_9_n_0 ,\totl_cnt_reg[31]_i_9_n_1 ,\totl_cnt_reg[31]_i_9_n_2 ,\totl_cnt_reg[31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_totl_cnt_reg[31]_i_9_O_UNCONNECTED [3:0]),
        .S({\totl_cnt[31]_i_15_n_0 ,\totl_cnt[31]_i_16_n_0 ,\totl_cnt[31]_i_17_n_0 ,\totl_cnt[31]_i_18_n_0 }));
  FDCE \totl_cnt_reg[3] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[3]),
        .Q(\totl_cnt_reg_n_0_[3] ));
  FDCE \totl_cnt_reg[4] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[4]),
        .Q(\totl_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\totl_cnt_reg[4]_i_2_n_0 ,\totl_cnt_reg[4]_i_2_n_1 ,\totl_cnt_reg[4]_i_2_n_2 ,\totl_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\totl_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[4:1]),
        .S({\totl_cnt_reg_n_0_[4] ,\totl_cnt_reg_n_0_[3] ,\totl_cnt_reg_n_0_[2] ,\totl_cnt_reg_n_0_[1] }));
  FDCE \totl_cnt_reg[5] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[5]),
        .Q(\totl_cnt_reg_n_0_[5] ));
  FDCE \totl_cnt_reg[6] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[6]),
        .Q(\totl_cnt_reg_n_0_[6] ));
  FDCE \totl_cnt_reg[7] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[7]),
        .Q(\totl_cnt_reg_n_0_[7] ));
  FDCE \totl_cnt_reg[8] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[8]),
        .Q(\totl_cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \totl_cnt_reg[8]_i_2 
       (.CI(\totl_cnt_reg[4]_i_2_n_0 ),
        .CO({\totl_cnt_reg[8]_i_2_n_0 ,\totl_cnt_reg[8]_i_2_n_1 ,\totl_cnt_reg[8]_i_2_n_2 ,\totl_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[8:5]),
        .S({\totl_cnt_reg_n_0_[8] ,\totl_cnt_reg_n_0_[7] ,\totl_cnt_reg_n_0_[6] ,\totl_cnt_reg_n_0_[5] }));
  FDCE \totl_cnt_reg[9] 
       (.C(madc_clk),
        .CE(\totl_cnt[31]_i_1_n_0 ),
        .CLR(AR),
        .D(totl_cnt[9]),
        .Q(\totl_cnt_reg_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
