/// @description Handle hover

// Otteniamo la posizione della telecamera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Calcoliamo la posizione del mouse rispetto alla vista
var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

if (point_in_rectangle(computed_mouse_x, computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
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
