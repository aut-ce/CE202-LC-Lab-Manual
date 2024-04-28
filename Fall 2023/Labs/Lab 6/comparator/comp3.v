`timescale 1ns / 1ps

module comp3( input [2:0] A,
				  input [2:0] B,
				  input l,
				  input e,
				  input g,
				  output lt,
				  output et,
				  output gt );


	//find if a is greater than b
	wire [2:0] Bnot;
	not not_1(Bnot[2], B[2]);
	not not_2(Bnot[1], B[1]);
	not not_3(Bnot[0], B[0]);

	wire xnor_a2_b2, xnor_a1_b1;
	xnor xnor_1(xnor_a2_b2, A[2], B[2]);
	xnor xnor_2(xnor_a1_b1, A[1], B[1]);

	wire [2:0] w;
	and and_1(w[2], A[2], Bnot[2]);
	and and_2(w[1], A[1], Bnot[1], xnor_a2_b2);
	and and_3(w[0], A[0], Bnot[0], xnor_a2_b2, xnor_a1_b1);

	wire a_gt_b;
	or or_1(a_gt_b, w[2], w[1], w[0]);

	//find if a is equal to b
	wire [2:0] h;
	xnor xnor_3(h[2], A[2], B[2]);
	xnor xnor_4(h[1], A[1], B[1]);
	xnor xnor_5(h[0], A[0], B[0]);

	wire a_eq_b;
	and and_4(a_eq_b, h[2], h[1], h[0]);

	//find if a is less than b
	wire a_lt_b_not, a_lt_b;
	or or_2(a_lt_b_not, a_gt_b, a_eq_b);
	not not_4(a_lt_b, a_lt_b_not);

	//final works
	wire a_eq_b_not;
	not not_5(a_eq_b_not, a_eq_b);


	and and_5(et, a_eq_b, e);


	wire k1, k2;
	and and_6(k1, a_eq_b, l);
	and and_7(k2, a_eq_b_not, a_lt_b);
	or or_3(lt, k1, k2);


	wire k3, k4;
	and and_8(k3, a_eq_b, g);
	and and_9(k4, a_eq_b_not, a_gt_b);
	or or_4(gt, k3, k4);
	
endmodule
