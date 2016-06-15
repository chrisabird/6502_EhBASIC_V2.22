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
LIBS:65xx
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
L WD65C02 U?
U 1 1 573B94BD
P 1850 2200
F 0 "U?" H 1850 1050 60  0000 C CNN
F 1 "WD65C02" V 1850 2100 60  0000 C CNN
F 2 "" H 1350 2400 60  0000 C CNN
F 3 "" H 1350 2400 60  0000 C CNN
	1    1850 2200
	1    0    0    -1  
$EndComp
$Comp
L WD65C22 U?
U 1 1 573B94EE
P 5850 2200
F 0 "U?" H 5850 1050 60  0000 C CNN
F 1 "WD65C22" V 5850 2100 60  0000 C CNN
F 2 "" H 5350 2400 60  0000 C CNN
F 3 "" H 5350 2400 60  0000 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
$Comp
L W65C51N U?
U 1 1 573B956F
P 9400 2000
F 0 "U?" H 9400 1150 60  0000 C CNN
F 1 "W65C51N" V 9450 2000 60  0000 C CNN
F 2 "" H 9400 1800 60  0000 C CNN
F 3 "" H 9400 1800 60  0000 C CNN
	1    9400 2000
	1    0    0    -1  
$EndComp
$Comp
L 28C256 U?
U 1 1 573B961A
P 5800 5300
F 0 "U?" H 6000 6300 50  0000 C CNN
F 1 "28C256" H 6100 4300 50  0000 C CNN
F 2 "" H 5800 5300 50  0000 C CNN
F 3 "" H 5800 5300 50  0000 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
$Comp
L HM62256BLP-7 U?
U 1 1 573B96C8
P 9000 5200
F 0 "U?" H 8700 6100 50  0000 C CNN
F 1 "HM62256BLP-7" H 9400 4400 50  0000 C CNN
F 2 "DIP28" H 9000 5200 50  0000 C CIN
F 3 "" H 9000 5200 50  0000 C CNN
	1    9000 5200
	1    0    0    -1  
$EndComp
Text GLabel 2700 2000 2    39   Input ~ 0
D0
Text GLabel 2700 2100 2    39   Input ~ 0
D1
Text GLabel 2700 2200 2    39   Input ~ 0
D2
Text GLabel 2700 2300 2    39   Input ~ 0
D3
Text GLabel 2700 2400 2    39   Input ~ 0
D4
Text GLabel 2700 2500 2    39   Input ~ 0
D5
Text GLabel 2700 2600 2    39   Input ~ 0
D6
Text GLabel 2700 2700 2    39   Input ~ 0
D7
$Comp
L BC547 Q?
U 1 1 573B9A9F
P 3300 1500
F 0 "Q?" H 3500 1575 50  0000 L CNN
F 1 "DS1813" H 3500 1500 50  0000 L CNN
F 2 "TO-92" H 3500 1425 50  0000 L CIN
F 3 "" H 3300 1500 50  0000 L CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 573B9B7A
P 3000 1500
F 0 "#PWR?" H 3000 1350 50  0001 C CNN
F 1 "+5V" H 3000 1640 50  0000 C CNN
F 2 "" H 3000 1500 50  0000 C CNN
F 3 "" H 3000 1500 50  0000 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 573B9BAB
P 3400 1750
F 0 "#PWR?" H 3400 1500 50  0001 C CNN
F 1 "GND" H 3400 1600 50  0000 C CNN
F 2 "" H 3400 1750 50  0000 C CNN
F 3 "" H 3400 1750 50  0000 C CNN
	1    3400 1750
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 573B9C12
P 3950 1600
F 0 "SW?" H 4100 1710 50  0000 C CNN
F 1 "SW_PUSH" H 3950 1520 50  0000 C CNN
F 2 "" H 3950 1600 50  0000 C CNN
F 3 "" H 3950 1600 50  0000 C CNN
	1    3950 1600
	0    1    1    0   
$EndComp
Text GLabel 2650 1150 2    39   Input ~ 0
RST
$Comp
L R R3.3K
U 1 1 573B9D61
P 2650 1600
F 0 "R3.3K" V 2730 1600 50  0000 C CNN
F 1 "R" V 2650 1600 50  0000 C CNN
F 2 "" V 2580 1600 50  0000 C CNN
F 3 "" H 2650 1600 50  0000 C CNN
	1    2650 1600
	0    1    1    0   
