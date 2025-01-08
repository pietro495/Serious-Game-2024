/// @description Enter door

if (global.game_data.gameStatus == 17) {
	global.game_data.gameStatus = 18;
	room_goto(rm_market);
} else {
	scr_showDialogue(obj_dialogue_cafe_cantexit);
}