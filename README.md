# ECE 124 VHDL Projects Repo
Repository containing completed Altera VHDL projects of interest in ECE 124 course
## Project 2 - VHDL ALU
The ALU takes 2 4-bit inputs from the 8 switches on the board and displays each 4-bit input as a hexadecimal digit on each of the 7-segment displays.
A push button can be pushed to switch the output into the sum of the 2 4-bit inputs and display on the same 2 7-segment displays. Used behavioural and 
structural styles of modelling. Simulated on waveforms and demo'd on board.
## Project 3 - VHDL HVAC Logic
HVAC Logic is a HVAC simulator. The first 4 switches are inputs for the desired temperature to be maintained. The next 4 switches are input for the desired 
vacation temperature to be maintained. The push buttons are inputs for different modes and settings: vacation mode, test mode, window open, door open. The 
LEDS represents: the furnace, at temperature, air conditioner, blower, winder, door, test pass, and vacation. 1 7-segment display shows the current 
temperature and the second 7-segment display shows the desired temperature. Depending on the different inputs of the switches and push buttons, the combination 
of furnace, AC, and blower would be on or off, as well as the current temperature will increment or decrement until it matches the desired temperature. 
Simulated on waveforms and demo'd on board.
## Project 4 - VHDL Claw Crane
The claw crane simulator acts on user inputs on the 8 switches for the X/Y coordinates that the user wants the grappler to be in with coordinates displayed 
on the 2 7-segment displays. 4 push buttons are used for the activation of the extender, the activation of the grappler, moving the claw, and a reset 
button. 4 LEDS represent the extension of the claw as they light up from left to right to extend and turn off from right to left to retract. 1 LED 
represents the grappler with on being a closed claw and off being an open claw. 1 LED is used as a error light that blinks when the claw crane encounters 
a conflict in user inputs and the logic of the claw crane. The claw crane will not move until the push button for moving is pushed despite a difference 
in inputs from the switches. The extender cannot extend when the claw is moving. The claw cannot move when the claw is extended. The grappler cannot close 
when the claw is extending or retracting. Used Mealy Machines for each of X/Y Movement, Extender, and Grappler. Simulated on waveforms and demo'd on board. 
