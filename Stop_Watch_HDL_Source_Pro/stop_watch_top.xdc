## This file is a general .xdc for the Cora Z7 board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Reset. Active High
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports rst]

## Clock signal
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

##Buttons
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports btn0]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports btn1]

## LEDs
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports ld0_r]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports ld0_g]
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports ld0_b]

set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports ld1_r]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports ld1_g]
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports ld1_b]

###Pmod Header JA
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports {ja[0]}];#Sch name = JA1
set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports {ja[1]}];#Sch name = JA2
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports {ja[2]}];#Sch name = JA3
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports {ja[3]}];#Sch name = JA4
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports {ja[4]}];#Sch name = JA7
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {ja[5]}];#Sch name = JA8
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {ja[6]}];#Sch name = JA9
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports {ja[7]}];#Sch name = JA10

###Pmod Header JB
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {jb[0]}];#Sch name = JB1
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports {jb[1]}];#Sch name = JB2
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports {jb[2]}];#Sch name = JB3
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports {jb[3]}];#Sch name = JB4
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {jb[4]}];#Sch name = JB7
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {jb[5]}];#Sch name = JB8
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports {jb[6]}];#Sch name = JB9
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {jb[7]}];#Sch name = JB10

###GPIO A[11:0]
#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports cnt_en]; 	#Sch name = A[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports clr_plso]; 	#Sch name = A[1]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports disp_mode]; #Sch name = A[2]

#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports {ck_a[0]}]; #Sch name = A[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports {ck_a[1]}]; #Sch name = A[1]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports {ck_a[2]}]; #Sch name = A[2]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports {ck_a[3]}]; #Sch name = A[3]
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports {ck_a[4]}]; #Sch name = A[4]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports {ck_a[5]}]; #Sch name = A[5]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports {ck_a[6]}]; #Sch name = A[6]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[7]}]; #Sch name = A[7]
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[8]}]; #Sch name = A[8]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[9]}]; #Sch name = A[9]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports {ck_a[10]}];#Sch name = A[10]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[11]}];#Sch name = A[11]
