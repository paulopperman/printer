; homez.g
; called to home the Z axis
;
; CHANGE LINE 7 MOVE TO CENTER
; FIX MOVE Z DOWN FAST FIRST

G90               		; absolute positioning
G0 X1000 Y500 F10000		; bring X, Y to center
G91 					; relative positioning
G0 H2 Z5 F600   		; lift Z relative to current position
G30            			; probe until stop and set Z as trigger height
G90
G1 Z800 F400		; move near z endstop
G1 H1 Z900 F250   ; move slowly to X axis endstop once more (second pass)
G1 Z100 F700

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 Z5 F100       ; lift Z relative to current position
;G90              ; absolute positioning

