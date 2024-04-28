`timescale 1ns / 1ps


module tb_function_with_dec4x16;

	// Inputs
	reg [3:0] i_in;
	reg en;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	function_with_dec4x16 uut (
		.f(f), 
		.i_in(i_in), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		en = 1'b0;
		i_in = 4'b0000;
		#100;

		i_in = 4'b0001;
		#100;
		
		i_in = 4'b0010;
		#100;
		
		i_in = 4'b0011;
		#100;
		
		i_in = 4'b0100;
		#100;
		
		i_in = 4'b0101;
		#100;
		
		i_in = 4'b0110;
		#100;
		
		i_in = 4'b0111;
		#100;
		
		i_in = 4'b1000;
		#100;
		
		i_in = 4'b1001;
		#100;
		
		i_in = 4'b1010;
		#100;
		
		i_in = 4'b1011;
		#100;
		
		i_in = 4'b1100;
		#100;
		
		i_in = 4'b1101;
		#100;
		
		i_in = 4'b1111;
		#100;
		
		
        
		// Add stimulus here

	end
      
endmodule

