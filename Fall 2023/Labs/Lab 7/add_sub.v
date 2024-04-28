`timescale 1 ns/1 ns

module add_sub (
	input a ,
	input b ,
	input cin ,
	input sel ,
	output sum ,
	output cout
);
	wire new_b;
	assign new_b = b ^ sel;
	full_adder FA(a, new_b, cin, sum, cout);

endmodule
