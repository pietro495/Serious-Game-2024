/// @description Enter 

if (nearbyPlayer) {
	if (global.game_data.gameStatus == 19) {
		global.game_data.gameStatus = 20;
		room_goto(rm_office_1);
	} else {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	}
}
