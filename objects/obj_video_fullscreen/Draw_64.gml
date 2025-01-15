/// @description Draw video

var viewport_coord = scr_get_viewport_coord();
var center_x = viewport_coord[0]; 
var center_y = viewport_coord[1];

var _videoData = video_draw();
var _videoStatus = _videoData[0];

if (_videoStatus == 0) {
	draw_surface(_videoData[1], 20, 32);
}