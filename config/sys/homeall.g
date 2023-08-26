; homeall.g
; called to home all axes
;
; CHANGE LINE 15 MOVE TO CENTER

G91                     	; relative positioning
G0 H2 Z20 F600		        ; lift Z relative to current position
G0 H1 X-2045 Y965 F10000	; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X-2045 F10000         ; home X axis
G1 H1 Y965 F10000           ; home Y axis
G1 X5 Y-5 F5000	          	; go back a few mm
G1 H1 X-2045 F360       	; move slowly to X axis endstop once more (second pass)
G1 H1 Y965 F360         	; then move slowly to Y axis endstop
G90                     	; absolute positioning
G0 X1000 Y500 F15000			; move to center
G30							; Z-Probe
G1 Z800 F700		; move near z endstop
G1 H1 Z900 F250   ; move slowly to X axis endstop once more (second pass)
G1 Z100 F700


; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning