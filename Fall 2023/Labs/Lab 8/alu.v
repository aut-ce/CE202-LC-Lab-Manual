`timescale 1 ns/1 ns

module alu (
	input [1:0] A ,
	input [1:0] B ,
	input [1:0]	sel ,
	output [3:0] Y );

	wire [3:0] Y_1;
	wire [3:0] Y_2;
	wire [3:0] Y_3;
	wire [3:0] Y_4;
	wire m_carry_0;
	wire m_carry;

	//not
	assign Y_1 = {A, ~A};
	
	//nand
	assign Y_2 = {2'b00, ~(A & B)}; 
	
	//plus
	assign Y_3[0] = A[0] ^ B[0];
	assign m_carry_0 = A[0] & B[0];
	assign Y_3[1] = A[1] ^ B[1] ^ m_carry_0;
	assign Y_3[2] = (A[1] & B[1]) | (m_carry_0 & (A[1] | B[1]));
	assign Y_3[3] = 1'b0;
	
	//multiply
	//assign Y_4 = A * B;
	assign Y_4[0]  = A[0] & B[0];
	assign Y_4[1]  = (A[1] & B[0]) ^ (B[1] & A[0]);
	assign m_carry = (A[1] & B[0]) & (B[1] & A[0]);
	assign Y_4[2]  = m_carry ^ (B[1] & A[1]);
	assign Y_4[3]  = m_carry & (B[1] & A[1]);
	
	multiplexer4x4 my_multiplexer4x4(Y_4, Y_3, Y_2, Y_1, sel, Y);

endmodule
