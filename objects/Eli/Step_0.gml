var rkey = global.right
var lkey = global.left
var jkey = global.jump

if (place_meeting(x, y+1, obj_col)) {
	vspd = 0;
}

if (!place_meeting(x, y+1, obj_col)) {	//if falling without jumpkey
	if (vspd < 10) {
	vspd += grav;
	image_speed = 0
	}
}

if (global.char != 2) {
	hspd = 0
	image_speed = 0
}

if (jkey && global.char == 2 && place_meeting(x, y+1, obj_col)) {
		vspd = -3*jspd 
}

if (global.char == 2) {
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
}


// collision check horizontal
if (place_meeting(x+hspd, y, obj_col)) {
	repeat (abs(hspd = 1)) {
		while (!place_meeting(x+sign(hspd), y, obj_col)){
		x += sign(hspd);
		}
	}
	hspd = 0;
	image_speed = 0;
}
x += hspd;

//collision check vertical
if (place_meeting(x, y+vspd, obj_col)) {
	repeat (abs(vspd = 1)) {
		while (!place_meeting(x, y+sign(vspd), obj_col)){
			y += sign(vspd);
		}
	}
	vspd = 0;
}
y += vspd
