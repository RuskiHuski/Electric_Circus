res_key = keyboard_check(ord("R"))

if (res_key) {
	room_restart();
	show_debug_message("restart")
} else {
	show_debug_message("nope")
}