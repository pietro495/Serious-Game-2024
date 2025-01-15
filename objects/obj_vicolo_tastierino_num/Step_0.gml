/// @description Handle number click
var valueToAdd = value;

// Verifica se il mouse è sopra l'oggetto
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(global.computed_mouse_x, global.computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	with (obj_vicolo_tastierino) {
		if (string_length(currentCode) < 4) {
			currentCode += valueToAdd;
		}
	}
}