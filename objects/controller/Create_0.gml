ard = arduino_create("COM11", 9600);

show_debug_message(arduino_connected(ard));
show_debug_message("working");