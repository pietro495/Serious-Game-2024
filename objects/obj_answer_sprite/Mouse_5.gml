/// @description Insert description here
// You can write your code in this editor
// Verifica se il cursore del mouse si trova dentro il rettangolo dell'oggetto della risposta
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {

    // Controlla se la risposta selezionata è corretta
    if (answer_index == correct_index) {
        // Incrementa lo score se la risposta è corretta
        with (obj_quiz) {
            score += 1; // Aumenta il punteggio di 1
			
        }
        // Mostra un messaggio di risposta corretta
        show_message("Risposta corretta!");
    } else {
        // Mostra un messaggio di risposta sbagliata
        show_message("Risposta sbagliata!");
    }

    // Passa alla domanda successiva
    with (obj_quiz) {
        current_question += 1; // Aumenta l'indice della domanda corrente

        // Verifica se ci sono ancora domande nel quiz
        if (current_question >= array_length(global.quiz_questions)) {
			quiz_completed=true;
		

            // Se non ci sono altre domande, mostra il messaggio finale con il punteggio
            show_message("Quiz completato! Punteggio: " + string(score));
			
        } else {
            // Altrimenti, mostra la domanda successiva
            show_question1(); 
        }
    }
}