$EndComp
Text GLabel 2700 1900 2    39   Input ~ 0
RW
Text GLabel 2550 1400 2    39   Input ~ 0
PHI2
NoConn ~ 2500 1800
NoConn ~ 1200 1300
NoConn ~ 1200 1900
NoConn ~ 1200 1700
$Comp
L +5V #PWR?
U 1 1 573BA07B
P 750 2000
F 0 "#PWR?" H 750 1850 50  0001 C CNN
F 1 "+5V" H 750 2140 50  0000 C CNN
F 2 "" H 750 2000 50  0000 C CNN
F 3 "" H 750 2000 50  0000 C CNN
	1    750  2000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 573BA0C2
P 750 2250
F 0 "C?" H 775 2350 50  0000 L CNN
F 1 "0.1uF" H 775 2150 50  0000 L CNN
F 2 "" H 788 2100 50  0000 C CNN
F 3 "" H 750 2250 50  0000 C CNN
	1    750  2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 573BA127
P 750 2450
F 0 "#PWR?" H 750 2200 50  0001 C CNN
F 1 "GND" H 750 2300 50  0000 C CNN
F 2 "" H 750 2450 50  0000 C CNN
F 3 "" H 750 2450 50  0000 C CNN
	1    750  2450
	1    0    0    -1  
$EndComp
$Comp
L R R3.3K
U 1 1 573BA3EB
P 750 1400
F 0 "R3.3K" V 830 1400 50  0000 C CNN
F 1 "R" V 750 1400 50  0000 C CNN
F 2 "" V 680 1400 50  0000 C CNN
F 3 "" H 750 1400 50  0000 C CNN
	1    750  1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 573BA44C
P 750 1100
F 0 "#PWR?" H 750 950 50  0001 C CNN
F 1 "+5V" H 750 1240 50  0000 C CNN
F 2 "" H 750 1100 50  0000 C CNN
F 3 "" H 750 1100 50  0000 C CNN
	1    750  1100
	1    0    0    -1  
$EndComp
Text GLabel 700  1600 0    39   Input ~ 0
IRQ
NoConn ~ 1200 1500
$Comp
L R R3.3K
U 1 1 573BA5D5
P 1050 1250
F 0 "R3.3K" V 1130 1250 50  0000 C CNN
F 1 "R" V 1050 1250 50  0000 C CNN
F 2 "" V 980 1250 50  0000 C CNN
F 3 "" H 1050 1250 50  0000 C CNN
	1    1050 1250
	1    0    0    -1  
$EndComp
Text GLabel 1100 2100 0    39   Input ~ 0
A0
Text GLabel 1100 2200 0    39   Input ~ 0
A1
Text GLabel 1100 2300 0    39   Input ~ 0
A2
Text GLabel 1100 2400 0    39   Input ~ 0
A3
Text GLabel 1100 2500 0    39   Input ~ 0
A4
Text GLabel 1100 2600 0    39   Input ~ 0
A5
Text GLabel 1100 2700 0    39   Input ~ 0
A6
Text GLabel 1100 2800 0    39   Input ~ 0
A7
Text GLabel 1100 2900 0    39   Input ~ 0
A8
Text GLabel 1100 3000 0    39   Input ~ 0
A9
Text GLabel 1100 3100 0    39   Input ~ 0
A10
Text GLabel 1100 3200 0    39   Input ~ 0
A11
Text GLabel 2700 2800 2    39   Input ~ 0
A15
Text GLabel 2700 2900 2    39   Input ~ 0
A14
Text GLabel 2700 3000 2    39   Input ~ 0
A13
Text GLabel 2700 3100 2    39   Input ~ 0
A12
$Comp
L GND #PWR?
U 1 1 573BA9D5
P 2700 3200
F 0 "#PWR?" H 2700 2950 50  0001 C CNN
F 1 "GND" H 2700 3050 50  0000 C CNN
F 2 "" H 2700 3200 50  0000 C CNN
F 3 "" H 2700 3200 50  0000 C CNN
	1    2700 3200
	1    0    0    -1  
