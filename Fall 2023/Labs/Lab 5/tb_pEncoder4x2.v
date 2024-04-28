`timescale 1ns / 1ps


module tb_pEncoder4x2;

	// Inputs
	reg [3:0] D_in;

	// Outputs
	wire [1:0] Q_out;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	pEncoder4x2 uut (
		.Q_out(Q_out), 
		.v(v), 
		.D_in(D_in)
	);

	initial begin
		// Initialize Inputs
		D_in = 4'b0000;
		#100;
		D_in = 4'b1000;
		#100;
		D_in = 4'b0100;
		#100;
		D_in = 4'b0010;
		#100;
		D_in = 4'b0001;
		#100;
		
		
		D_in = 4'b0000;
		#100;
		D_in = 4'b1000;
		#100;
		D_in = 4'b1100;
		#100;
		D_in = 4'b1010;
		#100;
		D_in = 4'b1101;
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

