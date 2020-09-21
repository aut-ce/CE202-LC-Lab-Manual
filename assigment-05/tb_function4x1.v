/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name:  Function Testbench
---  Description: Lab 05 Part 4 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_decoder2x4 ();

	
reg a;
reg b;
reg c;
reg d;

reg 
	wire f;
	function4x1 test_function4x1 (.a(a), .b(b), .c(c), .d(d), .f(f));


	initial 
		begin
		a <= 1'b0; b <= 1'b0; c <= 1'b0; d <= 1'b0;
		# 10 ;
		a <= 1'b1; b <= 1'b0; c <= 1'b0; d <= 1'b1;
		# 10 ;
		a <= 1'b0; b <= 1'b0; c <= 1'b1; d <= 1'b0;
		# 10 ;
		a <= 1'b0; b <= 1'b1; c <= 1'b1; d <= 1'b1;
	end

endmodule
