`timescale 1 ns/1 ns


module tb_alu;


reg [1:0] A;
reg [1:0] B;
reg [1:0] sel;
wire [3:0] Y;

	alu test_alu (.A(A), .B(B), .sel(sel), .Y(Y));
	

	initial 
		begin
		A = 2'b01;
		B = 2'b10;
		sel = 2'b00;
		#10;
		
		A = 2'b01;
		B = 2'b10;
		sel = 2'b01;
		#10;
		
		A = 2'b01;
		B = 2'b10;
		sel = 2'b10;
		#10;
		
		A = 2'b01;
		B = 2'b10;
		sel = 2'b11;
		#10;
		
		
		A = 2'b11;
		B = 2'b01;
		sel = 2'b00;
		#10;
		
		A = 2'b11;
		B = 2'b01;
		sel = 2'b01;
		#10;
		
		A = 2'b11;
		B = 2'b01;
		sel = 2'b10;
		#10;
		
		A = 2'b11;
		B = 2'b01;
		sel = 2'b11;
		#10;
		
		$finish;
	end

endmodule
