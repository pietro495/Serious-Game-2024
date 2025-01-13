/// @description Confirm password

/*if (string_lower(obj_input_box_boss0.input_text) == "phishing") {
	//global.game_data.gameStatus = 23;
	//global.playerControl = true;
	if (!audio_is_playing(snd_door_unlock)) {
		audio_play_sound(snd_door_unlock, 1, false);
	}
	if (instance_exists(obj_input_box_boss0)) {
		instance_destroy(obj_input_box_boss0);
	}
	if (instance_exists(obj_boss0_indovinello)) {
		instance_destroy(obj_boss0_indovinello);
	}
    show_message("La porta si è aperta!");
} else {
    show_message("Risposta sbagliata.");
	obj_input_box_boss0.input_text = "";
}*/

if (array_equals(currentOrder, correctOrder)) {
	if (!audio_is_playing(snd_door_unlock)) {
		audio_play_sound(snd_door_unlock, 1, false);
	}
	if (instance_exists(obj_boss1_eye)) {
		instance_destroy(obj_boss1_eye);
	}
	if (instance_exists(obj_boss1_hacker)) {
		instance_destroy(obj_boss1_hacker);
	}
	if (instance_exists(obj_boss1_shield)) {
		instance_destroy(obj_boss1_shield);
	}
	if (instance_exists(obj_boss1_phishing)) {
		instance_destroy(obj_boss1_phishing);
	}
	if (instance_exists(obj_boss1_indovinello)) {
		instance_destroy(obj_boss1_indovinello);
	}
	
	global.game_data.gameStatus = 26;
	show_message("La porta si è aperta!");
} else {
    show_message("Ordine sbagliato.");
	currentOrder = [];
}