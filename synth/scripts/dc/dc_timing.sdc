#-------------------------------------------------------------------------
#constraints file
#-------------------------------------------------------------------------
#
# This file contains various constraints for your chip including the
# target clock period, fanout, transition time and any
# input/output delay constraints.
#

# set clock period [ns]

#source variables.tcl

#For NanGate15nm Library
set_units -capacitance ff
set_units -time ps

create_clock -period $Clock_Period -name clk_input $Clock_Name

# set clock jitter [%]
set_clock_uncertainty -setup 0.2 clk_input
set_clock_uncertainty -hold  0.2 clk_input

# set input and output delay [ns]
#set_input_delay  0.05 -clock clk_input [remove_from_collection [all_inputs] CLK]
#set_output_delay 0.05 -clock clk_input [all_outputs]

# set input and output delay [ps]
set_input_delay  50 -clock clk_input [remove_from_collection [all_inputs] clk]
set_output_delay 50 -clock clk_input [all_outputs]

# set wire load model
#set_wire_load_model -name "SMALL" 

# set output capacitive load [pF]
#set_load 0.015 [all_outputs]

# set output capacitive load [fF]
set_load 15 [all_outputs]
