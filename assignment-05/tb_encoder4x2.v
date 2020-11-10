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
---  Module Name: Decoder, Encoder, and Mux Testbench
---  Description: Lab 05 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_encoder2x4 ();



reg [3:0] din;
wire [1:0] qout;
	encoder4x2 test_encoder4x2 (.din(din), .qout(qout));


	initial 
		begin
		
		din <= 4'b0000;
		# 10 ;
		din <= 4'b0001;
		# 10 ;
		din <= 4'b0010;
		# 10 ;
		din <= 4'b0011;
		# 10 ;
		din <= 4'b0100;
		# 10 ;
		din <= 4'b0101;
		# 10 ;
		din <= 4'b0110;
		# 10 ;
		din <= 4'b0111;
		# 10 ;
		din <= 4'b1000;
		# 10 ;
		din <= 4'b1001;
		# 10 ;
		din <= 4'b1010;
		# 10 ;
		din <= 4'b1011;
		# 10 ;
		din <= 4'b1100;
		# 10 ;
		din <= 4'b1101;
		# 10 ;
		din <= 4'b1110;
		# 10 ;
		din <= 4'b1111;
		# 10 ;		
	end

endmodule
