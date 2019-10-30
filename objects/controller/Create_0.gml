global.jump = false;
global.right = false
global.left = false
global.pressure = 0;

delay = 0
startDelay = 0

global.ard = arduino_create("COM6", 9600);

show_debug_message(arduino_connected(global.ard));
show_debug_message("working");