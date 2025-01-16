/// @description Exit the place

if (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause)) {
	if (global.game_data.gameStatus < 200) {
		scr_showDialogue(obj_dialogue_omnitech_cantexit);
	} else {
		room_goto(rm_vicolo_1);
	}
}