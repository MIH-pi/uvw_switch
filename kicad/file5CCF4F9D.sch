EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 5
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
L pev_uvw_sw-rescue:M453_LQFP48-MCU_Nuvoton U2
U 1 1 5CD45878
P 3900 4000
AR Path="/5CD45878" Ref="U2"  Part="1" 
AR Path="/5CCF4F9E/5CD45878" Ref="U2"  Part="1" 
F 0 "U2" H 3400 5550 50  0000 C CNN
F 1 "M453_LQFP48" H 4250 5550 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3900 5200 50  0001 C CNN
F 3 "" H 3900 5200 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:USB_B_Micro-Connector J1
U 1 1 5CD4840A
P 1300 4300
F 0 "J1" H 1357 4767 50  0000 C CNN
F 1 "1050170001" H 1357 4676 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1450 4250 50  0001 C CNN
F 3 "~" H 1450 4250 50  0001 C CNN
	1    1300 4300
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Ferrite_Bead_Small-Device FB1
U 1 1 5CD4D358
P 1200 5000
F 0 "FB1" H 1300 5046 50  0000 L CNN
F 1 "Ferrite_Bead" H 1300 4955 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 5000 50  0001 C CNN
F 3 "~" H 1200 5000 50  0001 C CNN
	1    1200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4700 1200 4900
Wire Wire Line
	1200 5100 1200 5300
Wire Wire Line
	1200 5300 1300 5300
Wire Wire Line
	1300 4700 1300 5300
Wire Wire Line
	1300 5500 1300 5300
Connection ~ 1300 5300
$Comp
L pev_uvw_sw-rescue:GND-power #PWR010
U 1 1 5CD4E9D7
P 1300 5500
F 0 "#PWR010" H 1300 5250 50  0001 C CNN
F 1 "GND" H 1305 5327 50  0000 C CNN
F 2 "" H 1300 5500 50  0001 C CNN
F 3 "" H 1300 5500 50  0001 C CNN
	1    1300 5500
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C7
U 1 1 5CD4F307
P 2850 4900
F 0 "C7" V 2598 4900 50  0000 C CNN
F 1 "1uF" V 2689 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 4750 50  0001 C CNN
F 3 "~" H 2850 4900 50  0001 C CNN
	1    2850 4900
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C8
U 1 1 5CD4FDB9
P 2850 5100
F 0 "C8" V 3100 5100 50  0000 C CNN
F 1 "1uF" V 3000 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 4950 50  0001 C CNN
F 3 "~" H 2850 5100 50  0001 C CNN
	1    2850 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4900 3200 4900
Wire Wire Line
	3000 5100 3200 5100
Wire Wire Line
	2700 4900 2500 4900
Wire Wire Line
	2500 4900 2500 5100
$Comp
L pev_uvw_sw-rescue:GND-power #PWR016
U 1 1 5CD512B1
P 2500 5500
F 0 "#PWR016" H 2500 5250 50  0001 C CNN
F 1 "GND" H 2505 5327 50  0000 C CNN
F 2 "" H 2500 5500 50  0001 C CNN
F 3 "" H 2500 5500 50  0001 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5300 3000 5300
Wire Wire Line
	3000 5300 3000 5400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR018
U 1 1 5CD517D0
P 3000 5500
F 0 "#PWR018" H 3000 5250 50  0001 C CNN
F 1 "GND" H 3005 5327 50  0000 C CNN
F 2 "" H 3000 5500 50  0001 C CNN
F 3 "" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5400 3200 5400
Connection ~ 3000 5400
Wire Wire Line
	3000 5400 3000 5500
Wire Wire Line
	2700 5100 2500 5100
Connection ~ 2500 5100
Wire Wire Line
	2500 5100 2500 5500
Wire Wire Line
	3200 4100 1800 4100
Wire Wire Line
	1600 4500 3200 4500
Wire Wire Line
	1800 4100 1800 3900
