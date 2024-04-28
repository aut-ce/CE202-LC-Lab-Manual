`timescale 1ns / 1ps


module mux4x1( output y,
					input [3:0] w_in,
					input [1:0] sel );


	wire [3:0] a;
	
	and a0(a[0], w_in[0], ~sel[0], ~sel[1]);
	and a1(a[1], w_in[1],  sel[0], ~sel[1]);
	and a2(a[2], w_in[2], ~sel[0],  sel[1]);
	and a3(a[3], w_in[3],  sel[0],  sel[1]);
	
	or out(y, a[0], a[1], a[2], a[3]);

endmodule
