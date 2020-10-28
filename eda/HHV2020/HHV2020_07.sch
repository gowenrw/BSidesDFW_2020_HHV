EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 8 9
Title "BSidesDFW 2020 HHV"
Date "2020-10-09"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Adafruit Trinket Neopixels"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:R_Axial R?
U 1 1 5F93CC7A
P 4250 3950
AR Path="/5F8106E8/5F93CC7A" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F93CC7A" Ref="R?"  Part="1" 
AR Path="/5F9342E9/5F93CC7A" Ref="R?"  Part="1" 
AR Path="/5F93970E/5F93CC7A" Ref="R13"  Part="1" 
F 0 "R13" V 4550 3950 50  0000 C CNN
F 1 "R_Axial" V 4450 3950 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4180 3950 50  0001 C CNN
F 3 "~" H 4250 3950 50  0001 C CNN
F 4 "470 Ohms" V 4350 3950 39  0000 C CNN "Resistance"
	1    4250 3950
	0    -1   -1   0   
$EndComp
Text GLabel 6650 4950 2    50   Input ~ 10
GND
Text GLabel 5650 4950 0    50   Input ~ 10
+5V
$Comp
L 0_local:CP_Radial_D6 C?
U 1 1 5F93CC91
P 6150 4950
AR Path="/5F9342E9/5F93CC91" Ref="C?"  Part="1" 
AR Path="/5F93970E/5F93CC91" Ref="C1"  Part="1" 
F 0 "C1" V 6400 5000 50  0000 R CNN
F 1 "CP_Radial" V 6300 5150 50  0000 R CNN
F 2 "0_local:CP_Radial_D6.3mm_P2.50mm" H 6150 4950 50  0001 C CNN
F 3 "~" H 6150 4950 50  0001 C CNN
	1    6150 4950
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_NeoPixel_WS2812B D7-?
U 1 1 5F93CCA1
P 3300 4700
AR Path="/5F9342E9/5F93CCA1" Ref="D7-?"  Part="1" 
AR Path="/5F93970E/5F93CCA1" Ref="D7-0"  Part="1" 
F 0 "D7-0" V 3400 5500 50  0000 R CNN
F 1 "LED_NeoPixel_WS2812B" V 3250 5950 50  0000 R CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3350 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3400 4325 50  0001 L TNN
	1    3300 4700
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_NeoPixel_WS2812B D7-?
U 1 1 5F93CCA7
P 3300 3950
AR Path="/5F9342E9/5F93CCA7" Ref="D7-?"  Part="1" 
AR Path="/5F93970E/5F93CCA7" Ref="D7-1"  Part="1" 
F 0 "D7-1" V 3400 4750 50  0000 R CNN
F 1 "LED_NeoPixel_WS2812B" V 3250 5200 50  0000 R CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3350 3650 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3400 3575 50  0001 L TNN
	1    3300 3950
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_NeoPixel_WS2812B D7-?
U 1 1 5F93CCAD
P 3300 3200
AR Path="/5F9342E9/5F93CCAD" Ref="D7-?"  Part="1" 
AR Path="/5F93970E/5F93CCAD" Ref="D7-2"  Part="1" 
F 0 "D7-2" V 3400 4000 50  0000 R CNN
F 1 "LED_NeoPixel_WS2812B" V 3250 4450 50  0000 R CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3350 2900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3400 2825 50  0001 L TNN
	1    3300 3200
	0    -1   -1   0   
$EndComp
Text GLabel 3600 4900 3    50   Input ~ 10
GND
Text GLabel 3000 4900 3    50   Input ~ 10
+5V
Wire Wire Line
	3600 4900 3600 4700
Wire Wire Line
	3600 4700 3600 3950
Connection ~ 3600 4700
Wire Wire Line
	3600 3950 3600 3200
Connection ~ 3600 3950
Wire Wire Line
	3000 4900 3000 4700
Wire Wire Line
	3000 4700 3000 3950
Connection ~ 3000 4700
Wire Wire Line
	3000 3950 3000 3200
Connection ~ 3000 3950
Wire Wire Line
	3300 5000 3300 5450
