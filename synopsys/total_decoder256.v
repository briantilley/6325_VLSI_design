module SIPO256(clk, clear, enable, in, out);

	parameter SIZE = 256;
	input in,clk,clear,enable;
	output wire [SIZE-1:0] out;

	wire clear_not, en_not;
	assign clear_not = !clear;
	assign en_not = !enable; 

	wire [SIZE-1:0] d_gated, q_gated, or_signal;

	assign d_gated[0] = enable & in;
	assign q_gated[0] = en_not & out[0];
	assign or_signal[0] = d_gated[0] | q_gated[0];
	dff first_DFF(.d(or_signal[0]), .gclk(clk), .rnot(clear_not), .q(out[0]));

	genvar bit;
	generate for (bit = 1; bit < SIZE; bit = bit + 1) begin
		assign d_gated[bit] = enable & out[bit-1];
		assign q_gated[bit] = en_not & out[bit];
		assign or_signal[bit] = d_gated[bit] | q_gated[bit];
		dff single_DFF(.d(or_signal[bit]), .gclk(clk), .rnot(clear_not), .q(out[bit]));
	end endgenerate
endmodule
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
