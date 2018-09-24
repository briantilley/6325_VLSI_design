`timescale 1ns/1ps

module comp256(eq, a, b);

	// 256-bit bus inputs
	parameter N = 256;
	input [N-1:0] a, b;
	
	// single true/false output for equality
	output wire eq;

	// a and b must be bitwise equal
	// ^ (XOR) operator applies to corresponding bits
	// ~| (NOR) operator indicates all bits of the result must be 0
  assign eq = ~| (a ^ b);

endmodule
