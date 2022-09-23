vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../FPGA.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../../FPGA.srcs/sources_1/ip/ila_0/hdl/verilog" \
"/eda/xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/eda/xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/eda/xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../FPGA.srcs/sources_1/ip/ila_0/sim/ila_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

