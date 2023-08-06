## Project 4 - VHDL Claw Crane
The claw crane simulator acts on user inputs on the 8 switches for the X/Y coordinates that the user wants the grappler to be in with coordinates displayed 
on the 2 7-segment displays. 4 push buttons are used for the activation of the extender, the activation of the grappler, moving the claw, and a reset 
button. 4 LEDS represent the extension of the claw as they light up from left to right to extend and turn off from right to left to retract. 1 LED 
represents the grappler with on being a closed claw and off being an open claw. 1 LED is used as a error light that blinks when the claw crane encounters 
a conflict in user inputs and the logic of the claw crane. The claw crane will not move until the push button for moving is pushed despite a difference 
in inputs from the switches. The extender cannot extend when the claw is moving. The claw cannot move when the claw is extended. The grappler cannot close 
when the claw is extending or retracting. Used Mealy Machines for each of X/Y Movement, Extender, and Grappler. Simulated on waveforms and demo'd on board. 
