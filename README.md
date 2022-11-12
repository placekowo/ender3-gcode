# ender3-gcode
My start and end G-code, for use with Cura and the Ender 3. Modified from the Cura example for the Ender 3.

The main goal is to try do useful things like homing the axis and levelling the bed while waiting for the hot end & bed to heat up. 

The temperatures of both the bed and the hot end are set, then the axis are homed. The printer then waits for the bed to get to temperature before performing bed leveling - I use bilinear bed leveling before each print, which is started with the G28 command. After the bed is leveled, the printer waits for the hot end to get to temperature, before starting printing.

The end G-code is mostly unchanged from the example code, with just a beep added to signify the end of the print.
