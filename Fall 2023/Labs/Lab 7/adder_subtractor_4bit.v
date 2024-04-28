`timescale 1 ns/1 ns

module adder_subtractor_4bit (
	input [3:0] A ,
	input [3:0] B ,
	input 		sel , // 0: add, 1: subtract
	output [3:0] S ,
	output 		cout
);
	
	wire C_1;
	add_sub AS0(A[0], B[0], sel, sel, S[0], C_1);
	wire C_2;
	add_sub AS1(A[1], B[1], C_1, sel, S[1], C_2);
	wire C_3;
	add_sub AS2(A[2], B[2], C_2, sel, S[2], C_3);
	
	add_sub AS3(A[3], B[3], C_3, sel, S[3], cout);

endmodule
