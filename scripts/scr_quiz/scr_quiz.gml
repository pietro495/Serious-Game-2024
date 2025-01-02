function show_quiz_question(quizName) {
	var coordinates = scr_get_viewport_coord();
	var coord_x = coordinates[0];
	var coord_y = coordinates[1];
	
	draw_set_alpha(1); // Ripristina l'alpha a 1 per il test
	
    // Pulisce le risposte mostrate precedentemente (se esistono)
    for (var i = 0; i < array_length(global.answer_objects); i++) {
        instance_destroy(global.answer_objects[i]); // Distrugge ogni oggetto di risposta ancora presente
    }
    global.answer_objects = []; // Svuota l'array che contiene gli oggetti di risposta
    
    // Ottiene i dati della domanda corrente dalla mappa globale delle domande
    var quiz_data = global.quiz_questions[? quizName]; // Accede ai dati del quiz
    var question_data = quiz_data[global.current_question]; // Ottiene i dati della domanda corrente
    
    // Crea un'istanza per visualizzare lo sprite della domanda nella layer "Instances"
	var question_instance = noone;
	if (quizName == "omnitech") {
		var question_instance = instance_create_depth(coord_x, 500, -10050, obj_question_sprite)
		
	} else {
		var question_instance = instance_create_depth(100, 100, -10050, obj_question_sprite)
	}
    
    question_instance.sprite_index = question_data.question_sprite; // Imposta lo sprite della domanda corrente
    
    // Posizione verticale iniziale per le risposte
    var y_offset = 568; // Posizione verticale iniziale
    //var vertical_spacing = 120; // Spaziatura tra le opzioni
    
    // Ciclo per creare e mostrare tutte le opzioni di risposta
    for (var i = 0; i < array_length(question_data.options_sprites); i++) {
        // Crea un'istanza per l'opzione di risposta nella layer "Instances"; con questo mi creo un'istanza di obj_answer_sprite e la disegno sul layer
		var answer_instance = noone;
		if (i % 2 == 0) { // pari
			answer_instance = instance_create_depth(coord_x, i > 1 ? 695 : 588, -10050, obj_answer_sprite)
		} else {
			answer_instance = instance_create_depth(coord_x + 400, i > 1 ? 695 : 588, -10050, obj_answer_sprite)
		}
		
		draw_set_alpha(1);
		
        // Imposta lo sprite per l'opzione di risposta corrente
        answer_instance.sprite_index = question_data.options_sprites[i]; 
        
        // Salva l'indice della risposta per verificare se è corretta
        answer_instance.answer_index = i; 
        
        // Indica quale risposta è corretta per questa domanda
        answer_instance.correct_index = question_data.correct_option; 
        
        // Aggiunge l'istanza della risposta nell'array per una futura gestione
        global.answer_objects[i] = answer_instance; 
    }
}

function show_wronganswers(quizName) {
    var quiz_data = global.quiz_questions[? quizName]; // Accede ai dati del quiz
    var wrong_answers = quiz_data[global.current_question].wrong_answers; // Supponiamo che ci sia una chiave "wrong_answers" nella struttura della domanda
    
    var x_offset = 250;
    var y_offset = 350;
    var spacing = 120;
    
    for(var i = 0; i < array_length(wrong_answers); i++) {
        // Crea un'istanza assegnandola allo sprite
        instance_create_layer(x_offset, y_offset + i * spacing, "Instances", obj_answer_sprite).sprite_index = wrong_answers[i];
    }
}