`timescale 1ns / 1ps

module comp4_tb;
  
	// module inputs
	reg [3:0] _a, _b;

	// module output
	wire _eq;

	// instantiate
	comp4 uut (.eq(_eq), .a(_a), .b(_b));

	// initialize
	initial begin
		_a = 0; _b = 0;
	end

	// test a few
	initial begin
	  
		#10 _a = 1;
		#10 _b = 1;
		#10 _b = 3;
		#10 _a = 3;
		#10 _b = 5;
		#10 _a = 5;
		#10 _a = 7;
		#10 _b = 7;
		#10 _b = 9;
		#10 _a = 10;
		#10 _b = 10;
		#10 _a = 9;
		#10 _b = 9;
		
	end
endmodule