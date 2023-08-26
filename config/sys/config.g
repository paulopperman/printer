; Configuration file for Duet 3 (firmware version 3.3)
; executed by the firmware on start-up
;
;

; General preferences
M575 P1 S1 B57600              ; enable support for PanelDuet
G90                            ; send absolute coordinates...
M83                            ; ...but relative extruder moves
M550 P"Duet 3"                 ; set printer name
M669 K1                        ; select CoreXY mode 

; Drives

M569 P0.0 S1                     ; physical drive 0.0 goes forwards ; Z1
;M569 P0.1 S1                     ; physical drive 0.1 goes forwards ; Z2
M569 P0.2 S1                     ; physical drive 0.2 goes forwards ; Z3
M569 P0.3 S1                     ; physical drive 0.3 goes forwards ; Z4
;M569 P0.4 S1                     ; physical drive 0.4 goes forwards ; Z5
M569 P0.5 S1                     ; physical drive 0.5 goes forwards ; Z6

M569 P3.0 S0                     ; physical drive 3.0 goes backwards ; X motor ; Backwards to calibrate direction
M569 P3.1 S0                     ; physical drive 3.1 goes backwards ; Y motor ; Backwards to calibrate direction

M569 P3.2 S1					 ; physical drive 3.2 goes forwards ; E0

;M584 X3.0 Y3.1 Z0.0:0.1:0.2:0.3:0.4:0.5 E3.2        ; set drive mapping
M584 X3.0 Y3.1 Z0.0:0.2:0.3:0.5 E3.2  ; remove center z motors
;M671 X-15:100:215 Y190:-10:190 S0.5 ; define leadscrew positioning, testing with 6 motors (not documented)
;M671 X2241:-133.3:-123.9:2217 Y-179.3:-213.9:1128.4:1121.7 S3; measured motor locs

;Remeasured motor locations
M671 X2157:-173:-173:2157 Y-144.7:-144.7:1123.3:1123.3 S3

M350 X16 Y16 Z16 E16 I1                             ; configure microstepping with interpolation
M92 X33.33 Y33.33 Z640.00 E837.00                   ; set steps per mm
M566 X15.00 Y15.00 Z60.00 E2.00                   	; set maximum instantaneous speed changes (mm/min)
M203 X22000.00 Y22000.00 Z600.00 E20000           	; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z10.00 E500.00                 ; set accelerations (mm/s^2)
M906 X3500 Y3500 Z1000  E800 ;I30                 	; set motor currents (mA) and motor idle factor in milliamps
;M84 S30                                            ; Set idle timeout                       
M84 S0                                              ; Disable motor idle current reduction

; Axis Limits
M208 X0 Y75 Z0 S1               ; set axis minima
M208 X2033 Y985 Z857 S0        ; set axis maxima

; Endstops
M574 X1 S1 P"!3.io1.in"           ; configure switch-type (e.g. microswitch) endstop for low end on X via pin 3.io1.in
M574 Y2 S1 P"!3.io2.in"           ; configure switch-type (e.g. microswitch) endstop for high end on Y via pin 3.io2.in
M574 Z2 S1 P"!io7.in+!io8.in+!io2.in+!io6.in"             ; configure switch-type (e.g. microswitch) endstop for hi end on Z via pin io1.in active-low
;M574 Z2 S1 P"!io2.in"

; Z-Probe
M558 P8 C"^3.io0.in" H5 F400:120 T18000 ; set Z probe type to switch and the dive height + speeds
G31 P500 X0 Y0 Z0               	; set Z probe trigger value, offset and trigger height (measured as 2.242)
M557 X80:2040 Y20:860 P5:5       		; define mesh grid

; Heaters
; -- Left Bed Heaters
; ---- Thermistors
; M308 S0 P"1.temp0" Y"thermistor" A"BedA" T9000 B4138 ; configure sensor 0-3 as thermistor on pin 1.temp0-2, 2.temp0
;M308 S1 P"1.temp1" Y"thermistor" A"BedB" T9000 B4138 ;
;M308 S2 P"1.temp1" Y"thermistor" A"BedC" T9000 B4138 ;
;M308 S3 P"2.temp0" Y"thermistor" A"BedD" T9000 B4138 ;

