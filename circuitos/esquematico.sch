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
LIBS:special
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
LIBS:esquematico-cache
EELAYER 27 0
EELAYER END
$Descr User 9843 5906
encoding utf-8
Sheet 1 1
Title ""
Date "30 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM358 U2
U 1 1 5588AD34
P 6800 4050
F 0 "U2" H 6750 4250 60  0000 L CNN
F 1 "LM358" H 6750 3800 60  0000 L CNN
F 2 "" H 6800 4050 60  0000 C CNN
F 3 "" H 6800 4050 60  0000 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
$Comp
L AT90S4433-P IC?
U 1 1 5588ADF0
P 2600 2250
F 0 "IC?" H 1800 3550 40  0001 L BNN
F 1 "AT90S4433-P" H 3000 1000 40  0001 L BNN
F 2 "ATMEGA8/L" H 2600 2250 30  0000 C CIN
F 3 "" H 2600 2250 60  0000 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
$Comp
L NPN Q?
U 1 1 5588B00D
P 6300 1550
F 0 "Q?" H 6300 1400 50  0001 R CNN
F 1 "TIP31C" H 6300 1700 50  0000 R CNN
F 2 "~" H 6300 1550 60  0000 C CNN
F 3 "~" H 6300 1550 60  0000 C CNN
	1    6300 1550
	1    0    0    -1  
$EndComp
$Comp
L LM358 U1
U 1 1 5588B0EE
P 5600 1550
F 0 "U1" H 5550 1750 60  0000 L CNN
F 1 "LM358" H 5550 1300 60  0000 L CNN
F 2 "" H 5600 1550 60  0000 C CNN
F 3 "" H 5600 1550 60  0000 C CNN
	1    5600 1550
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U?
U 1 1 5588B130
P 7450 950
F 0 "U?" H 7600 754 60  0001 C CNN
F 1 "LM7805" H 7450 1150 60  0000 C CNN
F 2 "" H 7450 950 60  0000 C CNN
F 3 "" H 7450 950 60  0000 C CNN
	1    7450 950 
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 5588B179
P 1350 1150
F 0 "JP1" H 1350 1300 60  0000 C CNN
F 1 "JUMPER" H 1350 1070 40  0000 C CNN
F 2 "~" H 1350 1150 60  0000 C CNN
F 3 "~" H 1350 1150 60  0000 C CNN
	1    1350 1150
	1    0    0    -1  
$EndComp
$Comp
L DUAL_SWITCH_INV SW?
U 1 1 5588B199
P 4400 850
F 0 "SW?" H 4200 1000 50  0001 C CNN
F 1 "SELECCIONAR MODO" H 4250 700 50  0000 C CNN
F 2 "~" H 4400 850 60  0000 C CNN
F 3 "~" H 4400 850 60  0000 C CNN
	1    4400 850 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588B1F3
P 7050 900
F 0 "#PWR?" H 7050 850 20  0001 C CNN
F 1 "+12V" H 7050 1000 30  0000 C CNN
F 2 "" H 7050 900 60  0000 C CNN
F 3 "" H 7050 900 60  0000 C CNN
	1    7050 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B202
P 7450 1200
F 0 "#PWR?" H 7450 1200 30  0001 C CNN
F 1 "GND" H 7450 1130 30  0001 C CNN
F 2 "" H 7450 1200 60  0000 C CNN
F 3 "" H 7450 1200 60  0000 C CNN
	1    7450 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B247
P 4450 800
F 0 "#PWR?" H 4450 800 30  0001 C CNN
F 1 "GND" H 4450 730 30  0001 C CNN
F 2 "" H 4450 800 60  0000 C CNN
F 3 "" H 4450 800 60  0000 C CNN
	1    4450 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B256
P 2600 3550
F 0 "#PWR?" H 2600 3550 30  0001 C CNN
F 1 "GND" H 2600 3480 30  0001 C CNN
F 2 "" H 2600 3550 60  0000 C CNN
F 3 "" H 2600 3550 60  0000 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K?
U 1 1 5588B2EC
P 3750 4500
F 0 "K?" V 3700 4500 50  0001 C CNN
F 1 "UART" V 3800 4500 40  0000 C CNN
F 2 "" H 3750 4500 60  0000 C CNN
F 3 "" H 3750 4500 60  0000 C CNN
	1    3750 4500
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P?
U 1 1 5588B342
P 9050 2800
F 0 "P?" V 9000 2800 40  0001 C CNN
F 1 "PELTIER" V 9100 2800 40  0000 C CNN
F 2 "" H 9050 2800 60  0000 C CNN
F 3 "" H 9050 2800 60  0000 C CNN
	1    9050 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B3D8