Wire Wire Line
	5100 4300 4750 4300
Wire Wire Line
	6650 4950 6300 4950
Wire Wire Line
	6000 4950 5650 4950
Text GLabel 4750 4300 0    50   Input ~ 10
+5V
Wire Wire Line
	5100 3950 4400 3950
Wire Wire Line
	4100 3950 4000 3950
$Comp
L 0_local:Adafruit_Trinket_M0 IC?
U 1 1 5F93D6F5
P 6100 3550
AR Path="/5F8CC739/5F93D6F5" Ref="IC?"  Part="1" 
AR Path="/5F8E517E/5F93D6F5" Ref="IC?"  Part="1" 
AR Path="/5F93970E/5F93D6F5" Ref="IC2"  Part="1" 
F 0 "IC2" H 6100 4553 100 0000 C CNB
F 1 "Adafruit_Trinket_M0" H 6100 4425 50  0000 C CNN
F 2 "0_local:IC_Trinket_M0" H 6050 2500 50  0001 C CIN
F 3 "https://www.adafruit.com/product/3500" H 5400 2750 50  0001 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
Wire Notes Line
	6950 5750 6950 5200
Text Notes 6600 5300 0    50   ~ 0
Optional
$Comp
L Device:Battery BT2
U 1 1 5F951282
P 6150 5600
F 0 "BT2" V 6395 5600 50  0000 C CNN
F 1 "4.5V (3xAAA) Battery" V 6300 5600 50  0000 C CNN
F 2 "" V 6150 5660 50  0001 C CNN
F 3 "~" V 6150 5660 50  0001 C CNN
	1    6150 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 5600 6650 5600
Text GLabel 6650 5600 2    50   Input ~ 10
GND
Text GLabel 7450 3950 2    50   Input ~ 10
GND
Wire Wire Line
	7450 3950 7100 3950
Wire Wire Line
	5650 5600 5950 5600
Text GLabel 5650 5600 0    50   Input ~ 10
+5V
Wire Notes Line
	5400 5200 5400 5750
Wire Notes Line
	5400 5200 6950 5200
Wire Notes Line
	5400 5750 6950 5750
$Comp
L 0_local:LED_NeoPixel_THT_8mm D?
U 1 1 5F950589
P 4400 2600
AR Path="/5F9342E9/5F950589" Ref="D?"  Part="1" 
AR Path="/5F93970E/5F950589" Ref="D6"  Part="1" 
F 0 "D6" V 4950 2550 50  0000 L CNN
F 1 "LED_NeoPixel_THT_8mm" V 4800 2150 50  0000 L CNN
F 2 "0_local:LED_D8.0mm-4_RGB_Neo" H 4450 2300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1734" H 4500 2225 50  0001 L TNN
	1    4400 2600
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F950590
P 4650 3600
AR Path="/5F8106E8/5F950590" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F950590" Ref="R?"  Part="1" 
AR Path="/5F9342E9/5F950590" Ref="R?"  Part="1" 
AR Path="/5F93970E/5F950590" Ref="R11"  Part="1" 
F 0 "R11" V 4950 3600 50  0000 C CNN
F 1 "R_Axial" V 4850 3600 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4580 3600 50  0001 C CNN
F 3 "~" H 4650 3600 50  0001 C CNN
F 4 "470 Ohms" V 4750 3600 39  0000 C CNN "Resistance"
	1    4650 3600
	0    -1   -1   0   
$EndComp
Text GLabel 3900 2600 0    50   Input ~ 10
+5V
Text GLabel 4900 2600 2    50   Input ~ 10
GND
Wire Wire Line
	5100 3600 4800 3600
Wire Wire Line
	4500 3600 4400 3600
Wire Wire Line
	4400 3600 4400 2900
Wire Wire Line
	4700 2600 4900 2600
Wire Wire Line
	3900 2600 4100 2600
Wire Wire Line
	4000 3950 4000 5450
Wire Wire Line
	4000 5450 3300 5450
Wire Wire Line
	3300 3650 3300 3500
Wire Wire Line
	3300 4400 3300 4250
$EndSCHEMATC
