`timescale 1ns / 1ps

module tb_learnfirstlogic;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire xx;
	wire yy;

	// Instantiate the Unit Under Test (UUT)
	mylogic uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.x(xx), 
		.y(yy)
	);

	initial begin
		A = 1'b0; B = 1'b0; C = 1'b0;
		#100;
		A = 1'b0; B = 1'b0; C = 1'b1;
		#100;
      A = 1'b0; B = 1'b1; C = 1'b0;
		#100;
		A = 1'b0; B = 1'b1; C = 1'b1;
		#100;
		A = 1'b1; B = 1'b0; C = 1'b0;
		#100;
		A = 1'b1; B = 1'b0; C = 1'b1;
		#100;
		A = 1'b1; B = 1'b1; C = 1'b0;
		#100;
		A = 1'b1; B = 1'b1; C = 1'b1;
		#100;
		$finish;
	end

endmodule