P 4900 1050
F 0 "#PWR?" H 4900 1050 30  0001 C CNN
F 1 "GND" H 4900 980 30  0001 C CNN
F 2 "" H 4900 1050 60  0000 C CNN
F 3 "" H 4900 1050 60  0000 C CNN
	1    4900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 950  4900 1050
$Comp
L GND #PWR?
U 1 1 5588B43C
P 4400 1850
F 0 "#PWR?" H 4400 1850 30  0001 C CNN
F 1 "GND" H 4400 1780 30  0001 C CNN
F 2 "" H 4400 1850 60  0000 C CNN
F 3 "" H 4400 1850 60  0000 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B44B
P 3400 4400
F 0 "#PWR?" H 3400 4400 30  0001 C CNN
F 1 "GND" H 3400 4330 30  0001 C CNN
F 2 "" H 3400 4400 60  0000 C CNN
F 3 "" H 3400 4400 60  0000 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH1
U 1 1 5588B45A
P 1150 4750
F 0 "TH1" V 1250 4800 50  0000 C CNN
F 1 "THERMISTOR 10k" V 1050 4750 50  0000 C CNN
F 2 "~" H 1150 4750 60  0000 C CNN
F 3 "~" H 1150 4750 60  0000 C CNN
	1    1150 4750
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH2
U 1 1 5588B467
P 2050 4750
F 0 "TH2" V 2150 4800 50  0000 C CNN
F 1 "THERMISTOR 10k" V 1950 4750 50  0000 C CNN
F 2 "~" H 2050 4750 60  0000 C CNN
F 3 "~" H 2050 4750 60  0000 C CNN
	1    2050 4750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5588B46F
P 1150 3850
F 0 "R4" V 1230 3850 40  0000 C CNN
F 1 "22k" V 1157 3851 40  0000 C CNN
F 2 "~" V 1080 3850 30  0000 C CNN
F 3 "~" H 1150 3850 30  0000 C CNN
	1    1150 3850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5588B47E
P 2050 3850
F 0 "R5" V 2130 3850 40  0000 C CNN
F 1 "22k" V 2057 3851 40  0000 C CNN
F 2 "~" V 1980 3850 30  0000 C CNN
F 3 "~" H 2050 3850 30  0000 C CNN
	1    2050 3850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5588B48D
P 4150 1450
F 0 "R1" V 4230 1450 40  0000 C CNN
F 1 "4.7k" V 4157 1451 40  0000 C CNN
F 2 "~" V 4080 1450 30  0000 C CNN
F 3 "~" H 4150 1450 30  0000 C CNN
	1    4150 1450
	0    -1   1    0   
$EndComp
$Comp
L C C1
U 1 1 5588B49C
P 4400 1650
F 0 "C1" H 4400 1750 40  0000 L CNN
F 1 "10u" H 4406 1565 40  0000 L CNN
F 2 "~" H 4438 1500 30  0000 C CNN
F 3 "~" H 4400 1650 60  0000 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1450 5100 1450
$Comp
L +12V #PWR?
U 1 1 5588B537
P 5500 1150
F 0 "#PWR?" H 5500 1100 20  0001 C CNN
F 1 "+12V" H 5500 1250 30  0000 C CNN
F 2 "" H 5500 1150 60  0000 C CNN
F 3 "" H 5500 1150 60  0000 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B546
P 5500 1950
F 0 "#PWR?" H 5500 1950 30  0001 C CNN
F 1 "GND" H 5500 1880 30  0001 C CNN
F 2 "" H 5500 1950 60  0000 C CNN
F 3 "" H 5500 1950 60  0000 C CNN
	1    5500 1950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588B555
P 6400 1150
F 0 "#PWR?" H 6400 1100 20  0001 C CNN
F 1 "+12V" H 6400 1250 30  0000 C CNN
F 2 "" H 6400 1150 60  0000 C CNN
F 3 "" H 6400 1150 60  0000 C CNN
	1    6400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1150 6400 1350
Wire Wire Line
	3550 1450 3900 1450
$Comp
L GND #PWR?
U 1 1 5588B61A
P 7600 3550
F 0 "#PWR?" H 7600 3550 30  0001 C CNN
F 1 "GND" H 7600 3480 30  0001 C CNN
F 2 "" H 7600 3550 60  0000 C CNN
F 3 "" H 7600 3550 60  0000 C CNN
	1    7600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3000 8450 2600
