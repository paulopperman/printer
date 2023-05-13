; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v3.3.16 on Sat May 13 2023 11:36:35 GMT-0400 (Eastern Daylight Time)
G91              ; relative positioning
G1 H2 Z5 F6000   ; lift Z relative to current position
G1 H1 Y965 F1800 ; move quickly to Y axis endstop and stop there (first pass)
G1 Y-5 F6000     ; go back a few mm
G1 H1 Y965 F360  ; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F6000  ; lower Z again
G90              ; absolute positioning
