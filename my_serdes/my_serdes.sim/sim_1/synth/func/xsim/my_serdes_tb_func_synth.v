// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Oct 22 11:29:27 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/verilog_lab/my_serdes/my_serdes.sim/sim_1/synth/func/xsim/my_serdes_tb_func_synth.v
// Design      : my_P2S
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module my_P2S
   (rst2,
    clk2,
    Psof_in,
    pin,
    Psof_out,
    dout);
  input rst2;
  input clk2;
  input Psof_in;
  input pin;
  output Psof_out;
  output [7:0]dout;

  wire Psof_in;
  wire Psof_in_IBUF;
  wire Psof_out;
  wire Psof_out_OBUF;
  wire clk2;
  wire clk2_IBUF;
  wire clk2_IBUF_BUFG;
  wire [7:0]dout;
  wire [0:0]dout_OBUF;
  wire [7:7]p_0_in;
  wire pin;
  wire pin_IBUF;
  wire rst2;
  wire rst2_IBUF;

  IBUF Psof_in_IBUF_inst
       (.I(Psof_in),
        .O(Psof_in_IBUF));
  OBUF Psof_out_OBUF_inst
       (.I(Psof_out_OBUF),
        .O(Psof_out));
  FDRE #(
    .INIT(1'b0)) 
    Psof_out_reg
       (.C(clk2_IBUF_BUFG),
        .CE(1'b1),
        .D(Psof_in_IBUF),
        .Q(Psof_out_OBUF),
        .R(rst2_IBUF));
  BUFG clk2_IBUF_BUFG_inst
       (.I(clk2_IBUF),
        .O(clk2_IBUF_BUFG));
  IBUF clk2_IBUF_inst
       (.I(clk2),
        .O(clk2_IBUF));
  LUT3 #(
    .INIT(8'h08)) 
    \dout[7]_i_1 
       (.I0(pin_IBUF),
        .I1(Psof_in_IBUF),
        .I2(rst2_IBUF),
        .O(p_0_in));
  OBUF \dout_OBUF[0]_inst 
       (.I(dout_OBUF),
        .O(dout[0]));
  OBUF \dout_OBUF[1]_inst 
       (.I(dout_OBUF),
        .O(dout[1]));
  OBUF \dout_OBUF[2]_inst 
       (.I(dout_OBUF),
        .O(dout[2]));
  OBUF \dout_OBUF[3]_inst 
       (.I(dout_OBUF),
        .O(dout[3]));
  OBUF \dout_OBUF[4]_inst 
       (.I(dout_OBUF),
        .O(dout[4]));
  OBUF \dout_OBUF[5]_inst 
       (.I(dout_OBUF),
        .O(dout[5]));
  OBUF \dout_OBUF[6]_inst 
       (.I(dout_OBUF),
        .O(dout[6]));
  OBUF \dout_OBUF[7]_inst 
       (.I(dout_OBUF),
        .O(dout[7]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk2_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(dout_OBUF),
        .R(1'b0));
  IBUF pin_IBUF_inst
       (.I(pin),
        .O(pin_IBUF));
  IBUF rst2_IBUF_inst
       (.I(rst2),
        .O(rst2_IBUF));
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