Wire Wire Line
	6400 1750 6400 2500
Wire Wire Line
	6400 2500 6750 2500
$Comp
L GND #PWR?
U 1 1 5588BBA5
P 5350 4850
F 0 "#PWR?" H 5350 4850 30  0001 C CNN
F 1 "GND" H 5350 4780 30  0001 C CNN
F 2 "" H 5350 4850 60  0000 C CNN
F 3 "" H 5350 4850 60  0000 C CNN
	1    5350 4850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588BC97
P 6700 3650
F 0 "#PWR?" H 6700 3600 20  0001 C CNN
F 1 "+12V" H 6700 3750 30  0000 C CNN
F 2 "" H 6700 3650 60  0000 C CNN
F 3 "" H 6700 3650 60  0000 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588BCA6
P 6700 4450
F 0 "#PWR?" H 6700 4450 30  0001 C CNN
F 1 "GND" H 6700 4380 30  0001 C CNN
F 2 "" H 6700 4450 60  0000 C CNN
F 3 "" H 6700 4450 60  0000 C CNN
	1    6700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3950 6300 3950
$Comp
L R R2
U 1 1 5588BD43
P 7300 4350
F 0 "R2" V 7380 4350 40  0000 C CNN
F 1 "4.7k" V 7307 4351 40  0000 C CNN
F 2 "~" V 7230 4350 30  0000 C CNN
F 3 "~" H 7300 4350 30  0000 C CNN
	1    7300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4650 7300 4650
Wire Wire Line
	6300 4150 6300 4650
$Comp
L R R3
U 1 1 5588BD8D
P 7300 4950
F 0 "R3" V 7380 4950 40  0000 C CNN
F 1 "1k" V 7307 4951 40  0000 C CNN
F 2 "~" V 7230 4950 30  0000 C CNN
F 3 "~" H 7300 4950 30  0000 C CNN
	1    7300 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588BD9C
P 7300 5200
F 0 "#PWR?" H 7300 5200 30  0001 C CNN
F 1 "GND" H 7300 5130 30  0001 C CNN
F 2 "" H 7300 5200 60  0000 C CNN
F 3 "" H 7300 5200 60  0000 C CNN
	1    7300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4500 1150 4100
Wire Wire Line
	2050 4100 2050 4500
$Comp
L GND #PWR?
U 1 1 5588BEE2
P 2050 5000
F 0 "#PWR?" H 2050 5000 30  0001 C CNN
F 1 "GND" H 2050 4930 30  0001 C CNN
F 2 "" H 2050 5000 60  0000 C CNN
F 3 "" H 2050 5000 60  0000 C CNN
	1    2050 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588BEF1
P 1150 5000
F 0 "#PWR?" H 1150 5000 30  0001 C CNN
F 1 "GND" H 1150 4930 30  0001 C CNN
F 2 "" H 1150 5000 60  0000 C CNN
F 3 "" H 1150 5000 60  0000 C CNN
	1    1150 5000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5588C0B0
P 5700 2800
F 0 "C2" H 5700 2900 40  0000 L CNN
F 1 "0.1u" H 5706 2715 40  0000 L CNN
F 2 "~" H 5738 2650 30  0000 C CNN
F 3 "~" H 5700 2800 60  0000 C CNN
	1    5700 2800
	1    0    0    1   
$EndComp
$Comp
L C C3
U 1 1 5588C0C4
P 7150 1850
F 0 "C3" H 7150 1950 40  0000 L CNN
F 1 "0.1u" H 7156 1765 40  0000 L CNN
F 2 "~" H 7188 1700 30  0000 C CNN
F 3 "~" H 7150 1850 60  0000 C CNN
	1    7150 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1850 6950 1850
Connection ~ 6400 1850
$Comp
L GND #PWR?
U 1 1 5588C172
P 7350 2000
F 0 "#PWR?" H 7350 2000 30  0001 C CNN
F 1 "GND" H 7350 1930 30  0001 C CNN
F 2 "" H 7350 2000 60  0000 C CNN
F 3 "" H 7350 2000 60  0000 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588C181
P 5700 3000
F 0 "#PWR?" H 5700 3000 30  0001 C CNN
F 1 "GND" H 5700 2930 30  0001 C CNN
F 2 "" H 5700 3000 60  0000 C CNN
F 3 "" H 5700 3000 60  0000 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1850 7350 2000
Wire Wire Line
	5100 1650 5100 2100
Wire Wire Line
	5100 2100 6400 2100
