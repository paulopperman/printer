; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.3.5 on Thu Oct 28 2021 13:14:11 GMT-0400 (Eastern Daylight Time)
G91              	; relative positioning
G1 H2 Z20 F600	    ; lift Z relative to current position
G1 H1 X-2045 F10000	; move quickly to X axis endstop and stop there (first pass)
G1 X5 F6000         ; go back a few mm
G1 H1 X-2045 F360   ; move slowly to X axis endstop once more (second pass)
G90                 ; absolute positioning