Connection ~ 1800 4100
Wire Wire Line
	1800 4100 1600 4100
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR013
U 1 1 5CD73F3B
P 1800 3900
F 0 "#PWR013" H 1800 3750 50  0001 C CNN
F 1 "+5V" H 1815 4073 50  0000 C CNN
F 2 "" H 1800 3900 50  0001 C CNN
F 3 "" H 1800 3900 50  0001 C CNN
	1    1800 3900
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R6
U 1 1 5CD744BC
P 2400 2750
F 0 "R6" H 2470 2796 50  0000 L CNN
F 1 "10K" H 2470 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 2750 50  0001 C CNN
F 3 "~" H 2400 2750 50  0001 C CNN
	1    2400 2750
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C6
U 1 1 5CD755BF
P 2400 3450
F 0 "C6" H 2515 3496 50  0000 L CNN
F 1 "100nF" H 2515 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2438 3300 50  0001 C CNN
F 3 "~" H 2400 3450 50  0001 C CNN
	1    2400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2900 2400 3200
Connection ~ 2400 3200
Wire Wire Line
	2400 3200 3200 3200
Wire Wire Line
	2400 3200 2400 3300
Wire Wire Line
	2400 3600 2400 3800
Wire Wire Line
	2400 2400 2400 2600
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR014
U 1 1 5CD77DC2
P 2400 2400
F 0 "#PWR014" H 2400 2250 50  0001 C CNN
F 1 "+5V" H 2415 2573 50  0000 C CNN
F 2 "" H 2400 2400 50  0001 C CNN
F 3 "" H 2400 2400 50  0001 C CNN
	1    2400 2400
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR015
U 1 1 5CD7848E
P 2400 3800
F 0 "#PWR015" H 2400 3550 50  0001 C CNN
F 1 "GND" H 2405 3627 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2800 3000 2800
Wire Wire Line
	3000 2800 3000 2700
Wire Wire Line
	3000 2600 3200 2600
Connection ~ 3000 2600
Wire Wire Line
	3000 2600 3000 2400
Wire Wire Line
	3000 2700 3200 2700
Connection ~ 3000 2700
Wire Wire Line
	3000 2700 3000 2600
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR017
U 1 1 5CD7A424
P 3000 2400
F 0 "#PWR017" H 3000 2250 50  0001 C CNN
F 1 "+5V" H 3015 2573 50  0000 C CNN
F 2 "" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R4
U 1 1 5CD7AE2F
P 1950 4300
F 0 "R4" V 1850 4300 50  0000 C CNN
F 1 "33R" V 1950 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 4300 50  0001 C CNN
F 3 "~" H 1950 4300 50  0001 C CNN
	1    1950 4300
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R5
U 1 1 5CD7B5AD
P 2250 4400
F 0 "R5" V 2100 4400 50  0000 C CNN
F 1 "33R" V 2250 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2180 4400 50  0001 C CNN
F 3 "~" H 2250 4400 50  0001 C CNN
	1    2250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 4300 3200 4300
Wire Wire Line
	2400 4400 3200 4400
Wire Wire Line
	1600 4300 1800 4300
Wire Wire Line
	1600 4400 2100 4400
$Comp
L pev_uvw_sw-rescue:CLV1L-FKB-LED D3
U 1 1 5CD7E684
P 6400 4800
F 0 "D3" H 6400 5297 50  0000 C CNN
F 1 "CLV1L-FKB" H 6400 5206 50  0000 C CNN
F 2 "LED_SMD:LED_Avago_PLCC4_3.2x2.8mm_CW" H 6400 4750 50  0001 C CNN
F 3 "http://www.cree.com/led-components/media/documents/CLV1L-FKB-1238.pdf" H 6400 4750 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
Text Label 4600 4450 0    50   ~ 0
DEBUG_RXD
Text Label 4600 4550 0    50   ~ 0
DEBUG_TXD
Wire Wire Line
	3000 2800 3000 3950
Wire Wire Line
	3000 3950 3200 3950
Connection ~ 3000 2800
Wire Wire Line
	3000 3950 3000 4700
