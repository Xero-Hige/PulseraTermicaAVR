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
$Descr User 6693 5316
encoding utf-8
Sheet 1 1
Title ""
Date "29 jun 2015"
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
P 3700 3600
F 0 "U2" H 3650 3800 60  0000 L CNN
F 1 "LM358" H 3650 3350 60  0000 L CNN
F 2 "" H 3700 3600 60  0000 C CNN
F 3 "" H 3700 3600 60  0000 C CNN
	1    3700 3600
	1    0    0    -1  
$EndComp
$Comp
L NPN Q?
U 1 1 5588B00D
P 3200 1100
F 0 "Q?" H 3200 950 50  0001 R CNN
F 1 "TIP31C" H 3200 1250 50  0000 R CNN
F 2 "~" H 3200 1100 60  0000 C CNN
F 3 "~" H 3200 1100 60  0000 C CNN
	1    3200 1100
	1    0    0    -1  
$EndComp
$Comp
L LM358 U1
U 1 1 5588B0EE
P 2500 1100
F 0 "U1" H 2450 1300 60  0000 L CNN
F 1 "LM358" H 2450 850 60  0000 L CNN
F 2 "" H 2500 1100 60  0000 C CNN
F 3 "" H 2500 1100 60  0000 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U?
U 1 1 5588B130
P 1300 2500
F 0 "U?" H 1450 2304 60  0001 C CNN
F 1 "LM7805" H 1300 2700 60  0000 C CNN
F 2 "" H 1300 2500 60  0000 C CNN
F 3 "" H 1300 2500 60  0000 C CNN
	1    1300 2500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588B1F3
P 900 2450
F 0 "#PWR?" H 900 2400 20  0001 C CNN
F 1 "+12V" H 900 2550 30  0000 C CNN
F 2 "" H 900 2450 60  0000 C CNN
F 3 "" H 900 2450 60  0000 C CNN
	1    900  2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B202
P 1300 2750
F 0 "#PWR?" H 1300 2750 30  0001 C CNN
F 1 "GND" H 1300 2680 30  0001 C CNN
F 2 "" H 1300 2750 60  0000 C CNN
F 3 "" H 1300 2750 60  0000 C CNN
	1    1300 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5588B342
P 5950 2350
F 0 "P?" V 5900 2350 40  0001 C CNN
F 1 "PELTIER" V 6000 2350 40  0000 C CNN
F 2 "" H 5950 2350 60  0000 C CNN
F 3 "" H 5950 2350 60  0000 C CNN
	1    5950 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B43C
P 1750 1400
F 0 "#PWR?" H 1750 1400 30  0001 C CNN
F 1 "GND" H 1750 1330 30  0001 C CNN
F 2 "" H 1750 1400 60  0000 C CNN
F 3 "" H 1750 1400 60  0000 C CNN
	1    1750 1400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5588B48D
P 1500 1000
F 0 "R1" V 1580 1000 40  0000 C CNN
F 1 "4.7k" V 1507 1001 40  0000 C CNN
F 2 "~" V 1430 1000 30  0000 C CNN
F 3 "~" H 1500 1000 30  0000 C CNN
	1    1500 1000
	0    -1   1    0   
$EndComp
$Comp
L C C1
U 1 1 5588B49C
P 1750 1200
F 0 "C1" H 1750 1300 40  0000 L CNN
F 1 "10u" H 1756 1115 40  0000 L CNN
F 2 "~" H 1788 1050 30  0000 C CNN
F 3 "~" H 1750 1200 60  0000 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588B537
P 2400 700
F 0 "#PWR?" H 2400 650 20  0001 C CNN
F 1 "+12V" H 2400 800 30  0000 C CNN
F 2 "" H 2400 700 60  0000 C CNN
F 3 "" H 2400 700 60  0000 C CNN
	1    2400 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588B546
P 2400 1500
F 0 "#PWR?" H 2400 1500 30  0001 C CNN
F 1 "GND" H 2400 1430 30  0001 C CNN
F 2 "" H 2400 1500 60  0000 C CNN
F 3 "" H 2400 1500 60  0000 C CNN
	1    2400 1500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588B555
