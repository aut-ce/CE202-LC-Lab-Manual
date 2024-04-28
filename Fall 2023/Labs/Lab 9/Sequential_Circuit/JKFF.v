`timescale 1ns / 1ps

module JKFF ( input J,
				  input K,
				  input CLK,
				  input RST,
				  output reg Q,
				  output reg Q_not );

	always @(posedge CLK or posedge RST) begin
		if (RST) begin
			Q <= 1'b0;
			Q_not <= 1'b1;
	 end 
	 else if (J && K) begin
			Q <= ~Q;
			Q_not <= ~Q_not;
	 end 
	 else if (J) begin
			Q <= 1'b1;
			Q_not <= 1'b0;
	 end 
	 else if (K) begin
			Q <= 1'b0;
			Q_not <= 1'b1;
	 end
	end
endmodule
