
�
Command: %s
1870*	planAhead2{
yread_checkpoint -auto_incremental -incremental C:/verilog_lab/my_cnt32/my_cnt32.srcs/utils_1/imports/synth_1/my_cnt32.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2L
JC:/verilog_lab/my_cnt32/my_cnt32.srcs/utils_1/imports/synth_1/my_cnt32.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
d
Command: %s
53*	vivadotcl23
1synth_design -top my_cnt32 -part xc7z007sclg400-1Z4-113h px� 
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
16080Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 1299.527 ; gain = 439.781
h px� 
�
synthesizing module '%s'%s4497*oasys2

my_cnt322
 2B
>C:/verilog_lab/my_cnt32/my_cnt32.srcs/sources_1/new/my_cnt32.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

my_cnt322
 2
02
12B
>C:/verilog_lab/my_cnt32/my_cnt32.srcs/sources_1/new/my_cnt32.v2
238@Z8-6155h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 1406.531 ; gain = 546.785
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 1406.531 ; gain = 546.785
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 1406.531 ; gain = 546.785
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
00:00:00.0012

1406.5312
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
�
Parsing XDC File [%s]
179*designutils2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
out[7]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
18@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
18@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[6]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
28@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
28@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[5]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
38@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
38@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[4]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
48@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
48@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[3]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
58@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
58@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[2]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
68@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
68@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[1]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
78@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[0]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
88@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[7]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
98@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
98@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[6]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
108@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
108@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[5]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
118@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
118@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[4]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
128@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
128@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[3]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
138@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
138@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[2]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
148@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
148@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[1]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
out[0]2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
168@Z17-55h px�
�
No nets matched '%s'.
507*	planAhead2

clk_IBUF2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
238@Z12-507h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
238@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2D
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2B
@C:/verilog_lab/my_cnt32/my_cnt32.srcs/constrs_1/new/my_cnt32.xdc2
.Xil/my_cnt32_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1447.2582
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
00:00:00.0022

1447.2582
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
Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:11 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:12 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:15 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
}Finished Timing Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:15 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
|Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:15 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
vFinished IO Insertion : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |     8|
h px� 
2
%s*synth2
|3     |LUT1   |     1|
h px� 
2
%s*synth2
|4     |FDRE   |    32|
h px� 
2
%s*synth2
|5     |IBUF   |     3|
h px� 
2
%s*synth2
|6     |OBUF   |     8|
h px� 
2
%s*synth2
+------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.258 ; gain = 546.785
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:17 . Memory (MB): peak = 1447.258 ; gain = 587.512
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
00:00:00.0012

1447.2582
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
8Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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

1447.2582
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

56b4a4ccZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232
182
172
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:092

00:00:202

1447.2582	
981.617Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1447.2582
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2<
:C:/verilog_lab/my_cnt32/my_cnt32.runs/synth_1/my_cnt32.dcpZ17-1381h px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file my_cnt32_utilization_synth.rpt -pb my_cnt32_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Oct 15 09:37:47 2024Z17-206h px� 


End Record