P 3300 700
F 0 "#PWR?" H 3300 650 20  0001 C CNN
F 1 "+12V" H 3300 800 30  0000 C CNN
F 2 "" H 3300 700 60  0000 C CNN
F 3 "" H 3300 700 60  0000 C CNN
	1    3300 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 700  3300 900 
Wire Wire Line
	900  1000 1250 1000
$Comp
L GND #PWR?
U 1 1 5588B61A
P 4500 3100
F 0 "#PWR?" H 4500 3100 30  0001 C CNN
F 1 "GND" H 4500 3030 30  0001 C CNN
F 2 "" H 4500 3100 60  0000 C CNN
F 3 "" H 4500 3100 60  0000 C CNN
	1    4500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2550 5350 2150
Wire Wire Line
	3300 1300 3300 2050
Wire Wire Line
	3300 2050 3650 2050
$Comp
L GND #PWR?
U 1 1 5588BBA5
P 2250 4400
F 0 "#PWR?" H 2250 4400 30  0001 C CNN
F 1 "GND" H 2250 4330 30  0001 C CNN
F 2 "" H 2250 4400 60  0000 C CNN
F 3 "" H 2250 4400 60  0000 C CNN
	1    2250 4400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5588BC97
P 3600 3200
F 0 "#PWR?" H 3600 3150 20  0001 C CNN
F 1 "+12V" H 3600 3300 30  0000 C CNN
F 2 "" H 3600 3200 60  0000 C CNN
F 3 "" H 3600 3200 60  0000 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588BCA6
P 3600 4000
F 0 "#PWR?" H 3600 4000 30  0001 C CNN
F 1 "GND" H 3600 3930 30  0001 C CNN
F 2 "" H 3600 4000 60  0000 C CNN
F 3 "" H 3600 4000 60  0000 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3500 3200 3500
$Comp
L R R2
U 1 1 5588BD43
P 4200 3900
F 0 "R2" V 4280 3900 40  0000 C CNN
F 1 "4.7k" V 4207 3901 40  0000 C CNN
F 2 "~" V 4130 3900 30  0000 C CNN
F 3 "~" H 4200 3900 30  0000 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4200 4200 4200
Wire Wire Line
	3200 3700 3200 4200
$Comp
L R R3
U 1 1 5588BD8D
P 4200 4500
F 0 "R3" V 4280 4500 40  0000 C CNN
F 1 "1k" V 4207 4501 40  0000 C CNN
F 2 "~" V 4130 4500 30  0000 C CNN
F 3 "~" H 4200 4500 30  0000 C CNN
	1    4200 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588BD9C
P 4200 4750
F 0 "#PWR?" H 4200 4750 30  0001 C CNN
F 1 "GND" H 4200 4680 30  0001 C CNN
F 2 "" H 4200 4750 60  0000 C CNN
F 3 "" H 4200 4750 60  0000 C CNN
	1    4200 4750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5588C0B0
P 2600 2350
F 0 "C2" H 2600 2450 40  0000 L CNN
F 1 "0.1u" H 2606 2265 40  0000 L CNN
F 2 "~" H 2638 2200 30  0000 C CNN
F 3 "~" H 2600 2350 60  0000 C CNN
	1    2600 2350
	1    0    0    1   
$EndComp
$Comp
L C C3
U 1 1 5588C0C4
P 4050 1400
F 0 "C3" H 4050 1500 40  0000 L CNN
F 1 "0.1u" H 4056 1315 40  0000 L CNN
F 2 "~" H 4088 1250 30  0000 C CNN
F 3 "~" H 4050 1400 60  0000 C CNN
	1    4050 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1400 3850 1400
Connection ~ 3300 1400
$Comp
L GND #PWR?
U 1 1 5588C172
P 4250 1550
F 0 "#PWR?" H 4250 1550 30  0001 C CNN
F 1 "GND" H 4250 1480 30  0001 C CNN
F 2 "" H 4250 1550 60  0000 C CNN
F 3 "" H 4250 1550 60  0000 C CNN
	1    4250 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5588C181
