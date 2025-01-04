/// @description Go into another room

if (global.game_data.gameStatus == 0) {
	scr_showDialogue(obj_dialogue_office_readBook);
} else if (global.game_data.gameStatus == 1) {
	global.game_data.gameStatus = 2;
	room_goto(rm_omnitech_office);
}