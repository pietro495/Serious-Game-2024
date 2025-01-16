/// @description Exit the room

if (!instance_exists(obj_overlay) && nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus == 1200) {
		scr_showDialogue(obj_dialogue_boss1_cantenter);
	} else if (global.game_data.gameStatus == 1250) {
		if (!instance_exists(obj_boss1_indovinello) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			instance_create_depth(400, 310, -10000, obj_boss1_indovinello);
		}
	} else if (global.game_data.gameStatus >= 1300) {
		global.game_data.gameStatus = 1310;
		room_goto(rm_boss_2);
	}
}