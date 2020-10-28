EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 9
Title "BSidesDFW 2020 HHV"
Date "2020-10-09"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Arduino Nano Single LED w/ PWM"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:R_Axial R1
U 1 1 5F80CF27
P 5500 3550
AR Path="/5F80B86C/5F80CF27" Ref="R1"  Part="1" 
AR Path="/5F98D88D/5F80CF27" Ref="R?"  Part="1" 
F 0 "R1" V 5800 3550 50  0000 C CNN
F 1 "R_Axial" V 5700 3550 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 3550 50  0001 C CNN
F 3 "~" H 5500 3550 50  0001 C CNN
F 4 "100 Ohms" V 5600 3550 39  0000 C CNN "Resistance"
	1    5500 3550
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_THT_5mm D1
U 1 1 5F80D380
P 4500 3550
AR Path="/5F80B86C/5F80D380" Ref="D1"  Part="1" 
AR Path="/5F98D88D/5F80D380" Ref="D?"  Part="1" 
F 0 "D1" H 4500 3850 50  0000 C TNN
F 1 "LED_THT_5mm" H 4500 3750 50  0000 C TNN
F 2 "0_local:LED_D5.0mm-2" H 4500 3300 50  0001 C TNN
F 3 "~" H 4500 3550 50  0001 C BNN
F 4 "Anode (+)" H 4600 3600 39  0000 L BNN "Note1"
F 5 "Cathode (-)" H 4400 3600 39  0000 R BNN "Note2"
	1    4500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3550 5650 3550
Wire Wire Line
	5350 3550 4650 3550
Wire Wire Line
	4350 3550 3850 3550
Wire Wire Line
	3850 3550 3850 2950
Wire Wire Line
	5700 2950 5700 3250
Wire Wire Line
	5700 3250 5950 3250
Wire Wire Line
	3850 2950 5700 2950
$Comp
L 0_local:Arduino_Nano_v3.x IC1
U 1 1 5F80B932
P 6250 3850
AR Path="/5F80B86C/5F80B932" Ref="IC1"  Part="1" 
AR Path="/5F98D88D/5F80B932" Ref="IC?"  Part="1" 
F 0 "IC1" H 6725 5203 100 0000 C CNB
F 1 "Arduino_Nano_v3.x" H 6725 5075 50  0000 C CNN
F 2 "0_local:Arduino_Nano_WithMountingHoles" V 6900 3000 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5950 4450 50  0001 C CNN
	1    6250 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