Wire Wire Line
	3000 4700 3200 4700
Connection ~ 3000 3950
$Comp
L pev_uvw_sw-rescue:R-Device R8
U 1 1 5CD85E72
P 5850 4600
F 0 "R8" V 5750 4600 50  0000 C CNN
F 1 "300R" V 5850 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 4600 50  0001 C CNN
F 3 "~" H 5850 4600 50  0001 C CNN
	1    5850 4600
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R9
U 1 1 5CD8738F
P 5850 4800
F 0 "R9" V 5750 4800 50  0000 C CNN
F 1 "240R" V 5850 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 4800 50  0001 C CNN
F 3 "~" H 5850 4800 50  0001 C CNN
	1    5850 4800
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R10
U 1 1 5CD87556
P 5850 5000
F 0 "R10" V 5750 5000 50  0000 C CNN
F 1 "240R" V 5850 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 5000 50  0001 C CNN
F 3 "~" H 5850 5000 50  0001 C CNN
	1    5850 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4600 6200 4600
Wire Wire Line
	6000 4800 6200 4800
Wire Wire Line
	6000 5000 6200 5000
Wire Wire Line
	6600 4800 6800 4800
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR019
U 1 1 5CD90AB2
P 6800 4800
F 0 "#PWR019" H 6800 4650 50  0001 C CNN
F 1 "+5V" V 6815 4928 50  0000 L CNN
F 2 "" H 6800 4800 50  0001 C CNN
F 3 "" H 6800 4800 50  0001 C CNN
	1    6800 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 5000 5700 5000
Wire Wire Line
	4600 4300 5200 4300
Wire Wire Line
	5200 4300 5200 4600
Wire Wire Line
	5200 4600 5700 4600
Wire Wire Line
	6200 3900 4600 3900
Wire Wire Line
	4600 4100 6200 4100
Wire Wire Line
	6200 4200 4600 4200
Text Label 4600 3750 0    50   ~ 0
CAN_STB
Text GLabel 6200 3900 2    50   Output ~ 0
M4_DTR
Text GLabel 6200 4100 2    50   Output ~ 0
M4_TXD
Text Label 4600 2700 0    50   ~ 0
CAN_TX
Text Label 4600 2600 0    50   ~ 0
CAN_RX
Text Label 7900 6050 2    50   ~ 0
CAN_STB
Wire Wire Line
	7800 5950 7900 5950
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR020
U 1 1 5CDC3572
P 7800 5950
F 0 "#PWR020" H 7800 5800 50  0001 C CNN
F 1 "+5V" V 7815 6078 50  0000 L CNN
F 2 "" H 7800 5950 50  0001 C CNN
F 3 "" H 7800 5950 50  0001 C CNN
	1    7800 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 5400 8400 5450
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR025
U 1 1 5CDC11B1
P 8400 5400
F 0 "#PWR025" H 8400 5250 50  0001 C CNN
F 1 "+5V" H 8415 5573 50  0000 C CNN
F 2 "" H 8400 5400 50  0001 C CNN
F 3 "" H 8400 5400 50  0001 C CNN
	1    8400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 6300 8400 6250
$Comp
L pev_uvw_sw-rescue:GND-power #PWR026
U 1 1 5CDBF493
P 8400 6300
F 0 "#PWR026" H 8400 6050 50  0001 C CNN
F 1 "GND" H 8405 6127 50  0000 C CNN
F 2 "" H 8400 6300 50  0001 C CNN
F 3 "" H 8400 6300 50  0001 C CNN
	1    8400 6300
	1    0    0    -1  
$EndComp
Text Label 7900 5750 2    50   ~ 0
CAN_RX
Text Label 7900 5650 2    50   ~ 0
CAN_TX
$Comp
L pev_uvw_sw-rescue:TCAN1042V-Q1-My_Library U3
U 1 1 5CDBAE3A
P 8400 5850
F 0 "U3" H 8100 6200 50  0000 C CNN
F 1 "TCAN1042V-Q1" H 8750 6200 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8550 5400 50  0001 C CNN
F 3 "" H 8550 5400 50  0001 C CNN
	1    8400 5850
	1    0    0    -1  
