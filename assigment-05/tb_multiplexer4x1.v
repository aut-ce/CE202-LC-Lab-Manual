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
---  Module Name:  Multiplexer Testbench
---  Description: Lab 05 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_decoder2x4 ();

wire [3:0] w;
wire [1:0] sel;
wire [3:0] y;
	
	multiplexer4x1 test_multiplexer4x1 (.w(w), .sel(sel), .y(y));


	initial 
		begin
		sel <= 2'b00;
		w <= 4'b0000;
		# 10 ;
		w <= 4'b0001;
		# 10 ;
		w <= 4'b0010;
		sel <= 2'b01;
		# 10 ;
		w <= 4'b0011;
		# 10 ;
		w <= 4'b0100;
		# 10 ;
		w <= 4'b0101;
		sel <= 2'b11;
		# 10 ;
		w <= 4'b0110;
		# 10 ;
		w <= 4'b0111;
		# 10 ;
		w <= 4'b1000;
		# 10 ;
		w <= 4'b1001;
		sel <= 2'b01;
		# 10 ;
		w <= 4'b1010;
		# 10 ;
		w <= 4'b1011;
		# 10 ;
		w <= 4'b1100;
		sel <= 2'b11;
		# 10 ;
		w <= 4'b1101;
		# 10 ;
		sel <= 2'b00;
		w <= 4'b1110;
		# 10 ;
		w <= 4'b1111;
		# 10 ;
	end

endmodule
