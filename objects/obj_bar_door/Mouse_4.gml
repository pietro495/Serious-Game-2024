/// @description Exit the room
if (nearbyPlayer) {
	if (global.game_data.gameStatus == 550) {
		global.game_data.gameStatus = 600;
		room_goto(rm_office_1);
	} else {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	}
}