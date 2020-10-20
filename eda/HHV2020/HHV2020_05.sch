EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 6
Title "BSidesDFW 2020 HHV"
Date "2020-10-18"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Adafruit DotStar RGB LED and Touch Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:Adafruit_Trinket_M0 IC?
U 1 1 5F8E720B
P 5350 3800
AR Path="/5F8CC739/5F8E720B" Ref="IC?"  Part="1" 
AR Path="/5F8E517E/5F8E720B" Ref="IC2"  Part="1" 
F 0 "IC2" H 5350 4803 100 0000 C CNB
F 1 "Adafruit_Trinket_M0" H 5350 4675 50  0000 C CNN
F 2 "0_local:IC_Trinket_M0" H 5300 2750 50  0001 C CIN
F 3 "https://www.adafruit.com/product/3500" H 4650 3000 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
Text GLabel 6600 4200 2    50   Input ~ 10
GND(Common)
Wire Wire Line
	6350 4200 6600 4200
$Comp
L 0_local:R_Axial R?
U 1 1 5F8E7D27
P 3750 3500
AR Path="/5F80B86C/5F8E7D27" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F8E7D27" Ref="R?"  Part="1" 
AR Path="/5F8E517E/5F8E7D27" Ref="R10"  Part="1" 
F 0 "R10" V 4000 3500 50  0000 C CNN
F 1 "R_Axial" V 3925 3500 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3680 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
F 4 "100 Ohms" V 3850 3500 39  0000 C CNN "Resistance"
	1    3750 3500
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_THT_5mm D?
U 1 1 5F8E7D2F
P 2950 3500
AR Path="/5F80B86C/5F8E7D2F" Ref="D?"  Part="1" 
AR Path="/5F8CC739/5F8E7D2F" Ref="D?"  Part="1" 
AR Path="/5F8E517E/5F8E7D2F" Ref="D5"  Part="1" 
F 0 "D5" H 2950 3800 50  0000 C TNN
F 1 "LED_THT_5mm" H 2950 3700 50  0000 C TNN
F 2 "0_local:LED_D5.0mm-2" H 2950 3250 50  0001 C TNN
F 3 "~" H 2950 3500 50  0001 C BNN
F 4 "Anode (+)" H 3050 3550 39  0000 L BNN "Note1"
F 5 "Cathode (-)" H 2850 3550 39  0000 R BNN "Note2"
	1    2950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3500 2800 3500
Text GLabel 2050 3500 0    50   Input ~ 10
GND(Common)
Wire Wire Line
	3600 3500 3100 3500
Wire Wire Line
	4350 3500 3900 3500
Text GLabel 3850 3850 0    50   Input ~ 10
Bare_Wire_For_Touch
Wire Wire Line
	4350 3850 3850 3850
$EndSCHEMATC
