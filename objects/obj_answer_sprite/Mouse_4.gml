/// @description Click on answer

// Verifica se il cursore del mouse si trova dentro il rettangolo dell'oggetto della risposta
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {

    // Controlla se la risposta selezionata è corretta
    if (answer_index == correct_index) {
        // Incrementa lo score se la risposta è corretta
        with (obj_quiz) {
            score += 1; 
        }

        //show_message("Risposta corretta!");
    } else {
		//global.wrong_answer[array_length(global.wrong_answer)]=sprite_index;
        //show_message("Risposta sbagliata!");
    }

    // Passa alla domanda successiva
    with (obj_quiz) {
        global.current_question += 1; // Aumenta l'indice della domanda corrente

        // Verifica se ci sono ancora domande nel quiz
        if (global.current_question >= array_length(global.quiz_questions[quizName])) {
			
			//elimino le rispsoste alla fine del quiz
			for (var i = 0; i < array_length(global.answer_objects); i++) {
				instance_destroy(global.answer_objects[i]);
			 }
			 
			 //elimino le domande alla fine del quiz
			with(obj_question_sprite) {
				instance_destroy();
			}
			
			if (score == array_length(global.quiz_questions[quizName])) {
				show_message("Complimenti! Hai risposto correttamente a tutte le domande!");
			} else {
				show_message("Sbagliato");
			}
           
   
			//show_message(string(global.current_question));
			
			show_wronganswers(quizName);
			
        } else {
            // Altrimenti, mostra la domanda successiva
            show_quiz_question(quizName); 
        }
    }
}
