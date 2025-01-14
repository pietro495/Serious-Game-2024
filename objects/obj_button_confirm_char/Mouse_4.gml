/// @description Start the game

if (global.game_data.gender == 0 || global.game_data.gender == 1) {
	instance_destroy(obj_select_char_female);
	instance_destroy(obj_select_char_male);
	instance_destroy(obj_select_char_choice);
	instance_destroy(obj_select_char_textdown);
	instance_destroy(obj_select_char_textup);
	instance_destroy(obj_button_confirm_char);
}
if (audio_is_playing(snd_ambient)) {
	audio_stop_sound(snd_ambient);
}
if (global.game_data.gender == 0) {
	scr_playSequence(seq_first_play_male);
} else if (global.game_data.gender == 1) {
	scr_playSequence(seq_first_play_female);
}