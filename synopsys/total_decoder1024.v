module inv(in, out);
input in;
output out;
assign out = ~in;
endmodule

module nand2(a, b, out);
input a, b;
output out;
assign out = ~(a & b);
endmodule

module nand3(a, b, c, out);
input a, b, c;
output out;
assign out = ~(a & b & c);
endmodule

module nand4(a, b, c, d, out);
input a, b, c, d;
output out;
assign out = ~(a & b & c & d);
endmodule

module nor2(a, b, out);
input a, b;
output out;
assign out = ~(a | b);
endmodule

module nor3(a, b, c, out);
input a, b, c;
output out;
assign out = ~(a | b | c);
endmodule

module xor2(a, b, out);
input a, b;
output out;
assign out = (a ^ b);
endmodule

module aoi12(a, b, c, out);
input a, b, c;
output out;
assign out = ~(a | (b & c));
endmodule

module aoi22(a, b, c, d, out);
input a, b, c, d;
output out;
assign out = ~((a & b) | (c & d));
endmodule

module oai12(a, b, c, out);
input a, b, c;
output out;
assign out = ~(a & (b | c));
endmodule

module oai22(a, b, c, d, out);
input a, b, c, d;
output out;
assign out = ~((a | b) & (c | d));
endmodule

module dff( d, gclk, rnot, q);
input d, gclk, rnot;
output q;
reg q;
always @(posedge gclk or negedge rnot)
  if (rnot == 1'b0)
    q = 1'b0;
  else
    q = d;
endmodule


`timescale 1ns/1ps

module comp1024(eq, a, b);

	// 1024-bit bus inputs
	parameter N = 1024;
	input [N-1:0] a, b;
	
	// single true/false output for equality
	output wire eq;

	// a and b must be bitwise equal
	// ^ (XOR) operator applies to corresponding bits
	// ~| (NOR) operator indicates all bits of the result must be 0
  assign eq = ~| (a ^ b);

endmodule
module SIPO1024(clk, clear, enable, in, out);

	parameter SIZE = 1024;
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
// `include "comparator.v"
// `include "SIPO.v"
`timescale 1ns/1ps

module decoder1024(
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
    wire [1023:0] a, b;

    // instantiate submodules
    
    // PROGRAM register
    SIPO1024 prgm_register(.clk(clk), .clear(clr), .in(prgm), .out(a), .enable(enable));

    // SIGNAL register
    SIPO1024 sig_prgm_register(.clk(clk), .clear(clr), .in(sig), .out(b), .enable(1'b1));

    // comparator
    comp1024 comparator(.eq(out), .a(a), .b(b));

endmodule
