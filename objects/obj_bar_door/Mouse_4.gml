/// @description Exit the room

if (global.game_data.gameStatus == 11) {
	global.game_data.gameStatus = 12;
	room_goto(rm_office_1);
} else {
	scr_showDialogue(obj_dialogue_cafe_cantexit);
}