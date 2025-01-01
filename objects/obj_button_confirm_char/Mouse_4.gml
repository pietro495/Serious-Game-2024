/// @description Start the game

instance_destroy(obj_select_char_female);
instance_destroy(obj_select_char_male);
instance_destroy(obj_select_char_choice);
instance_destroy(obj_select_char_textdown);
instance_destroy(obj_select_char_textup);
instance_destroy(obj_button_confirm_char)

if (global.gender == 0) {
	scr_playSequence(seq_first_play_male);
} else {
	scr_playSequence(seq_first_play_female);
}