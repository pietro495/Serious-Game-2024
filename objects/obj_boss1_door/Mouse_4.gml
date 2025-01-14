/// @description Exit the room

/*if (global.game_data.gameStatus == 22) {
	scr_showDialogue(obj_dialogue_boss0_cantenter);
} else if (global.game_data.gameStatus >= 23) {
	global.game_data.gameStatus = 24;
	room_goto(rm_boss_1);
}*/

if (!instance_exists(obj_overlay) && nearbyPlayer) {
	if (global.game_data.gameStatus == 24) {
		scr_showDialogue(obj_dialogue_boss1_cantenter);
	} else if (global.game_data.gameStatus == 25) {
		if (!instance_exists(obj_boss1_indovinello) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
			instance_create_depth(400, 310, -10000, obj_boss1_indovinello);
		}
	} else if (global.game_data.gameStatus >= 26) {
		global.game_data.gameStatus = 27;
		room_goto(rm_boss_3);
	}
}