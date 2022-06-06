EESchema Schematic File Version 4
LIBS:pev_uvw_sw-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 5
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
L pev_uvw_sw-rescue:MCP16331CH-Regulator_Switching U?
U 1 1 5CD193A2
P 4650 1700
F 0 "U?" H 4650 2067 50  0000 C CNN
F 1 "MCP16331CH" H 4650 1976 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4700 1450 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005308C.pdf" H 3450 2350 50  0001 C CNN
	1    4650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2400 5950 2600
Connection ~ 5950 2400
Wire Wire Line
	5750 2400 5950 2400
Wire Wire Line
	5750 1800 5750 2400
Wire Wire Line
	5050 1800 5750 1800
Wire Wire Line
	5950 2200 5950 2400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD2139A
P 5950 3100
F 0 "#PWR?" H 5950 2850 50  0001 C CNN
F 1 "GND" H 5955 2927 50  0000 C CNN
F 2 "" H 5950 3100 50  0001 C CNN
F 3 "" H 5950 3100 50  0001 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2900 5950 3100
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5CD20624
P 5950 2750
F 0 "R?" H 6020 2796 50  0000 L CNN
F 1 "R" H 6020 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5880 2750 50  0001 C CNN
F 3 "~" H 5950 2750 50  0001 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5CD2027C
P 5950 2050
F 0 "R?" H 6020 2096 50  0000 L CNN
F 1 "R" H 6020 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5880 2050 50  0001 C CNN
F 3 "~" H 5950 2050 50  0001 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
Connection ~ 5950 1700
Wire Wire Line
	5950 1700 5950 1900
Wire Wire Line
	5750 1700 5950 1700
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD1F9A7
P 5250 2400
F 0 "#PWR?" H 5250 2150 50  0001 C CNN
F 1 "GND" H 5255 2227 50  0000 C CNN
F 2 "" H 5250 2400 50  0001 C CNN
F 3 "" H 5250 2400 50  0001 C CNN
	1    5250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2200 5250 2400
Wire Wire Line
	5250 1700 5450 1700
Connection ~ 5250 1700
Wire Wire Line
	5250 1900 5250 1700
$Comp
L pev_uvw_sw-rescue:D_Schottky-Device D?
U 1 1 5CD1E08B
P 5250 2050
F 0 "D?" V 5204 2129 50  0000 L CNN
F 1 "SS14" V 5295 2129 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5250 2050 50  0001 C CNN
F 3 "~" H 5250 2050 50  0001 C CNN
	1    5250 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1700 5250 1700
$Comp
L pev_uvw_sw-rescue:L_Core_Iron-Device L?
U 1 1 5CD19BA3
P 5600 1700
F 0 "L?" V 5825 1700 50  0000 C CNN
F 1 "82462G4223M" V 5734 1700 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 5600 1700 50  0001 C CNN
F 3 "~" H 5600 1700 50  0001 C CNN
	1    5600 1700
	0    -1   -1   0   
$EndComp
$Comp
L pev_uvw_sw-rescue:D-Device D?
U 1 1 5CD22904
P 5600 1000
F 0 "D?" H 5600 1216 50  0000 C CNN
F 1 "1N4148" H 5600 1125 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5600 1000 50  0001 C CNN
F 3 "~" H 5600 1000 50  0001 C CNN
	1    5600 1000
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5CD23D68
P 5250 1350
F 0 "C?" H 5365 1396 50  0000 L CNN
F 1 "100nF" H 5365 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5288 1200 50  0001 C CNN
F 3 "~" H 5250 1350 50  0001 C CNN
	1    5250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1500 5250 1700
Wire Wire Line
	5450 1000 5250 1000
Wire Wire Line
	5250 1000 5250 1200
Wire Wire Line
	5750 1000 5950 1000
Wire Wire Line
	5950 1000 5950 1700
Wire Wire Line
	5250 1000 5050 1000
Wire Wire Line
	5050 1000 5050 1600
Connection ~ 5250 1000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD26956
P 4650 2400
F 0 "#PWR?" H 4650 2150 50  0001 C CNN
F 1 "GND" H 4655 2227 50  0000 C CNN
F 2 "" H 4650 2400 50  0001 C CNN
F 3 "" H 4650 2400 50  0001 C CNN
	1    4650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2400 4650 2000
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5CD273B0
P 6350 2050
F 0 "C?" H 6465 2096 50  0000 L CNN
F 1 "20pF" H 6465 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6388 1900 50  0001 C CNN
F 3 "~" H 6350 2050 50  0001 C CNN
	1    6350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1700 6350 1900
