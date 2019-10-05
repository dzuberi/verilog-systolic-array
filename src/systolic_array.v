//Instance of systolic array
`timescale 1ns/100ps

module systolic_array#(
    NUM_ROW = 8,
    NUM_COL = 8,
    IN_WORD_SIZE = 8,
    OUT_WORD_SIZE = 24
)(
    clk,
    rst,

    top_inputs,
    left_inputs,

    compute_done,
    cycles_count,
    pe_register_vals
);

input clk;
input rst;

input [0:NUM_COL * IN_WORD_SIZE-1] top_inputs;
input [0:NUM_ROW * IN_WORD_SIZE-1] left_inputs;

output reg compute_done;
output reg  [OUT_WORD_SIZE-1:0] cycles_count;
output [0 : (OUT_WORD_SIZE * NUM_ROW * NUM_COL) -1] pe_register_vals;

wire [0:IN_WORD_SIZE*(NUM_COL + NUM_COL * NUM_ROW)-1] top_fwd;
wire [0:IN_WORD_SIZE*(NUM_ROW + NUM_ROW * NUM_COL)-1] left_fwd;

wire [OUT_WORD_SIZE-1:0] tie_high;
assign tie_high ={OUT_WORD_SIZE{1'b1}};

//genvar i;
//generate
//    for(i=0; i <NUM_ROW * NUM_COL; i=i+1)
//    begin
        //assign pe_register_vals[i*OUT_WORD_SIZE +: OUT_WORD_SIZE] = tie_high[OUT_WORD_SIZE-1:0];
        //assign pe_register_vals[0:15] = tie_high[15:0];
//    end
//endgenerate

assign left_fwd[0:IN_WORD_SIZE-1] = left_inputs[IN_WORD_SIZE*(NUM_ROW-1):IN_WORD_SIZE*(NUM_ROW)-1];
assign top_fwd[0:IN_WORD_SIZE-1] = top_inputs[IN_WORD_SIZE*(NUM_COL-1):IN_WORD_SIZE*(NUM_COL)-1];

genvar row,col;
generate
  for(col=1; col<NUM_COL; col=col+1)
    begin:gen1
     buffern #(
	.WORD_SIZE(IN_WORD_SIZE),
	.LENGTH(col)
	) buffer_inst_c(
	.in(top_inputs[IN_WORD_SIZE*(NUM_COL-1-col):IN_WORD_SIZE*(NUM_COL-col)-1]),
	.out(top_fwd[IN_WORD_SIZE*(col):IN_WORD_SIZE*(col+1)-1]),
	.clk(clk),
	.clear(rst)
	);
     end
  for(row=1; row<NUM_ROW; row=row+1)
   begin:gen2
      buffern #(
	.WORD_SIZE(IN_WORD_SIZE),
	.LENGTH(row)
	) buffer_inst_r(
	.in(left_inputs[IN_WORD_SIZE*(NUM_ROW-1-row):IN_WORD_SIZE*(NUM_ROW-row)-1]),
	.out(left_fwd[IN_WORD_SIZE*(row):IN_WORD_SIZE*(row+1)-1]),
	.clk(clk),
	.clear(rst)
	);
    end  
  for(row=0; row<NUM_ROW; row=row+1)
    begin:gen3
      for(col=0; col<NUM_COL; col=col+1)
        begin:gen4
          MAC #(
            .IN_WORD_SIZE(IN_WORD_SIZE),
            .OUT_WORD_SIZE(OUT_WORD_SIZE)
            ) mac_inst(
            .a        ( left_fwd[IN_WORD_SIZE*(row + col*NUM_ROW):IN_WORD_SIZE*(row + 1 + col*NUM_ROW)-1]       ),
            .b        ( top_fwd[IN_WORD_SIZE*(col + row*NUM_COL):IN_WORD_SIZE*(col + 1 + row*NUM_COL)-1]        ),
            .a_fwd    ( left_fwd[IN_WORD_SIZE*(row + (col + 1)*NUM_ROW):IN_WORD_SIZE*(row + 1 + (col + 1)*NUM_ROW)-1]   ),
            .b_fwd    ( top_fwd[IN_WORD_SIZE*(col + (row + 1)*NUM_COL):IN_WORD_SIZE*(col + 1 + (row + 1)*NUM_COL)-1]    ),
            .out      ( pe_register_vals[OUT_WORD_SIZE * (row * NUM_COL + col):OUT_WORD_SIZE * (row * NUM_COL + col + 1) - 1]       ),
            .clk      ( clk                                                                                                         ),
            .clear    ( rst                                                                                                         )
            );
        end
    end
endgenerate



//assign pe_register_vals[0:15] = tie_high[15:0];

always @(posedge clk)
begin
    if(rst==1'b1)
    begin
        compute_done <= 1'b0;
        cycles_count <= 0;
    end
    else
    begin
        cycles_count <= cycles_count + 1;
	if(cycles_count > (5+NUM_ROW+NUM_COL))
	begin
	  compute_done <= 1'b1;
        end
        //compute_done <= 1'b1;
    end
end
endmodule
