if (global.but3 == true) {
	instance_destroy()
}

if (place_meeting(x, y+2, obj_col)) {
	vspd = 0;
}

if (!place_meeting(x, y+1, obj_col)) {
	if (vspd < 10) {
	vspd += grav;
	}
}
y += vspd


