/// @description Insert description here
// You can write your code in this editor

follow = pingu

camera = camera_create()
//window_set_fullscreen(true);

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(1024,768,1,10000)

camera_set_view_mat (camera, vm)
camera_set_proj_mat (camera, pm)

view_camera[0] = camera



xTo = x
yTo = y
