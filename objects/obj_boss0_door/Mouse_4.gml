/// @description Exit the room

if (global.game_data.gameStatus == 22) {
	scr_showDialogue(obj_dialogue_boss0_cantenter);
} else if (global.game_data.gameStatus >= 23) {
	global.game_data.gameStatus = 24;
	room_goto(rm_boss_1);
}