/// @description Indovinello

if (global.game_data.gameStatus == 22) {
	if (!instance_exists(obj_input_box_boss0)) {
		instance_create_depth(0, 0, -10001, obj_input_box_boss0);
	}
	if (!instance_exists(obj_boss0_indovinello) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
		instance_create_depth(400, 264, -10000, obj_boss0_indovinello);
	}
}