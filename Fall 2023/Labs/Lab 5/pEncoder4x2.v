`timescale 1ns / 1ps

module pEncoder4x2( output [1:0] Q_out,
						  output v,
						  input [3:0] D_in );
						  

	wire x;
	
	and a(x, ~D_in[2], D_in[1]);
	or b(Q_out[0], x, D_in[3]);
	
	or c(Q_out[1], D_in[2], D_in[3]);
	
	or d(v, D_in[0], D_in[1], Q_out[1]);


endmodule
