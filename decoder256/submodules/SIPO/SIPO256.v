

module SIPO256(clk, clear, enable, in, out);

input in,clk,clear,enable;

output [3:0] out;

reg [3:0] tmp;

reg [3:0] out;

always @(posedge clk) begin
  if (clear) begin
    tmp <= 4'b0000;
  end

  else if(enable) begin
    tmp <= tmp << 1;
    tmp[0] <= in;
  end

  out = tmp;
end

endmodule
