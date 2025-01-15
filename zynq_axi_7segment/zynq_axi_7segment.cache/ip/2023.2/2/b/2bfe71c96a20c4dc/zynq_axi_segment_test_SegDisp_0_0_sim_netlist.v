// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 16 11:45:26 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_segment_test_SegDisp_0_0_sim_netlist.v
// Design      : zynq_axi_segment_test_SegDisp_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test_SegDisp
   (AN,
    CA,
    CLK,
    DIGIT_1,
    DIGIT_10);
  output [0:0]AN;
  output CA;
  input CLK;
  input [0:0]DIGIT_1;
  input [0:0]DIGIT_10;

  wire [0:0]AN;
  wire CA;
  wire CLK;
  wire [0:0]DIGIT_1;
  wire [0:0]DIGIT_10;
  wire [20:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire enable;
  wire enable_i_1_n_0;
  wire enable_i_2_n_0;
  wire enable_i_3_n_0;
  wire enable_i_4_n_0;
  wire enable_i_5_n_0;
  wire enable_i_6_n_0;
  wire [20:0]p_1_in;
  wire [3:3]NLW_cnt0_carry__3_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h1D)) 
    AN__0
       (.I0(DIGIT_1),
        .I1(CA),
        .I2(DIGIT_10),
        .O(AN));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({NLW_cnt0_carry__3_CO_UNCONNECTED[3],cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(cnt[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \cnt[20]_i_1 
       (.I0(enable_i_6_n_0),
        .I1(enable_i_5_n_0),
        .I2(enable_i_4_n_0),
        .I3(enable_i_3_n_0),
        .I4(enable_i_2_n_0),
        .O(enable));
  FDRE \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(cnt[0]),
        .R(enable));
  FDRE \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(cnt[10]),
        .R(enable));
  FDRE \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(cnt[11]),
        .R(enable));
  FDRE \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(cnt[12]),
        .R(enable));
  FDRE \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(cnt[13]),
        .R(enable));
  FDRE \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(cnt[14]),
        .R(enable));
  FDRE \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(cnt[15]),
        .R(enable));
  FDRE \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(cnt[16]),
        .R(enable));
  FDRE \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(cnt[17]),
        .R(enable));
  FDRE \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(cnt[18]),
        .R(enable));
  FDRE \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(cnt[19]),
        .R(enable));
  FDRE \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(cnt[1]),
        .R(enable));
  FDRE \cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(cnt[20]),
        .R(enable));
  FDRE \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(cnt[2]),
        .R(enable));
  FDRE \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(cnt[3]),
        .R(enable));
  FDRE \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(cnt[4]),
        .R(enable));
  FDRE \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(cnt[5]),
        .R(enable));
  FDRE \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(cnt[6]),
        .R(enable));
  FDRE \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(cnt[7]),
        .R(enable));
  FDRE \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(cnt[8]),
        .R(enable));
  FDRE \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(cnt[9]),
        .R(enable));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    enable_i_1
       (.I0(enable_i_2_n_0),
        .I1(enable_i_3_n_0),
        .I2(enable_i_4_n_0),
        .I3(enable_i_5_n_0),
        .I4(enable_i_6_n_0),
        .I5(CA),
        .O(enable_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    enable_i_2
       (.I0(cnt[11]),
        .I1(cnt[18]),
        .I2(cnt[3]),
        .I3(cnt[10]),
        .O(enable_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    enable_i_3
       (.I0(cnt[12]),
        .I1(cnt[17]),
        .I2(cnt[7]),
        .I3(cnt[19]),
        .O(enable_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    enable_i_4
       (.I0(cnt[9]),
        .I1(cnt[13]),
        .I2(cnt[14]),
        .I3(cnt[8]),
        .O(enable_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    enable_i_5
       (.I0(cnt[6]),
        .I1(cnt[4]),
        .I2(cnt[0]),
        .O(enable_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    enable_i_6
       (.I0(cnt[16]),
        .I1(cnt[1]),
        .I2(cnt[5]),
        .I3(cnt[20]),
        .I4(cnt[15]),
        .I5(cnt[2]),
        .O(enable_i_6_n_0));
  FDRE enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enable_i_1_n_0),
        .Q(CA),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_axi_segment_test_SegDisp_0_0,test_SegDisp,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "test_SegDisp,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CA,
    DIGIT_1,
    DIGIT_10,
    AN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_segment_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  output CA;
  input [3:0]DIGIT_1;
  input [3:0]DIGIT_10;
  output [6:0]AN;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:5]\^AN ;
  wire CA;
  wire CLK;
  wire [3:0]DIGIT_1;
  wire [3:0]DIGIT_10;

  assign AN[6] = \<const0> ;
  assign AN[5] = \^AN [5];
  assign AN[4] = \^AN [5];
  assign AN[3] = \^AN [5];
  assign AN[2] = \<const1> ;
  assign AN[1] = \<const1> ;
  assign AN[0] = \^AN [5];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test_SegDisp inst
       (.AN(\^AN ),
        .CA(CA),
        .CLK(CLK),
        .DIGIT_1(DIGIT_1[0]),
        .DIGIT_10(DIGIT_10[0]));
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
