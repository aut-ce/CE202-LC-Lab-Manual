`timescale 1 ns/1 ns


module tb_adder_subtractor_4bit ();

reg [3:0] A;
reg [3:0] B;
reg sel;

wire [3:0] sum;
wire [3:0] sum_delay;
wire cout;
wire cout_delay;

	adder_subtractor_4bit test_adder_subtractor_4bit (.A(A), .B(B), .sel(sel), .S(sum), .cout(cout));
	adder_subtractor_4bit_delay test_adder_subtractor_4bit_delay (.A(A), .B(B), .sel(sel), .S(sum_delay), .cout(cout_delay));


	initial 
		begin
		
		sel = 1'b1;
		A = 4'b1101;
		B = 4'b1111;
		#50;
		
		A = 4'b1000;
		B = 4'b0101;
		#50;
		
		A = 4'b0011;
		B = 4'b1100;
		#50;
		
		A = 4'b0100;
		B = 4'b0111;
		#50;
		
		sel = 1'b0;
		A = 4'b1101;
		B = 4'b1111;
		#50;
		
		A = 4'b1000;
		B = 4'b0101;
		#50;
		
		A = 4'b0011;
		B = 4'b1100;
		#50;
		
		A = 4'b0100;
		B = 4'b0111;	
		#50;
		$finish;
		
	end

endmodule
