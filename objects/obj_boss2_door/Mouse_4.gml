/// @description Go to next room

if (nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus >= 1320) {
		global.game_data.gameStatus = 1350;
		room_goto(rm_boss_3);
	} else {
		scr_showDialogue(obj_dialogue_boss2_cantenter);
	}
}