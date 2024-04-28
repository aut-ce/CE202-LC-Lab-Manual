`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:38 12/15/2023
// Design Name:   JKFF
// Module Name:   /mnt/9636D17436D15639/University/Ta/Logic Circuit Lab/Fall 2023/Labs/Lab 9/Sequential_Circuit/tb_JKFlipFlop.v
// Project Name:  Sequential_Circuit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_JKFlipFlop;

	// Inputs
	reg J;
	reg K;
	reg CLK;
	reg RST;

	// Outputs
	wire Q;
	wire Q_not;

	// Instantiate the Unit Under Test (UUT)
	JKFF uut (
		.J(J), 
		.K(K), 
		.CLK(CLK), 
		.RST(RST), 
		.Q(Q), 
		.Q_not(Q_not)
	);
	
	initial begin
		CLK = 1'b0;
		repeat(500)
		begin
			#40
			CLK = ~CLK;
		end
	end

	initial begin
		// Initialize Inputs
		RST = 1;
		J = 0;
		K = 0;
		#100;
		
		RST = 0;
		J = 0;
		K = 1;
		#100;
		
		J = 0;
		K = 0;
		#100;
		
		J = 1;
		K = 0;
		#100;
		
		J = 0;
		K = 0;
		#100;
		
		J = 1;
		K = 1;
		#100;
		
		J = 0;
		K = 0;
		#100;
        
		// Add stimulus here

	end
      
endmodule