Wire Wire Line
	5950 1700 6350 1700
Connection ~ 6350 1700
Wire Wire Line
	6350 2200 6350 2400
Wire Wire Line
	6350 2400 5950 2400
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5CD2872C
P 6750 2050
F 0 "C?" H 6865 2096 50  0000 L CNN
F 1 "22uF" H 6865 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6788 1900 50  0001 C CNN
F 3 "~" H 6750 2050 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1700 6750 1900
Wire Wire Line
	6350 1700 6750 1700
Wire Wire Line
	6750 2200 6750 2400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD295BE
P 6750 2400
F 0 "#PWR?" H 6750 2150 50  0001 C CNN
F 1 "GND" H 6755 2227 50  0000 C CNN
F 2 "" H 6750 2400 50  0001 C CNN
F 3 "" H 6750 2400 50  0001 C CNN
	1    6750 2400
	1    0    0    -1  
$EndComp
Connection ~ 6750 1700
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5CD2B02B
P 3700 1700
F 0 "R?" V 3800 1700 50  0000 C CNN
F 1 "100K" V 3700 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3630 1700 50  0001 C CNN
F 3 "~" H 3700 1700 50  0001 C CNN
	1    3700 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 1700 4050 1700
Wire Wire Line
	3350 1700 3550 1700
Wire Wire Line
	4250 1600 3350 1600
Wire Wire Line
	3350 1700 3350 1600
Connection ~ 3350 1600
Wire Wire Line
	3350 1600 3150 1600
Wire Wire Line
	4050 1700 4050 1900
Connection ~ 4050 1700
Wire Wire Line
	4050 1700 4250 1700
$Comp
L pev_uvw_sw-rescue:SolderJumper_2_Open-Jumper JP?
U 1 1 5CD2E0D9
P 4050 2050
F 0 "JP?" V 4004 2118 50  0000 L CNN
F 1 "SolderJumper" V 4095 2118 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4050 2050 50  0001 C CNN
F 3 "~" H 4050 2050 50  0001 C CNN
	1    4050 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2200 4050 2400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD2F241
P 4050 2400
F 0 "#PWR?" H 4050 2150 50  0001 C CNN
F 1 "GND" H 4055 2227 50  0000 C CNN
F 2 "" H 4050 2400 50  0001 C CNN
F 3 "" H 4050 2400 50  0001 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5CD2F84B
P 3350 2050
F 0 "C?" H 3465 2096 50  0000 L CNN
F 1 "10uF" H 3465 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 3388 1900 50  0001 C CNN
F 3 "~" H 3350 2050 50  0001 C CNN
	1    3350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1700 3350 1900
Connection ~ 3350 1700
Wire Wire Line
	3350 2200 3350 2400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD3131A
P 3350 2400
F 0 "#PWR?" H 3350 2150 50  0001 C CNN
F 1 "GND" H 3355 2227 50  0000 C CNN
F 2 "" H 3350 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0001 C CNN
	1    3350 2400
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+BATT-power #PWR?
U 1 1 5CD31A8D
P 3150 1600
F 0 "#PWR?" H 3150 1450 50  0001 C CNN
F 1 "+BATT" H 3165 1773 50  0000 C CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5CD33FE3
P 7150 2050
F 0 "C?" H 7265 2096 50  0000 L CNN
F 1 "22uF" H 7265 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7188 1900 50  0001 C CNN
F 3 "~" H 7150 2050 50  0001 C CNN
	1    7150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1700 7150 1900
Wire Wire Line
	7150 2200 7150 2400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5CD33FEB
P 7150 2400
F 0 "#PWR?" H 7150 2150 50  0001 C CNN
F 1 "GND" H 7155 2227 50  0000 C CNN
F 2 "" H 7150 2400 50  0001 C CNN
F 3 "" H 7150 2400 50  0001 C CNN
	1    7150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1700 7150 1700
Wire Wire Line
	7150 1700 7350 1700
Connection ~ 7150 1700
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR?
U 1 1 5CD39E51
P 7350 1700
F 0 "#PWR?" H 7350 1550 50  0001 C CNN
F 1 "+5V" H 7365 1873 50  0000 C CNN
F 2 "" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:SolderJumper_2_Open-Jumper JP?
U 1 1 5CF4F3A1
P 7650 3000
F 0 "JP?" H 7650 3205 50  0000 C CNN
F 1 "SolderJumper" H 7650 3114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7650 3000 50  0001 C CNN
F 3 "~" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR?
U 1 1 5CF5059C
P 8000 3000
F 0 "#PWR?" H 8000 2850 50  0001 C CNN
F 1 "+5V" H 8015 3173 50  0000 C CNN
F 2 "" H 8000 3000 50  0001 C CNN
F 3 "" H 8000 3000 50  0001 C CNN
	1    8000 3000
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+BATT-power #PWR?
U 1 1 5CF50BC8
P 7300 3000
F 0 "#PWR?" H 7300 2850 50  0001 C CNN
F 1 "+BATT" H 7315 3173 50  0000 C CNN
F 2 "" H 7300 3000 50  0001 C CNN
F 3 "" H 7300 3000 50  0001 C CNN
	1    7300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3000 7500 3000
