// `include "comparator.v"
// `include "SIPO.v"
`timescale 1ns/1ps

module decoder256(
    output out, 
    input clk,
    input clr,
    input enable, 
    input sig, 
    input prgm);

    // input types
    // wire clk, sig, prgm;
	
    // binary output for pattern/signal detection
    // wire out;

    // inputs to comparator
    wire [255:0] a, b;

    // instantiate submodules
    
    // PROGRAM register
    SIPO256 prgm_register(.clk(clk), .clear(clr), .in(prgm), .out(a), .enable(enable));

    // SIGNAL register
    SIPO256 sig_prgm_register(.clk(clk), .clear(clr), .in(sig), .out(b), .enable(1'b1));

    // comparator
    comp256 comparator(.eq(out), .a(a), .b(b));

endmodule