Connection ~ 6400 2100
$Comp
L L298D U?
U 1 1 5588AF85
P 7600 2800
F 0 "U?" H 7600 2800 60  0001 C CNN
F 1 "L298D" H 7600 2900 60  0000 C CNN
F 2 "Multiwatt15-V" H 7800 3400 60  0001 C CNN
F 3 "" H 7600 2800 60  0000 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5590A6A8
P 1150 1650
F 0 "C5" H 1150 1750 40  0000 L CNN
F 1 "0.1u" H 1156 1565 40  0000 L CNN
F 2 "~" H 1188 1500 30  0000 C CNN
F 3 "~" H 1150 1650 60  0000 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5590A6B7
P 800 1650
F 0 "C4" H 800 1750 40  0000 L CNN
F 1 "0.1u" H 806 1565 40  0000 L CNN
F 2 "~" H 838 1500 30  0000 C CNN
F 3 "~" H 800 1650 60  0000 C CNN
	1    800  1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5590A6C6
P 1150 1950
F 0 "#PWR?" H 1150 1950 30  0001 C CNN
F 1 "GND" H 1150 1880 30  0001 C CNN
F 2 "" H 1150 1950 60  0000 C CNN
F 3 "" H 1150 1950 60  0000 C CNN
	1    1150 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5590A6D5
P 1500 1950
F 0 "#PWR?" H 1500 1950 30  0001 C CNN
F 1 "GND" H 1500 1880 30  0001 C CNN
F 2 "" H 1500 1950 60  0000 C CNN
F 3 "" H 1500 1950 60  0000 C CNN
	1    1500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1850 1150 1950
Wire Wire Line
	1500 1950 1500 1550
$Comp
L GND #PWR?
U 1 1 5590A977
P 800 1950
F 0 "#PWR?" H 800 1950 30  0001 C CNN
F 1 "GND" H 800 1880 30  0001 C CNN
F 2 "" H 800 1950 60  0000 C CNN
F 3 "" H 800 1950 60  0000 C CNN
	1    800  1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3600 1150 3550
Wire Wire Line
	1150 3550 2050 3550
$Comp
L R R_Shunt
U 1 1 5590A9EB
P 5350 4500
F 0 "R_Shunt" V 5430 4500 40  0000 C CNN
F 1 "0.25" V 5357 4501 40  0000 C CNN
F 2 "~" V 5280 4500 30  0000 C CNN
F 3 "~" H 5350 4500 30  0000 C CNN
	1    5350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4750 5350 4850
Wire Wire Line
	7300 4600 7300 4700
Connection ~ 7300 4650
Connection ~ 7300 4050
$Comp
L VCC #PWR?
U 1 1 5590ADBF
P 7850 900
F 0 "#PWR?" H 7850 1000 30  0001 C CNN
F 1 "VCC" H 7850 1000 30  0000 C CNN
F 2 "" H 7850 900 60  0000 C CNN
F 3 "" H 7850 900 60  0000 C CNN
	1    7850 900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5590AE36
P 2600 850
F 0 "#PWR?" H 2600 950 30  0001 C CNN
F 1 "VCC" H 2600 950 30  0000 C CNN
F 2 "" H 2600 850 60  0000 C CNN
F 3 "" H 2600 850 60  0000 C CNN
	1    2600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1550 1650 1550
Wire Wire Line
	1150 1450 1650 1450
Wire Wire Line
	800  1100 800  1450
Wire Wire Line
	800  1850 800  1950
Connection ~ 800  1350
$Comp
L VCC #PWR?
U 1 1 5590B0B9
P 800 1100
F 0 "#PWR?" H 800 1200 30  0001 C CNN
F 1 "VCC" H 800 1200 30  0000 C CNN
F 2 "" H 800 1100 60  0000 C CNN
F 3 "" H 800 1100 60  0000 C CNN
	1    800  1100
	1    0    0    -1  
$EndComp
Connection ~ 800  1150
Wire Wire Line
	3550 1150 3550 850 
Wire Wire Line
	3550 850  3900 850 
$Comp
L VCC #PWR?
U 1 1 5590B1EB
P 5050 750
F 0 "#PWR?" H 5050 850 30  0001 C CNN
F 1 "VCC" H 5050 850 30  0000 C CNN
F 2 "" H 5050 750 60  0000 C CNN
F 3 "" H 5050 750 60  0000 C CNN
	1    5050 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3550 2050 3600
Wire Wire Line
	3850 4150 3850 2550
Wire Wire Line
	3850 2550 3550 2550