Wire Wire Line
	7800 3000 8000 3000
$Comp
L pev_uvw_sw-rescue:MC33063AD U?
U 1 1 5D04137A
P 4850 4750
F 0 "U?" H 4850 4800 50  0000 C CNN
F 1 "MC33063AD" H 4850 4700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4800 4300 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 5300 4800 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5D041DBC
P 4200 4400
F 0 "R?" V 4100 4400 50  0000 C CNN
F 1 "180R" V 4200 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4130 4400 50  0001 C CNN
F 3 "~" H 4200 4400 50  0001 C CNN
	1    4200 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4400 4450 4400
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5D043323
P 3950 4750
F 0 "R?" H 4020 4796 50  0000 L CNN
F 1 "0R12" H 4020 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3880 4750 50  0001 C CNN
F 3 "~" H 3950 4750 50  0001 C CNN
	1    3950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4900 3950 5000
Wire Wire Line
	3950 5000 4450 5000
Wire Wire Line
	4450 4500 3950 4500
Wire Wire Line
	3950 4500 3950 4600
Wire Wire Line
	4050 4400 3950 4400
Wire Wire Line
	3950 4400 3950 4500
Connection ~ 3950 4500
$Comp
L pev_uvw_sw-rescue:L_Core_Iron-Device L?
U 1 1 5D0466C1
P 4850 4150
F 0 "L?" V 5075 4150 50  0000 C CNN
F 1 "SRN6045TA-220M" V 4984 4150 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRN6045TA" H 4850 4150 50  0001 C CNN
F 3 "~" H 4850 4150 50  0001 C CNN
	1    4850 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 4150 3950 4150
Wire Wire Line
	3950 4150 3950 4400
Connection ~ 3950 4400
$Comp
L pev_uvw_sw-rescue:D_Schottky-Device D?
U 1 1 5D04C7A9
P 6600 4150
F 0 "D?" H 6600 3934 50  0000 C CNN
F 1 "SS14" H 6600 4025 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 6600 4150 50  0001 C CNN
F 3 "~" H 6600 4150 50  0001 C CNN
	1    6600 4150
	-1   0    0    1   
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5D06497A
P 5350 4850
F 0 "C?" H 5235 4804 50  0000 R CNN
F 1 "330pF" H 5235 4895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5388 4700 50  0001 C CNN
F 3 "~" H 5350 4850 50  0001 C CNN
	1    5350 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 4150 5450 4150
Wire Wire Line
	5250 4600 5350 4600
Wire Wire Line
	5350 4600 5350 4700
Wire Wire Line
	5350 5000 5350 5100
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D06AFC5
P 5350 5200
F 0 "#PWR?" H 5350 4950 50  0001 C CNN
F 1 "GND" H 5355 5027 50  0000 C CNN
F 2 "" H 5350 5200 50  0001 C CNN
F 3 "" H 5350 5200 50  0001 C CNN
	1    5350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5100 5250 5100
Connection ~ 5350 5100
Wire Wire Line
	5350 5100 5350 5200
Wire Wire Line
	5250 4400 5450 4400
Wire Wire Line
	5450 4400 5450 4150
Wire Wire Line
	6950 4150 6750 4150
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5D074525
P 6950 4500
F 0 "R?" H 7020 4546 50  0000 L CNN
F 1 "20K" H 7020 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6880 4500 50  0001 C CNN
F 3 "~" H 6950 4500 50  0001 C CNN
	1    6950 4500
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5D074D83
P 6950 5000
F 0 "R?" H 7020 5046 50  0000 L CNN
F 1 "1K1" H 7020 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6880 5000 50  0001 C CNN
F 3 "~" H 6950 5000 50  0001 C CNN
	1    6950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5200 6950 5150
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D07723A
P 6950 5200
F 0 "#PWR?" H 6950 4950 50  0001 C CNN
F 1 "GND" H 6955 5027 50  0000 C CNN
F 2 "" H 6950 5200 50  0001 C CNN
F 3 "" H 6950 5200 50  0001 C CNN
	1    6950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4150 6950 4350
