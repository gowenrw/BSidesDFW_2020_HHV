EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 6
Title "BSidesDFW 2020 HHV"
Date "2020-10-09"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Arduino Nano RGB LED w/ Tactile Switch"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:Arduino_Nano_v3.x IC?
U 1 1 5F817AF4
P 5650 3600
AR Path="/5F80B86C/5F817AF4" Ref="IC?"  Part="1" 
AR Path="/5F815E44/5F817AF4" Ref="IC1"  Part="1" 
F 0 "IC1" H 6125 4953 100 0000 C CNB
F 1 "Arduino_Nano_v3.x" H 6125 4825 50  0000 C CNN
F 2 "0_local:Arduino_Nano_WithMountingHoles" V 6300 2750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5350 4200 50  0001 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F81EBE3
P 3650 3900
AR Path="/5F80B86C/5F81EBE3" Ref="R?"  Part="1" 
AR Path="/5F815E44/5F81EBE3" Ref="R2"  Part="1" 
F 0 "R2" V 3950 3900 50  0000 C CNN
F 1 "R_Axial" V 3850 3900 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3580 3900 50  0001 C CNN
F 3 "~" H 3650 3900 50  0001 C CNN
F 4 "220 Ohms" V 3750 3900 39  0000 C CNN "Resistance"
	1    3650 3900
	-1   0    0    1   
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F822C24
P 4150 4050
AR Path="/5F80B86C/5F822C24" Ref="R?"  Part="1" 
AR Path="/5F815E44/5F822C24" Ref="R3"  Part="1" 
F 0 "R3" V 4450 4050 50  0000 C CNN
F 1 "R_Axial" V 4350 4050 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 4050 50  0001 C CNN
F 3 "~" H 4150 4050 50  0001 C CNN
F 4 "220 Ohms" V 4250 4050 39  0000 C CNN "Resistance"
	1    4150 4050
	-1   0    0    1   
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F822EFE
P 4650 4150
AR Path="/5F80B86C/5F822EFE" Ref="R?"  Part="1" 
AR Path="/5F815E44/5F822EFE" Ref="R4"  Part="1" 
F 0 "R4" V 4950 4150 50  0000 C CNN
F 1 "R_Axial" V 4850 4150 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4580 4150 50  0001 C CNN
F 3 "~" H 4650 4150 50  0001 C CNN
F 4 "220 Ohms" V 4750 4150 39  0000 C CNN "Resistance"
	1    4650 4150
	-1   0    0    1   
$EndComp
$Comp
L 0_local:LED_RCBG_THT_5mm D2
U 1 1 5F817DDB
P 2800 4400
F 0 "D2" H 2800 4900 50  0000 C CNN
F 1 "LED_RCBG_THT_5mm" H 2800 4800 50  0000 C CNN
F 2 "0_local:LED_D5.0mm-4_RGB" H 2850 3950 50  0001 C CNN
F 3 "~" H 2800 4350 50  0001 C CNN
F 4 "R Anode (+)" H 3200 4650 39  0000 C CNN "Note1"
F 5 "G Anode (+)" H 3200 4450 39  0000 C CNN "Note2"
F 6 "B Anode (+)" H 3200 4250 39  0000 C CNN "Note3"
F 7 "Common Cathode (-)" H 2250 4350 39  0000 C CNN "Note4"
	1    2800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3450 3650 3450
Wire Wire Line
	3650 3450 3650 3750
Wire Wire Line
	3650 4050 3650 4200
Wire Wire Line
	3650 4200 3000 4200
Wire Wire Line
	4150 4400 3000 4400
Wire Wire Line
	4650 4600 3000 4600
$Comp
L 0_local:SW_Push_Dual_THT_6mm SW1
U 1 1 5F82E25B
P 7350 5500
F 0 "SW1" H 7350 5150 50  0000 C BNN
F 1 "SW_Push_Dual_THT_6mm" H 7350 5050 50  0000 C BNN
F 2 "0_local:SW_PUSH_6mm" H 7350 5700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905211531_SHOU-HAN-TS665CJ_C393938.pdf" H 7350 5700 50  0001 C CNN
	1    7350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3000 1250 3000
Wire Wire Line
	1250 3000 1250 4400
Wire Wire Line
	1250 4400 2600 4400
Wire Wire Line
	6900 4650 7150 4650
Wire Wire Line
	7150 4650 7150 5500
Wire Wire Line
	7150 5700 7150 5500
Connection ~ 7150 5500
Wire Wire Line
	7550 5700 7550 5500
Wire Wire Line
	7550 5500 7550 4500
Wire Wire Line
	7550 4500 6900 4500
Connection ~ 7550 5500
$Comp
L 0_local:R_Axial R?
U 1 1 5F84105F
P 6300 5700
AR Path="/5F80B86C/5F84105F" Ref="R?"  Part="1" 
AR Path="/5F815E44/5F84105F" Ref="R5"  Part="1" 
F 0 "R5" V 6600 5700 50  0000 C CNN
F 1 "R_Axial" V 6500 5700 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6230 5700 50  0001 C CNN
F 3 "~" H 6300 5700 50  0001 C CNN
F 4 "10K Ohms" V 6400 5700 39  0000 C CNN "Resistance"
	1    6300 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 5700 6450 5700
Connection ~ 7150 5700
Wire Wire Line
	1250 4400 1250 5700
Wire Wire Line
	1250 5700 6150 5700
Connection ~ 1250 4400
Text Notes 5650 5250 0    50   ~ 0
Pull Down Resistor\nEnsures D13 is at a LOW value\nUntil SW1 brings it HIGH
Wire Wire Line
	5350 3900 4650 3900
Wire Wire Line
	4650 3900 4650 4000
Wire Wire Line
	5350 3750 4150 3750
Wire Wire Line
	4150 3750 4150 3900
Wire Wire Line
	4150 4400 4150 4200
Wire Wire Line
	4650 4600 4650 4300
$EndSCHEMATC
