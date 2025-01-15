/// @description Go into another room

if (!instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent) && nearbyPlayer) {
	if (global.game_data.gameStatus == 0) {
		scr_showDialogue(obj_dialogue_office_readBook);
	} else if (global.game_data.gameStatus == 50) {
		global.game_data.gameStatus = 55;
		room_goto(rm_omnitech_street);
	} else if (global.game_data.gameStatus == 600 || global.game_data.gameStatus == 1000) {
		scr_showDialogue(obj_dialogue_cafe_cantexit);
	} else if (global.game_data.gameStatus == 650) {
		global.game_data.gameStatus = 700;
		if (global.game_data.gender == 0) {
			scr_playSequence(seq_vicolo_journalist_running_male);
		} else {
			scr_playSequence(seq_vicolo_journalist_running_female);
		}
	} else if (global.game_data.gameStatus == 1050) {
		global.game_data.gameStatus = 1100;
		room_goto(rm_boss_0);
	}

}