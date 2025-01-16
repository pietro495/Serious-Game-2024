/// @description Sleep

if (global.game_data.gameStatus == 960) {
	global.playerControl = false;
	if (global.game_data.gender == 0) {
		scr_playSequence(seq_bedroom_wakeup_male);
	} else {
		scr_playSequence(seq_bedroom_wakeup_female);
	}
}