/// @description Exit the room
if (nearbyPlayer && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	if (global.game_data.gameStatus == 550) {
		global.game_data.gameStatus = 600;
		room_goto(rm_office_1);
	} else {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	}
}