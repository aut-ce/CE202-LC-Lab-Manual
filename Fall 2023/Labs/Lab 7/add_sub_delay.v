`timescale 1 ns/1 ns

module add_sub_delay (
	input a ,
	input b ,
	input cin ,
	input sel ,
	output sum ,
	output cout
);
	
	wire xor_out_1;
	xor #10 xor_1(xor_out_1, b, sel);
	full_adder_delay FAD(a, xor_out_1, cin, sum, cout); 

endmodule