$EndComp
Text GLabel 6600 2000 2    39   Input ~ 0
D0
Text GLabel 6600 2100 2    39   Input ~ 0
D1
Text GLabel 6600 2200 2    39   Input ~ 0
D2
Text GLabel 6600 2300 2    39   Input ~ 0
D3
Text GLabel 6600 2400 2    39   Input ~ 0
D4
Text GLabel 6600 2500 2    39   Input ~ 0
D5
Text GLabel 6600 2600 2    39   Input ~ 0
D6
Text GLabel 6600 2700 2    39   Input ~ 0
D7
Text GLabel 6600 1900 2    39   Input ~ 0
RST
Text GLabel 6600 1500 2    39   Input ~ 0
A0
Text GLabel 6600 1600 2    39   Input ~ 0
A1
Text GLabel 6600 1700 2    39   Input ~ 0
A2
Text GLabel 6600 1800 2    39   Input ~ 0
A3
Text GLabel 6600 2800 2    39   Input ~ 0
PHI2
Text GLabel 6600 3100 2    39   Input ~ 0
RW
$Comp
L +5V #PWR?
U 1 1 5761C0D5
P 4700 3200
F 0 "#PWR?" H 4700 3050 50  0001 C CNN
F 1 "+5V" H 4700 3340 50  0000 C CNN
F 2 "" H 4700 3200 50  0000 C CNN
F 3 "" H 4700 3200 50  0000 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5761C0FF
P 4800 3350
F 0 "C?" H 4825 3450 50  0000 L CNN
F 1 "C" H 4825 3250 50  0000 L CNN
F 2 "" H 4838 3200 50  0000 C CNN
F 3 "" H 4800 3350 50  0000 C CNN
	1    4800 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5761C1FE
P 4800 3550
F 0 "#PWR?" H 4800 3300 50  0001 C CNN
F 1 "GND" H 4800 3400 50  0000 C CNN
F 2 "" H 4800 3550 50  0000 C CNN
F 3 "" H 4800 3550 50  0000 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5761C2BB
P 5150 3300
F 0 "#PWR?" H 5150 3050 50  0001 C CNN
F 1 "GND" H 5150 3150 50  0000 C CNN
F 2 "" H 5150 3300 50  0000 C CNN
F 3 "" H 5150 3300 50  0000 C CNN
	1    5150 3300
	1    0    0    -1  
$EndComp
Text Notes 900  800  2    157  ~ 0
uP
Text Notes 4900 800  2    157  ~ 0
VIA
Text GLabel 6600 2900 2    39   Input ~ 0
A13
Text GLabel 6600 3000 2    39   Input ~ 0
IOSEL
Text GLabel 6600 3200 2    39   Input ~ 0
IRQ
Text Notes 7800 800  2    157  ~ 0
ACIA	
Text GLabel 10150 1600 2    39   Input ~ 0
IRQ
Text GLabel 10150 1700 2    39   Input ~ 0
D7
Text GLabel 10150 1800 2    39   Input ~ 0
D6
Text GLabel 10150 1900 2    39   Input ~ 0
D5
Text GLabel 10150 2000 2    39   Input ~ 0
D4
Text GLabel 10150 2100 2    39   Input ~ 0
D3
Text GLabel 10150 2200 2    39   Input ~ 0
D2
Text GLabel 10150 2300 2    39   Input ~ 0
D1
Text GLabel 10150 2400 2    39   Input ~ 0
D0
Text GLabel 8650 2600 0    39   Input ~ 0
A0
Text GLabel 8650 2700 0    39   Input ~ 0
A1
Text GLabel 8650 1500 0    39   Input ~ 0
A12
Text GLabel 8650 1600 0    39   Input ~ 0
IOSEL
Text GLabel 10150 1500 2    39   Input ~ 0
PHI2
Text GLabel 10150 1400 2    39   Input ~ 0
RW
$Comp
L Crystal_Small Y?
U 1 1 5761D4BB
P 8300 1950
F 0 "Y?" H 8300 2050 50  0000 C CNN
F 1 "Crystal_Small" H 8300 1850 50  0000 C CNN
F 2 "" H 8300 1950 50  0000 C CNN
F 3 "" H 8300 1950 50  0000 C CNN
	1    8300 1950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5761D606
P 7950 1950
F 0 "R?" V 8030 1950 50  0000 C CNN
F 1 "R" V 7950 1950 50  0000 C CNN
F 2 "" V 7880 1950 50  0000 C CNN
F 3 "" H 7950 1950 50  0000 C CNN
	1    7950 1950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5761D75E
P 7700 1950
F 0 "C?" H 7725 2050 50  0000 L CNN
F 1 "C" H 7725 1850 50  0000 L CNN
F 2 "" H 7738 1800 50  0000 C CNN
F 3 "" H 7700 1950 50  0000 C CNN
	1    7700 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5761D834
P 7700 2200
F 0 "#PWR?" H 7700 1950 50  0001 C CNN
F 1 "GND" H 7700 2050 50  0000 C CNN
F 2 "" H 7700 2200 50  0000 C CNN
F 3 "" H 7700 2200 50  0000 C CNN
	1    7700 2200
	1    0    0    -1  
