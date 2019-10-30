//show_debug_message(rawData)
rawData = ""
rawData = arduino_read_line(global.ard);

data = string_copy(rawData, 1, 7);
joyData = string_copy(data, 1, 3);
sensorData =  string_copy(data, 4, 7);

//show_debug_message(joyData)

if joyData == "lef" {
	global.right = 0;
	global.left = 1;
}

if joyData == "rig" {
	global.left = 0;
	global.right = 1;
}

if joyData == "upj" {
	
}

if joyData == "dow" {
	
}

if sensorData == "butt" {
	global.jump = 1;
	show_debug_message(sensorData)
}

if sensorData == "joyb" {
	
}

if string_char_at(sensorData, 1) == "p" {
	if string_digits(sensorData) == "" {
		global.pressure = 0
	} else {
		global.pressure = real(string_digits(sensorData))
	}
	show_debug_message(pressure)
}

if string_char_at(sensorData, 1) == "d" {
	if string_digits(sensorData) == "" {
		global.distance = 0
	} else {
		global.distance = real(string_digits(sensorData))
	}
	show_debug_message(distance)
}