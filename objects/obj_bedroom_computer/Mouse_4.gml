/// @description Open computer

var can_click_on_hover = (
	nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
	&& !instance_exists(obj_dialogue_parent)
);

if (can_click_on_hover) {
	if (global.game_data.gameStatus == 955) {
		var viewport_coord = scr_get_viewport_coord();
		var center_y = viewport_coord[1]; 
	
		if (!instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			if (!instance_exists(obj_bedroom_computer_clean)) {
				instance_create_depth(400, center_y, -10000, obj_bedroom_computer_clean);
			}
		}
	}
}