$EndComp
Text GLabel 8650 1700 0    39   Input ~ 0
RST
$Comp
L CONN_01X06 P?
U 1 1 5761DB5E
P 7900 2850
F 0 "P?" H 7900 3200 50  0000 C CNN
F 1 "CONN_01X06" V 8000 2850 50  0000 C CNN
F 2 "" H 7900 2850 50  0000 C CNN
F 3 "" H 7900 2850 50  0000 C CNN
	1    7900 2850
	-1   0    0    1   
$EndComp
NoConn ~ 8100 2600
NoConn ~ 8100 2700
$Comp
L +5V #PWR?
U 1 1 5761DD85
P 10400 2700
F 0 "#PWR?" H 10400 2550 50  0001 C CNN
F 1 "+5V" H 10400 2840 50  0000 C CNN
F 2 "" H 10400 2700 50  0000 C CNN
F 3 "" H 10400 2700 50  0000 C CNN
	1    10400 2700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5761DE09
P 8550 3100
F 0 "#PWR?" H 8550 2950 50  0001 C CNN
F 1 "+5V" H 8550 3240 50  0000 C CNN
F 2 "" H 8550 3100 50  0000 C CNN
F 3 "" H 8550 3100 50  0000 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5761DF46
P 8200 3150
F 0 "#PWR?" H 8200 2900 50  0001 C CNN
F 1 "GND" H 8200 3000 50  0000 C CNN
F 2 "" H 8200 3150 50  0000 C CNN
F 3 "" H 8200 3150 50  0000 C CNN
	1    8200 3150
	1    0    0    -1  
$EndComp
NoConn ~ 8750 2100
$Comp
L GND #PWR?
U 1 1 5761E034
P 8150 2300
F 0 "#PWR?" H 8150 2050 50  0001 C CNN
F 1 "GND" H 8150 2150 50  0000 C CNN
F 2 "" H 8150 2300 50  0000 C CNN
F 3 "" H 8150 2300 50  0000 C CNN
	1    8150 2300
	1    0    0    -1  
$EndComp
NoConn ~ 8750 2400
$Comp
L GND #PWR?
U 1 1 5761E106
P 10150 3200
F 0 "#PWR?" H 10150 2950 50  0001 C CNN
F 1 "GND" H 10150 3050 50  0000 C CNN
F 2 "" H 10150 3200 50  0000 C CNN
F 3 "" H 10150 3200 50  0000 C CNN
	1    10150 3200
	1    0    0    -1  
$EndComp
NoConn ~ 8750 1800
$Comp
L C C?
U 1 1 5761E26A
P 10350 2900
F 0 "C?" H 10375 3000 50  0000 L CNN
F 1 "C" H 10375 2800 50  0000 L CNN
F 2 "" H 10388 2750 50  0000 C CNN
F 3 "" H 10350 2900 50  0000 C CNN
	1    10350 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5761E50A
P 8200 1400
F 0 "#PWR?" H 8200 1150 50  0001 C CNN
F 1 "GND" H 8200 1250 50  0000 C CNN
F 2 "" H 8200 1400 50  0000 C CNN
F 3 "" H 8200 1400 50  0000 C CNN
	1    8200 1400
	1    0    0    -1  
$EndComp
$Comp
L 74LS132 U?
U 1 1 5761EBA4
P 1550 4700
F 0 "U?" H 1550 4800 50  0000 C CNN
F 1 "74LS132" H 1550 4600 50  0000 C CNN
F 2 "" H 1550 4700 50  0000 C CNN
F 3 "" H 1550 4700 50  0000 C CNN
	1    1550 4700
	1    0    0    -1  
$EndComp
$Comp
L 74LS132 U?
U 2 1 5761EC95
P 3250 5400
F 0 "U?" H 3250 5500 50  0000 C CNN
F 1 "74LS132" H 3250 5300 50  0000 C CNN
F 2 "" H 3250 5400 50  0000 C CNN
F 3 "" H 3250 5400 50  0000 C CNN
	2    3250 5400
	1    0    0    -1  
$EndComp
$Comp
L 74LS132 U?
U 3 1 5761ED56
P 3250 6100
F 0 "U?" H 3250 6200 50  0000 C CNN
F 1 "74LS132" H 3250 6000 50  0000 C CNN
F 2 "" H 3250 6100 50  0000 C CNN
F 3 "" H 3250 6100 50  0000 C CNN
	3    3250 6100
	1    0    0    -1  