$EndComp
Text GLabel 6200 4200 2    50   Input ~ 0
M4_RXD
Text GLabel 6000 2750 0    50   Input ~ 0
M4_TXD
Text GLabel 6000 2850 0    50   Output ~ 0
M4_RXD
Text GLabel 6000 2950 0    50   Input ~ 0
M4_DTR
Text GLabel 6200 3350 2    50   Output ~ 0
RELAY
Wire Wire Line
	5200 4800 5200 4850
Wire Wire Line
	5200 4850 4600 4850
Wire Wire Line
	5200 4800 5700 4800
$Comp
L pev_uvw_sw-rescue:R-Device R7
U 1 1 5CE53676
P 5850 3350
F 0 "R7" V 5800 3550 50  0000 C CNN
F 1 "1K" V 5850 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    5850 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3350 6200 3350
Wire Wire Line
	4600 3350 5700 3350
Wire Wire Line
	2400 3200 1150 3200
Wire Wire Line
	3200 3100 1150 3100
Wire Wire Line
	1150 3000 3200 3000
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP3
U 1 1 5CE969D9
P 1150 3000
F 0 "TP3" V 1200 3000 50  0000 C CNN
F 1 "DAT" V 1150 3250 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1350 3000 50  0001 C CNN
F 3 "~" H 1350 3000 50  0001 C CNN
	1    1150 3000
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP4
U 1 1 5CE96FFA
P 1150 3100
F 0 "TP4" V 1200 3100 50  0000 C CNN
F 1 "CLK" V 1150 3350 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1350 3100 50  0001 C CNN
F 3 "~" H 1350 3100 50  0001 C CNN
	1    1150 3100
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP5
U 1 1 5CE97133
P 1150 3200
F 0 "TP5" V 1200 3200 50  0000 C CNN
F 1 "RST" V 1150 3450 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1350 3200 50  0001 C CNN
F 3 "~" H 1350 3200 50  0001 C CNN
	1    1150 3200
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CEAD0A9
P 1150 3300
AR Path="/5CCF4FE5/5CEAD0A9" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CEAD0A9" Ref="TP6"  Part="1" 
AR Path="/5CEAD0A9" Ref="TP6"  Part="1" 
F 0 "TP6" V 1200 3300 50  0000 C CNN
F 1 "GND" V 1150 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1350 3300 50  0001 C CNN
F 3 "~" H 1350 3300 50  0001 C CNN
	1    1150 3300
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CEAD0AF
P 1150 2900
AR Path="/5CCF4FE5/5CEAD0AF" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CEAD0AF" Ref="TP2"  Part="1" 
AR Path="/5CEAD0AF" Ref="TP2"  Part="1" 
F 0 "TP2" V 1200 2900 50  0000 C CNN
F 1 "5V" V 1150 3100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1350 2900 50  0001 C CNN
F 3 "~" H 1350 2900 50  0001 C CNN
	1    1150 2900
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR?
U 1 1 5CEAD0B5
P 1350 2900
AR Path="/5CCF4FE5/5CEAD0B5" Ref="#PWR?"  Part="1" 
AR Path="/5CCF4F9E/5CEAD0B5" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 1350 2750 50  0001 C CNN
F 1 "+5V" V 1365 3028 50  0000 L CNN
F 2 "" H 1350 2900 50  0001 C CNN
F 3 "" H 1350 2900 50  0001 C CNN
	1    1350 2900
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CEAD0BB
P 1350 3300
AR Path="/5CCF4FE5/5CEAD0BB" Ref="#PWR?"  Part="1" 
AR Path="/5CCF4F9E/5CEAD0BB" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 1350 3050 50  0001 C CNN
F 1 "GND" V 1355 3172 50  0000 R CNN
F 2 "" H 1350 3300 50  0001 C CNN
F 3 "" H 1350 3300 50  0001 C CNN
	1    1350 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 3300 1150 3300
