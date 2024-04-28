`timescale 1ns / 1ps


module tb_comp3;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire et;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comp3 uut (
		.A(A), 
		.B(B), 
		.l(l), 
		.e(e), 
		.g(g), 
		.lt(lt), 
		.et(et), 
		.gt(gt)
	);

	initial begin
		// Initialize Inputs
		A = 3'b000;
		B = 3'b000;
		l = 0;
		e = 0;
		g = 0;
		#100;
		
		
		A = 3'b001;
		B = 3'b000;
		#100;
		
		
		A = 3'b000;
		B = 3'b001;
		#100;
		
		A = 3'b100;
		B = 3'b011;
		#100;
		
		A = 3'b111;
		B = 3'b011;
		#100;
		
		
        

	end
      
endmodule

