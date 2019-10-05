#START
source variables.tcl

set rpt_path "./rpt"
#set search_path "./lib"
set search_path "./lib /tools/synopsys/synthesis/j201409/libraries/syn/ ./src ./"

set hdlin_preserve_sequential true

switch $current_library {
  ARM_180nm_rvt {
    set synthetic_library "sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"
    set link_library "sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"
    set target_library "sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"
    report_lib "sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"
  }

  ARM_180nm_sc7 {
    set synthetic_library "scx_csm_18ic_tt_1p8v_25c.db"
    set link_library "scx_csm_18ic_tt_1p8v_25c.db"
    set target_library "scx_csm_18ic_tt_1p8v_25c.db"
    report_lib "scx_csm_18ic_tt_1p8v_25c.db"
  }

  Synopsys_Educational {
    set synthetic_library "saed32hvt_tt0p85v25c.db"
    set link_library "saed32hvt_tt0p85v25c.db"
    set target_library "saed32hvt_tt0p85v25c.db"
    report_lib "saed32hvt_tt0p85v25c.db"
  }

  default {
    set synthetic_library "NanGate_15nm_OCL.db"
    set link_library "NanGate_15nm_OCL.db"
    set target_library "NanGate_15nm_OCL.db"
    report_lib "NanGate_15nm_OCL.db"
  }
}

# Multicore setting
#set multi_core_enable_analysis
# 15 is the maximum availalbe number of cores in DC
set_host_options -max_cores 15

#Read Files
source ./file_list.tcl
analyze -format verilog $verilog_files
elaborate $top_level

link
uniquify

source ./scripts/dc/dc_timing.sdc
check_design

# Load in the timing constraint file
update_timing

compile -map_effort medium 
#compile_ultra -timing_high_effort_script -no_autoungroup

change_names -rules verilog -hierarchy -verbose

write -format verilog -hierarchy -output results_synthesized.v
write_sdc results_synthesized.sdc


# timing, area, power reports
report_timing   -nworst 50 \
                -max_paths 50 \
                -path full \
                -delay max \
                -significant_digits 3 \
                -sort_by slack      > $rpt_path/timing_max.rpt
report_timing   -nworst 50 \
                -max_paths 50 \
                -path full \
                -delay min \
                -significant_digits 3 \
                -sort_by slack      > $rpt_path/timing_min.rpt

report_timing                       > $rpt_path/timing.rpt
report_timing_derate                > $rpt_path/timing_derate.rpt
report_area     -hierarchy          > $rpt_path/area.rpt
report_power    -hier               > $rpt_path/power.rpt
report_power                        > $rpt_path/power_no_hier.rpt
report_net      -cell_degradation   > $rpt_path/net.rpt
report_clock_gating                 > $rpt_path/clock_gating.rpt

# Save the synthesis state
write -hierarchy -format ddc -output synthesis.ddc

quit