Wire Wire Line
	1350 2900 1150 2900
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CEBE105
P 6400 2750
AR Path="/5CCF4FE5/5CEBE105" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CEBE105" Ref="TP7"  Part="1" 
AR Path="/5CEBE105" Ref="TP7"  Part="1" 
F 0 "TP7" V 6350 2750 50  0000 C CNN
F 1 "M4_TXD" V 6400 2950 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6600 2750 50  0001 C CNN
F 3 "~" H 6600 2750 50  0001 C CNN
	1    6400 2750
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CEBE24F
P 6400 2850
AR Path="/5CCF4FE5/5CEBE24F" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CEBE24F" Ref="TP8"  Part="1" 
AR Path="/5CEBE24F" Ref="TP8"  Part="1" 
F 0 "TP8" V 6350 2850 50  0000 C CNN
F 1 "M4_RXD" V 6400 3050 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6600 2850 50  0001 C CNN
F 3 "~" H 6600 2850 50  0001 C CNN
	1    6400 2850
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CEBE3C5
P 6400 2950
AR Path="/5CCF4FE5/5CEBE3C5" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CEBE3C5" Ref="TP9"  Part="1" 
AR Path="/5CEBE3C5" Ref="TP9"  Part="1" 
F 0 "TP9" V 6350 2950 50  0000 C CNN
F 1 "M4_DTR" V 6400 3150 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6600 2950 50  0001 C CNN
F 3 "~" H 6600 2950 50  0001 C CNN
	1    6400 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2750 6400 2750
Wire Wire Line
	6000 2850 6400 2850
Wire Wire Line
	6000 2950 6400 2950
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CECBAE4
P 6400 3100
AR Path="/5CCF4FE5/5CECBAE4" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CECBAE4" Ref="TP10"  Part="1" 
AR Path="/5CECBAE4" Ref="TP10"  Part="1" 
F 0 "TP10" V 6350 3100 50  0000 C CNN
F 1 "DEBUG_TXD" V 6400 3300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6600 3100 50  0001 C CNN
F 3 "~" H 6600 3100 50  0001 C CNN
	1    6400 3100
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5CECBAEE
P 6400 3200
AR Path="/5CCF4FE5/5CECBAEE" Ref="TP?"  Part="1" 
AR Path="/5CCF4F9E/5CECBAEE" Ref="TP11"  Part="1" 
AR Path="/5CECBAEE" Ref="TP11"  Part="1" 
F 0 "TP11" V 6350 3200 50  0000 C CNN
F 1 "DEBUG_RXD" V 6400 3400 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6600 3200 50  0001 C CNN
F 3 "~" H 6600 3200 50  0001 C CNN
	1    6400 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3100 6400 3100
Wire Wire Line
	6000 3200 6400 3200
Text Label 6000 3100 2    50   ~ 0
DEBUG_TXD
Text Label 6000 3200 2    50   ~ 0
DEBUG_RXD
Text Label 3200 3600 2    50   ~ 0
XTO
Text Label 3200 3700 2    50   ~ 0
XTI
Text GLabel 6200 4000 2    50   Output ~ 0
M4_CKO
Wire Wire Line
	6200 4000 4600 4000
Wire Notes Line
	7500 1000 9500 1000
Wire Notes Line
	9500 1000 9500 2500
Wire Notes Line
	9500 2500 7500 2500
Wire Notes Line
	7500 2500 7500 1000
Wire Wire Line
	9050 3500 9050 3700
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR029
U 1 1 5CDD4F2E
P 9050 3500
F 0 "#PWR029" H 9050 3350 50  0001 C CNN
F 1 "+5V" H 9065 3673 50  0000 C CNN
F 2 "" H 9050 3500 50  0001 C CNN
F 3 "" H 9050 3500 50  0001 C CNN
	1    9050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4200 9050 4000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR030
