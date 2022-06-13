EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 5
Title "PEV UVW Switch"
Date "2019-05-08"
Rev "2.0"
Comp "City Science - MIT Media Lab"
Comment1 "DANCHOUZHOU"
Comment2 "danchou@mit.edu"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pev_uvw_sw-rescue:ATmega328P-AU-MCU_Microchip_ATmega U4
U 1 1 5CDEF713
P 4000 4050
F 0 "U4" H 3600 5500 50  0000 C CNN
F 1 "ATmega328P-AU" H 4450 5500 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4000 4050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4000 4050 50  0001 C CNN
	1    4000 4050
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Resonator_Small-Device Y1
U 1 1 5CDF7FA5
P 5300 3500
F 0 "Y1" V 5100 3500 50  0000 C CNN
F 1 "CSTNE16M0V530000R0" V 5100 3000 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm_HandSoldering" H 5275 3500 50  0001 C CNN
F 3 "~" H 5275 3500 50  0001 C CNN
	1    5300 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3450 4800 3450
Wire Wire Line
	4800 3450 4800 3400
Wire Wire Line
	4800 3400 5000 3400
Wire Wire Line
	4600 3550 4800 3550
Wire Wire Line
	4800 3550 4800 3600
Wire Wire Line
	4800 3600 5200 3600
Wire Wire Line
	5500 3500 5700 3500
$Comp
L pev_uvw_sw-rescue:GND-power #PWR038
U 1 1 5CDF9F53
P 5700 3500
F 0 "#PWR038" H 5700 3250 50  0001 C CNN
F 1 "GND" V 5705 3372 50  0000 R CNN
F 2 "" H 5700 3500 50  0001 C CNN
F 3 "" H 5700 3500 50  0001 C CNN
	1    5700 3500
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R11
U 1 1 5CDFB88C
P 6500 4000
F 0 "R11" H 6430 3954 50  0000 R CNN
F 1 "10K" H 6430 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6430 4000 50  0001 C CNN
F 3 "~" H 6500 4000 50  0001 C CNN
	1    6500 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 4150 6500 4350
Connection ~ 6500 4350
Wire Wire Line
	6500 3850 6500 3750
Wire Wire Line
	6500 3750 6600 3750
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR042
U 1 1 5CDFE73D
P 6600 3750
F 0 "#PWR042" H 6600 3600 50  0001 C CNN
F 1 "+5V" V 6615 3878 50  0000 L CNN
F 2 "" H 6600 3750 50  0001 C CNN
F 3 "" H 6600 3750 50  0001 C CNN
	1    6600 3750
	0    1    1    0   
$EndComp
Text Label 4800 4550 0    50   ~ 0
D0
Text Label 4800 4650 0    50   ~ 0
D1
Text GLabel 5700 4550 2    50   Input ~ 0
M4_TXD
Text GLabel 5700 4650 2    50   Output ~ 0
M4_RXD
Text Label 4800 2850 0    50   ~ 0
D8
Text GLabel 6500 2850 2    50   Output ~ 0
RELAY
Wire Wire Line
	4000 2550 4000 2450
Wire Wire Line
	3400 2850 3300 2850
Wire Wire Line
	3300 2850 3300 2350
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR035
U 1 1 5CE1002F
P 3300 2350
F 0 "#PWR035" H 3300 2200 50  0001 C CNN
F 1 "+5V" H 3315 2523 50  0000 C CNN
F 2 "" H 3300 2350 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
	1    3300 2350
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR036
U 1 1 5CE1046C
P 4000 2350
F 0 "#PWR036" H 4000 2200 50  0001 C CNN
F 1 "+5V" H 4015 2523 50  0000 C CNN
F 2 "" H 4000 2350 50  0001 C CNN
F 3 "" H 4000 2350 50  0001 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2550 4100 2450
Wire Wire Line
	4100 2450 4000 2450
Connection ~ 4000 2450
Wire Wire Line
	4000 2450 4000 2350
