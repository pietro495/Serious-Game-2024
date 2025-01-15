/// @description Exit the room

if (nearbyPlayer) {
	if (global.game_data.gameStatus == 1100) {
		scr_showDialogue(obj_dialogue_boss0_cantenter);
	} else if (global.game_data.gameStatus >= 1150) {
		global.game_data.gameStatus = 1200;
		room_goto(rm_boss_1);
	}
}