/// @description Hover

// Otteniamo la posizione della telecamera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Calcoliamo la posizione del mouse rispetto alla vista
var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

// Verifica se il mouse è sopra l'oggetto
if (point_in_rectangle(computed_mouse_x, computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	isHovering = true;
} else {
	isHovering = false;
}

if (isHovering && mouse_check_button_pressed(mb_left)) {
    // Controlla se la risposta selezionata è corretta
	var letter = "";
		
	switch (answer_index) {
		case 0:
			letter = "A";
			break;
		case 1: 
			letter = "B";
			break;
		case 2:
			letter = "C";
			break;
		case 3:
			letter = "D";
			break;
		default:
			letter = "";
			break;
	}
	global.current_answers[global.current_question] = letter;
}