/// @description Confirm password

if (string_lower(obj_input_box_boss0.input_text) == "phishing") {
	global.game_data.gameStatus = 1150;
	global.playerControl = true;
	if (!audio_is_playing(snd_door_unlock)) {
		audio_play_sound(snd_door_unlock, 1, false);
	}
	if (instance_exists(obj_input_box_boss0)) {
		instance_destroy(obj_input_box_boss0);
	}
	if (instance_exists(obj_boss0_help)) {
		instance_destroy(obj_boss0_help);
	}
	instance_destroy();
    show_message("La porta si è aperta!");
} else {
	if (!audio_is_playing(snd_bad_password)) {
		audio_play_sound(snd_bad_password, 1, false);
	}
    show_message("Risposta sbagliata.");
	obj_input_box_boss0.input_text = "";
}