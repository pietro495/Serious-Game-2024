/// @description Confirm password

if (string_lower(obj_input_box_omnitechstreet.input_text) == "hacker") {
	global.game_data.gameStatus = 60;
	global.playerControl = true;
	if (!audio_is_playing(snd_door_unlock)) {
		audio_play_sound(snd_door_unlock, 1, false);
	}
	if (instance_exists(obj_input_box_omnitechstreet)) {
		instance_destroy(obj_input_box_omnitechstreet);
	}
	if (instance_exists(obj_omnitechstreet_indovinello)) {
		instance_destroy(obj_omnitechstreet_indovinello);
	}
    show_message("La porta si è aperta!");
} else {
	if (!audio_is_playing(snd_bad_password)) {
		audio_play_sound(snd_bad_password, 1, false);
	}
    show_message("Risposta sbagliata.");
	obj_input_box_omnitechstreet.input_text = "";
}