/// @description Enter 

if (nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus == 950) {
		global.game_data.gameStatus = 951;
		room_goto(rm_bedroom);
	} else {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	}
}