Wire Wire Line
	3550 2650 3750 2650
Wire Wire Line
	3750 2650 3750 4150
Wire Wire Line
	3650 4150 3400 4150
Wire Wire Line
	3400 4150 3400 4400
Wire Wire Line
	8450 2500 8550 2500
Wire Wire Line
	8450 3100 8550 3100
Wire Wire Line
	8550 3100 8550 2500
Wire Wire Line
	8700 2700 8450 2700
Connection ~ 8450 2700
Wire Wire Line
	8700 2900 8550 2900
Connection ~ 8550 2900
$Comp
L VCC #PWR?
U 1 1 5590B74A
P 6550 3400
F 0 "#PWR?" H 6550 3500 30  0001 C CNN
F 1 "VCC" H 6550 3500 30  0000 C CNN
F 2 "" H 6550 3400 60  0000 C CNN
F 3 "" H 6550 3400 60  0000 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5590B7B4
P 5700 2550
F 0 "#PWR?" H 5700 2650 30  0001 C CNN
F 1 "VCC" H 5700 2650 30  0000 C CNN
F 2 "" H 5700 2550 60  0000 C CNN
F 3 "" H 5700 2550 60  0000 C CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2600 5700 2550
Connection ~ 5700 2600
Wire Wire Line
	6750 3000 6450 3000
Wire Wire Line
	6550 3000 6550 2800
Wire Wire Line
	6550 2800 6750 2800
Connection ~ 6550 3000
Wire Wire Line
	6750 2900 6650 2900
Wire Wire Line
	6650 2900 6650 3400
Connection ~ 6650 3200
$Comp
L VCC #PWR?
U 1 1 5590BE98
P 1550 3500
F 0 "#PWR?" H 1550 3600 30  0001 C CNN
F 1 "VCC" H 1550 3600 30  0000 C CNN
F 2 "" H 1550 3500 60  0000 C CNN
F 3 "" H 1550 3500 60  0000 C CNN
	1    1550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3500 1550 3550
Connection ~ 1550 3550
Wire Wire Line
	7300 4050 7300 4100
Wire Wire Line
	5700 2600 6750 2600
Wire Wire Line
	6750 2400 6700 2400
Wire Wire Line
	6700 2400 6700 2300
Wire Wire Line
	5350 2300 6750 2300
Connection ~ 6700 2300
Wire Wire Line
	6650 3400 6550 3400
Wire Wire Line
	5350 2300 5350 4250
Connection ~ 5350 3950
Wire Wire Line
	800  1350 1650 1350
Wire Wire Line
	800  1150 1050 1150
Text GLabel 6450 3000 0    60   Input ~ 0
IN 1
Text GLabel 4850 1250 2    60   Input ~ 0
IN 1
Text GLabel 4500 1350 2    60   Input ~ 0
IN 2
Wire Wire Line
	4850 1250 3550 1250
Wire Wire Line
	4500 1350 3550 1350
Text GLabel 4850 2650 2    60   Input ~ 0
ADC1
Text GLabel 7500 4050 2    60   Input ~ 0
ADC1
Wire Wire Line
	7300 4050 7500 4050
Text GLabel 4850 2450 2    60   Input ~ 0
ADC0
Text GLabel 4850 2850 2    60   Input ~ 0
ADC2
Wire Wire Line
	3550 1850 4150 1850
Wire Wire Line
	4150 1850 4150 2450
Wire Wire Line
	4150 2450 4850 2450
Wire Wire Line
	3550 1950 4050 1950
Wire Wire Line
	4050 1950 4050 2650
Wire Wire Line
	4050 2650 4850 2650
Wire Wire Line
	4850 2850 3950 2850
Wire Wire Line
	3950 2850 3950 2050
Wire Wire Line
	3950 2050 3550 2050
Text GLabel 1300 4300 2    60   Input ~ 0
ADC0
Text GLabel 2250 4300 2    60   Input ~ 0
ADC2
Wire Wire Line
	1150 4300 1300 4300
Connection ~ 1150 4300
Wire Wire Line
	2050 4300 2250 4300
Connection ~ 2050 4300
Wire Wire Line
	4900 750  5050 750 
Wire Wire Line
	6750 2700 6100 2700
Wire Wire Line
	6650 3200 6750 3200
Wire Wire Line
	6050 3100 6750 3100
Connection ~ 6100 3100
Wire Wire Line
	6100 3100 6100 2700
Text GLabel 6050 3100 0    60   Input ~ 0
IN 2
$EndSCHEMATC
