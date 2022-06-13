EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 5
Title "PEV UVW Switch"
Date "2019-06-04"
Rev "2.0"
Comp "City Science - MIT Media Lab"
Comment1 "DANCHOUZHOU"
Comment2 "danchou@mit.edu"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pev_uvw_sw-rescue:MMBT3904-Transistor_BJT Q1
U 1 1 5CE45061
P 1900 5600
F 0 "Q1" H 2091 5646 50  0000 L CNN
F 1 "MMBT2222A" H 2091 5555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2100 5525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1900 5600 50  0001 L CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5000 2000 5150
Wire Wire Line
	2000 5150 2500 5150
Wire Wire Line
	5100 5150 5100 5000
Connection ~ 2000 5150
Wire Wire Line
	2000 5150 2000 5400
Wire Wire Line
	2500 5000 2500 5150
Connection ~ 2500 5150
Wire Wire Line
	2500 5150 3800 5150
Wire Wire Line
	3800 5000 3800 5150
Connection ~ 3800 5150
Wire Wire Line
	3800 5150 5100 5150
Wire Wire Line
	2000 5800 2000 6100
$Comp
L pev_uvw_sw-rescue:GND-power #PWR047
U 1 1 5CE4794D
P 2000 6100
F 0 "#PWR047" H 2000 5850 50  0001 C CNN
F 1 "GND" H 2005 5927 50  0000 C CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R14
U 1 1 5CE47E3F
P 1350 5600
F 0 "R14" V 1143 5600 50  0000 C CNN
F 1 "1K" V 1234 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 5600 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 5600 1600 5600
Wire Wire Line
	1000 5600 1200 5600
Text GLabel 1000 5600 0    50   Input ~ 0
RELAY
Wire Wire Line
	2500 4250 2500 4400
Wire Wire Line
	3800 4250 3800 4400
Wire Wire Line
	5100 4250 5100 4400
Wire Wire Line
	2000 4250 2000 4700
$Comp
L pev_uvw_sw-rescue:R-Device R15
U 1 1 5CEE2555
P 1600 5850
F 0 "R15" H 1670 5896 50  0000 L CNN
F 1 "1K" H 1670 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1530 5850 50  0001 C CNN
F 3 "~" H 1600 5850 50  0001 C CNN
	1    1600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5600 1600 5700
Connection ~ 1600 5600
Wire Wire Line
	1600 5600 1700 5600
Wire Wire Line
	1600 6000 1600 6100
$Comp
L pev_uvw_sw-rescue:GND-power #PWR045
U 1 1 5CEE9549
P 1600 6100
F 0 "#PWR045" H 1600 5850 50  0001 C CNN
F 1 "GND" H 1605 5927 50  0000 C CNN
F 2 "" H 1600 6100 50  0001 C CNN
F 3 "" H 1600 6100 50  0001 C CNN
	1    1600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5200 5500 5000
Wire Wire Line
	4200 5300 4200 5000
Wire Wire Line
	2900 5400 2900 5000
Wire Wire Line
	5600 4400 5600 2950
Wire Wire Line
	4300 4400 4300 2850
Wire Wire Line
	3000 4400 3000 2750
Wire Wire Line
	5400 4400 5400 3350
Wire Wire Line
	4100 4400 4100 3250
Wire Wire Line
	2800 4400 2800 3150
Wire Wire Line
	7250 5200 5500 5200
Wire Wire Line
	7250 3350 7250 5200
Wire Wire Line
	8200 3350 7250 3350
Wire Wire Line
	7150 5300 4200 5300
Wire Wire Line
	7150 3250 7150 5300
Wire Wire Line
	8200 3250 7150 3250
Wire Wire Line
	7050 5400 2900 5400
Wire Wire Line
	7050 3150 7050 5400
Wire Wire Line
	8200 3150 7050 3150
Wire Wire Line
	9250 2950 9250 3350
Wire Wire Line
	4300 2850 9450 2850
Wire Wire Line
	9250 3350 9850 3350
Wire Wire Line
	5600 2950 9250 2950
Wire Wire Line
	9450 3250 9850 3250
Wire Wire Line
	9450 2850 9450 3250
Wire Wire Line
	9650 3150 9850 3150
Wire Wire Line
	9650 2750 9650 3150
Wire Wire Line
	3000 2750 9650 2750
Wire Wire Line
	5400 3350 6550 3350
Wire Wire Line
	4100 3250 6550 3250
Wire Wire Line
	2800 3150 6550 3150
