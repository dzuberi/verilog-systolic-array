`timescale 1ns/100ps

module buffer1#(
    WORD_SIZE = 8
)(
    in,
    out,
    clk,
    clear
);
  input [0:WORD_SIZE-1] in;
  input clk,clear;
  output reg [0:WORD_SIZE-1] out;
  always @(posedge clk or posedge clear)
    begin
      if (clear)
        begin
          out <= {WORD_SIZE{1'b0}};
        end
      else
        begin
          out <= in;
        end
      end
endmodule
