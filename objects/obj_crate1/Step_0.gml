if (place_meeting(x, y+grav, obj_col)) {
	vspd = 0;
}

if (!place_meeting(x, y+1, obj_col)) {
	if (vspd < 10) {
	vspd += grav;
	}
}
y += vspd

if (!place_meeting(x-4, y, Eli) && place_meeting(x+hspd, y+grav, obj_col)) {
	hspd = 0;
} 

if (obj_crate1.y - Eli.y > 12) {
	hspd = 0
} else {
	if (place_meeting(x-4, y, Eli) && keyboard_check(vk_right) && !place_meeting(x+hspd, y-8, obj_col)) {
		hspd +=1;
	} 
	
	if (place_meeting(x+4, y, Eli) && keyboard_check(vk_left)) {
		hspd -=1;
	} 
}
x += hspd