Connection ~ 6950 4150
$Comp
L pev_uvw_sw-rescue:CP-Device C?
U 1 1 5D07C628
P 7450 4750
F 0 "C?" H 7568 4796 50  0000 L CNN
F 1 "47uF" H 7568 4705 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-43_Kemet-X" H 7488 4600 50  0001 C CNN
F 3 "~" H 7450 4750 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5D07D2F9
P 8450 4750
F 0 "C?" H 8565 4796 50  0000 L CNN
F 1 "1uF" H 8565 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8488 4600 50  0001 C CNN
F 3 "~" H 8450 4750 50  0001 C CNN
	1    8450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4150 7450 4150
Wire Wire Line
	8450 4600 8450 4150
Connection ~ 8450 4150
Wire Wire Line
	8450 4150 8650 4150
Wire Wire Line
	7450 4600 7450 4150
Connection ~ 7450 4150
Wire Wire Line
	7450 4150 7950 4150
Wire Wire Line
	7450 4900 7450 5200
Wire Wire Line
	8450 5200 8450 4900
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D08501F
P 7450 5200
F 0 "#PWR?" H 7450 4950 50  0001 C CNN
F 1 "GND" H 7455 5027 50  0000 C CNN
F 2 "" H 7450 5200 50  0001 C CNN
F 3 "" H 7450 5200 50  0001 C CNN
	1    7450 5200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D085258
P 8450 5200
F 0 "#PWR?" H 8450 4950 50  0001 C CNN
F 1 "GND" H 8455 5027 50  0000 C CNN
F 2 "" H 8450 5200 50  0001 C CNN
F 3 "" H 8450 5200 50  0001 C CNN
	1    8450 5200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:C-Device C?
U 1 1 5D087239
P 3950 5250
F 0 "C?" H 4065 5296 50  0000 L CNN
F 1 "1uF" H 4065 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3988 5100 50  0001 C CNN
F 3 "~" H 3950 5250 50  0001 C CNN
	1    3950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5100 3950 5000
Connection ~ 3950 5000
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D089378
P 3950 5500
F 0 "#PWR?" H 3950 5250 50  0001 C CNN
F 1 "GND" H 3955 5327 50  0000 C CNN
F 2 "" H 3950 5500 50  0001 C CNN
F 3 "" H 3950 5500 50  0001 C CNN
	1    3950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5500 3950 5400
$Comp
L pev_uvw_sw-rescue:CP-Device C?
U 1 1 5D08B18F
P 3450 5250
F 0 "C?" H 3568 5296 50  0000 L CNN
F 1 "100uF" H 3568 5205 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-28_Kemet-C" H 3488 5100 50  0001 C CNN
F 3 "~" H 3450 5250 50  0001 C CNN
	1    3450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5000 3450 5000
Wire Wire Line
	3450 5100 3450 5000
Connection ~ 3450 5000
Wire Wire Line
	3450 5000 3150 5000
Wire Wire Line
	3450 5500 3450 5400
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D09100D
P 3450 5500
F 0 "#PWR?" H 3450 5250 50  0001 C CNN
F 1 "GND" H 3455 5327 50  0000 C CNN
F 2 "" H 3450 5500 50  0001 C CNN
F 3 "" H 3450 5500 50  0001 C CNN
	1    3450 5500
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR?
U 1 1 5D091A4B
P 3150 5000
F 0 "#PWR?" H 3150 4850 50  0001 C CNN
F 1 "+5V" H 3165 5173 50  0000 C CNN
F 2 "" H 3150 5000 50  0001 C CNN
F 3 "" H 3150 5000 50  0001 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:+24V-power #PWR?
U 1 1 5D095655
P 8650 4150
F 0 "#PWR?" H 8650 4000 50  0001 C CNN
F 1 "+24V" H 8665 4323 50  0000 C CNN
F 2 "" H 8650 4150 50  0001 C CNN
F 3 "" H 8650 4150 50  0001 C CNN
	1    8650 4150
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5D0C16BB
P 6750 1500
F 0 "TP?" H 6808 1618 50  0000 L CNN
F 1 "5V_BUCK" H 6808 1527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6950 1500 50  0001 C CNN
F 3 "~" H 6950 1500 50  0001 C CNN
	1    6750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1500 6750 1700
$Comp
L pev_uvw_sw-rescue:TestPoint_Alt-Connector TP?
U 1 1 5D0C426C
P 7450 3950
F 0 "TP?" H 7508 4068 50  0000 L CNN
F 1 "24V" H 7508 3977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7650 3950 50  0001 C CNN
F 3 "~" H 7650 3950 50  0001 C CNN
	1    7450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3950 7450 4150
