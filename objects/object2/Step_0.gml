/// @description Insert description here
// You can write your code in this editor

image_speed = 0

//key binds
var rkey = keyboard_check(vk_right)
var lkey = keyboard_check(vk_left)
var jkey = keyboard_check(vk_up)

if (global.char != 3) {
	hspd = 0
	image_speed = 0
}

// checking if on ground
if (place_meeting(x, y+1, obj_col)) {
	vspd = 0;
	if (jkey && global.char == 3) {
		if (jpow<20){
			jpow +=1;
		}
		if (image_yscale >.7) {
			image_yscale -= 0.015;
			
		}
	}
	if (keyboard_check_released(jkey) && global.char == 3){
		vspd = -jpow
		inair = true
		if (inair == true) {
			jpow = 0
			image_yscale =1;
		}
	} 
}

if (!place_meeting(x, y+1, obj_col)) {	//if falling without jumpkey
	if (vspd < 10) {
	vspd += grav;
	}
}

if (global.char == 3) {
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

