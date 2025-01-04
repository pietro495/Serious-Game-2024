/// @description Handle back click

// Otteniamo la posizione della telecamera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Calcoliamo la posizione del mouse rispetto alla vista
var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y

// Verifica se il mouse è sopra l'oggetto
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(computed_mouse_x, computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	with (obj_vicolo_tastierino) {
		if (string_length(currentCode) > 0) {
	        currentCode = string_copy(currentCode, 1, string_length(currentCode) - 1);
	    }
	}
}