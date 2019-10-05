`timescale 1ns/100ps

module MAC#(
    IN_WORD_SIZE = 8,
    OUT_WORD_SIZE = 16
)(
    a,
    b,
    a_fwd,
    b_fwd,
    out,
    clk,
    clear
);
  input [0:IN_WORD_SIZE-1] a,b;
  input clk,clear;
  output reg [0:OUT_WORD_SIZE-1] out;
  //output wire [0:IN_WORD_SIZE-1] a_fwd, b_fwd;
  output reg [0:IN_WORD_SIZE-1] a_fwd,b_fwd;
  //reg [0:OUT_WORD_SIZE-1] mult_reg;
  wire [0:OUT_WORD_SIZE-1] mult_out;
  wire [0:OUT_WORD_SIZE-1] adder_out;
  assign mult_out = a * b;
  assign adder_out = mult_out + out;
  //assign a_fwd = a_fwd;
  //assign b_fwd = b_fwd;
  always @(posedge clk or posedge clear)
    begin
      if (clear)
        begin
          a_fwd <= {IN_WORD_SIZE{1'b0}};
          b_fwd <= {IN_WORD_SIZE{1'b0}};
          //mult_reg <= {OUT_WORD_SIZE{1'b0}};
          out <= {OUT_WORD_SIZE{1'b0}};
        end
      else
        begin
          a_fwd <= a;
          b_fwd <= b;
          //mult_reg <= mult_out;
          out <= adder_out;
        end
      end
endmodule
