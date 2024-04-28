`timescale 1ns / 1ps

module ParityGenerator(input [2:0] data, output parity);
	wire xnor1, xnor2, xnor3;
  
	assign xnor1 = data[0] ^ data[1];
	assign xnor2 = xnor1 ^ data[2];
	assign xnor3 = xnor2 ^ 1'b1;
  
	assign parity = xnor3;
	
endmodule
