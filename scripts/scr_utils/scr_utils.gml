// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_viewport_coord(){
	// Get the camera's position (top-left corner of the viewport)
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);

	// Get the viewport's dimensions
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);

	// Calculate the center of the viewport in room coordinates
	var center_x = cam_x + (view_w / 2);
	var center_y = cam_y + (view_h / 2);
	
	return [center_x, center_y];
}