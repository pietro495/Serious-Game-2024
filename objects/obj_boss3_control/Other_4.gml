/// @description Show sequence

if (global.game_data.gameStatus == 1350) {
	if (global.game_data.gender == 0) {
		scr_playSequence(seq_boss3_run_male);
	} else {
		scr_playSequence(seq_boss3_run_female);
	}
}