if (!keyboard_check(ord("E")) && !keyboard_check(ord("Q")) && timer < 10) {
	timer += 1
}

if (timer == 10) {
if (keyboard_check(ord("E"))) {
	global.char += 1;
	timer = 0
}

if (keyboard_check(ord("Q"))) {
	global.char -= 1;
	timer = 0
}

if (global.char < 1) {
	global.char = 3;
	timer = 0
}

if (global.char > 3) {
	global.char = 1;
	timer = 0
}
}

show_debug_message(global.char)