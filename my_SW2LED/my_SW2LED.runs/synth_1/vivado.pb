
�
Command: %s
1870*	planAhead2}
{read_checkpoint -auto_incremental -incremental C:/verilog_lab/my_SW2LED/my_SW2LED.srcs/utils_1/imports/synth_1/my_swled.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2N
LC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/utils_1/imports/synth_1/my_swled.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
d
Command: %s
53*	vivadotcl23
1synth_design -top my_swled -part xc7z007sclg400-1Z4-113h px� 
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
M
#Helper process launched with PID %s4824*oasys2
3228Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 1300.629 ; gain = 439.934
h px� 
�
synthesizing module '%s'%s4497*oasys2

my_swled2
 2D
@C:/verilog_lab/my_SW2LED/my_SW2LED.srcs/sources_1/new/my_swled.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

my_swled2
 2
02
12D
@C:/verilog_lab/my_SW2LED/my_SW2LED.srcs/sources_1/new/my_swled.v2
238@Z8-6155h px� 
d
+design %s has port %s driven by constant %s3447*oasys2

my_swled2
CA2
0Z8-3917h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1407.270 ; gain = 546.574
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

00:00:002

00:00:002

1407.2702
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
179*designutils2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
LED[7]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
18@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
18@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[6]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
28@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
28@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[5]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
38@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
38@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[4]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
48@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
48@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[3]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
58@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
58@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[2]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
68@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
68@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[1]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
78@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[0]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
88@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[7]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[6]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
168@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[5]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
178@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
178@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[4]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
188@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
188@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[3]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
198@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
198@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[2]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
208@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
208@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[1]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
218@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
218@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[0]2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
228@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
228@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2F
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2D
BC:/verilog_lab/my_SW2LED/my_SW2LED.srcs/constrs_1/new/my_swLED.xdc2
.Xil/my_swled_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1407.2702
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
00:00:00.0012

1407.2702
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
Finished Constraint Validation : Time (s): cpu = 00:00:02 ; elapsed = 00:00:08 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:02 ; elapsed = 00:00:08 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:02 ; elapsed = 00:00:08 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:08 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
d
+design %s has port %s driven by constant %s3447*oasys2

my_swled2
CA2
0Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:02 ; elapsed = 00:00:10 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:02 ; elapsed = 00:00:13 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
}Finished Timing Optimization : Time (s): cpu = 00:00:02 ; elapsed = 00:00:13 . Memory (MB): peak = 1407.270 ; gain = 546.574
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
|Finished Technology Mapping : Time (s): cpu = 00:00:02 ; elapsed = 00:00:13 . Memory (MB): peak = 1408.180 ; gain = 547.484
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
vFinished IO Insertion : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |LUT4 |     7|
h px� 
0
%s*synth2
|2     |IBUF |     4|
h px� 
0
%s*synth2
|3     |OBUF |     8|
h px� 
0
%s*synth2
+------+-----+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:01 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1422.980 ; gain = 562.285
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

00:00:002

00:00:002

1435.0352
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

1441.7072
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

6540eef7Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
212
192
162
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:032

00:00:192

1441.7072	
974.191Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1441.7072
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2>
<C:/verilog_lab/my_SW2LED/my_SW2LED.runs/synth_1/my_swled.dcpZ17-1381h px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file my_swled_utilization_synth.rpt -pb my_swled_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Oct 15 11:46:45 2024Z17-206h px� 


End Record