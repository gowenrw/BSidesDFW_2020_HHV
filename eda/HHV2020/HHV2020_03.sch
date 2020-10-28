EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 9
Title "BSidesDFW 2020 HHV"
Date "2020-10-09"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Arduino Nano Photoresistor LED Control"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:Arduino_Nano_v3.x IC?
U 1 1 5F812500
P 5600 3600
AR Path="/5F80B86C/5F812500" Ref="IC?"  Part="1" 
AR Path="/5F815E44/5F812500" Ref="IC?"  Part="1" 
AR Path="/5F8106E8/5F812500" Ref="IC1"  Part="1" 
AR Path="/5F8CC739/5F812500" Ref="IC?"  Part="1" 
AR Path="/5F9342E9/5F812500" Ref="IC?"  Part="1" 
F 0 "IC1" H 6075 4953 100 0000 C CNB
F 1 "Arduino_Nano_v3.x" H 6075 4825 50  0000 C CNN
F 2 "0_local:Arduino_Nano_WithMountingHoles" V 6250 2750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5300 4200 50  0001 C CNN
	1    5600 3600
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F812542
P 6250 5700
AR Path="/5F80B86C/5F812542" Ref="R?"  Part="1" 
AR Path="/5F815E44/5F812542" Ref="R?"  Part="1" 
AR Path="/5F8106E8/5F812542" Ref="R7"  Part="1" 
AR Path="/5F8CC739/5F812542" Ref="R?"  Part="1" 
AR Path="/5F9342E9/5F812542" Ref="R?"  Part="1" 
F 0 "R7" V 6550 5700 50  0000 C CNN
F 1 "R_Axial" V 6450 5700 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6180 5700 50  0001 C CNN
F 3 "~" H 6250 5700 50  0001 C CNN
F 4 "10K Ohms" V 6350 5700 39  0000 C CNN "Resistance"
	1    6250 5700
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:R_Axial R6
U 1 1 5F815864
P 4850 4050
AR Path="/5F8106E8/5F815864" Ref="R6"  Part="1" 
AR Path="/5F8CC739/5F815864" Ref="R?"  Part="1" 
AR Path="/5F9342E9/5F815864" Ref="R?"  Part="1" 
F 0 "R6" V 5150 4050 50  0000 C CNN
F 1 "R_Axial" V 5050 4050 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 4050 50  0001 C CNN
F 3 "~" H 4850 4050 50  0001 C CNN
F 4 "100 Ohms" V 4950 4050 39  0000 C CNN "Resistance"
	1    4850 4050
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_THT_5mm D3
U 1 1 5F81586C
P 3850 4050
AR Path="/5F8106E8/5F81586C" Ref="D3"  Part="1" 
AR Path="/5F8CC739/5F81586C" Ref="D?"  Part="1" 
AR Path="/5F9342E9/5F81586C" Ref="D?"  Part="1" 
F 0 "D3" H 3850 4350 50  0000 C TNN
F 1 "LED_THT_5mm" H 3850 4250 50  0000 C TNN
F 2 "0_local:LED_D5.0mm-2" H 3850 3800 50  0001 C TNN
F 3 "~" H 3850 4050 50  0001 C BNN
F 4 "Anode (+)" H 3950 4100 39  0000 L BNN "Note1"
F 5 "Cathode (-)" H 3750 4100 39  0000 R BNN "Note2"
	1    3850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4050 5000 4050
Wire Wire Line
	4700 4050 4000 4050
Wire Wire Line
	3700 4050 3200 4050
$Comp
L 0_local:R_PHOTO LDR1
U 1 1 5F81BD9D
P 7850 5050
AR Path="/5F8106E8/5F81BD9D" Ref="LDR1"  Part="1" 
AR Path="/5F8CC739/5F81BD9D" Ref="LDR?"  Part="1" 
AR Path="/5F9342E9/5F81BD9D" Ref="LDR?"  Part="1" 
F 0 "LDR1" V 8057 5050 50  0000 C CNN
F 1 "R_PHOTO" V 7966 5050 50  0000 C CNN
F 2 "0_local:R_LDR_5.1x4.3mm_P3.4mm_Vertical" V 8000 4450 50  0001 L CNN
F 3 "~" H 7850 5000 50  0001 C CNN
	1    7850 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 4200 8650 4200
Wire Wire Line
	6400 5700 8650 5700
Wire Wire Line
	6850 4500 7350 4500
Wire Wire Line
	7350 4500 7350 5050
Wire Wire Line
	6100 5700 3200 5700
Wire Wire Line
	3200 5700 3200 4050
Wire Wire Line
	5300 3000 3200 3000
Wire Wire Line
	8650 4200 8650 5050
Wire Wire Line
	7350 5050 7700 5050
Wire Wire Line
	8000 5050 8650 5050
Connection ~ 8650 5050
Wire Wire Line
	8650 5050 8650 5700
Text Notes 5600 5250 0    50   ~ 0
Pull Down Resistor\nEnsures A0 is at a LOW value\nUntil LDR1 brings it HIGH
Connection ~ 3200 4050
Wire Wire Line
	3200 3000 3200 4050
$EndSCHEMATC
