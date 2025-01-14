/// @description Show dialogue

if (global.game_data.gender == 0) {
	scr_playSequence(seq_vicolo_journalist_end_male);
} else {
	scr_playSequence(seq_vicolo_journalist_end_female);
}
global.game_data.gameStatus = 17;