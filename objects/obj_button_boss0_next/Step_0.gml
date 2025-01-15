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
	if (instance_exists(obj_boss0_indovinello)) {
		with (obj_boss0_indovinello) {
			if (string_lower(obj_input_box_boss0.input_text) == "phishing") {
				global.game_data.gameStatus = 1150;
				global.playerControl = true;
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
			}
		}
	}
}