$EndComp
$Comp
L 74LS132 U?
U 4 1 5761EE13
P 1700 7000
F 0 "U?" H 1700 7100 50  0000 C CNN
F 1 "74LS132" H 1700 6900 50  0000 C CNN
F 2 "" H 1700 7000 50  0000 C CNN
F 3 "" H 1700 7000 50  0000 C CNN
	4    1700 7000
	1    0    0    -1  
$EndComp
Text GLabel 800  4700 0    39   Input ~ 0
A15
Text GLabel 2500 5500 0    39   Input ~ 0
PHI2
Text GLabel 3950 6100 2    39   Input ~ 0
IOSEL
Text GLabel 2500 6200 0    39   Input ~ 0
A14
NoConn ~ 2300 7000
$Comp
L GND #PWR?
U 1 1 5761F6BD
P 950 7100
F 0 "#PWR?" H 950 6850 50  0001 C CNN
F 1 "GND" H 950 6950 50  0000 C CNN
F 2 "" H 950 7100 50  0000 C CNN
F 3 "" H 950 7100 50  0000 C CNN
	1    950  7100
	1    0    0    -1  
$EndComp
Text GLabel 3950 5400 2    39   Input ~ 0
RAMSEL
Text GLabel 2300 4700 2    39   Input ~ 0
ROMSEL
Text GLabel 4950 4400 0    39   Input ~ 0
A0
Text GLabel 4950 4500 0    39   Input ~ 0
A1
Text GLabel 4950 4600 0    39   Input ~ 0
A2
Text GLabel 4950 4700 0    39   Input ~ 0
A3
Text GLabel 4950 4800 0    39   Input ~ 0
A4
Text GLabel 4950 4900 0    39   Input ~ 0
A5
Text GLabel 4950 5000 0    39   Input ~ 0
A6
Text GLabel 4950 5100 0    39   Input ~ 0
A7
Text GLabel 4950 5200 0    39   Input ~ 0
A8
Text GLabel 4950 5300 0    39   Input ~ 0
A9
Text GLabel 4950 5400 0    39   Input ~ 0
A10
Text GLabel 4950 5500 0    39   Input ~ 0
A11
Text GLabel 4950 5600 0    39   Input ~ 0
A12
Text GLabel 4950 5700 0    39   Input ~ 0
A13
Text GLabel 4950 5800 0    39   Input ~ 0
A14
Text GLabel 4950 6100 0    39   Input ~ 0
ROMSEL
Text GLabel 6600 4400 2    39   Input ~ 0
D0
Text GLabel 6600 4500 2    39   Input ~ 0
D1
Text GLabel 6600 4600 2    39   Input ~ 0
D2
Text GLabel 6600 4700 2    39   Input ~ 0
D3
Text GLabel 6600 4800 2    39   Input ~ 0
D4
Text GLabel 6600 4900 2    39   Input ~ 0
D5
Text GLabel 6600 5000 2    39   Input ~ 0
D6
Text GLabel 6600 5100 2    39   Input ~ 0
D7
Text GLabel 9600 5550 2    39   Input ~ 0
RAMSEL
Text GLabel 9600 4450 2    39   Input ~ 0
D0
Text GLabel 9600 4550 2    39   Input ~ 0
D1
Text GLabel 9600 4650 2    39   Input ~ 0
D2
Text GLabel 9600 4750 2    39   Input ~ 0
D3
Text GLabel 9600 4850 2    39   Input ~ 0
D4
Text GLabel 9600 4950 2    39   Input ~ 0
D5
Text GLabel 9600 5050 2    39   Input ~ 0
D6
Text GLabel 9600 5150 2    39   Input ~ 0
D7
Text GLabel 9600 5400 2    39   Input ~ 0
RW
Text GLabel 9600 5300 2    39   Input ~ 0
A14
Text GLabel 8400 4450 0    39   Input ~ 0
A0
Text GLabel 8400 4550 0    39   Input ~ 0
A1
Text GLabel 8400 4650 0    39   Input ~ 0
A2
Text GLabel 8400 4750 0    39   Input ~ 0
A3
Text GLabel 8400 4850 0    39   Input ~ 0
A4
Text GLabel 8400 4950 0    39   Input ~ 0
A5
Text GLabel 8400 5050 0    39   Input ~ 0
A6
Text GLabel 8400 5150 0    39   Input ~ 0
A7
Text GLabel 8400 5250 0    39   Input ~ 0
A8
Text GLabel 8400 5350 0    39   Input ~ 0
A9
Text GLabel 8400 5450 0    39   Input ~ 0
A10
Text GLabel 8400 5550 0    39   Input ~ 0
A11
Text GLabel 8400 5650 0    39   Input ~ 0
A12
Text GLabel 8400 5750 0    39   Input ~ 0
A13
Text GLabel 8400 5850 0    39   Input ~ 0
A14
$Comp
L CONN_01X20 P?
U 1 1 576234ED
P 4850 2150
F 0 "P?" H 4850 3200 50  0000 C CNN
F 1 "CONN_01X20" V 4950 2150 50  0000 C CNN
F 2 "" H 4850 2150 50  0000 C CNN
F 3 "" H 4850 2150 50  0000 C CNN
	1    4850 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 2000 2700 2000
