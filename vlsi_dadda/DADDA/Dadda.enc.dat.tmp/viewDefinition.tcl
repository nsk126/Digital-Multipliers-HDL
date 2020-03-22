create_library_set -name MIn_timing\
   -timing\
    [list /root/Desktop/DADDA/lib/90/fast.lib]
create_library_set -name MAX_timing\
   -timing\
    [list /root/Desktop/DADDA/lib/90/slow.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name Max_delay\
   -library_set MAX_timing
create_delay_corner -name Min_delay\
   -library_set MIn_timing
create_constraint_mode -name Constraints\
   -sdc_files\
    [list constraints_top.sdc]
create_analysis_view -name best -constraint_mode Constraints -delay_corner Min_delay
create_analysis_view -name Worst -constraint_mode Constraints -delay_corner Max_delay
set_analysis_view -setup [list Worst] -hold [list Worst]
