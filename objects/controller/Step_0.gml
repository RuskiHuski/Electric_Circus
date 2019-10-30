//show_debug_message(rawData)
global.right = 0
global.left = false
global.jump = false

rawData = ""
rawData = arduino_read_line(global.ard);

data = string_copy(rawData, 1, 7);
joyData = string_copy(data, 1, 3);
sensorData =  string_copy(data, 4, 7);

//show_debug_message("Joy: " + joyData + " Sensor: " + sensorData)

if joyData == "lef" {
	global.right = false;
	global.left = true;
}

if joyData == "rig" {
	global.left = false;
	global.right = true;
}

if joyData == "upj" {
	
}

if joyData == "dow" {
	
}

if sensorData == "butt" {
	global.jump = true;
	//show_debug_message(sensorData)
}

if sensorData == "joyp" {
	global.char = 2
}

if string_char_at(sensorData, 1) == "p" {
	global.char = 3
	if string_digits(sensorData) == "" {
		global.pressure = 0
	} else {
		global.pressure = real(string_digits(sensorData))
	}
	//show_debug_message(global.pressure)
}

if string_char_at(sensorData, 1) == "d" {
	global.char = 1
	if string_digits(sensorData) == "" {
		global.distance = 0
	} else {
		global.distance = real(string_digits(sensorData))
	}
	//show_debug_message(global.distance)
}

show_debug_message("controller: " + string(global.right))