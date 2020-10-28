EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 9 9
Title "BSidesDFW 2020 HHV"
Date "2020-10-09"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Arduino Nano SMD LED"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5800 2850 5500 2850
Wire Wire Line
	5200 2850 4500 2850
Wire Wire Line
	4200 2850 3700 2850
$Comp
L 0_local:Arduino_Nano_v3.x IC?
U 1 1 5F98F655
P 6100 3900
AR Path="/5F80B86C/5F98F655" Ref="IC?"  Part="1" 
AR Path="/5F98D88D/5F98F655" Ref="IC1"  Part="1" 
F 0 "IC1" H 6575 5253 100 0000 C CNB
F 1 "Arduino_Nano_v3.x" H 6575 5125 50  0000 C CNN
F 2 "0_local:Arduino_Nano_WithMountingHoles" V 6750 3050 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5800 4500 50  0001 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
$Comp
L 0_local:LED_1206 D8
U 1 1 5F993018
P 4350 2850
F 0 "D8" H 4350 3150 50  0000 C CNN
F 1 "LED_1206" H 4350 3050 50  0000 C CNN
F 2 "0_local:LED_1206_3216Metric" H 4350 2600 50  0001 C CNN
F 3 "~" H 4350 2850 50  0001 C CNN
F 4 "Anode (+)" H 4600 2950 39  0000 C CNN "Note1"
F 5 "Cathode (-)" H 4100 2950 39  0000 C CNN "Note2"
	1    4350 2850
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_1206 R14
U 1 1 5F993CA0
P 5350 2850
F 0 "R14" V 5631 2850 50  0000 C CNN
F 1 "R_1206" V 5540 2850 50  0000 C CNN
F 2 "0_local:R_1206_3216Metric" V 5480 2800 50  0001 C CNN
F 3 "~" H 5300 2850 50  0001 C CNN
F 4 "220 Ohms" V 5457 2850 39  0000 C CNN "Resistance"
	1    5350 2850
	0    -1   -1   0   
$EndComp
Text GLabel 5500 3300 0    50   Input ~ 10
GND
Wire Wire Line
	5800 3300 5500 3300
Text GLabel 3700 2850 0    50   Input ~ 10
GND
$EndSCHEMATC
