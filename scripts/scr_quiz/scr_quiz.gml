function show_question1() {
    // Pulisce le risposte mostrate precedentemente (se esistono)
    for (var i = 0; i < array_length(answer_objects); i++) {
        instance_destroy(answer_objects[i]); // Distrugge ogni oggetto di risposta ancora presente
    }
    answer_objects = []; // Svuota l'array che contiene gli oggetti di risposta
    
    // Ottiene i dati della domanda corrente dall'array globale delle domande
    var question_data = global.quiz_questions[current_question]; 
    

    // Crea un'istanza per visualizzare lo sprite della domanda nella layer "Instances"
    var question_instance = instance_create_layer(100, 100, "Instances", obj_question_sprite);
    question_instance.sprite_index = question_data.question_sprite; // Imposta lo sprite della domanda corrente
    
    // Posizione verticale iniziale per le risposte
    var y_offset = 300; // Posizione verticale iniziale
	var vertical_spacing = 120; // Spaziatura tra le opzioni
    
    // Ciclo per creare e mostrare tutte le opzioni di risposta
    for (var i = 0; i < array_length(question_data.options_sprites); i++) {
	
        // Crea un'istanza per l'opzione di risposta nella layer "Instances";con questo mi creo un istanza di obj_answer_sprite e la disegno sul layer
        var answer_instance = instance_create_layer(150, y_offset + i * vertical_spacing, "Instances", obj_answer_sprite);
        
        // Imposta lo sprite per l'opzione di risposta corrente
        answer_instance.sprite_index = question_data.options_sprites[i]; 
        
        // Salva l'indice della risposta per verificare se è corretta
        answer_instance.answer_index = i; 
        
        // Indica quale risposta è corretta per questa domanda
        answer_instance.correct_index = question_data.correct_option; 
        
        // Aggiunge l'istanza della risposta nell'array per una futura gestione
        answer_objects[i] = answer_instance; 
    }
}


function show_wronganswers(){
	var x_offset=250;
	var y_offset=350;
	var spacing=120;
	
	for(var i=0;i<array_length(global.wrong_answer);i++){
		//creo un istanza assegnandola allo sprite
	instance_create_layer(x_offset,y_offset+i*spacing,"Instances",obj_answer_sprite).sprite_index=global.wrong_answer[i];
	}
}