$Comp
L pev_uvw_sw-rescue:Conn_01x03-Connector_Generic J5
U 1 1 5CE0AA23
P 8400 3250
F 0 "J5" H 8480 3292 50  0000 L CNN
F 1 "MOTOR" H 8480 3201 50  0000 L CNN
F 2 "uvwswitch:motor_uvw_only_conn" H 8400 3250 50  0001 C CNN
F 3 "~" H 8400 3250 50  0001 C CNN
	1    8400 3250
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x03-Connector_Generic J7
U 1 1 5CE0AE4A
P 10050 3250
F 0 "J7" H 10130 3292 50  0000 L CNN
F 1 "VESC" H 10130 3201 50  0000 L CNN
F 2 "uvwswitch:motor_uvw_only_conn" H 10050 3250 50  0001 C CNN
F 3 "~" H 10050 3250 50  0001 C CNN
	1    10050 3250
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x03-Connector_Generic J3
U 1 1 5CE0A22A
P 6750 3250
F 0 "J3" H 6830 3292 50  0000 L CNN
F 1 "CTRL" H 6830 3201 50  0000 L CNN
F 2 "uvwswitch:motor_uvw_only_conn" H 6750 3250 50  0001 C CNN
F 3 "~" H 6750 3250 50  0001 C CNN
	1    6750 3250
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x06-Connector_Generic J4
U 1 1 5CE11F74
P 6750 4200
F 0 "J4" H 6830 4192 50  0000 L CNN
F 1 "CTRL" H 6830 4101 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 6750 4200 50  0001 C CNN
F 3 "~" H 6750 4200 50  0001 C CNN
	1    6750 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x06-Connector_Generic J6
U 1 1 5CE128D0
P 8400 4200
F 0 "J6" H 8480 4192 50  0000 L CNN
F 1 "MOTOR" H 8480 4101 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 8400 4200 50  0001 C CNN
F 3 "~" H 8400 4200 50  0001 C CNN
	1    8400 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x06-Connector_Generic J8
U 1 1 5CE1348A
P 10100 4200
F 0 "J8" H 10180 4192 50  0000 L CNN
F 1 "VESC" H 10180 4101 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 10100 4200 50  0001 C CNN
F 3 "~" H 10100 4200 50  0001 C CNN
	1    10100 4200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR052
U 1 1 5CE13DDB
P 6450 4000
F 0 "#PWR052" H 6450 3750 50  0001 C CNN
F 1 "GND" V 6350 4000 50  0000 R CNN
F 2 "" H 6450 4000 50  0001 C CNN
F 3 "" H 6450 4000 50  0001 C CNN
	1    6450 4000
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR054
U 1 1 5CE143C0
P 8100 4000
F 0 "#PWR054" H 8100 3750 50  0001 C CNN
F 1 "GND" V 8000 4000 50  0000 R CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	0    1    1    0   
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR056
U 1 1 5CE146CB
P 9800 4000
F 0 "#PWR056" H 9800 3750 50  0001 C CNN
F 1 "GND" V 9700 4000 50  0000 R CNN
F 2 "" H 9800 4000 50  0001 C CNN
F 3 "" H 9800 4000 50  0001 C CNN
	1    9800 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 4000 9900 4000
Wire Wire Line
	8100 4000 8200 4000
Wire Wire Line
	6450 4000 6550 4000
$Comp
L pev_uvw_sw-rescue:SolderJumper_2_Open-Jumper JP3
U 1 1 5CE19458
P 6200 4100
F 0 "JP3" H 6200 4200 50  0000 C CNN
F 1 " " H 6200 4214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6200 4100 50  0001 C CNN
F 3 "~" H 6200 4100 50  0001 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4100 6550 4100
$Comp
L pev_uvw_sw-rescue:SolderJumper_2_Open-Jumper JP4
U 1 1 5CE1CE31
P 7850 4100
F 0 "JP4" H 7850 4200 50  0000 C CNN
F 1 " " H 7850 4214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7850 4100 50  0001 C CNN
F 3 "~" H 7850 4100 50  0001 C CNN
	1    7850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4100 8200 4100
$Comp
L pev_uvw_sw-rescue:SolderJumper_2_Open-Jumper JP5
U 1 1 5CE1E1CE
P 9550 4100
F 0 "JP5" H 9550 4200 50  0000 C CNN
F 1 " " H 9550 4214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9550 4100 50  0001 C CNN
F 3 "~" H 9550 4100 50  0001 C CNN
	1    9550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4100 9900 4100
Wire Wire Line
	5850 4100 6050 4100
Wire Wire Line
	7500 4100 7700 4100
Wire Wire Line
	9300 4100 9400 4100
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR051
U 1 1 5CE224CF
P 5850 4100
F 0 "#PWR051" H 5850 3950 50  0001 C CNN
F 1 "+5V" H 5865 4273 50  0000 C CNN
F 2 "" H 5850 4100 50  0001 C CNN
F 3 "" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR053
U 1 1 5CE22AC3
P 7500 4100
F 0 "#PWR053" H 7500 3950 50  0001 C CNN
F 1 "+5V" H 7515 4273 50  0000 C CNN
F 2 "" H 7500 4100 50  0001 C CNN
F 3 "" H 7500 4100 50  0001 C CNN
	1    7500 4100
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR055
U 1 1 5CE22D8E
P 9300 4100
F 0 "#PWR055" H 9300 3950 50  0001 C CNN
F 1 "+5V" H 9315 4273 50  0000 C CNN
F 2 "" H 9300 4100 50  0001 C CNN
F 3 "" H 9300 4100 50  0001 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4200 6250 4600
Wire Wire Line
	6350 4300 6350 4700
Wire Wire Line
	6450 4400 6450 4800
Wire Wire Line
	6550 4500 6550 4900
