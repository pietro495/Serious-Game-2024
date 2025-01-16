/// @description Hover
// Verifica se il mouse è sopra l'oggetto
if (point_in_rectangle(global.computed_mouse_x, global.computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
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
	audio_play_sound(snd_phishing_answer, 1, false, 3);
}