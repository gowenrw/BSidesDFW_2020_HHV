EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 9
Title "BSidesDFW 2020 HHV"
Date "2020-10-09"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Arduino Nano Neopixels"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:R_Axial R?
U 1 1 5F936050
P 4900 4750
AR Path="/5F8106E8/5F936050" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F936050" Ref="R?"  Part="1" 
AR Path="/5F9342E9/5F936050" Ref="R12"  Part="1" 
AR Path="/5F93970E/5F936050" Ref="R?"  Part="1" 
F 0 "R12" V 5200 4750 50  0000 C CNN
F 1 "R_Axial" V 5100 4750 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4830 4750 50  0001 C CNN
F 3 "~" H 4900 4750 50  0001 C CNN
F 4 "470 Ohms" V 5000 4750 39  0000 C CNN "Resistance"
	1    4900 4750
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_NeoPixel_THT_8mm D6
U 1 1 5F93705D
P 8250 3950
AR Path="/5F9342E9/5F93705D" Ref="D6"  Part="1" 
AR Path="/5F93970E/5F93705D" Ref="D?"  Part="1" 
F 0 "D6" H 8900 4050 50  0000 L CNN
F 1 "LED_NeoPixel_THT_8mm" H 8550 3900 50  0000 L CNN
F 2 "0_local:LED_D8.0mm-4_RGB_Neo" H 8300 3650 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1734" H 8350 3575 50  0001 L TNN
	1    8250 3950
	1    0    0    -1  
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F9380B9
P 7450 3950
AR Path="/5F8106E8/5F9380B9" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F9380B9" Ref="R?"  Part="1" 
AR Path="/5F9342E9/5F9380B9" Ref="R11"  Part="1" 
AR Path="/5F93970E/5F9380B9" Ref="R?"  Part="1" 
F 0 "R11" V 7750 3950 50  0000 C CNN
F 1 "R_Axial" V 7650 3950 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7380 3950 50  0001 C CNN
F 3 "~" H 7450 3950 50  0001 C CNN
F 4 "470 Ohms" V 7550 3950 39  0000 C CNN "Resistance"
	1    7450 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3950 7300 3950
Wire Wire Line
	7600 3950 7950 3950
Text GLabel 8150 2600 2    50   Input ~ 10
GND
Text GLabel 8150 2900 2    50   Input ~ 10
+5V
$Comp
L 0_local:CP_Radial_D6 C1
U 1 1 5F939A5F
P 7350 2750
AR Path="/5F9342E9/5F939A5F" Ref="C1"  Part="1" 
AR Path="/5F93970E/5F939A5F" Ref="C?"  Part="1" 
F 0 "C1" H 7235 2704 50  0000 R CNN
F 1 "CP_Radial" H 7235 2795 50  0000 R CNN
F 2 "0_local:CP_Radial_D6.3mm_P2.50mm" H 7350 2750 50  0001 C CNN
F 3 "~" H 7350 2750 50  0001 C CNN
	1    7350 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 2600 7350 2600
Wire Wire Line
	6950 2900 7350 2900
Connection ~ 7350 2600
Wire Wire Line
	7350 2600 8150 2600
Connection ~ 7350 2900
Wire Wire Line
	7350 2900 8150 2900
Text GLabel 8250 3450 1    50   Input ~ 10
+5V
Wire Wire Line
	8250 3450 8250 3650
Text GLabel 8250 4450 3    50   Input ~ 10
GND
Wire Wire Line
	8250 4250 8250 4450