$Comp
L pev_uvw_sw-rescue:CP-Device C?
U 1 1 5D0D4634
P 7950 4750
F 0 "C?" H 8068 4796 50  0000 L CNN
F 1 "47uF" H 8068 4705 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-43_Kemet-X" H 7988 4600 50  0001 C CNN
F 3 "~" H 7950 4750 50  0001 C CNN
	1    7950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4600 7950 4150
Connection ~ 7950 4150
Wire Wire Line
	7950 4150 8450 4150
Wire Wire Line
	7950 4900 7950 5200
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D0D94C0
P 7950 5200
F 0 "#PWR?" H 7950 4950 50  0001 C CNN
F 1 "GND" H 7955 5027 50  0000 C CNN
F 2 "" H 7950 5200 50  0001 C CNN
F 3 "" H 7950 5200 50  0001 C CNN
	1    7950 5200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:Conn_01x02-Connector_Generic J?
U 1 1 5D110C04
P 8700 2000
F 0 "J?" H 8780 1992 50  0000 L CNN
F 1 "5V_EXT" H 8780 1901 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 8700 2000 50  0001 C CNN
F 3 "~" H 8700 2000 50  0001 C CNN
	1    8700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2000 8500 1700
Wire Wire Line
	8500 2100 8500 2400
$Comp
L pev_uvw_sw-rescue:+5V-power #PWR?
U 1 1 5D1164C7
P 8500 1700
F 0 "#PWR?" H 8500 1550 50  0001 C CNN
F 1 "+5V" H 8515 1873 50  0000 C CNN
F 2 "" H 8500 1700 50  0001 C CNN
F 3 "" H 8500 1700 50  0001 C CNN
	1    8500 1700
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D116C3A
P 8500 2400
F 0 "#PWR?" H 8500 2150 50  0001 C CNN
F 1 "GND" H 8505 2227 50  0000 C CNN
F 2 "" H 8500 2400 50  0001 C CNN
F 3 "" H 8500 2400 50  0001 C CNN
	1    8500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4650 6950 4750
$Comp
L pev_uvw_sw-rescue:Q_NPN_BCE-Device Q?
U 1 1 5D148020
P 6150 4500
F 0 "Q?" H 6340 4546 50  0000 L CNN
F 1 "NZT560A" H 6340 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6350 4600 50  0001 C CNN
F 3 "~" H 6150 4500 50  0001 C CNN
	1    6150 4500
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:R-Device R?
U 1 1 5D14BD3D
P 5850 4750
F 0 "R?" H 5920 4796 50  0000 L CNN
F 1 "3K6" H 5920 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 4750 50  0001 C CNN
F 3 "~" H 5850 4750 50  0001 C CNN
	1    5850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4500 5850 4500
Wire Wire Line
	5850 4600 5850 4500
Connection ~ 5850 4500
Wire Wire Line
	5850 4500 5950 4500
Wire Wire Line
	5850 4900 5850 5200
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D1572BA
P 5850 5200
F 0 "#PWR?" H 5850 4950 50  0001 C CNN
F 1 "GND" H 5855 5027 50  0000 C CNN
F 2 "" H 5850 5200 50  0001 C CNN
F 3 "" H 5850 5200 50  0001 C CNN
	1    5850 5200
	1    0    0    -1  
$EndComp
$Comp
L pev_uvw_sw-rescue:GND-power #PWR?
U 1 1 5D157A33
P 6250 5200
F 0 "#PWR?" H 6250 4950 50  0001 C CNN
F 1 "GND" H 6255 5027 50  0000 C CNN
F 2 "" H 6250 5200 50  0001 C CNN
F 3 "" H 6250 5200 50  0001 C CNN
	1    6250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5200 6250 4700
Wire Wire Line
	5450 4150 6250 4150
Wire Wire Line
	6250 4150 6250 4300
Connection ~ 5450 4150
Wire Wire Line
	6450 4150 6250 4150
Connection ~ 6250 4150
Wire Wire Line
	4450 5100 4350 5100
Wire Wire Line
	4350 5100 4350 5500
Wire Wire Line
	4350 5500 6600 5500
Wire Wire Line
	6600 5500 6600 4750
Wire Wire Line
	6600 4750 6950 4750
Connection ~ 6950 4750
Wire Wire Line
	6950 4750 6950 4850
Text Notes 4050 4900 0    50   ~ 0
KRL1632E-M-R120-F-T5
$EndSCHEMATC
