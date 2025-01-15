/// @description Handle mouse click
hovering_over_next = (global.computed_mouse_x > 710 && global.computed_mouse_x < 750 && global.computed_mouse_y > 586 && global.computed_mouse_y < 611);
hovering_over_prev = (global.computed_mouse_x > 46 && global.computed_mouse_x < 84 && global.computed_mouse_y > 586 && global.computed_mouse_y < 611);

var click_processed = false;

if (!click_processed && hovering_over_next && mouse_check_button_pressed(mb_left) && currentPage < maxPage) {
    if (global.game_data.gameStatus >= 450 && currentPage == 1) {
		currentPage = 2;
	} else if (global.game_data.gameStatus >= 950 && currentPage == 2) {
		currentPage = 3;
	}
	
	click_processed = true;
}
if (!click_processed && hovering_over_prev && mouse_check_button_pressed(mb_left) && currentPage > 1) {
	currentPage -= 1;
	
	click_processed = true;
}