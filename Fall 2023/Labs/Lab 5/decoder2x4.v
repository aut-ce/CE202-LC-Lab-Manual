`timescale 1ns / 1ps

module decoder2x4( output [3:0] D,
						 input  [1:0] I,
						 input  en);
						 
	//wire I_not[1:0];
	//not n1(I_not[0], I[0]);
	//not n2(I_not[1], in[1]);
						 
	//      output	  		 b       a	 
	and D0( D[0], ~en, ~I[1], ~I[0] );
	and D1( D[2], ~en,  I[1], ~I[0] );
	and D2( D[1], ~en, ~I[1],  I[0] );
	and D3( D[3], ~en,  I[1],  I[0] );

endmodule
