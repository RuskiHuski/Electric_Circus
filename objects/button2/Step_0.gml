if (place_meeting(x, y, all_char)) {
	if (keyboard_check(ord("F"))) {
		global.but2 = true
		image_index = 1
		instance_create_depth(2816, 832, 0, obj_solid)
		instance_create_depth(2880, 832, 0, obj_solid)
		instance_create_depth(2880, 768, 0, obj_solid)
	}
}