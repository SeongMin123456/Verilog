
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.srcs/utils_1/imports/synth_1/zynq_basys_wrapper.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2h
fC:/verilog_lab/Zynq_basic_system/Zynq_basic_system.srcs/utils_1/imports/synth_1/zynq_basys_wrapper.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
n
Command: %s
53*	vivadotcl2=
;synth_design -top zynq_basys_wrapper -part xc7z007sclg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7z007sZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7z007sZ17-349h px� 
E
Loading part %s157*device2
xc7z007sclg400-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
18816Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 1368.234 ; gain = 439.836
h px� 
�
synthesizing module '%s'%s4497*oasys2
zynq_basys_wrapper2
 2k
gC:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/hdl/zynq_basys_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

zynq_basys2
 2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
3188@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2%
#zynq_basys_myip_slave_lite_v1_0_0_02
 2�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_myip_slave_lite_v1_0_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
#zynq_basys_myip_slave_lite_v1_0_0_02
 2
02
12�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_myip_slave_lite_v1_0_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!zynq_basys_processing_system7_0_02
 2�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_processing_system7_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!zynq_basys_processing_system7_0_02
 2
02
12�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_processing_system7_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
zynq_basys_ps7_0_axi_periph_02
 2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
6258@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_1086SV12
 2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
zynq_basys_auto_pc_02
 2�
C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_auto_pc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zynq_basys_auto_pc_02
 2
02
12�
C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_auto_pc_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_1086SV12
 2
02
12e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
138@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zynq_basys_ps7_0_axi_periph_02
 2
02
12e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
6258@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
zynq_basys_rst_ps7_0_50M_02
 2�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_rst_ps7_0_50M_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zynq_basys_rst_ps7_0_50M_02
 2
02
12�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_rst_ps7_0_50M_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

mb_reset2
zynq_basys_rst_ps7_0_50M_02
rst_ps7_0_50M2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
5948@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
bus_struct_reset2
zynq_basys_rst_ps7_0_50M_02
rst_ps7_0_50M2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
5948@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2
zynq_basys_rst_ps7_0_50M_02
rst_ps7_0_50M2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
5948@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2
zynq_basys_rst_ps7_0_50M_02
rst_ps7_0_50M2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
5948@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_ps7_0_50M2
zynq_basys_rst_ps7_0_50M_02
102
62e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
5948@Z8-7023h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
6018@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2
zynq_basys_system_ila_0_02
 2�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_system_ila_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zynq_basys_system_ila_0_02
 2
02
12�
�C:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/.Xil/Vivado-15888-COMSYS01/realtime/zynq_basys_system_ila_0_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

zynq_basys2
 2
02
12e
ac:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/synth/zynq_basys.v2
3188@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zynq_basys_wrapper2
 2
02
12k
gC:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/hdl/zynq_basys_wrapper.v2
138@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_1086SV1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_1086SV1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2
zynq_basys_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ARESETN2
zynq_basys_ps7_0_axi_periph_0Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1480.4142
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_processing_system7_0_0/zynq_basys_processing_system7_0_0/zynq_basys_processing_system7_0_0_in_context.xdc2%
!zynq_basys_i/processing_system7_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_processing_system7_0_0/zynq_basys_processing_system7_0_0/zynq_basys_processing_system7_0_0_in_context.xdc2%
!zynq_basys_i/processing_system7_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_auto_pc_0/zynq_basys_auto_pc_0/zynq_basys_auto_pc_0_in_context.xdc26
2zynq_basys_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_auto_pc_0/zynq_basys_auto_pc_0/zynq_basys_auto_pc_0_in_context.xdc26
2zynq_basys_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0_in_context.xdc2
zynq_basys_i/rst_ps7_0_50M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0_in_context.xdc2
zynq_basys_i/rst_ps7_0_50M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_myip_slave_lite_v1_0_0_0/zynq_basys_myip_slave_lite_v1_0_0_0/zynq_basys_myip_slave_lite_v1_0_0_0_in_context.xdc2'
#zynq_basys_i/myip_slave_lite_v1_0_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_myip_slave_lite_v1_0_0_0/zynq_basys_myip_slave_lite_v1_0_0_0/zynq_basys_myip_slave_lite_v1_0_0_0_in_context.xdc2'
#zynq_basys_i/myip_slave_lite_v1_0_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/zynq_basys_system_ila_0_0/zynq_basys_system_ila_0_0_in_context.xdc2
zynq_basys_i/system_ila_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/verilog_lab/Zynq_basic_system/Zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/zynq_basys_system_ila_0_0/zynq_basys_system_ila_0_0_in_context.xdc2
zynq_basys_i/system_ila_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2R
NC:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2R
NC:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1480.4142
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1480.4142
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:02 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7z007sclg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:02 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:02 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 66 (col length:40)
BRAMs: 100 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2
zynq_basys_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ARESETN2
zynq_basys_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2
zynq_basys_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2
zynq_basys_ps7_0_axi_periph_0Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:02 ; elapsed = 00:00:10 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:03 ; elapsed = 00:00:13 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:03 ; elapsed = 00:00:13 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:03 ; elapsed = 00:00:13 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
S
%s
*synth2;
9+------+------------------------------------+----------+
h p
x
� 
S
%s
*synth2;
9|      |BlackBox name                       |Instances |
h p
x
� 
S
%s
*synth2;
9+------+------------------------------------+----------+
h p
x
� 
S
%s
*synth2;
9|1     |zynq_basys_auto_pc_0                |         1|
h p
x
� 
S
%s
*synth2;
9|2     |zynq_basys_myip_slave_lite_v1_0_0_0 |         1|
h p
x
� 
S
%s
*synth2;
9|3     |zynq_basys_processing_system7_0_0   |         1|
h p
x
� 
S
%s
*synth2;
9|4     |zynq_basys_rst_ps7_0_50M_0          |         1|
h p
x
� 
S
%s
*synth2;
9|5     |zynq_basys_system_ila_0_0           |         1|
h p
x
� 
S
%s
*synth2;
9+------+------------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
M
%s*synth25
3+------+----------------------------------+------+
h px� 
M
%s*synth25
3|      |Cell                              |Count |
h px� 
M
%s*synth25
3+------+----------------------------------+------+
h px� 
M
%s*synth25
3|1     |zynq_basys_auto_pc                |     1|
h px� 
M
%s*synth25
3|2     |zynq_basys_myip_slave_lite_v1_0_0 |     1|
h px� 
M
%s*synth25
3|3     |zynq_basys_processing_system7_0   |     1|
h px� 
M
%s*synth25
3|4     |zynq_basys_rst_ps7_0_50M          |     1|
h px� 
M
%s*synth25
3|5     |zynq_basys_system_ila_0           |     1|
h px� 
M
%s*synth25
3+------+----------------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1480.414 ; gain = 552.016
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:03 ; elapsed = 00:00:16 . Memory (MB): peak = 1480.414 ; gain = 552.016
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

1480.4142
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1489.8282
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

14bfc2d7Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392
152
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:042

00:00:192

1495.8012	
954.598Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2X
VC:/verilog_lab/Zynq_basic_system/Zynq_basic_system.runs/synth_1/zynq_basys_wrapper.dcpZ17-1381h px� 
�
%s4*runtcl2|
zExecuting : report_utilization -file zynq_basys_wrapper_utilization_synth.rpt -pb zynq_basys_wrapper_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Dec  2 16:50:16 2024Z17-206h px� 


End Record