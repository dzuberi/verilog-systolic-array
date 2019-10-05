set proj_base_dir "."
set lib_dir $proj_base_dir/lib
set src_dir $proj_base_dir

set_app_var search_path $proj_base_dir

#set_app_var link_library  $lib_dir/scx_csm_18ic_tt_1p8v_25c.db
#set_app_var link_library "./lib/scx_csm_18ic_tt_1p8v_25c.db"
#set_app_var target_library $lib_dir/scx_csm_18ic_tt_1p8v_25c.db
#set_app_var target_library "./lib/scx_csm_18ic_tt_1p8v_25c.db"

set_app_var synthetic_library "./lib/sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"
set_app_var link_library "./lib/sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"
set_app_var target_library "./lib/sc7_ch018ic_base_rvt_tt_typ_max_1p80v_25c.db"

check_library
report_check_library > library.rpt
open_mw_lib $lib_dir/ARM_180nm_top/ARM_180nm_5lm

import_designs -format verilog -top topModule -cel topModule -rp_constraint $src_dir/results_synthesized.sdc {./results_synthesized.v}
#set_app_var physopt_hard_keepout_distance 3

#report_milkyway_version -cell topModule
#create_floorplan -control_type "aspect_ratio" -core_aspect_ratio "1" -core_utilization "0.7" -row_core_ratio "1" -start_first_row -left_io2core 15 -bottom_io2core 15 -right_io2core 15 -top_io2core 15

#create_floorplan -control_type width_and_height -core_width 1024.581 -core_height 906.355 -left_io2core 5 -bottom_io2core 5 -right_io2core 5 -top_io2core 5 
#initialize_rectilinear_block -shape T -control_type length -core_side_dim {1014.581 0 0 945.1561 254.512 112.509}
#initialize_rectilinear_block -shape T -control_type length -core_side_dim {945.161 0 0 902.072 254.512 112.509} -orientation N -left_io2core 5 -right_io2core 5 -top_io2core 5 -bottom_io2core 5


#save_mw_cel -as "system_post_floorplan"
#save_mw_cel -as "system_fp"

#write_def 
#load_ef

#create_placement -timing_driven 
#legalize_placement -effort high
#derive_pg_connection -power_net VDD -ground_net VSS -reconnect
#psynopt
#psynopt
#psynopt
#psynopt
#psynopt
#save_mw_cel -as post_placement



#derive_pg_connection -power_net {vdd!} -ground_net {gnd!}
#create_rectilinear_rings -nets {vdd! gnd!} -offset {1 1} -width {3 3} -space {3 3}
#create_power_straps -direction vertical -num_placement_strap 1 -start_at 20 -increment_x_or_y 10 -nets {vdd! gnd!} -width 1.800 -layer MINT3

#place_opt <- error 
#quit