; ---- Heaters (pins change, sensors assigned)
;M950 H0 C"1.io0.out" T0					; create bed heater output on 1.io0 and map it to sensor 0
;M950 H1 C"1.io1.out" T1 I1					; create bed heater inverted output on 3.io1-3 and map it to sensor 1-3
;M950 H2 C"1.io2.out" T2 I1					;
;M950 H3 C"1.io3.out" T3 I1					;

; ---- Modes (same for each)
; M307 H0 B1 R0.1 S1.00                       ; enable bang-bang mode for the bed heater and set PWM limit
;M307 H1 B1 R0.1 S1.00						;
;M307 H2 B1 R0.1 S1.00 						;
;M307 H3 B1 R0.1 S1.00 						;

; ---- Map Heated Beds to H0-3
;M140 P0 H0                                  ; map heated bed to heater 0
;M140 P1 H1									;
;M140 P2 H2 								;
;M140 P3 H3 									;

; ---- Temperature Limits (same for each)
; M143 H0 S100                                ; set temperature limit for heater 0 to 100C
;M143 H1 S100								;
;M143 H2 S100								;
;M143 H3 S100								;

; -- Tool Heaters
M308 S8 P"3.temp0" Y"thermistor" A"Ext_Heater" T100000 B4267 ; configure sensor 0 as thermistor on pin 3.temp0

M950 H8 C"3.out0" T8                             			; create nozzle heater output on 3.out0 and map it to sensor 8
M307 H8 R1.444 K0.318:0.000 D8.48 E1.35 S1.00 B0 V23.3
M143 H8 S300                                     		; set temperature limit for heater 8 to 300C

;M950 H9 C"3.out1" T8                             		; create nozzle heater output on 3.out1 and map it to sensor 8
;M307 H9 R2.450 C198.9 D8.87 S1.00 V23.9  			 	; from autotuned and adjusted PID, see miscellanous
;M143 H9 S300                                            ; set temperature limit for heater 9 to 300C

; Fans
M950 F0 C"3.out4"                        ; Extruder Fan, 12V
M106 P0 C"Ext_Fan" S0.0 H-1              ; set fan 0 name and value. Thermostatic control is turned off
;M950 F1 C"2.out5" 						 ; Water Fan, 12V
;M106 P1 C"Water_Fan" S1.0 H8:9 T50	 	 ; set fan 1 name and value. Thermostatic control is turned on to trigger at 50C
M950 F2 C"3.out6" 						 ; Water Pump, 24V
M106 P2 C"Water_Pump" S1.0 H8 T50	 	 ; same settings as water pump

; Tools
M563 P0 S"Ext" D0 H8 F0	             	 ; define tool 0
G10 P0 X0 Y0 Z0                              ; set tool 0 axis offsets
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

; Miscellaneous

; Find PID Values
;	 Tune H8 via M303 H8 S240

; 	Individual PID
; 	M307 H8 R2.335 C250.8 D4.60 S1.00 V24.0

; 	Calculate PID
; 	sum of the gains (R)
; 	average of the cooling rate and dead time (C, D)

; Dimensions
; X2040 Y960 Z900

; Motor Data 
; 	Belt: ll3mr15
; 	Belt Pitch: GT2 /// 3mm
; 	Motor OE-06bs 
; 	Pulley Teeth = 44
; 	Step Angle = 1.8
; 	Steps per mm 36 

; ZProbe model = Lj18A3-8-z/cx

; TODO
; Custom settings are not defined
; Idle motor current edit
; Heater numbers to be changed
; Homeall with correct dimensions


; z-probe trigger 2.242

; Macros I want to make:
; PID Tune Tool Heater
; Manual Bed Levelling Assistant    