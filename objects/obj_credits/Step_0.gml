/// @description Insert description here

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

var hovering_over_btn = (computed_mouse_x > 202 && computed_mouse_x < 602 && computed_mouse_y > 549 && computed_mouse_y < 654);

if (hovering_over_btn && mouse_check_button_pressed(mb_left)) {
	room_goto(rm_menu);
}