// Funzione costruttore per la creazione di un oggetto 'Dialogue'.
// La funzione inizializza una lista vuota di dialoghi (_dialogs).
function Dialogue() constructor{
    
    // lista che conterrà i dialoghi
    _dialogs = [];
	currentPosition = "right"; // Posizione iniziale dello sprite
	previousDialog = undefined;
    
    // Funzione add: aggiunge un nuovo dialogo alla lista _dialogs
    // Prende due parametri: uno sprite e un messaggio
    add = function(_sprite, _message) {
        // Aggiunge un oggetto con sprite e messaggio all'array _dialogs
        array_push(_dialogs, {
            sprite: _sprite,  // Lo sprite che rappresenta il personaggio o l'elemento del dialogo
            msg: _message, // Il messaggio di dialogo che sarà mostrato
        });
    }
    
    // Funzione pop: rimuove e restituisce il primo elemento dalla lista _dialogs
    pop = function() {
	    // Prendi il primo elemento della lista
	    var _t = array_first(_dialogs);
    
	    // Rimuovi il primo elemento
	    array_delete(_dialogs, 0, 1);

	    // Controlla se il personaggio è cambiato (sprite diverso)
	    if (!is_undefined(previousDialog) && previousDialog.sprite != _t.sprite) {
	        currentPosition = (currentPosition == "left") ? "right" : "left";
	    }

	    // Aggiorna il dialogo precedente
	    previousDialog = _t;
		
		// Play cue sound
		if (audio_is_playing(snd_dialogue)) {
			audio_stop_sound(snd_dialogue);
		}
		audio_play_sound(snd_dialogue, 1, false);

	    return _t;
	}
    
    // Funzione count: restituisce la lunghezza dell'array _dialogs
    count = function() {
        // Restituisce il numero di dialoghi presenti nell'array _dialogs
        return array_length(_dialogs);
    }

}

function scr_showDialogue(_object){
	var dialogueInstance = instance_create_depth(x, y, -10000, _object);
	
	if (instance_exists(dialogueInstance)) {
		dialogueInstance.currentDialog = dialogueInstance.dialog.pop(); 
	}       
}

function scr_showPrompt(_object, _x, _y){
	if (instance_exists(_object)) {
		if (!instance_exists(obj_dialogue_parent) && !instance_exists(obj_question_mark)) {
			iii = instance_create_depth(_x, _y, -10000, obj_question_mark);
			return iii;
		}
	}
}

function scr_dismissPrompt(_whichPrompt, _toReset) {
	if (_whichPrompt != undefined) {
		if (instance_exists(_whichPrompt)) {
			// Tell Prompt Object To Fade Out
			with (_whichPrompt)  // With executes code on that particular instance of _whichPrompt
				fadeMe = "fadeOut";
			}
			// Reset Appropriate Prompt Variable
			if (instance_exists(obj_player)) {
				with (obj_player) {
					switch _toReset {
						// Reset npcPrompt
						case 0: npcPrompt = noone; break;
					}
			}
		}	
	}	
}