/// @description Enter door

if (nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus == 850) {
		global.game_data.gameStatus = 900;
		room_goto(rm_market);
	} else {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	}
}