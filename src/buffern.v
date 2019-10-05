`timescale 1ns/100ps

module buffern#(
    WORD_SIZE = 8,
    LENGTH = 1
)(
    in,
    out,
    clk,
    clear
);
  input [0:WORD_SIZE-1] in;
  input clk,clear;
  output [0:WORD_SIZE-1] out;
  wire [0:(WORD_SIZE*(LENGTH + 1))-1] intermediates;
  assign intermediates [0:WORD_SIZE - 1] = in;
  assign out = intermediates [WORD_SIZE*LENGTH:WORD_SIZE*(LENGTH+1) - 1];
  genvar k;
  generate
  for(k=0; k < LENGTH; k = k + 1)
    begin:gen1
      buffer1#(
        .WORD_SIZE(WORD_SIZE)
        ) buffer(
          .in (intermediates[WORD_SIZE*k:WORD_SIZE*(k+1) -1]),
          .out(intermediates[WORD_SIZE*(k+1):WORD_SIZE*(k+2)-1]),
          .clk(clk),
          .clear(clear)
        );
    end
  endgenerate
endmodule
