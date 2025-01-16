/// @description Go to next room

if (global.game_data.gameStatus >= 1320) {
	global.game_data.gameStatus = 1350;
	room_goto(rm_boss_3);
} else {
	scr_showDialogue(obj_dialogue_boss2_cantenter);
}
