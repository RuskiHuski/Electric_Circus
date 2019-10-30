global.jump = 0;
global.right = 0;
global.left = 0;
global.pressure = 0;

global.ard = arduino_create("COM6", 9600);

show_debug_message(arduino_connected(global.ard));
show_debug_message("working");