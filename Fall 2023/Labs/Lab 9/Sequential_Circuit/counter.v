`timescale 1ns / 1ps

module counter( input clk,
					 input UD,
					 input REST,
					 output Q_out);
	
	
	wire s, s_n;
	wire R, R_n;
	wire q0, q1, q2;
	wire q_n0, q_n1, q_n2;
	
	
	and s_out(s, q0, UD);
	and s_n_out(s_n, q_n0, ~UD);
	or s_or(s, s_n);
	and R_out(q_n1, s_n);
	and R_out_n(q1, s);
	or R_or(q_n1, q1);
	
	JKFF jk_1(1'b1, 1'b1, clk, REST, q0, q_n0);
	JKFF jk_2(s, s, clk, REST, q1, q_n1);
	JKFF jk_3(q_n1, q_n1, clk, REST, Q_out);


endmodule
