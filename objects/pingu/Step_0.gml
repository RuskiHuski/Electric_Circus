//key binds
var rkey = keyboard_check(vk_right)
var lkey = keyboard_check(vk_left)
var jkey = keyboard_check(vk_up)
var wjkey = keyboard_check(vk_space)

if (global.char != 1) {
	hspd = 0
}

// checking if on ground
if (place_meeting(x, y+1, obj_col)) {
	vspd = 0;
	image_angle = 0
		if (jkey && global.char == 1) {
		vspd = -jspd
		sprite_index = p_jump
		image_speed = 1
	}
} 
// check for water
if (place_meeting(x, y, water)) {
	vspd = 4
	if (jkey && !wjkey && global.char == 1) {
		vspd = -2*vspd 
	}
	if (wjkey && !jkey && global.char == 1) {
		vspd = -5.5*vspd
	}
}
if (!place_meeting(x,y,water)) {
	image_angle = 0
}

// gliding
if (!place_meeting(x, y+1, obj_col) && jkey) {	//if jump key is being pressed
		if (vspd < 4) {
		vspd += grav;
		with pingu {
		sprite_index = p_glide;
		}
		image_speed = 1
	}
} else {
	if (!place_meeting(x, y+1, obj_col)) {	//if falling without jumpkey
		if (vspd < 10) {
		vspd += grav;
				with pingu {
		sprite_index = p_jump;
		}
		}
	}
}

if (global.char == 1) {
// going right
if (rkey) {
	hspd = spd;
	if (place_meeting(x, y+grav, obj_col)){
		with pingu {
			sprite_index = p_walk;
		}
	}
	image_speed = 1;
	image_xscale = size
	}

// going left
if (lkey) {
	hspd = -spd;
	if (place_meeting(x, y+grav, obj_col)){
		with pingu {
			sprite_index = p_walk;
		}
	}
	image_speed = 1;
	image_xscale = -size
}

// both keys or neither are being pressed
if ((!rkey && !lkey) || (rkey && lkey)) {
	hspd = 0;
	image_speed = 0;
}
	if (jkey) {
		image_speed = 1;
	}
}
// collision check horizontal
if (place_meeting(x+hspd, y, obj_col)) {
	while (!place_meeting(x+sign(hspd), y, obj_col)){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

//collision check vertical
if (place_meeting(x, y+vspd, obj_col)) {
	while (!place_meeting(x, y+sign(vspd), obj_col)){
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd

if (global.char == 1) {
//water orientation
if (place_meeting(x, y, water)) {
	image_index = p_walk
	if (rkey) {
		image_angle = -90
	} else
	if (lkey) {
		image_angle = 90
	} else 
	if (jkey || wjkey) {
		image_angle = 0
	}
}
}
