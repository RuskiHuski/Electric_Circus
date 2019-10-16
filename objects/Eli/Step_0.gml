var rkey = keyboard_check(vk_right)
var lkey = keyboard_check(vk_left)

if (place_meeting(x, y+1, obj_solid)) {
	vspd = 0;
}

if (!place_meeting(x, y+1, obj_solid) || !place_meeting(x, y+1, obj_crate1)) {	//if falling without jumpkey
	if (vspd < 10) {
	vspd += grav;
	}
}

// going right
if (rkey) {
	hspd = spd;
	image_xscale = 1;
	image_speed = 1;
}

// going left
if (lkey) {
	hspd = -spd;
	image_xscale =  -1;
	image_speed = 1;
}

if ((!rkey && !lkey) || (rkey && lkey)) {
	hspd = 0;
	image_speed = 0;
}

// collision check horizontal
if (place_meeting(x+hspd, y, obj_solid) || place_meeting(x+hspd, y, obj_crate)) {
	repeat (abs(hspd = 1)) {
		while (!place_meeting(x+sign(hspd), y, obj_solid) || !place_meeting(x+hspd, y, obj_crate)){
		x += sign(hspd);
		}
	}
	hspd = 0;
	image_speed = 0;
}
x += hspd;

//collision check vertical
if (place_meeting(x, y+vspd, obj_solid) || place_meeting(x, y+vspd,obj_crate1)) {
	repeat (abs(vspd = 1)) {
		while (!place_meeting(x, y+sign(vspd), obj_solid) && !place_meeting(x, y+vspd,obj_crate1)){
			y += sign(vspd);
		}
	}
	vspd = 0;
}
y += vspd