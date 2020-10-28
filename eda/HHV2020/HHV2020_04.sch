EESchema Schematic File Version 4
LIBS:HHV2020-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 9
Title "BSidesDFW 2020 HHV"
Date "2020-10-18"
Rev "1"
Comp "Crafted by @alt_bier"
Comment1 "Adafruit Trinket LED Control"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_local:Adafruit_Trinket_M0 IC2
U 1 1 5F8DC5A3
P 5200 4050
AR Path="/5F8CC739/5F8DC5A3" Ref="IC2"  Part="1" 
AR Path="/5F8E517E/5F8DC5A3" Ref="IC?"  Part="1" 
F 0 "IC2" H 5200 5053 100 0000 C CNB
F 1 "Adafruit_Trinket_M0" H 5200 4925 50  0000 C CNN
F 2 "0_local:IC_Trinket_M0" H 5150 3000 50  0001 C CIN
F 3 "https://www.adafruit.com/product/3500" H 4500 3250 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L 0_local:SW_Push_Dual_THT_6mm SW?
U 1 1 5F8DFBD5
P 7350 2900
AR Path="/5F815E44/5F8DFBD5" Ref="SW?"  Part="1" 
AR Path="/5F8CC739/5F8DFBD5" Ref="SW2"  Part="1" 
AR Path="/5F8E517E/5F8DFBD5" Ref="SW?"  Part="1" 
F 0 "SW2" H 7350 2400 50  0000 C BNN
F 1 "SW_Push_Dual_THT_6mm" H 7350 2500 50  0000 C BNN
F 2 "0_local:SW_PUSH_6mm" H 7350 3100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905211531_SHOU-HAN-TS665CJ_C393938.pdf" H 7350 3100 50  0001 C CNN
	1    7350 2900
	-1   0    0    1   
$EndComp
$Comp
L 0_local:R_Axial R?
U 1 1 5F8DFBE2
P 8050 3500
AR Path="/5F80B86C/5F8DFBE2" Ref="R?"  Part="1" 
AR Path="/5F815E44/5F8DFBE2" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F8DFBE2" Ref="R9"  Part="1" 
AR Path="/5F8E517E/5F8DFBE2" Ref="R?"  Part="1" 
F 0 "R9" V 8350 3500 50  0000 C CNN
F 1 "R_Axial" V 8250 3500 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7980 3500 50  0001 C CNN
F 3 "~" H 8050 3500 50  0001 C CNN
F 4 "10K Ohms" V 8150 3500 39  0000 C CNN "Resistance"
	1    8050 3500
	0    -1   -1   0   
$EndComp
Text Notes 7900 3050 0    50   ~ 0
Pull Down Resistor R9\nEnsures pin D3 is at a LOW value\nUntil SW2 brings it HIGH
$Comp
L 0_local:R_Axial R?
U 1 1 5F8E08B4
P 6800 4100
AR Path="/5F80B86C/5F8E08B4" Ref="R?"  Part="1" 
AR Path="/5F8CC739/5F8E08B4" Ref="R8"  Part="1" 
AR Path="/5F8E517E/5F8E08B4" Ref="R?"  Part="1" 
F 0 "R8" V 7050 4100 50  0000 C CNN
F 1 "R_Axial" V 6975 4100 50  0000 C CNN
F 2 "0_local:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6730 4100 50  0001 C CNN
F 3 "~" H 6800 4100 50  0001 C CNN
F 4 "100 Ohms" V 6900 4100 39  0000 C CNN "Resistance"
	1    6800 4100
	0    -1   -1   0   
$EndComp
$Comp
L 0_local:LED_THT_5mm D?
U 1 1 5F8E08BC
P 7600 4100
AR Path="/5F80B86C/5F8E08BC" Ref="D?"  Part="1" 
AR Path="/5F8CC739/5F8E08BC" Ref="D4"  Part="1" 
AR Path="/5F8E517E/5F8E08BC" Ref="D?"  Part="1" 
F 0 "D4" H 7600 3885 50  0000 C TNN
F 1 "LED_THT_5mm" H 7600 3970 50  0000 C TNN
F 2 "0_local:LED_D5.0mm-2" H 7600 3850 50  0001 C TNN
F 3 "~" H 7600 4100 50  0001 C BNN
F 4 "Anode (+)" H 7700 4150 39  0000 L BNN "Note1"
F 5 "Cathode (-)" H 7500 4150 39  0000 R BNN "Note2"
	1    7600 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 4100 8500 4100
Text GLabel 6450 4450 2    50   Input ~ 10
GND(Common)
Wire Wire Line
	6200 4450 6450 4450
Text GLabel 8500 4100 2    50   Input ~ 10
GND(Common)
Text GLabel 8500 3500 2    50   Input ~ 10
GND(Common)
Wire Wire Line
	7450 4100 6950 4100
Wire Wire Line
	6650 4100 6200 4100
Text GLabel 3950 3400 0    50   Input ~ 10
3V3(+3.3V)
Wire Wire Line
	3950 3400 4200 3400
Text GLabel 6900 2900 0    50   Input ~ 10
3V3(+3.3V)
Wire Wire Line
	7150 2700 7150 2900
Wire Wire Line
	7550 2700 7550 2900
Wire Wire Line
	8200 3500 8500 3500
Wire Wire Line
	7150 2900 6900 2900
Connection ~ 7150 2900
Wire Wire Line
	6200 3750 6550 3750
Wire Wire Line
	6550 3750 6550 3500
Wire Wire Line
	6550 3500 7550 3500
Wire Wire Line
	7550 2900 7550 3500
Connection ~ 7550 2900
Connection ~ 7550 3500
Wire Wire Line
	7550 3500 7900 3500
$EndSCHEMATC
