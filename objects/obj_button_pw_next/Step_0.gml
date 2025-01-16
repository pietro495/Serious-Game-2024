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
	if (instance_exists(obj_street_control)) {
		var isCorrect = array_equals(obj_street_control.player_choices, obj_street_control.correct_choices);
		
		if (isCorrect) {
			if (!audio_is_playing(snd_success)) {
				audio_play_sound(snd_success, 1, false, 1, 0.5);
			}
			show_message("Complimenti, hai segnato tutte le password sicure");
			
			if (!instance_exists(obj_street_quiz)) {
				var viewport_coord = scr_get_viewport_coord();
				var center_y = viewport_coord[1]; 
		
				instance_create_depth(16, 200, -10000, obj_street_quiz);
			}
		} else {
			if (!audio_is_playing(snd_fail)) {
				audio_play_sound(snd_fail, 1, false);
			}
			show_message("Mi dispiace, ma hai sbagliato a segnare alcune password. Riprova");
			obj_street_control.player_choices = [false, false, false, false, false, false, false, false, false, false, false, false];
		}
	}
}