Wire Wire Line
	2500 2100 2700 2100
Wire Wire Line
	2500 2200 2700 2200
Wire Wire Line
	2500 2300 2700 2300
Wire Wire Line
	2500 2400 2700 2400
Wire Wire Line
	2500 2500 2700 2500
Wire Wire Line
	2500 2600 2700 2600
Wire Wire Line
	2500 2700 2700 2700
Wire Wire Line
	2500 1300 3950 1300
Wire Wire Line
	2500 1500 3100 1500
Wire Wire Line
	3400 1700 3400 1750
Connection ~ 3400 1300
Wire Wire Line
	3400 1700 3750 1700
Wire Wire Line
	3750 1700 3750 1900
Wire Wire Line
	3750 1900 3950 1900
Wire Wire Line
	2650 1150 2650 1300
Connection ~ 2650 1300
Wire Wire Line
	2850 1700 2500 1700
Wire Wire Line
	2850 1500 2850 1700
Wire Wire Line
	2800 1600 2850 1600
Connection ~ 2850 1600
Wire Wire Line
	2500 1900 2700 1900
Wire Wire Line
	2500 1400 2550 1400
Connection ~ 3000 1500
Connection ~ 2850 1500
Wire Wire Line
	1200 2000 750  2000
Wire Wire Line
	750  2000 750  2100
Wire Wire Line
	750  2400 750  2450
Wire Wire Line
	1200 1800 950  1800
Wire Wire Line
	950  1800 950  1250
Wire Wire Line
	700  1600 1200 1600
Wire Wire Line
	750  1600 750  1550
Connection ~ 750  1600
Wire Wire Line
	950  1250 750  1250
Wire Wire Line
	1050 1100 750  1100
Wire Wire Line
	750  1100 750  1250
Wire Wire Line
	1200 1400 1050 1400
Wire Wire Line
	2500 3200 2700 3200
Wire Wire Line
	2500 3100 2700 3100
Wire Wire Line
	2700 3000 2500 3000
Wire Wire Line
	2500 2900 2700 2900
Wire Wire Line
	2700 2800 2500 2800
Wire Wire Line
	1100 2100 1200 2100
Wire Wire Line
	1200 2200 1100 2200
Wire Wire Line
	1100 2300 1200 2300
Wire Wire Line
	1200 2400 1100 2400
Wire Wire Line
	1100 2500 1200 2500
Wire Wire Line
	1200 2600 1100 2600
Wire Wire Line
	1100 2700 1200 2700
Wire Wire Line
	1200 2800 1100 2800
Wire Wire Line
	1100 2900 1200 2900
Wire Wire Line
	1200 3000 1100 3000
Wire Wire Line
	1100 3100 1200 3100
Wire Wire Line
	1200 3200 1100 3200
Wire Wire Line
	6500 2000 6600 2000
Wire Wire Line
	6500 2100 6600 2100
Wire Wire Line
	6500 2200 6600 2200
Wire Wire Line
	6500 2300 6600 2300
Wire Wire Line
	6500 2400 6600 2400
Wire Wire Line
	6500 2500 6600 2500
Wire Wire Line
	6500 2600 6600 2600
Wire Wire Line
	6500 2700 6600 2700
Wire Wire Line
	6500 1900 6600 1900
Wire Wire Line
	6500 1800 6600 1800
Wire Wire Line
	6500 1700 6600 1700
Wire Wire Line
	6500 1600 6600 1600
Wire Wire Line
	6500 1500 6600 1500
Wire Wire Line
	6500 3100 6600 3100
Wire Wire Line
	6500 2800 6600 2800
Wire Wire Line
	4700 3200 5200 3200
Connection ~ 4800 3200
Wire Wire Line
	4800 3500 4800 3550
Wire Notes Line
	600  3900 4400 3900
Wire Notes Line
	4400 3900 4400 600 
Wire Notes Line
	4500 3900 7000 3900
