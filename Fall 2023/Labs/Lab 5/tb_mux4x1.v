`timescale 1ns / 1ps


module tb_mux4x1;

	// Inputs
	reg [3:0] w_in;
	reg [1:0] sel;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux4x1 uut (
		.y(y), 
		.w_in(w_in), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		sel = 2'b00;
		w_in = 4'b0001;
		#100;
		sel = 2'b00;
		w_in = 4'b1110;
		#100;
		
		
		sel = 2'b01;
		w_in = 4'b0010;
		#100;
		sel = 2'b01;
		w_in = 4'b1101;
		#100;
		
		
		sel = 2'b10;
		w_in = 4'b0100;
		#100;
		sel = 2'b10;
		w_in = 4'b1011;
		#100;
		
		
		sel = 2'b11;
		w_in = 4'b1000;
		#100;
		sel = 2'b11;
		w_in = 4'b0111;
		#100;
		
		// Add stimulus here

	end
      
endmodule

