; Start G-code

G92 E0 ; Reset Extruder
M140 S{material_bed_temperature} ; Set bed temperature
M104 S{material_print_temperature} ; Set hot end temp.

G28 ; Home all axes while bed heating up
M190 S{material_bed_temperature}; Make sure bed is at correct temp before leveling
G29 ; BL-Touch bed levelling, while hot end is heating.
M109 S{material_print_temperature} ; Make sure hot end is at correct temp before starting print

M300 P1000 ; Beep when starting print
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
