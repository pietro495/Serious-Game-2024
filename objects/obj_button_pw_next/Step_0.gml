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
	if (instance_exists(obj_street_control)) {
		var isCorrect = array_equals(obj_street_control.player_choices, obj_street_control.correct_choices);
		
		if (isCorrect) {
			show_message("Complimenti, hai segnato tutte le password sicure");
			
			if (!instance_exists(obj_street_quiz)) {
				var viewport_coord = scr_get_viewport_coord();
				var center_y = viewport_coord[1]; 
		
				instance_create_depth(16, 200, -10000, obj_street_quiz);
			}
		} else {
			show_message("Mi dispiace, ma hai sbagliato a segnare alcune password. Riprova");
			obj_street_control.player_choices = [false, false, false, false, false, false, false, false, false, false, false, false];
		}
	}
}
