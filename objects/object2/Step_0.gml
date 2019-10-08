/// @description Insert description here
// You can write your code in this editor

image_speed = 0

//key binds
var rkey = keyboard_check(vk_right)
var lkey = keyboard_check(vk_left)
var jkey = keyboard_check(vk_up)

// checking if on ground
if (place_meeting(x, y+1, obj_solid)) {
	vspd = 0;
		if (jkey) {
		vspd = -jspd
	}
} 

if (!place_meeting(x, y+1, obj_solid)) {	//if falling without jumpkey
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

// both keys or neither are being pressed
if ((!rkey && !lkey) || (rkey && lkey)) {
	hspd = 0;
	image_speed = 0;
	if (jkey) {
		image_speed = 1;
	}
}

// collision check horizontal
if (place_meeting(x+hspd, y, obj_solid)) {
	while (!place_meeting(x+sign(hspd), y, obj_solid)){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

//collision check vertical
if (place_meeting(x, y+vspd, obj_solid)) {
	while (!place_meeting(x, y+sign(vspd), obj_solid)){
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd

