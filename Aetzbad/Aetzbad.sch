EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:relays
LIBS:jzc-11f
LIBS:Aetzbad-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L VCC #PWR01
U 1 1 5A154721
P 7950 3050
F 0 "#PWR01" H 7950 2900 50  0001 C CNN
F 1 "VCC" H 7950 3200 50  0000 C CNN
F 2 "" H 7950 3050 50  0001 C CNN
F 3 "" H 7950 3050 50  0001 C CNN
	1    7950 3050
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5A15478A
P 7600 3450
F 0 "D2" H 7600 3550 50  0000 C CNN
F 1 "D" H 7600 3350 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 7600 3450 50  0001 C CNN
F 3 "" H 7600 3450 50  0001 C CNN
	1    7600 3450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03_MALE J4
U 1 1 5A154823
P 5800 4050
F 0 "J4" H 5800 4325 50  0000 C CNN
F 1 "CONN_01X03_MALE" H 5825 3775 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B03B-EH-A_03x2.50mm_Straight" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04_MALE J3
U 1 1 5A154896
P 4700 4000
F 0 "J3" H 4700 4375 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 4700 3600 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B04B-EH-A_04x2.50mm_Straight" H 4700 4300 50  0001 C CNN
F 3 "" H 4700 4300 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5A1548B5
P 5150 3900
F 0 "#PWR02" H 5150 3750 50  0001 C CNN
F 1 "VCC" H 5150 4050 50  0000 C CNN
F 2 "" H 5150 3900 50  0001 C CNN
F 3 "" H 5150 3900 50  0001 C CNN
	1    5150 3900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A1548CC
P 6350 4050
F 0 "#PWR03" H 6350 3900 50  0001 C CNN
F 1 "VCC" H 6350 4200 50  0000 C CNN
F 2 "" H 6350 4050 50  0001 C CNN
F 3 "" H 6350 4050 50  0001 C CNN
	1    6350 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A1548E1
P 6350 4300
F 0 "#PWR04" H 6350 4050 50  0001 C CNN
F 1 "GND" H 6350 4150 50  0000 C CNN
F 2 "" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A1548FF
P 5150 3700
F 0 "#PWR05" H 5150 3450 50  0001 C CNN
F 1 "GND" H 5150 3550 50  0000 C CNN
F 2 "" H 5150 3700 50  0001 C CNN
F 3 "" H 5150 3700 50  0001 C CNN
	1    5150 3700
	0    -1   -1   0   
$EndComp
$Comp
L BC547 Q1
U 1 1 5A17CEC7
P 7850 4100
F 0 "Q1" H 8050 4175 50  0000 L CNN
F 1 "BC547" H 8050 4100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8050 4025 50  0001 L CIN
F 3 "" H 7850 4100 50  0001 L CNN
	1    7850 4100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A17CF08
P 7450 4100
F 0 "R2" V 7530 4100 50  0000 C CNN
F 1 "R" V 7450 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7380 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4100
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5A17CF5B
P 7400 3650
F 0 "D1" H 7400 3750 50  0000 C CNN
F 1 "LED" H 7400 3550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 7400 3650 50  0001 C CNN
F 3 "" H 7400 3650 50  0001 C CNN
	1    7400 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5A17D0A6
P 7400 3250
F 0 "R1" V 7480 3250 50  0000 C CNN
F 1 "R" V 7400 3250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7330 3250 50  0001 C CNN
F 3 "" H 7400 3250 50  0001 C CNN
	1    7400 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A17D393
P 7950 4400
F 0 "#PWR06" H 7950 4150 50  0001 C CNN
F 1 "GND" H 7950 4250 50  0000 C CNN
F 2 "" H 7950 4400 50  0001 C CNN
F 3 "" H 7950 4400 50  0001 C CNN
	1    7950 4400
	1    0    0    -1  
$EndComp
Text Label 7150 4100 0    60   ~ 0
REL2
Text Label 6350 3850 2    60   ~ 0
Servo1
$Comp
L CONN_01X03 J5
U 1 1 5A17D78D
P 9350 3400
F 0 "J5" H 9350 3600 50  0000 C CNN
F 1 "CONN_01X03" V 9450 3400 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_3pol" H 9350 3400 50  0001 C CNN
F 3 "" H 9350 3400 50  0001 C CNN
	1    9350 3400
	1    0    0    1   
