/// @description Handle hover
if (point_in_rectangle(global.computed_mouse_x, global.computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	isHovering = true;
} else {
	isHovering = false;
}

if (isHovering && mouse_check_button_pressed(mb_left) && array_length(global.current_answers) == global.current_question + 1 && !hasClickedOnceWhileActive) {	
	//hasClickedOnceWhileActive = true;
	
	var userAnswer = global.current_answers[global.current_question];
	var decodedAnswer = -1;
	var correctAnswer = global.quiz_questions[? quizName][global.current_question].correct_option;
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
	if (correctAnswer == decodedAnswer) {
		global.quizScore += 1;
	}
	global.current_question += 1; // Aumenta l'indice della domanda corrente
	
	// Verifica se ci sono ancora domande nel quiz
	if (global.current_question >= array_length(global.quiz_questions[? quizName])) {	
		// elimino le rispsoste alla fine del quiz
		for (var i = 0; i < array_length(global.answer_objects); i++) {
			instance_destroy(global.answer_objects[i]);
		}
			 
		// elimino le domande alla fine del quiz
		with(obj_question_sprite) {
			instance_destroy();
		}
			
		if (global.quizScore == array_length(global.quiz_questions[? quizName])) {
			if (!audio_is_playing(snd_success)) {
				audio_play_sound(snd_success, 1, false, 1, 0.5);
			}
			show_message("Complimenti! Hai risposto correttamente a tutte le domande!");
			global.quizScore = 0;
			global.current_question = 0;
			global.answer_objects = [];
			global.wrong_answer = [];
			global.current_answers = [];
			
			if (quizName == "omnitech") {
				instance_destroy(obj_omnitechoffice_computer_quiz);
				instance_destroy(obj_button_quiz_next_omnitech);
			} else if (quizName == "johnsmith") {
				instance_destroy(obj_bar_terminale_quiz);
				instance_destroy(obj_button_quiz_next_johnsmith);
			} else if (quizName == "street") {
				instance_destroy(obj_street_quiz);
				instance_destroy(obj_button_quiz_next_street);
			} else if (quizName == "bedroom") {
				instance_destroy(obj_bedroom_computer_quiz);
				instance_destroy(obj_button_quiz_next_bedroom);
			}
		} else {
			if (!audio_is_playing(snd_fail)) {
				audio_play_sound(snd_fail, 1, false);
			}
			show_message("Mi dispiace, ma non hai risposto correttamente a tutte le domande. Riprova.");
			global.quizScore = 0;
			global.current_question = 0;
			global.answer_objects = [];
			global.wrong_answer = [];
			global.current_answers = [];
			
			show_quiz_question(quizName); 
		}	
	} else {
	    // Altrimenti, mostra la domanda successiva
	    show_quiz_question(quizName); 
	}
}