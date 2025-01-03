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

if (isHovering && mouse_check_button_pressed(mb_left) && array_length(global.current_answers) == global.current_question + 1 && !hasClickedOnceWhileActive) {	
	//hasClickedOnceWhileActive = true;
	
	global.quiz_questions[? "omnitech"] = [
	    {question_sprite: spr_phishing_minigame_question, options_sprites: [spr_omnitech_quiz_q1_a3, spr_omnitech_quiz_q1_a1, spr_omnitech_quiz_q1_a2, spr_omnitech_quiz_q1_a4], correct_option: 1},
	    {question_sprite: spr_phishing_minigame_question, options_sprites: [spr_omnitech_quiz_q2_a2, spr_omnitech_quiz_q2_a4, spr_omnitech_quiz_q2_a3, spr_omnitech_quiz_q2_a1], correct_option: 3}
	];
	
	var userAnswer = global.current_answers[global.current_question];
	var decodedAnswer = -1;
	var correctAnswer = global.quiz_questions[? "omnitech"][global.current_question].correct_option;
	switch (userAnswer) {
		case "A":
			decodedAnswer = 0;
			break;
		case "B": 
			decodedAnswer = 1;
			break;
		case "C":
			decodedAnswer = 2;
			break;
		case "D":
			decodedAnswer = 3;
			break;
		default:
			decodedAnswer = -1;
			break;
	}
	show_debug_message(correctAnswer);
	show_debug_message(decodedAnswer);
	if (correctAnswer == decodedAnswer) {
		global.quizScore += 1;
	}
	global.current_question += 1; // Aumenta l'indice della domanda corrente
	
	// Verifica se ci sono ancora domande nel quiz
	if (global.current_question >= array_length(global.quiz_questions[? "omnitech"])) {	
		//elimino le rispsoste alla fine del quiz
		for (var i = 0; i < array_length(global.answer_objects); i++) {
			instance_destroy(global.answer_objects[i]);
		}
			 
		//elimino le domande alla fine del quiz
		with(obj_question_sprite) {
			instance_destroy();
		}
			
		if (global.quizScore == array_length(global.quiz_questions[? "omnitech"])) {
			show_message("Complimenti! Hai risposto correttamente a tutte le domande!");
		} else {
			show_message("Mi dispiace, ma non hai risposto correttamente a tutte le domande. Riprova.");
			global.quizScore = 0;
			global.current_question = 0;
			global.answer_objects = [];
			global.wrong_answer = [];
			global.current_answers = [];
			
			show_quiz_question("omnitech"); 
		}	
	} else {
	    // Altrimenti, mostra la domanda successiva
	    show_quiz_question("omnitech"); 
	}
}