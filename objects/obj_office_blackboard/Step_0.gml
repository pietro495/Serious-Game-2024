/// @description Highlight hoverable clues

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

hovering_over_clue1 = (computed_mouse_x > 49 && computed_mouse_x < 263 && computed_mouse_y > 239 && computed_mouse_y < 249);
hovering_over_clue2 = (computed_mouse_x > 247 && computed_mouse_x < 407 && computed_mouse_y > 350 && computed_mouse_y < 361);

//show_debug_message(mouse_x);
//show_debug_message(mouse_y);