`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:05:30 12/15/2023
// Design Name:   counter
// Module Name:   /mnt/9636D17436D15639/University/Ta/Logic Circuit Lab/Fall 2023/Labs/Lab 9/Sequential_Circuit/tb_counter_new.v
// Project Name:  Sequential_Circuit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter_new;

	// Inputs
	reg clk;
	reg UD;
	reg REST;

	// Outputs
	wire [2:0] Q;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.UD(UD), 
		.REST(REST), 
		.Q(Q)
	);
	
	initial begin
		clk= 1'b0;
		repeat(500)
		begin
			#40
			clk = ~clk;
		end
	end
	
	initial begin
		// Initialize Inputs
		UD = 0;
		REST = 1;
		#100;
		
		REST = 0;
		UD = 0;
		#100;
		
		UD = 1;
		#100;
		
		UD = 1;
		#100;
		
		UD = 0;
		#100;
		
		UD = 1;
		#100;
		
		UD = 0;
		#200;
        
		// Add stimulus here

	end
      
endmodule

