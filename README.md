# sbc65

Software for the sbc65 single board computer

 * os - Minimal monitor & ehbasic build
 * via_test - Outputs a simple test partern onto the VIA I/O
 * acia_test - Repeatidly sends a single character over the UART port from the ACIA

## Dependencies 
 
 * [http://cc65.github.io/cc65/](cc65) - Compilter, Assembler and Linker
 * [https://github.com/vdudouyt/minipro](minipro) - Software for using the TL866 EEPROM programmer if on Linux

## Bill of Materials

|Part Code|Description|Qty|
|----|----|----|
|CY62256NLL-70PXC|SRAM 256Kb 70ns 32K x 8|1|
|AT28C256-15PU|EEPROM 256K 32K x 8 150ns|1|
|W65C02S6TPG-14|MPU 8-bit Microprocessor|1|
|W65C22S6TPG-14|VIA Versatile Interface Adapter|1|
|R65C51P2|ACIA Specialised Asynch Communication Interface Adapter|1|
|CD74HC132E|Logic Gates Quad 2-In Schmit Trigger|1|
|MXO45-3C-1M0000|1MHZ Oscillator DIP-14|1|
|DS1813-10+|Supervisory Circuits 5V EconoReset w/Pushbutton|1|
|N/A|1.8942MHz Crystal|1|
|CP2102|USB to UART Board| 
|TXB0104|Voltage Levels 4-Bit Bi-directional V-Level Translator|1|
|100nf|100nf Ceramic Capacitor|10|
|10uf|10uf Capacitor|2|
|3K3|3.3K ohm resistors|10|

Please note that while WDC also make a version of the 65C51 code here is optimised to work for the Rockwell version as the WDC has a number of bugs that make it unusable. 

