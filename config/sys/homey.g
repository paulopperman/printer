; homey.g
; called to home the Y axis
;
G91                 ; relative positioning
G1 H2 Z20 F600	    ; lift Z relative to current position
G1 H1 Y965 F10000	; move quickly to Y axis endstop and stop there (first pass)
G1 Y-5 F5000	    ; go back a few mm
G1 H1 Y965 F360  	; move slowly to Y axis endstop once more (second pass)
G90               	; absolute positioning