U 1 1 5CDD4F23
P 9050 4200
F 0 "#PWR030" H 9050 3950 50  0001 C CNN
F 1 "GND" H 9055 4027 50  0000 C CNN
F 2 "" H 9050 4200 50  0001 C CNN
F 3 "" H 9050 4200 50  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C12
U 1 1 5CDD4F19
P 9050 3850
F 0 "C12" H 9165 3896 50  0000 L CNN
F 1 "100nF" H 9165 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9088 3700 50  0001 C CNN
F 3 "~" H 9050 3850 50  0001 C CNN
	1    9050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3500 8600 3700
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR027
U 1 1 5CDD4F0E
P 8600 3500
F 0 "#PWR027" H 8600 3350 50  0001 C CNN
F 1 "+5V" H 8615 3673 50  0000 C CNN
F 2 "" H 8600 3500 50  0001 C CNN
F 3 "" H 8600 3500 50  0001 C CNN
	1    8600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4200 8600 4000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR028
U 1 1 5CDD4F03
P 8600 4200
F 0 "#PWR028" H 8600 3950 50  0001 C CNN
F 1 "GND" H 8605 4027 50  0000 C CNN
F 2 "" H 8600 4200 50  0001 C CNN
F 3 "" H 8600 4200 50  0001 C CNN
	1    8600 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C11
U 1 1 5CDD4EF9
P 8600 3850
F 0 "C11" H 8715 3896 50  0000 L CNN
F 1 "100nF" H 8715 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8638 3700 50  0001 C CNN
F 3 "~" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3500 8150 3700
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR023
U 1 1 5CDD1E41
P 8150 3500
F 0 "#PWR023" H 8150 3350 50  0001 C CNN
F 1 "+5V" H 8165 3673 50  0000 C CNN
F 2 "" H 8150 3500 50  0001 C CNN
F 3 "" H 8150 3500 50  0001 C CNN
	1    8150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4200 8150 4000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR024
U 1 1 5CDD1E36
P 8150 4200
F 0 "#PWR024" H 8150 3950 50  0001 C CNN
F 1 "GND" H 8155 4027 50  0000 C CNN
F 2 "" H 8150 4200 50  0001 C CNN
F 3 "" H 8150 4200 50  0001 C CNN
	1    8150 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C10
U 1 1 5CDD1E2C
P 8150 3850
F 0 "C10" H 8265 3896 50  0000 L CNN
F 1 "100nF" H 8265 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8188 3700 50  0001 C CNN
F 3 "~" H 8150 3850 50  0001 C CNN
	1    8150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3500 7700 3700
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR021
U 1 1 5CDCD2E1
P 7700 3500
F 0 "#PWR021" H 7700 3350 50  0001 C CNN
F 1 "+5V" H 7715 3673 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4200 7700 4000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR022
U 1 1 5CDCB0E0
P 7700 4200
F 0 "#PWR022" H 7700 3950 50  0001 C CNN
F 1 "GND" H 7705 4027 50  0000 C CNN
F 2 "" H 7700 4200 50  0001 C CNN
F 3 "" H 7700 4200 50  0001 C CNN
	1    7700 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C9
U 1 1 5CDCA5BC
P 7700 3850
F 0 "C9" H 7815 3896 50  0000 L CNN
F 1 "100nF" H 7815 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7738 3700 50  0001 C CNN
F 3 "~" H 7700 3850 50  0001 C CNN
	1    7700 3850
	1    0    0    -1  
$EndComp
Wire Notes Line
	7500 3000 9500 3000
Wire Notes Line
	9500 3000 9500 4500
Wire Notes Line
	9500 4500 7500 4500
Wire Notes Line
	7500 4500 7500 3000
Text Notes 7600 3200 0    100  ~ 20
Bulk capacitors
Text Notes 7600 5200 0    100  ~ 20
CAN transceiver
Wire Notes Line
	7500 5000 9500 5000
Wire Notes Line
	9500 5000 9500 6500
Wire Notes Line
	9500 6500 7500 6500
