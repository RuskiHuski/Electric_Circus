if (place_meeting(x, y+2, obj_solid) || place_meeting(x, y+1, obj_crate)) {
	vspd = 0;
}

if (!place_meeting(x, y+2, obj_solid) && !place_meeting(x, y+1, obj_crate)) {
	if (vspd < 10) {
	vspd += grav;
	}
}
y += vspd

if (!place_meeting(x-4, y, Eli) || place_meeting(x+hspd, y+grav, obj_solid) || place_meeting(x+hspd, y+grav, obj_crate)) {
	hspd = 0;
} 

	if (place_meeting(x-4, y, Eli) && keyboard_check(vk_right)) {
		hspd +=1;
	} 
	if (place_meeting(x+4, y, Eli) && keyboard_check(vk_left)) {
	hspd -=1;
	} 


x += hspd

