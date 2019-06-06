set_property SRC_FILE_INFO {cfile:/home/lyc/Vivado/lab6/Fibonacci_VGA/Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1/Clocking_Wizard_1.xdc rfile:../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1/Clocking_Wizard_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
