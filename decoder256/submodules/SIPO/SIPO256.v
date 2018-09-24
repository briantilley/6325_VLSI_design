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
