set_db lib_search_path ./lib/90
set_db library slow.lib
set_db hdl_search_path /
read_hdl Dadda.v
elaborate
read_sdc constraints_top.sdc
synthesize -to_mapped -effort medium
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > delays.sdf

write_hdl > Dadda_netlist.v
write_sdc > Dadda_sdc.sdc


gui_show
report timing > Dadda_timing.rep
report power > Dadda_power.rep
report area > Dadda_cell.rep
report messages > Dadda_message.rep
