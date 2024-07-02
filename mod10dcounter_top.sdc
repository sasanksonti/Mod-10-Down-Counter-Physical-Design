# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Tue May 14 15:19:09 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mod10dcounter

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_load -pin_load 0.15 [get_ports {c[3]}]
set_load -pin_load 0.15 [get_ports {c[2]}]
set_load -pin_load 0.15 [get_ports {c[1]}]
set_load -pin_load 0.15 [get_ports {c[0]}]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.8 [get_ports rst]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.8 [get_ports {c[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.8 [get_ports {c[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.8 [get_ports {c[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.8 [get_ports {c[0]}]
set_max_fanout 30.000 [current_design]
set_max_capacitance 30.0 [get_ports clk]
set_max_capacitance 30.0 [get_ports rst]
set_max_capacitance 30.0 [get_ports {c[3]}]
set_max_capacitance 30.0 [get_ports {c[2]}]
set_max_capacitance 30.0 [get_ports {c[1]}]
set_max_capacitance 30.0 [get_ports {c[0]}]
set_input_transition 0.12 [get_ports clk]
set_input_transition 0.12 [get_ports rst]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
