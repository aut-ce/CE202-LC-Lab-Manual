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
---  Module Name: Password Checker Unit
---  Description: Module7: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module PassCheckUnit (
	input  [ 1:0] pass   , // input  [user   password]
	input  [ 1:0] key    , // input  [system password]
	output        equal    // output [(pass==key) : 1]
);

	/* write your code here */
	assign equal = (pass == key) ? 1'b1: 1'b0;
	/* write your code here */

endmodule
