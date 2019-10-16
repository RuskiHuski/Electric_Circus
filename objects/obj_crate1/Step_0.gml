var skey = keyboard_check(vk_space)

if (place_meeting(x, y+2, obj_solid) || place_meeting(x, y+1, obj_crate)) {
	vspd = 0;
}

if (!place_meeting(x, y+2, obj_solid) && !place_meeting(x, y+1, obj_crate)) {
	if (vspd < 10) {
	vspd += grav;
	}
}
y += vspd


//smash timer
if (smash < 10) {
	smash +=1
}

//destroys crate if smash is charged and pressed, and Eli collides with the crate
if (smash == 10 && skey && place_meeting(x-8, y, Eli)) {
	instance_destroy()
}

//resets the smash timer
if (skey) {
	smash = 0
}

if (!place_meeting(x-4, y, Eli) && place_meeting(x+hspd, y+grav, obj_solid) || place_meeting(x+hspd, y+grav, obj_crate)) {
	hspd = 0;
} else {
	if (place_meeting(x-4, y, Eli) && keyboard_check(vk_right)) {
		hspd +=1;
	} 
	if (place_meeting(x+4, y, Eli) && keyboard_check(vk_left)) {
	hspd -=1;
	} 
}

x += hspd

