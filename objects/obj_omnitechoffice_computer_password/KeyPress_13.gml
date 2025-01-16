/// @description Confirm password

if (instance_exists(obj_input_box) && obj_input_box.input_text == "VivaOmnitech") {
	var viewport_coord = scr_get_viewport_coord();
	var center_x = viewport_coord[0]; 
	var center_y = viewport_coord[1]; 
	global.game_data.gameStatus = 150;
	if (!audio_is_playing(snd_good_password)) {
		audio_play_sound(snd_good_password, 1, false);
	}
	instance_create_depth(400, center_y, -10000, obj_omnitechoffice_computer_clean);
} else if (!isLocked) {
	if (instance_exists(obj_input_box)) {
		instance_destroy(obj_input_box);
	}
	welcome = "Password sbagliata!\n Per favore chiudi il computer premendo ESC sulla tastiera e riprova";
	if (!audio_is_playing(snd_bad_password)) {
		audio_play_sound(snd_bad_password, 1, false);
	}
	isLocked = true;
}