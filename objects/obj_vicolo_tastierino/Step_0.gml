/// @description Insert description here
// You can write your code in this editor

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

show_debug_message(computed_mouse_x);
show_debug_message(computed_mouse_y);