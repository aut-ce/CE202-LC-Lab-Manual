`timescale 1 ns/1 ns

module adder_subtractor_4bit_delay (
	input [3:0] A ,
	input [3:0] B ,
	input 		sel , // 0: add, 1: subtract
	output [3:0] S ,
	output 		cout
);
	wire C_1;
	add_sub_delay ASD0(A[0], B[0], sel, sel, S[0], C_1);
	wire C_2;
	add_sub_delay ASD1(A[1], B[1], C_1, sel, S[1], C_2);
	wire C_3;
	add_sub_delay ASD2(A[2], B[2], C_2, sel, S[2], C_3);
	
	add_sub_delay ASD3(A[3], B[3], C_3, sel, S[3], cout);
	

endmodule
