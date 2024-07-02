set_db init_lib_search_path /home/installs/FOUNDRY/digital/90nm/dig/lib
set_db hdl_search_path /home/cadence/Desktop/CAD_065_039

set_db library slow.lib
read_hdl mod10dcounter.v
elaborate
read_sdc /home/cadence/Desktop/CAD_065_039/mod10dcounter_top.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_opt

write_hdl > mod10d_counter_netlist.v
write_sdc > mod10dcounter_top.sdc
report_area > mod10dcounter_area.rep
report_gates > mod10dcounter_gate.rep
report_power > mod10dcounter_power.rep
report_timing > mod10counter_timing.rep
gui_show