Wire Notes Line
	7000 3900 7000 600 
Wire Wire Line
	6500 2900 6600 2900
Wire Wire Line
	6500 3000 6600 3000
Wire Wire Line
	6500 3200 6600 3200
Wire Wire Line
	10050 1600 10150 1600
Wire Wire Line
	10050 1700 10150 1700
Wire Wire Line
	10050 1800 10150 1800
Wire Wire Line
	10050 1900 10150 1900
Wire Wire Line
	10050 2000 10150 2000
Wire Wire Line
	10050 2100 10150 2100
Wire Wire Line
	10050 2200 10150 2200
Wire Wire Line
	10050 2300 10150 2300
Wire Wire Line
	10050 2400 10150 2400
Wire Wire Line
	10050 1500 10150 1500
Wire Wire Line
	10050 1400 10150 1400
Wire Wire Line
	8300 1850 8500 1850
Wire Wire Line
	8500 1850 8500 1900
Wire Wire Line
	8500 1900 8750 1900
Wire Wire Line
	8300 2050 8500 2050
Wire Wire Line
	8500 2050 8500 2000
Wire Wire Line
	8500 2000 8750 2000
Wire Wire Line
	7700 1800 8300 1800
Wire Wire Line
	8300 1800 8300 1850
Wire Wire Line
	7950 2100 8300 2100
Wire Wire Line
	8300 2100 8300 2050
Connection ~ 7950 1800
Wire Wire Line
	7700 2100 7700 2200
Wire Wire Line
	8650 1600 8750 1600
Wire Wire Line
	8650 1500 8750 1500
Wire Wire Line
	8650 2600 8750 2600
Wire Wire Line
	8650 2700 8750 2700
Wire Wire Line
	8650 1700 8750 1700
Wire Wire Line
	8100 2800 8300 2800
Wire Wire Line
	8300 2800 8300 2300
Wire Wire Line
	8300 2300 8750 2300
Wire Wire Line
	8100 2900 8450 2900
Wire Wire Line
	8450 2900 8450 2500
Wire Wire Line
	8450 2500 8750 2500
Wire Wire Line
	10050 2700 10400 2700
Wire Wire Line
	8100 3100 8550 3100
Wire Wire Line
	8100 3000 8200 3000
Wire Wire Line
	8200 3000 8200 3150
Wire Wire Line
	8150 2300 8150 2250
Wire Wire Line
	8150 2250 8450 2250
Wire Wire Line
	8450 2250 8450 2200
Wire Wire Line
	8450 2200 8750 2200
Wire Wire Line
	10050 2600 10150 2600
Wire Wire Line
	10150 2500 10150 3200
Wire Wire Line
	10050 2500 10150 2500
Connection ~ 10150 2600
Wire Wire Line
	10350 3050 10150 3050
Connection ~ 10150 3050
Wire Wire Line
	10350 2750 10350 2700
Connection ~ 10350 2700
Wire Wire Line
	8200 1400 8750 1400
Wire Notes Line
	7100 3900 11100 3900
Wire Notes Line
	4400 4000 4400 7750
Wire Notes Line
	7000 3950 7000 6450
Wire Wire Line
	800  4700 900  4700
Wire Wire Line
	900  4600 900  4800
Wire Wire Line
	900  4600 950  4600
Wire Wire Line
	900  4800 950  4800
Connection ~ 900  4700
Wire Wire Line
	2150 4700 2150 6000
Wire Wire Line
	2150 5300 2650 5300
Wire Wire Line
	2150 6000 2650 6000
Connection ~ 2150 5300
Wire Wire Line
	2500 5500 2650 5500
Wire Wire Line
	3850 6100 3950 6100
Wire Wire Line
	2500 6200 2650 6200
Wire Wire Line
	950  7100 1100 7100
Wire Wire Line
	1100 6900 950  6900
Wire Wire Line
	950  6900 950  7100
Wire Wire Line
	3850 5400 3950 5400
Wire Wire Line
	2150 4700 2300 4700
Wire Wire Line
	4950 6100 5100 6100
Wire Wire Line
	5000 6100 5000 6200
Wire Wire Line
	5000 6200 5100 6200
Connection ~ 5000 6100
Wire Wire Line
	4950 5800 5100 5800
Wire Wire Line
	4950 5700 5100 5700
Wire Wire Line
	4950 5600 5100 5600
Wire Wire Line
	4950 5500 5100 5500
Wire Wire Line
	4950 5400 5100 5400
Wire Wire Line
	4950 5300 5100 5300
