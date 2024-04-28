`timescale 1 ns/1 ns

module full_adder_delay (
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
);

	//finding sum
	wire xor_out_1;
	xor #10 xor_1(xor_out_1, a, b);
	xor #10 xor_2(s, ci, xor_out_1);
	
	//finding carry out	
	wire and_out_1;
	and #5 and_1(and_out_1, a, b);
	wire or_out_1;
	or #5 or_1(or_out_1, a, b);
	wire and_out_2;
	and #5 and_2(and_out_2, ci, or_out_1);
	or #5 or_2(co, and_out_1, and_out_2);

endmodule
