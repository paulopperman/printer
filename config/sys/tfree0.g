; tfree0.g
; called when tool 0 is freed
;
; Parking position is X0 Y200

M90					; absolute positioning
G1 X10 Y200 F10000	; move rapidly to in front of park location
G1 X0 F400			; move linearly into parked location

; do other things necessary to deselect tool: turn off heater, etc