Wire Wire Line
	4950 5200 5100 5200
Wire Wire Line
	4950 5100 5100 5100
Wire Wire Line
	4950 5000 5100 5000
Wire Wire Line
	4950 4900 5100 4900
Wire Wire Line
	4950 4800 5100 4800
Wire Wire Line
	4950 4700 5100 4700
Wire Wire Line
	4950 4600 5100 4600
Wire Wire Line
	4950 4500 5100 4500
Wire Wire Line
	4950 4400 5100 4400
Wire Wire Line
	6500 4400 6600 4400
Wire Wire Line
	6500 4500 6600 4500
Wire Wire Line
	6500 4600 6600 4600
Wire Wire Line
	6500 4700 6600 4700
Wire Wire Line
	6500 4800 6600 4800
Wire Wire Line
	6500 4900 6600 4900
Wire Wire Line
	6500 5000 6600 5000
Wire Wire Line
	6500 5100 6600 5100
Wire Wire Line
	9500 5550 9600 5550
Wire Wire Line
	9500 5400 9600 5400
Wire Wire Line
	9500 5300 9600 5300
Wire Wire Line
	9500 5150 9600 5150
Wire Wire Line
	9500 5050 9600 5050
Wire Wire Line
	9500 4950 9600 4950
Wire Wire Line
	9500 4850 9600 4850
Wire Wire Line
	9500 4750 9600 4750
Wire Wire Line
	9500 4650 9600 4650
Wire Wire Line
	9500 4550 9600 4550
Wire Wire Line
	9500 4450 9600 4450
Wire Wire Line
	8400 4450 8500 4450
Wire Wire Line
	8400 4550 8500 4550
Wire Wire Line
	8400 4650 8500 4650
Wire Wire Line
	8400 4750 8500 4750
Wire Wire Line
	8400 4850 8500 4850
Wire Wire Line
	8400 4950 8500 4950
Wire Wire Line
	8400 5050 8500 5050
Wire Wire Line
	8400 5150 8500 5150
Wire Wire Line
	8400 5250 8500 5250
Wire Wire Line
	8400 5350 8500 5350
Wire Wire Line
	8400 5450 8500 5450
Wire Wire Line
	8400 5550 8500 5550
Wire Wire Line
	8400 5650 8500 5650
Wire Wire Line
	8400 5750 8500 5750
Wire Wire Line
	8400 5850 8500 5850
Wire Wire Line
	5200 3100 5050 3100
Wire Wire Line
	5050 3000 5200 3000
Wire Wire Line
	5200 2900 5050 2900
Wire Wire Line
	5050 2800 5200 2800
Wire Wire Line
	5200 2700 5050 2700
Wire Wire Line
	5050 2600 5200 2600
Wire Wire Line
	5200 2500 5050 2500
Wire Wire Line
	5050 2400 5200 2400
Wire Wire Line
	5200 2300 5050 2300
Wire Wire Line
	5050 2200 5200 2200
Wire Wire Line
	5200 2100 5050 2100
Wire Wire Line
	5050 2000 5200 2000
Wire Wire Line
	5200 1900 5050 1900
Wire Wire Line
	5050 1800 5200 1800
Wire Wire Line
	5050 1700 5200 1700
Wire Wire Line
	5050 1600 5200 1600
Wire Wire Line
	5050 1500 5200 1500
Wire Wire Line
	5050 1400 5200 1400
Wire Wire Line
	5050 1300 5100 1300
Wire Wire Line
	5100 1300 5100 1150
Wire Wire Line
	5100 1150 6500 1150
Wire Wire Line
	6500 1150 6500 1300
Wire Wire Line
	5050 1200 5050 1100
Wire Wire Line
	5050 1100 6550 1100
Wire Wire Line
	6550 1100 6550 1400
Wire Wire Line
	6550 1400 6500 1400
Wire Wire Line
	5150 3300 5150 1300
Wire Wire Line
	5150 1300 5200 1300
$Comp
L +5V #PWR?
U 1 1 57625210
P 4600 6000
F 0 "#PWR?" H 4600 5850 50  0001 C CNN
F 1 "+5V" H 4600 6140 50  0000 C CNN
F 2 "" H 4600 6000 50  0000 C CNN
F 3 "" H 4600 6000 50  0000 C CNN
	1    4600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6000 5100 6000
Text Notes 650  4300 0    157  ~ 0
DECODING
Text Notes 4600 4250 0    157  ~ 0
ROM
Text Notes 7200 4250 0    157  ~ 0
RAM
$EndSCHEMATC
