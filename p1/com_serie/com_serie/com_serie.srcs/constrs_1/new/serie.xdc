# lab2.xdc
# Localizaci?n de los puertos (buses)
#             <property> <value>   <object list>


set_property PACKAGE_PIN    W5   [get_ports sys_clock]
set_property PACKAGE_PIN   U18   [get_ports reset]

set_property PACKAGE_PIN   A18   [get_ports TX]
set_property PACKAGE_PIN   B18   [get_ports RX]


# Est?ndar I/O el?ctrico LVCMOS33 en todos los pines:
#            <property>  <value> <object list> 
set_property IOSTANDARD LVCMOS33 [get_ports  *]
# Device Config: 
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# Especificaci?n de las restricciones temporales:
#    Periodo de la se?al de reloj clk 10ns, duty 50%
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clock]