/// @description Indovinello

if (nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus == 55) {
		if (!instance_exists(obj_input_box_omnitechstreet)) {
			instance_create_depth(0, 0, -10001, obj_input_box_omnitechstreet);
		}
		if (!instance_exists(obj_omnitechstreet_indovinello) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			instance_create_depth(400, 300, -10000, obj_omnitechstreet_indovinello);
		}
		if (!instance_exists(obj_omnitechstreet_help)) {
			instance_create_depth(140, 316, -10001, obj_omnitechstreet_help);
		}
	} else if (global.game_data.gameStatus == 60) {
		global.game_data.gameStatus = 65;
		room_goto(rm_omnitech_office);
	}
}