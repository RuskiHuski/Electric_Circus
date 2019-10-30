if (place_meeting(x, y-20, obj_crate1)) {
	global.pres = true
	image_index = 1
	for (var i = 0 ; i < 12; i++) {
	instance_create_depth(1408+i*64, 1728, 0, water)
	instance_create_depth(1408+i*64, 1792, 0, water)
	}
}