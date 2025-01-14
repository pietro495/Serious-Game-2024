/// @description Handle mouse click
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

hovering_over_next = (computed_mouse_x > 710 && computed_mouse_x < 750 && computed_mouse_y > 586 && computed_mouse_y < 611);
hovering_over_prev = (computed_mouse_x > 46 && computed_mouse_x < 84 && computed_mouse_y > 586 && computed_mouse_y < 611);

var click_processed = false;

if (!click_processed && hovering_over_next && mouse_check_button_pressed(mb_left) && currentPage < maxPage) {
    if (global.game_data.gameStatus >= 9 && currentPage == 1) {
		currentPage = 2;
	} else if (global.game_data.gameStatus >= 19 && currentPage == 2) {
		currentPage = 3;
	}
	
	click_processed = true;
}
if (!click_processed && hovering_over_prev && mouse_check_button_pressed(mb_left) && currentPage > 1) {
	currentPage -= 1;
	
	click_processed = true;
}