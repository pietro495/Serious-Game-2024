/// @description Indovinello

if (nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus == 1100) {
		if (!instance_exists(obj_input_box_boss0)) {
			instance_create_depth(0, 0, -10001, obj_input_box_boss0);
		}
		if (!instance_exists(obj_boss0_indovinello) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			instance_create_depth(400, 300, -10000, obj_boss0_indovinello);
		}
		if (!instance_exists(obj_boss0_help)) {
			instance_create_depth(140, 360, -10001, obj_boss0_help);
		}
	}
}