`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:38 11/11/2023
// Design Name:   decoder4x16
// Module Name:   /home/reza/Desktop/test/tb_decoder4x16.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_decoder4x16;

	// Inputs
	reg [3:0] I;
	reg en;

	// Outputs
	wire [15:0] F;

	// Instantiate the Unit Under Test (UUT)
	decoder4x16 uut (
		.F(F), 
		.I(I), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		en = 1;
		I = 4'b0000;
		#100;
		
		I = 4'b0001;
		#100;
		
		
		I = 4'b0010;
		#100;
		
		I = 4'b0011;
		#100;
		
		I = 4'b0100;
		#100;
		
		I = 4'b1000;
		#100;
		
		I = 4'b0110;
		#100;
        
		// Add stimulus here

	end
      
endmodule

