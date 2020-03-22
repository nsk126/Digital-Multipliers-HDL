# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.21-s010_1 on Sat May 04 17:01:06 IST 2019

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design Dadda

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells slow/HOLDX1]
