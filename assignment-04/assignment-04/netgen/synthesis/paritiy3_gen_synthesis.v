////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: paritiy3_gen_synthesis.v
// /___/   /\     Timestamp: Tue Nov 03 17:29:20 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim paritiy3_gen.ngc paritiy3_gen_synthesis.v 
// Device	: xc7z010-1-clg400
// Input file	: paritiy3_gen.ngc
// Output file	: C:\Users\Farshid726\Desktop\Codes\AUT\CE202-LC-Lab-Manual\assignment-04\assignment-04\netgen\synthesis\paritiy3_gen_synthesis.v
// # of Modules	: 1
// Design Name	: paritiy3_gen
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module paritiy3_gen (
  a, b, c, f
);
  input a;
  input b;
  input c;
  output f;
  wire a_IBUF_0;
  wire b_IBUF_1;
  wire c_IBUF_2;
  wire f_OBUF_3;
  LUT3 #(
    .INIT ( 8'h69 ))
  f11 (
    .I0(a_IBUF_0),
    .I1(b_IBUF_1),
    .I2(c_IBUF_2),
    .O(f_OBUF_3)
  );
  IBUF   a_IBUF (
    .I(a),
    .O(a_IBUF_0)
  );
  IBUF   b_IBUF (
    .I(b),
    .O(b_IBUF_1)
  );
  IBUF   c_IBUF (
    .I(c),
    .O(c_IBUF_2)
  );
  OBUF   f_OBUF (
    .I(f_OBUF_3),
    .O(f)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

