set_property PACKAGE_PIN W5 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]



set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { RESET }];

set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { SEL }];




create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} [get_ports CLK]
#create_generated_clock -name CLKDIV2 -source [get_ports CLK] -divide_by 2 [get_nets CLK50]


set_false_path -from [get_ports RESET] -to [all_registers]

#EstandarI/OelectricoLVCMOS33entodoslospines:
#<property><value><objectlist>
set_property IOSTANDARD LVCMOS33 [get_ports *]  
#DeviceConfig:
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
