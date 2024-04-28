`timescale 1 ns/1 ns

module multiplexer4x4 (
	input [3:0] w3 ,
	input [3:0] w2 ,
	input [3:0] w1 ,
	input [3:0] w0 ,
	input [1:0]	sel ,
	output [3:0] y );
	
	reg [3:0] y_1;
	always @(sel, w0, w1, w2, w3)
		case(sel)
			2'b00: y_1 = w0;
			2'b01: y_1 = w1;
			2'b10: y_1 = w2;
			2'b11: y_1 = w3;
		endcase
	assign y = y_1;
endmodule
