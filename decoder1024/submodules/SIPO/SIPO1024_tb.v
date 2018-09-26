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

module SIPO256_tb;

reg clk;

reg clear;

reg en;

wire in;

wire [15:0] out;

reg[15:0] test_sequence = 16'b1000100010001001;

SIPO256 uut (.clk(clk),.clear(clear),.enable(en),.in(in),.out(out) );

assign in = test_sequence[0];

initial begin

clk = 0;

clear = 1;

en = 1;

#22;

clear = 0;

#100;

en = 0;

end

always #5 clk = ~clk;

always @(negedge clk) begin
  if (!clear) begin
    test_sequence = test_sequence >> 1;
  end
end

//initial #150 $stop;

endmodule