Wire Notes Line
	7500 6500 7500 5000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR032
U 1 1 5CEF1039
P 9100 6200
F 0 "#PWR032" H 9100 5950 50  0001 C CNN
F 1 "GND" H 9105 6027 50  0000 C CNN
F 2 "" H 9100 6200 50  0001 C CNN
F 3 "" H 9100 6200 50  0001 C CNN
	1    9100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6000 9100 6200
Wire Wire Line
	9100 5500 9100 5700
$Comp
L pev_uvw_sw-rescue:+BATT-power #PWR031
U 1 1 5CEEBBD1
P 9100 5500
F 0 "#PWR031" H 9100 5350 50  0001 C CNN
F 1 "+BATT" H 9115 5673 50  0000 C CNN
F 2 "" H 9100 5500 50  0001 C CNN
F 3 "" H 9100 5500 50  0001 C CNN
	1    9100 5500
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x04-Connector_Generic J2
U 1 1 5CEEAECB
P 9300 5900
F 0 "J2" H 9380 5892 50  0000 L CNN
F 1 "CAN bus" H 9300 5600 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 9300 5900 50  0001 C CNN
F 3 "~" H 9300 5900 50  0001 C CNN
	1    9300 5900
	1    0    0    1   
$EndComp
Wire Wire Line
	8900 5750 9000 5750
Wire Wire Line
	9000 5750 9000 5800
Wire Wire Line
	9000 5800 9100 5800
Wire Wire Line
	8900 5950 9000 5950
Wire Wire Line
	9000 5950 9000 5900
Wire Wire Line
	9000 5900 9100 5900
Text Notes 7600 1200 0    100  ~ 20
Crystal
$Comp
L pev_uvw_sw-rescue:GND-power #PWR057
U 1 1 5D18B245
P 7950 1850
F 0 "#PWR057" H 7950 1600 50  0001 C CNN
F 1 "GND" V 7955 1722 50  0000 R CNN
F 2 "" H 7950 1850 50  0001 C CNN
F 3 "" H 7950 1850 50  0001 C CNN
	1    7950 1850
	0    1    1    0   
$EndComp
Text Label 9050 2200 0    50   ~ 0
XTO
Text Label 9050 1500 0    50   ~ 0
XTI
Wire Wire Line
	8850 1500 9050 1500
Wire Wire Line
	8850 1700 8850 1500
Wire Wire Line
	8850 2200 9050 2200
Wire Wire Line
	8850 2000 8850 2200
Wire Wire Line
	8150 1850 8150 2200
Wire Wire Line
	8150 1850 7950 1850
Wire Wire Line
	8150 2200 8350 2200
Connection ~ 8150 1850
Wire Wire Line
	8150 1500 8150 1850
Wire Wire Line
	8350 1500 8150 1500
Connection ~ 8850 2200
Wire Wire Line
	8650 2200 8850 2200
Connection ~ 8850 1500
Wire Wire Line
	8650 1500 8850 1500
$Comp
L pev_uvw_sw-rescue:C-Device C16
U 1 1 5D1788EF
P 8500 2200
F 0 "C16" V 8248 2200 50  0000 C CNN
F 1 "18pF" V 8339 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8538 2050 50  0001 C CNN
F 3 "~" H 8500 2200 50  0001 C CNN
	1    8500 2200
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C15
U 1 1 5D177FDE
P 8500 1500
F 0 "C15" V 8248 1500 50  0000 C CNN
F 1 "18pF" V 8339 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8538 1350 50  0001 C CNN
F 3 "~" H 8500 1500 50  0001 C CNN
	1    8500 1500
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:Crystal-Device Y2
U 1 1 5D1776B4
P 8850 1850
F 0 "Y2" V 8804 1981 50  0000 L CNN
F 1 "X12M" V 8895 1981 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 8850 1850 50  0001 C CNN
F 3 "~" H 8850 1850 50  0001 C CNN
	1    8850 1850
	0    1    1    0   
$EndComp
$EndSCHEMATC