Wire Wire Line
	7900 4200 7900 4600
Wire Wire Line
	8000 4300 8000 4700
Wire Wire Line
	8100 4400 8100 4800
Wire Wire Line
	8200 4500 8200 4900
Wire Wire Line
	9600 4200 9600 4600
Wire Wire Line
	9700 4300 9700 4700
Wire Wire Line
	9800 4400 9800 4800
Wire Wire Line
	9900 4500 9900 4900
Wire Wire Line
	6250 4600 7900 4600
Wire Wire Line
	7900 4600 9600 4600
Connection ~ 7900 4600
Wire Wire Line
	6350 4700 8000 4700
Wire Wire Line
	8000 4700 9700 4700
Connection ~ 8000 4700
Wire Wire Line
	6450 4800 8100 4800
Wire Wire Line
	8100 4800 9800 4800
Connection ~ 8100 4800
Wire Wire Line
	6550 4900 8200 4900
Wire Wire Line
	8200 4900 9900 4900
Connection ~ 8200 4900
Wire Wire Line
	6250 4200 6550 4200
Wire Wire Line
	6350 4300 6550 4300
Wire Wire Line
	6450 4400 6550 4400
Wire Wire Line
	7900 4200 8200 4200
Wire Wire Line
	8000 4300 8200 4300
Wire Wire Line
	8100 4400 8200 4400
Wire Wire Line
	9600 4200 9900 4200
Wire Wire Line
	9700 4300 9900 4300
Wire Wire Line
	9800 4400 9900 4400
$Comp
L pev_uvw_sw-rescue:D-Device D5
U 1 1 5CE46548
P 2000 4850
F 0 "D5" V 1950 4750 50  0000 R CNN
F 1 "MBR130LSFT1G" V 2050 4750 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 2000 4850 50  0001 C CNN
F 3 "~" H 2000 4850 50  0001 C CNN
	1    2000 4850
	0    1    1    0   
$EndComp
Text Label 2500 4350 0    50   ~ 0
RY5V
Text Label 3800 4350 0    50   ~ 0
RY5V
Text Label 5100 4350 0    50   ~ 0
RY5V
Text Label 5100 5100 0    50   ~ 0
RYOC
Text Label 3800 5100 0    50   ~ 0
RYOC
Text Label 2500 5100 0    50   ~ 0
RYOC
Text Label 2800 4250 0    50   ~ 0
RYUB
Text Label 3000 4350 0    50   ~ 0
RYUA
Text Label 4100 4250 0    50   ~ 0
RYVB
Text Label 4300 4350 0    50   ~ 0
RYVA
Text Label 5400 4250 0    50   ~ 0
RYWB
Text Label 5600 4350 0    50   ~ 0
RYWA
Text Label 2900 5100 0    50   ~ 0
RYUC
Text Label 4200 5100 0    50   ~ 0
RYVC
Text Label 5500 5100 0    50   ~ 0
RYWC
$Comp
L pev_uvw_sw-rescue:G5LE-1-Relay K1
U 1 1 5CFF7A65
P 2700 4700
F 0 "K1" H 3130 4746 50  0000 L CNN
F 1 "1432870-1" H 3130 4655 50  0000 L CNN
F 2 "MyFootprint:TE_Relay_VCF4-1000_PCB_Socket" H 3150 4650 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 2700 4300 50  0001 C CNN
	1    2700 4700
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:G5LE-1-Relay K2
U 1 1 5CFF8527
P 4000 4700
F 0 "K2" H 4430 4746 50  0000 L CNN
F 1 "1432870-1" H 4430 4655 50  0000 L CNN
F 2 "MyFootprint:TE_Relay_VCF4-1000_PCB_Socket" H 4450 4650 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 4000 4300 50  0001 C CNN
	1    4000 4700
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:G5LE-1-Relay K3
U 1 1 5CFF890A
P 5300 4700
F 0 "K3" H 5730 4746 50  0000 L CNN
F 1 "1432870-1" H 5730 4655 50  0000 L CNN
F 2 "MyFootprint:TE_Relay_VCF4-1000_PCB_Socket" H 5750 4650 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 5300 4300 50  0001 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+24V-power #PWR0112
U 1 1 5D0B3C2E
P 5100 4250
F 0 "#PWR0112" H 5100 4100 50  0001 C CNN
F 1 "+24V" H 5115 4423 50  0000 C CNN
F 2 "" H 5100 4250 50  0001 C CNN
F 3 "" H 5100 4250 50  0001 C CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+24V-power #PWR0113
U 1 1 5D0B411F
P 3800 4250
F 0 "#PWR0113" H 3800 4100 50  0001 C CNN
F 1 "+24V" H 3815 4423 50  0000 C CNN
F 2 "" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0001 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+24V-power #PWR0114
U 1 1 5D0B447A
P 2000 4250
F 0 "#PWR0114" H 2000 4100 50  0001 C CNN
F 1 "+24V" H 2015 4423 50  0000 C CNN
F 2 "" H 2000 4250 50  0001 C CNN
F 3 "" H 2000 4250 50  0001 C CNN
	1    2000 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
