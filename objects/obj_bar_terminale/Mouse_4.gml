/// @description Open terminal

if (nearbyPlayer) {
	if (global.game_data.gameStatus == 400) {
		if (!instance_exists(obj_bar_terminale_clean) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			var viewport_coord = scr_get_viewport_coord();
			var center_x = viewport_coord[0];
			var center_y = viewport_coord[1]; 
		
			instance_create_depth(400, 264, -10000, obj_bar_terminale_clean);
		}
	}

	if (global.game_data.gameStatus == 450) {
		if (!instance_exists(obj_input_box_johnsmith)) {
			instance_create_depth(0, 0, -10001, obj_input_box_johnsmith);
		}
		if (!instance_exists(obj_bar_terminale_password) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			instance_create_depth(400, 264, -10000, obj_bar_terminale_password);
		}
	}
}