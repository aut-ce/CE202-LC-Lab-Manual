`timescale 1ns / 1ps

module tb_decoder2x4;

	// Inputs
	reg [1:0] I;
	reg en;

	// Outputs
	wire [3:0] D;

	// Instantiate the Unit Under Test (UUT)
	decoder2x4 uut (
		.D(D), 
		.I(I), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		I = 2'b00;
		en = 1;
		#100;
		
		I = 2'b01;
		en = 1;
		#100;
		
		I = 2'b10;
		en = 1;
		#100;
		
		I = 2'b11;
		en = 1;
		#100;
		
		
		
		
		
		
		
		
		I = 2'b00;
		en = 0;
		#100;
		
		I = 2'b01;
		en = 0;
		#100;
		
		I = 2'b10;
		en = 0;
		#100;
		
		I = 2'b11;
		en = 0;
		#100;
        
		// Add stimulus here

	end
      
endmodule

