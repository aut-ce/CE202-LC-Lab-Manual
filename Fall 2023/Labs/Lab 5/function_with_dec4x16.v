`timescale 1ns / 1ps

module function_with_dec4x16( output f,
										input [3:0] i_in,
										input en );
	wire [15:0] decoder_output;
	
	decoder4x16 dec(decoder_output, i_in, en);
	
	nand final(f, ~decoder_output[0],  ~decoder_output[1],
					  ~decoder_output[4],  ~decoder_output[6],
					  ~decoder_output[8],  ~decoder_output[9],
					  ~decoder_output[10], ~decoder_output[12],
					  ~decoder_output[14], ~decoder_output[15] );

	
endmodule
