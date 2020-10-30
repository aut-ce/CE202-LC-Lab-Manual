`timescale 1ns / 1ps




module mylogic(
	input A,
	input B,
	input C,
	output x,
	output y
    );
	wire e;

		and g1(e,A,B);
		not g2(y, C);
		or  g3(x,e,y);

endmodule
