`define INPUTL "../input.txt"
`define INPUTT "../weight.txt"

module systolic_array_tb(
);

parameter IN_WORD_SIZE  = 8;
parameter OUT_WORD_SIZE = 24;    //Changed this
parameter ARR_ROWS = 8;
parameter ARR_COLS = 8;

reg clk;
reg rst;

// Changed the following 
reg [IN_WORD_SIZE-1:0] left_inputs [0:ARR_ROWS * ARR_COLS -1];
reg [IN_WORD_SIZE-1:0] top_inputs [0:ARR_COLS * ARR_ROWS -1];

//Changed the following to reg
reg [IN_WORD_SIZE * ARR_ROWS-1:0] left_inputs_wire;
reg [IN_WORD_SIZE * ARR_COLS-1:0] top_inputs_wire;

wire compute_done_out;
wire [OUT_WORD_SIZE-1:0] cycles_count_out;
wire [0:OUT_WORD_SIZE * ARR_ROWS*ARR_COLS-1] pe_register_vals_wire;
wire [OUT_WORD_SIZE-1:0] pe_register_vals_mem [0:ARR_ROWS*ARR_COLS-1];

wire [511:0] tie_low;
wire [511:0] tie_high;

integer i,j;
integer row, col;

//Block to hint generation of waveforms
initial begin
    $vcdplusfile("systolic_array.vcd");
    $vcdplusmemon();
    $vcdpluson();
end

//Initialize the design
initial begin
    clk = 0;
    rst = 1;
    row = -1;
    col = -1;

    #20 rst = 0;
end

// Read the input matrices from file and populate the memory
initial $readmemh(`INPUTL, left_inputs);
initial $readmemh(`INPUTT, top_inputs);

//Free running clk
always #5 clk = ~clk;

assign tie_low = 512'b0;
assign tie_high = ~tie_low;

genvar r, c;
generate
for (r=0; r<ARR_ROWS; r=r+1)
begin
    always @(posedge clk)
    begin
        if(rst == 1'b1)
        begin
            left_inputs_wire[(r+1) * IN_WORD_SIZE -1 -: (IN_WORD_SIZE)] <= tie_low[IN_WORD_SIZE-1:0];
        end
        else
        begin
            if (col < ARR_COLS)
            begin
                left_inputs_wire[(r+1) * IN_WORD_SIZE -1 -: (IN_WORD_SIZE)] <= left_inputs[(col * ARR_ROWS) + r];
            end
            else
            begin 
                left_inputs_wire[(r+1) * IN_WORD_SIZE -1 -: (IN_WORD_SIZE)] <= tie_low[IN_WORD_SIZE-1:0];
            end
        end
    end
end
endgenerate

generate
for (c=0; c<ARR_COLS; c=c+1)
begin
    always @(posedge clk)
    begin
        if(rst == 1'b1)
        begin
            top_inputs_wire[(c+1) * IN_WORD_SIZE-1 -: IN_WORD_SIZE] <= tie_low[IN_WORD_SIZE-1:0];
        end
        else
        begin
            if (row < ARR_ROWS)
            begin
                top_inputs_wire[(c+1) * IN_WORD_SIZE-1 -: IN_WORD_SIZE] <= top_inputs[(row * ARR_COLS) + c];
            end
            else
            begin 
                top_inputs_wire[(c+1) * IN_WORD_SIZE-1 -: IN_WORD_SIZE] <= tie_low[IN_WORD_SIZE-1:0];
            end
        end
    end
end
endgenerate

always @(posedge clk)
begin
    if (rst == 1'b1)
    begin
        row = -1;
        col = -1;
    end
    else
    begin
        row = row+1;
        col = col+1;
    end

end

generate
    for(r=0; r<ARR_ROWS * ARR_COLS; r++)
    begin
        assign pe_register_vals_mem[r] = pe_register_vals_wire[r* OUT_WORD_SIZE: (r+1)* OUT_WORD_SIZE -1];
    end
endgenerate

// Display code
always @(posedge clk)
begin 
    if(compute_done_out == 1'b1)
    begin
        for(i=0; i< ARR_ROWS; i=i+1)
        begin
            for (j=0; j< ARR_COLS; j=j+1)
            begin
                $write("%h ",pe_register_vals_mem[i*ARR_ROWS + j]);
            end
            $write("\n");
            //$write("Left: %h\n",left_inputs[i]);
        end
        $write("Cycles: %h\n",cycles_count_out);
        $finish;
    end
end


systolic_array #(
        .IN_WORD_SIZE(IN_WORD_SIZE),
        .OUT_WORD_SIZE(OUT_WORD_SIZE),
        .NUM_ROW(ARR_ROWS),
        .NUM_COL(ARR_COLS)
    ) dut(
        .clk(clk),
        .rst(rst),
        .left_inputs(left_inputs_wire),
        .top_inputs(top_inputs_wire),
        .compute_done(compute_done_out),
        .cycles_count(cycles_count_out),
        .pe_register_vals(pe_register_vals_wire)
    );

always #10000 $finish;
    
endmodule
