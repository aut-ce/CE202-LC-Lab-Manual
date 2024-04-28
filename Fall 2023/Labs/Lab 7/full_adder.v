`timescale 1 ns/1 ns

module full_adder (
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
);
	
	assign s = a ^ b ^ ci;
	assign co = (a & b) | (ci & (a | b));
	
endmodule