$Comp
L pev_uvw_sw-rescue:GND-power #PWR037
U 1 1 5CE1239E
P 4000 5750
F 0 "#PWR037" H 4000 5500 50  0001 C CNN
F 1 "GND" H 4005 5577 50  0000 C CNN
F 2 "" H 4000 5750 50  0001 C CNN
F 3 "" H 4000 5750 50  0001 C CNN
	1    4000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5750 4000 5550
$Comp
L pev_uvw_sw-rescue:C-Device C13
U 1 1 5CE13AED
P 2550 5400
F 0 "C13" H 2665 5446 50  0000 L CNN
F 1 "100nF" H 2665 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2588 5250 50  0001 C CNN
F 3 "~" H 2550 5400 50  0001 C CNN
	1    2550 5400
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR034
U 1 1 5CE1804E
P 2550 5750
F 0 "#PWR034" H 2550 5500 50  0001 C CNN
F 1 "GND" H 2555 5577 50  0000 C CNN
F 2 "" H 2550 5750 50  0001 C CNN
F 3 "" H 2550 5750 50  0001 C CNN
	1    2550 5750
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR033
U 1 1 5CE19556
P 2550 5050
F 0 "#PWR033" H 2550 4900 50  0001 C CNN
F 1 "+5V" H 2565 5223 50  0000 C CNN
F 2 "" H 2550 5050 50  0001 C CNN
F 3 "" H 2550 5050 50  0001 C CNN
	1    2550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5050 2550 5250
Wire Wire Line
	2550 5550 2550 5750
Text GLabel 7450 3950 2    50   Input ~ 0
M4_DTR
Wire Wire Line
	7200 4350 7400 4350
Connection ~ 7200 4350
Wire Wire Line
	7200 3950 7450 3950
Wire Wire Line
	7200 4350 7200 3950
$Comp
L pev_uvw_sw-rescue:GND-power #PWR044
U 1 1 5CE0022E
P 7900 4350
F 0 "#PWR044" H 7900 4100 50  0001 C CNN
F 1 "GND" V 7905 4222 50  0000 R CNN
F 2 "" H 7900 4350 50  0001 C CNN
F 3 "" H 7900 4350 50  0001 C CNN
	1    7900 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 4350 7900 4350
$Comp
L pev_uvw_sw-rescue:R-Device R13
U 1 1 5CDFFA23
P 7550 4350
F 0 "R13" V 7343 4350 50  0000 C CNN
F 1 "1K" V 7434 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7480 4350 50  0001 C CNN
F 3 "~" H 7550 4350 50  0001 C CNN
	1    7550 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 4350 7200 4350
Wire Wire Line
	6500 4350 6700 4350
$Comp
L pev_uvw_sw-rescue:C-Device C14
U 1 1 5CDFA771
P 6850 4350
F 0 "C14" V 6598 4350 50  0000 C CNN
F 1 "100nF" V 6689 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6888 4200 50  0001 C CNN
F 3 "~" H 6850 4350 50  0001 C CNN
	1    6850 4350
	0    1    1    0   
$EndComp
Text Label 4800 4350 0    50   ~ 0
RST
$Comp
L pev_uvw_sw-rescue:SW_Push-Switch SW1
U 1 1 5CE23AAC
P 6500 4750
F 0 "SW1" V 6454 4898 50  0000 L CNN
F 1 "AVRRST" V 6545 4898 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 6500 4950 50  0001 C CNN
F 3 "~" H 6500 4950 50  0001 C CNN
	1    6500 4750
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR041
U 1 1 5CE24F54
P 6500 5150
F 0 "#PWR041" H 6500 4900 50  0001 C CNN
F 1 "GND" H 6505 4977 50  0000 C CNN
F 2 "" H 6500 5150 50  0001 C CNN
F 3 "" H 6500 5150 50  0001 C CNN
	1    6500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4950 6500 5150
Wire Wire Line
	4600 2850 6500 2850
Wire Wire Line
	4600 4350 6200 4350
Wire Wire Line
	6500 4350 6500 4550
