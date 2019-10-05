#include ../Makefile.include

SCRIPT_DIR=./scripts

dc:
	rm -rf rpt
	mkdir rpt
	dc_shell -f $(SCRIPT_DIR)/dc/dc_script.tcl

#vcs:
#	$(SCRIPT_DIR)/vcs/vcs_compile.tcl
#	./simv

#icc:
#	icc_shell -gui -f $(SCRIPT_DIR)/icc/icc.tcl

clean:
	rm -f simv
	rm -f *.vcd
	rm -f *.key
	rm -rf csrc/
	rm -rf *.rpt
	rm -rf *.log
	rm -rf *.svf
	rm -rf *.ddc
	rm -rf results_synthesized.v
	rm -rf results_synthesized.sdc
	rm -rf alib-52/
	rm -rf rpt/
	rm -rf simv.daidir/
	rm -rf encounter*
	rm -rf ./synth_out

