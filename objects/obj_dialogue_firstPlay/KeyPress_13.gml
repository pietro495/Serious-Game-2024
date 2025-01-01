/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
	alarm[0] = 10;
	
	if (global.game_data.gender == 0) {
		scr_playSequence(seq_first_play_end_male);
	} else {
		scr_playSequence(seq_first_play_end_female);
	}
} else {
	currentDialog = dialog.pop(); 
}