P 2600 2550
F 0 "#PWR?" H 2600 2550 30  0001 C CNN
F 1 "GND" H 2600 2480 30  0001 C CNN
F 2 "" H 2600 2550 60  0000 C CNN
F 3 "" H 2600 2550 60  0000 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1400 4250 1550
Wire Wire Line
	2000 1200 2000 1650
Wire Wire Line
	2000 1650 3300 1650
Connection ~ 3300 1650
$Comp
L L298D U?
U 1 1 5588AF85
P 4500 2350
F 0 "U?" H 4500 2350 60  0001 C CNN
F 1 "L298D" H 4500 2450 60  0000 C CNN
F 2 "Multiwatt15-V" H 4700 2950 60  0001 C CNN
F 3 "" H 4500 2350 60  0000 C CNN
	1    4500 2350
	1    0    0    -1  
$EndComp
$Comp
L R R6~Constantan
U 1 1 5590A9EB
P 2250 4050
F 0 "R6 Constantan" V 2330 4050 40  0000 C CNN
F 1 "0.25" V 2257 4051 40  0000 C CNN
F 2 "~" V 2180 4050 30  0000 C CNN
F 3 "~" H 2250 4050 30  0000 C CNN
	1    2250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4300 2250 4400
Wire Wire Line
	4200 4150 4200 4250
Connection ~ 4200 4200
Connection ~ 4200 3600
$Comp
L VCC #PWR?
U 1 1 5590ADBF
P 1700 2450
F 0 "#PWR?" H 1700 2550 30  0001 C CNN
F 1 "VCC" H 1700 2550 30  0000 C CNN
F 2 "" H 1700 2450 60  0000 C CNN
F 3 "" H 1700 2450 60  0000 C CNN
	1    1700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2050 5450 2050
Wire Wire Line
	5350 2650 5450 2650
Wire Wire Line
	5450 2650 5450 2050
Wire Wire Line
	5600 2250 5350 2250
Connection ~ 5350 2250
Wire Wire Line
	5600 2450 5450 2450
Connection ~ 5450 2450
$Comp
L VCC #PWR?
U 1 1 5590B74A
P 3450 2950
F 0 "#PWR?" H 3450 3050 30  0001 C CNN
F 1 "VCC" H 3450 3050 30  0000 C CNN
F 2 "" H 3450 2950 60  0000 C CNN
F 3 "" H 3450 2950 60  0000 C CNN
	1    3450 2950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5590B7B4
P 2600 2100
F 0 "#PWR?" H 2600 2200 30  0001 C CNN
F 1 "VCC" H 2600 2200 30  0000 C CNN
F 2 "" H 2600 2100 60  0000 C CNN
F 3 "" H 2600 2100 60  0000 C CNN
	1    2600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2150 2600 2100
Connection ~ 2600 2150
Wire Wire Line
	3650 2550 3350 2550
Wire Wire Line
	3450 2550 3450 2350
Wire Wire Line
	3450 2350 3650 2350
Connection ~ 3450 2550
Wire Wire Line
	3650 2450 3550 2450
Wire Wire Line
	3550 2450 3550 2950
Connection ~ 3550 2750
Wire Wire Line
	4200 3600 4200 3650
Wire Wire Line
	2600 2150 3650 2150
Wire Wire Line
	3650 1950 3600 1950
Wire Wire Line
	3600 1950 3600 1850
Wire Wire Line
	2250 1850 3650 1850
Connection ~ 3600 1850
Wire Wire Line
	3550 2950 3450 2950
Wire Wire Line
	2250 1850 2250 3800
Connection ~ 2250 3500
Text GLabel 3350 2550 0    60   Input ~ 0
IN 1
Text GLabel 4400 3600 2    60   Input ~ 0
ADC1
Wire Wire Line
	4200 3600 4400 3600
Wire Wire Line
	3650 2250 3000 2250
Wire Wire Line
	3550 2750 3650 2750
Wire Wire Line
	2950 2650 3650 2650
Connection ~ 3000 2650
Wire Wire Line
	3000 2250 3000 2650
Text GLabel 2950 2650 0    60   Input ~ 0
IN 2
Wire Wire Line
	1750 1000 2000 1000
Text GLabel 900  1000 0    60   Input ~ 0
OC2
$EndSCHEMATC
