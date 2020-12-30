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
---  Module Name: Control Unit
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`define AAA 001
`define BBB 010
`define CCC 011
`define DDD 100
`define EEE 101
`define FFF 111

`define STATE_IDLE    001
`define STATE_ACTIVE  010
`define STATE_REQUEST 011
`define STATE_STORE   100
`define STATE_TRAP    101
`define STATE_OTHERS  111


module ControlUnit (
	input         arst      , // async  reset
	input         clk       , // clock  posedge
	input         request   , // request input (asynch) 
	input         confirm   , // confirm input 
	input  [ 1:0] password  , // password from user
	input  [34:0] configin  , // data from memory unit
	output [34:0] configout , // data into memory unit
	output [ 1:0] write_en  , // conf mem write enable
	output [ 2:0] dbg_state   // current state (debug)
	);

	/* write your code here */
	
	/* write your code here */

endmodule
