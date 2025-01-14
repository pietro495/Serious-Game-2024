/// @description Confirm password

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