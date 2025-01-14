/// @description Go into another room

if (!instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent) && nearbyPlayer) {
	if (global.game_data.gameStatus == 0) {
		scr_showDialogue(obj_dialogue_office_readBook);
	} else if (global.game_data.gameStatus == 1) {
		global.game_data.gameStatus = 2;
		room_goto(rm_omnitech_office);
	} else if (global.game_data.gameStatus == 12 || global.game_data.gameStatus == 20) {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	} else if (global.game_data.gameStatus == 13) {
		global.game_data.gameStatus = 14;
		if (global.game_data.gender == 0) {
			scr_playSequence(seq_vicolo_journalist_running_male);
		} else {
			scr_playSequence(seq_vicolo_journalist_running_female);
		}
	} else if (global.game_data.gameStatus == 21) {
		global.game_data.gameStatus = 22;
		room_goto(rm_boss_0);
	}

}