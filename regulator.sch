EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX20029ATIF_V+:MAX20029ATIC_V+ IC1
U 1 1 675F18F2
P 4400 3650
AR Path="/675F18F2" Ref="IC1"  Part="1" 
AR Path="/675F00E9/675F18F2" Ref="IC1"  Part="1" 
F 0 "IC1" H 5550 4350 50  0000 L CNN
F 1 "MAX20029ATIF_V+" H 5550 4450 50  0000 L CNN
F 2 "Package_DFN_QFN:TQFN-28-1EP_5x5mm_P0.5mm_EP2.7x2.7mm" H 5550 4150 50  0001 L CNN
F 3 "https://www.mouser.jp/datasheet/2/256/Maxim_MAX20029-29B_DS_(Rev_11_2c_prelim)-1830034.pdf" H 5550 4050 50  0001 L CNN
F 4 "Automotive Quad/Triple Low-Voltage Step-Down DC-DC Converters, TQFN-EP" H 5550 3950 50  0001 L CNN "Description"
F 5 "0.8" H 5550 3850 50  0001 L CNN "Height"
F 6 "700-MAX20029ATIC/V+" H 5550 3750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Analog-Devices-Maxim-Integrated/MAX20029ATIC-V%2b?qs=uwxL4vQweFNeAyI%2FU%252BCY4w%3D%3D" H 5550 3650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Analog Devices" H 5550 3550 50  0001 L CNN "Manufacturer_Name"
F 9 "MAX20029ATIC/V+" H 5550 3450 50  0001 L CNN "Manufacturer_Part_Number"
	1    4400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6760CC2D
P 4250 5600
F 0 "#PWR05" H 4250 5350 50  0001 C CNN
F 1 "GND" H 4255 5427 50  0000 C CNN
F 2 "" H 4250 5600 50  0001 C CNN
F 3 "" H 4250 5600 50  0001 C CNN
	1    4250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3250 4400 3250
Wire Wire Line
	4050 3250 4050 3650
Wire Wire Line
	4050 3650 4400 3650
Wire Wire Line
	4050 3650 4050 4050
Wire Wire Line
	4050 4050 4400 4050
Connection ~ 4050 3650
Wire Wire Line
	4050 4050 4050 4450
Wire Wire Line
	4050 4450 4400 4450
Connection ~ 4050 4050
Wire Wire Line
	4250 5600 4250 5450
Wire Wire Line
	4250 4800 4400 4800
Wire Wire Line
	4250 5450 4800 5450
Wire Wire Line
	5300 5450 5300 5350
Connection ~ 4250 5450
Wire Wire Line
	4250 5450 4250 4800
Wire Wire Line
	5200 5350 5200 5450
Connection ~ 5200 5450
Wire Wire Line
	5200 5450 5300 5450
Wire Wire Line
	5100 5350 5100 5450
Connection ~ 5100 5450
Wire Wire Line
	5100 5450 5200 5450
Wire Wire Line
	5000 5350 5000 5450
Connection ~ 5000 5450
Wire Wire Line
	5000 5450 5100 5450
Wire Wire Line
	4900 5350 4900 5450
Connection ~ 4900 5450
Wire Wire Line
	4900 5450 5000 5450
Wire Wire Line
	4800 5350 4800 5450
Connection ~ 4800 5450
Wire Wire Line
	4800 5450 4900 5450
Wire Wire Line
	4400 3050 4250 3050
Wire Wire Line
	4250 3050 4250 4800
Connection ~ 4250 4800
Wire Wire Line
	4900 2750 4050 2750
Wire Wire Line
	4050 2750 4050 3250
Connection ~ 4050 3250
Text Notes 3350 3550 2    50   ~ 0
Decoupling caps - place as close to each PV_N pin as possible
Wire Wire Line
	3050 3050 3450 3050
Connection ~ 3050 3050
Wire Wire Line
	2650 3050 3050 3050
Connection ~ 2650 3050
Wire Wire Line
	2250 3050 2650 3050
Connection ~ 2250 3050
Wire Wire Line
	2100 3050 2250 3050
Wire Wire Line
	2100 3150 2100 3050
Wire Wire Line
	3050 2750 3450 2750
Connection ~ 3050 2750
Wire Wire Line
	2650 2750 3050 2750
Connection ~ 2650 2750
Wire Wire Line
	2250 2750 2650 2750
Connection ~ 2250 2750
Wire Wire Line
	2100 2750 2250 2750
Wire Wire Line
	2100 2650 2100 2750
$Comp
L Device:C C4
U 1 1 675FC5B0
P 3450 2900
F 0 "C4" H 3565 2946 50  0000 L CNN
F 1 "2u2" H 3565 2855 50  0000 L CNN
F 2 "" H 3488 2750 50  0001 C CNN
F 3 "~" H 3450 2900 50  0001 C CNN
	1    3450 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 675FC223
P 3050 2900
F 0 "C3" H 3165 2946 50  0000 L CNN
F 1 "2u2" H 3165 2855 50  0000 L CNN
F 2 "" H 3088 2750 50  0001 C CNN
F 3 "~" H 3050 2900 50  0001 C CNN
	1    3050 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 675FBD8A
P 2650 2900
F 0 "C2" H 2765 2946 50  0000 L CNN
F 1 "2u2" H 2765 2855 50  0000 L CNN
F 2 "" H 2688 2750 50  0001 C CNN
F 3 "~" H 2650 2900 50  0001 C CNN
	1    2650 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 675FB2E7
P 2250 2900
F 0 "C1" H 2365 2946 50  0000 L CNN
F 1 "2u2" H 2365 2855 50  0000 L CNN
F 2 "" H 2288 2750 50  0001 C CNN
F 3 "~" H 2250 2900 50  0001 C CNN
	1    2250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 675F7447
P 2100 3150
F 0 "#PWR02" H 2100 2900 50  0001 C CNN
F 1 "GND" H 2105 2977 50  0000 C CNN
F 2 "" H 2100 3150 50  0001 C CNN
F 3 "" H 2100 3150 50  0001 C CNN
	1    2100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 675F5EE0
P 2100 2650
F 0 "#PWR01" H 2100 2500 50  0001 C CNN
F 1 "+5V" H 2115 2823 50  0000 C CNN
F 2 "" H 2100 2650 50  0001 C CNN
F 3 "" H 2100 2650 50  0001 C CNN
	1    2100 2650
	1    0    0    -1  
$EndComp
Connection ~ 3450 2750
Wire Wire Line
	3450 2750 4050 2750
Connection ~ 4050 2750
$Comp
L Device:L L?
U 1 1 675F5ED4
P 6300 3300
F 0 "L?" V 6490 3300 50  0000 C CNN
F 1 "1u5" V 6399 3300 50  0000 C CNN
F 2 "" H 6300 3300 50  0001 C CNN
F 3 "~" H 6300 3300 50  0001 C CNN
	1    6300 3300
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