$Comp
L 0_local:LED_NeoPixel_WS2812B D7-0
U 1 1 5F9489DA
P 4250 4000
AR Path="/5F9342E9/5F9489DA" Ref="D7-0"  Part="1" 
AR Path="/5F93970E/5F9489DA" Ref="D7-?"  Part="1" 
F 0 "D7-0" V 4350 4800 50  0000 R CNN
F 1 "LED_NeoPixel_WS2812B" V 4200 5250 50  0000 R CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4300 3700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4350 3625 50  0001 L TNN
	1    4250 4000
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_NeoPixel_WS2812B D7-1
U 1 1 5F94A3A8
P 4250 3250
AR Path="/5F9342E9/5F94A3A8" Ref="D7-1"  Part="1" 
AR Path="/5F93970E/5F94A3A8" Ref="D7-?"  Part="1" 
F 0 "D7-1" V 4350 4050 50  0000 R CNN
F 1 "LED_NeoPixel_WS2812B" V 4200 4500 50  0000 R CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4300 2950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4350 2875 50  0001 L TNN
	1    4250 3250
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_NeoPixel_WS2812B D7-2
U 1 1 5F94AC92
P 4250 2500
AR Path="/5F9342E9/5F94AC92" Ref="D7-2"  Part="1" 
AR Path="/5F93970E/5F94AC92" Ref="D7-?"  Part="1" 
F 0 "D7-2" V 4350 3300 50  0000 R CNN
F 1 "LED_NeoPixel_WS2812B" V 4200 3750 50  0000 R CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4300 2200 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4350 2125 50  0001 L TNN
	1    4250 2500
	0    -1   -1   0   
$EndComp
Text GLabel 4550 4200 3    50   Input ~ 10
GND
Text GLabel 3950 4200 3    50   Input ~ 10
+5V
Wire Wire Line
	4550 4200 4550 4000
Wire Wire Line
	4550 4000 4550 3250
Connection ~ 4550 4000
Wire Wire Line
	4550 3250 4550 2500
Connection ~ 4550 3250
Wire Wire Line
	3950 4200 3950 4000
Wire Wire Line
	3950 4000 3950 3250
Connection ~ 3950 4000
Wire Wire Line
	3950 3250 3950 2500
Connection ~ 3950 3250
$Comp
L 0_local:Arduino_Nano_v3.x IC?
U 1 1 5F936042
P 5700 3500
AR Path="/5F80B86C/5F936042" Ref="IC?"  Part="1" 
AR Path="/5F815E44/5F936042" Ref="IC?"  Part="1" 
AR Path="/5F8106E8/5F936042" Ref="IC?"  Part="1" 
AR Path="/5F8CC739/5F936042" Ref="IC?"  Part="1" 
AR Path="/5F9342E9/5F936042" Ref="IC1"  Part="1" 
AR Path="/5F93970E/5F936042" Ref="IC?"  Part="1" 
F 0 "IC1" H 6175 4853 100 0000 C CNB
F 1 "Arduino_Nano_v3.x" H 6175 4725 50  0000 C CNN
F 2 "0_local:Arduino_Nano_WithMountingHoles" V 6350 2650 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5400 4100 50  0001 C CNN
	1    5700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4250 5200 4250
Wire Wire Line
	5200 4250 5200 4750
Wire Wire Line
	5200 4750 5050 4750
Wire Wire Line
	4250 4300 4250 4750
Wire Wire Line
	4250 4750 4750 4750
$Comp
L Device:Battery_Cell BT1
U 1 1 5F953110
P 7150 2000
AR Path="/5F9342E9/5F953110" Ref="BT1"  Part="1" 
AR Path="/5F93970E/5F953110" Ref="BT?"  Part="1" 
F 0 "BT1" V 7405 2050 50  0000 C CNN
F 1 "9V_Battery" V 7314 2050 50  0000 C CNN
F 2 "" V 7150 2060 50  0001 C CNN
F 3 "~" V 7150 2060 50  0001 C CNN
	1    7150 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2450 6950 2000
Text GLabel 7550 2000 2    50   Input ~ 10
GND
Wire Wire Line
	7250 2000 7550 2000
Wire Notes Line
	6750 2150 7850 2150
Wire Notes Line
	7850 2150 7850 1600
Wire Notes Line
	7850 1600 6750 1600
Wire Notes Line
	6750 1600 6750 2150
Text Notes 7500 1700 0    50   ~ 0
Optional
Wire Wire Line
	4250 3700 4250 3550
Wire Wire Line
	4250 2950 4250 2800
$EndSCHEMATC
