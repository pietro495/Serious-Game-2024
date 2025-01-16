/// @description Sleep

if (nearbyPlayer && global.game_data.gameStatus == 960 && (!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))) {
	global.playerControl = false;
	obj_player.image_alpha = 0;
	if (global.game_data.gender == 0) {
		scr_playSequence(seq_bedroom_wakeup_male);
	} else {
		scr_playSequence(seq_bedroom_wakeup_female);
	}
}