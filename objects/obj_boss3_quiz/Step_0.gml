/// @description Counter

frameCounter += 1;

if (frameCounter >= room_speed) {
    remainingTime -= 1;    
    frameCounter = 0;
}

if (remainingTime <= 0) {
	// Handle default answer
	var userAnswer = "E";
	var decodedAnswer = -1;
	var correctAnswer = global.quiz_questions[? "final"][global.current_question].correct_option;
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
	if (global.current_question >= array_length(global.quiz_questions[? "final"])) {	
		// elimino le rispsoste alla fine del quiz
		for (var i = 0; i < array_length(global.answer_objects); i++) {
			instance_destroy(global.answer_objects[i]);
		}
			 
		// elimino le domande alla fine del quiz
		with(obj_question_sprite) {
			instance_destroy();
		}
			
		if (global.quizScore == array_length(global.quiz_questions[? "final"])) {
			if (!audio_is_playing(snd_success)) {
				audio_play_sound(snd_success, 1, false, 1, 0.5);
			}
			show_message("Complimenti! Hai risposto correttamente a tutte le domande!");
			global.quizScore = 0;
			global.current_question = 0;
			global.answer_objects = [];
			global.wrong_answer = [];
			global.current_answers = [];
			
			instance_destroy(obj_boss3_quiz);
			instance_destroy(obj_button_quiz_next_final);
		} else {
			if (life > 1) {
				if (!audio_is_playing(snd_fail)) {
					audio_play_sound(snd_fail, 1, false);
				}
				show_message("Mi dispiace, ma non hai risposto correttamente a tutte le domande. Riprova.");
				global.quizScore = 0;
				global.current_question = 0;
				global.answer_objects = [];
				global.wrong_answer = [];
				global.current_answers = [];
			
				life -= 1;
				remainingTime = 35;
				show_quiz_question("final"); 
			} else {
				if (!audio_is_playing(snd_gameover)) {
					audio_play_sound(snd_gameover, 1, false);
				}
				show_message("Game over! Riapri il gioco e ricomincia dall'ultimo salvataggio.");
				game_end();
			}
		}	
	} else {
	    // Altrimenti, mostra la domanda successiva
	    show_quiz_question("final"); 
		remainingTime = 35;
	}
	
	remainingTime = 35;
}