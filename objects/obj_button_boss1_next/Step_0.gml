/// @description Handle hover
if (point_in_rectangle(global.computed_mouse_x, global.computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	isHovering = true;
} else {
	isHovering = false;
}

if (isHovering) {
	sprite_index = spr_btn_quiz_goon;
} else {
	sprite_index = spr_btn_quiz_goon_disabled;
}

if (isHovering && mouse_check_button_pressed(mb_left)) {	
	if (instance_exists(obj_boss1_indovinello)) {
		with (obj_boss1_indovinello) {
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
	
				global.game_data.gameStatus = 1300;
				show_message("La porta si è aperta!");
			} else {
			    show_message("Ordine sbagliato.");
				currentOrder = [];
			}
		}
	}
}
