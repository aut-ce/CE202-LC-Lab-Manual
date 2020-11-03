	/*--  *******************************************************
	--  Computer Architecture Course, Laboratory Sources 
	--  Amirkabir University of Technology (Tehran Polytechnic)
	--  Department of Computer Engineering (CE-AUT)
	--  https://ce[dot]aut[dot]ac[dot]ir
	--  *******************************************************
	--  All Rights reserved (C) 2019-2020
	--  *******************************************************
	--  Student ID  : 9831068
	--  Student Name: Farshid Nooshi	
	--  Student Mail: farshidnooshi726@aut.ac.ir
	--  *******************************************************
	--  Additional Comments:
	--
	--*/

	/*-----------------------------------------------------------
	---  Module Name: Paritiy Generator Sum of Products
	---  Description: Lab 04 Part 4
	-----------------------------------------------------------*/
	`timescale 1 ns/1 ns

	module paritiy3_gen_sop (
		input a,
		input b,
		input c,
		output f	
	);
		/* write your code here */
		wire l, m, n, o, p, q, r;
			
		 not g1(l, a);
		 not g2(m, b);
		 not g3(n, c);
		 and g4(o, l, m, n);
		 and g5(p, l, b, c);
		 and g6(q, a, m, c);
		 and g7(r, a, b, n);
		 or g8(f, o, p, q, r);
		/* write your code here */

	endmodule
