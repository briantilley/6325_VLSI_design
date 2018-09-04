`include "submodules/equality_comparator/comparator.v"
`timescale 1ns/1ps

module decoder4(
    output out, 
    input clk, 
    input sig, 
    input prgm);

	// input types
	wire clk, sig, prgm;
	
	// binary output for pattern/signal detection
	wire out;

    // inputs to comparator
    reg [3:0] a, b;

    // instantiate submodules
    comp4 comparator(.eq(out), .a(a), .b(a));

    // TODO: Instantiate PROGRAM and SIGNAL shift registers
    // TODO: Connect comparator inputs to shift register outputs

endmodule
