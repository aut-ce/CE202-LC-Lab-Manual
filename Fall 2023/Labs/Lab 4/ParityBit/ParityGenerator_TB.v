`timescale 1ns / 1ps

module ParityGenerator_TB;
  reg [2:0] data;
  wire parity;

  // Instantiate the ParityGenerator module
  ParityGenerator dut (
    .data(data),
    .parity(parity)
  );


  // Test inputs
  initial begin
    data = 3'b000; // Test with input 000
    #10;
    $display("Data: %b, Parity: %b", data, parity);

    data = 3'b001; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);
	 
	 data = 3'b010; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);
	 
	 data = 3'b011; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);
	 
	 data = 3'b100; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);
	 
	 data = 3'b101; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);
	 
	 data = 3'b110; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);
	 
	 data = 3'b111; // Test with input 101
    #10;
    $display("Data: %b, Parity: %b", data, parity);

    // Add more test cases as needed

    $finish;
  end

endmodule
