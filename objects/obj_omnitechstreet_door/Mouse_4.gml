/// @description Indovinello

if (nearbyPlayer) {
	if (global.game_data.gameStatus == 55) {
		if (!instance_exists(obj_input_box_omnitechstreet)) {
			instance_create_depth(0, 0, -10001, obj_input_box_omnitechstreet);
		}
		if (!instance_exists(obj_omnitechstreet_indovinello) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			instance_create_depth(400, 300, -10000, obj_omnitechstreet_indovinello);
		}
	} else if (global.game_data.gameStatus == 60) {
		global.game_data.gameStatus = 100;
		room_goto(rm_omnitech_office);
	}
}