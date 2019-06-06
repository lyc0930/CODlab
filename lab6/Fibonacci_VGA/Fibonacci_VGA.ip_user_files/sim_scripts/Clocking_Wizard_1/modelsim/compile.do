vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1" \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1" \
"../../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1/Clocking_Wizard_1_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