$EndComp
Text Label 5300 4100 2    60   ~ 0
SDA
Text Label 5300 4300 2    60   ~ 0
SCL
$Comp
L CONN_01X04_MALE J2
U 1 1 5A17DABA
P 3600 4000
F 0 "J2" H 3600 4375 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 3600 3600 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B04B-EH-A_04x2.50mm_Straight" H 3600 4300 50  0001 C CNN
F 3 "" H 3600 4300 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5A17DAC0
P 4050 3900
F 0 "#PWR07" H 4050 3750 50  0001 C CNN
F 1 "VCC" H 4050 4050 50  0000 C CNN
F 2 "" H 4050 3900 50  0001 C CNN
F 3 "" H 4050 3900 50  0001 C CNN
	1    4050 3900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5A17DAC6
P 4050 3700
F 0 "#PWR08" H 4050 3450 50  0001 C CNN
F 1 "GND" H 4050 3550 50  0000 C CNN
F 2 "" H 4050 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	0    -1   -1   0   
$EndComp
Text Label 4200 4100 2    60   ~ 0
SDA
Text Label 4200 4300 2    60   ~ 0
SCL
$Comp
L CONN_01X04_MALE J1
U 1 1 5A17DDF2
P 1950 4000
F 0 "J1" H 1950 4375 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 1950 3600 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B04B-EH-A_04x2.50mm_Straight" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3050 7950 3150
Wire Wire Line
	7600 3300 7600 3100
Wire Wire Line
	7400 3100 7950 3100
Connection ~ 7950 3100
Wire Wire Line
	7600 3600 7600 3800
Wire Wire Line
	7400 3800 7950 3800
Wire Wire Line
	7950 3750 7950 3900
Connection ~ 7950 3800
Wire Wire Line
	7400 3400 7400 3500
Connection ~ 7600 3800
Connection ~ 7600 3100
Wire Wire Line
	7600 4100 7650 4100
Wire Wire Line
	7300 4100 7150 4100
Wire Wire Line
	7950 4300 7950 4400
Wire Wire Line
	6100 4250 6350 4250
Wire Wire Line
	6350 4250 6350 4300
Wire Wire Line
	6100 4050 6350 4050
Wire Wire Line
	6100 3850 6350 3850
Wire Wire Line
	8350 3750 8350 3800
Wire Wire Line
	8350 3800 9050 3800
Wire Wire Line
	9050 3800 9050 3500
Wire Wire Line
	9050 3500 9150 3500
Wire Wire Line
	8450 3150 8950 3150
Wire Wire Line
	8950 3150 8950 3400
Wire Wire Line
	8950 3400 9150 3400
Wire Wire Line
	8250 3150 8250 3100
Wire Wire Line
	8250 3100 9000 3100
Wire Wire Line
	9000 3100 9000 3300
Wire Wire Line
	9000 3300 9150 3300
Wire Wire Line
	5000 4300 5300 4300
Wire Wire Line
	5000 4100 5300 4100
Wire Wire Line
	5000 3900 5150 3900
Wire Wire Line
	5150 3700 5000 3700
Wire Wire Line
	3900 4300 4200 4300
Wire Wire Line
	3900 4100 4200 4100
Wire Wire Line
	3900 3900 4050 3900
Wire Wire Line
	4050 3700 3900 3700
Wire Wire Line
	2250 4100 2800 4100
Wire Wire Line
	2250 4300 2800 4300
$Comp
L GND #PWR09
U 1 1 5A17DEFB
P 2700 3700
F 0 "#PWR09" H 2700 3450 50  0001 C CNN
F 1 "GND" H 2700 3550 50  0000 C CNN
F 2 "" H 2700 3700 50  0001 C CNN
F 3 "" H 2700 3700 50  0001 C CNN
	1    2700 3700
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 5A17DF53
P 2700 3900
F 0 "#PWR010" H 2700 3750 50  0001 C CNN
F 1 "VCC" H 2700 4050 50  0000 C CNN
F 2 "" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0001 C CNN
	1    2700 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3700 2250 3700
Wire Wire Line
	2250 3900 2700 3900
Text Label 2800 4100 2    60   ~ 0
Servo1
Text Label 2800 4300 2    60   ~ 0
REL2
$Comp
L JZC-11F RL1
U 1 1 5A17F976
P 8150 3450
F 0 "RL1" H 8600 3600 50  0000 L CNN
F 1 "JZC-11F" H 8600 3500 50  0000 L CNN
F 2 "relay:JZC-11F" H 8150 3450 50  0001 C CNN
F 3 "" H 8150 3450 50  0001 C CNN
	1    8150 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
