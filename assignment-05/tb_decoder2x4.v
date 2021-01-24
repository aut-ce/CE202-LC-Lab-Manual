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
---  Module Name: Decoder Testbench
---  Description: Lab 05 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_decoder2x4 ();

reg [1:0] in;
reg en;
wire [3:0] dout;

	decoder2x4 test_decoder2x4 (.in(in), .en(en), .dout(dout));


	initial 
		begin
		en <= 1'b0;
		
		in <= 2'b00;
		# 10 ;
		in <= 2'b01;
		# 10 ;
		in <= 2'b10;
		# 10 ;
		in <= 2'b11;
		# 20 ;

		en <= 1'b1;
		
		in <= 2'b00;
		# 10 ;
		in <= 2'b01;
		# 10 ;
		in <= 2'b10;
		# 10 ;
		in <= 2'b11;
		# 20 ;		
	end

endmodule
