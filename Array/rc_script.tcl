set_db lib_search_path ./lib/90
set_db library slow.lib
set_db hdl_search_path /
read_hdl Array.v
elaborate
read_sdc constraints_top.sdc
synthesize -to_mapped -effort medium
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > delays.sdf

write_hdl > Array_netlist.v
write_sdc > Array_sdc.sdc


gui_show
report timing > Array_timing.rep
report power > Array_power.rep
report area > Array_cell.rep
report messages > Array_message.rep