$Comp
L pev_uvw_sw-rescue:LED-Device D4
U 1 1 5CDF5635
P 7550 3350
F 0 "D4" H 7550 3550 50  0000 C CNN
F 1 "LED" H 7550 3450 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7550 3350 50  0001 C CNN
F 3 "~" H 7550 3350 50  0001 C CNN
	1    7550 3350
	-1   0    0    1   
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R12
U 1 1 5CDF6A84
P 6850 3350
F 0 "R12" V 6950 3350 50  0000 C CNN
F 1 "1K" V 6850 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6780 3350 50  0001 C CNN
F 3 "~" H 6850 3350 50  0001 C CNN
	1    6850 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 3350 7400 3350
Wire Wire Line
	7700 3350 7900 3350
$Comp
L pev_uvw_sw-rescue:GND-power #PWR043
U 1 1 5CDFCAD8
P 7900 3350
F 0 "#PWR043" H 7900 3100 50  0001 C CNN
F 1 "GND" V 7905 3222 50  0000 R CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0001 C CNN
	1    7900 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 4550 5700 4550
Wire Wire Line
	4600 4650 5700 4650
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP16
U 1 1 5CE9DD37
P 6500 3550
F 0 "TP16" V 6450 3500 50  0000 L CNN
F 1 "SCK" V 6500 3750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6700 3550 50  0001 C CNN
F 3 "~" H 6700 3550 50  0001 C CNN
	1    6500 3550
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP15
U 1 1 5CE9E3EA
P 6500 3250
F 0 "TP15" V 6450 3200 50  0000 L CNN
F 1 "MISO" V 6500 3450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6700 3250 50  0001 C CNN
F 3 "~" H 6700 3250 50  0001 C CNN
	1    6500 3250
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP14
U 1 1 5CE9E7E4
P 6500 3150
F 0 "TP14" V 6450 3100 50  0000 L CNN
F 1 "MOSI" V 6500 3350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6700 3150 50  0001 C CNN
F 3 "~" H 6700 3150 50  0001 C CNN
	1    6500 3150
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP17
U 1 1 5CE9FC56
P 6500 3650
F 0 "TP17" V 6450 3600 50  0000 L CNN
F 1 "RST" V 6500 3850 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6700 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6500 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3250 4600 3250
Wire Wire Line
	6500 3150 4600 3150
Wire Wire Line
	6500 3650 6200 3650
Wire Wire Line
	6200 3650 6200 4350
Connection ~ 6200 4350
Wire Wire Line
	6200 4350 6500 4350
Wire Wire Line
	4600 3350 6200 3350
Wire Wire Line
	6200 3550 6200 3350
Wire Wire Line
	6200 3550 6500 3550
Connection ~ 6200 3350
Wire Wire Line
	6200 3350 6700 3350
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP13
U 1 1 5CEA5D68
P 6500 2650
F 0 "TP13" V 6450 2600 50  0000 L CNN
F 1 "GND" V 6500 2850 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6700 2650 50  0001 C CNN
F 3 "~" H 6700 2650 50  0001 C CNN
	1    6500 2650
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP12
U 1 1 5CEA6370
P 6500 2550
F 0 "TP12" V 6450 2500 50  0000 L CNN
F 1 "5V" V 6500 2750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6700 2550 50  0001 C CNN
F 3 "~" H 6700 2550 50  0001 C CNN
	1    6500 2550
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR039
U 1 1 5CEA6812
P 6300 2550
F 0 "#PWR039" H 6300 2400 50  0001 C CNN
F 1 "+5V" V 6315 2678 50  0000 L CNN
F 2 "" H 6300 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0001 C CNN
	1    6300 2550
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR040
U 1 1 5CEA73FC
P 6300 2650
F 0 "#PWR040" H 6300 2400 50  0001 C CNN
F 1 "GND" V 6305 2522 50  0000 R CNN
F 2 "" H 6300 2650 50  0001 C CNN
F 3 "" H 6300 2650 50  0001 C CNN
	1    6300 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2650 6500 2650
Wire Wire Line
	6300 2550 6500 2550
Wire Wire Line
	5000 3400 5000 4450
Wire Wire Line
	5000 4450 5700 4450
Connection ~ 5000 3400
Wire Wire Line
	5000 3400 5200 3400
Text GLabel 5700 4450 2    50   Input ~ 0
M4_CKO
$EndSCHEMATC
