// Funzione costruttore per la creazione di un oggetto 'Dialogue'.
// La funzione inizializza una lista vuota di dialoghi (_dialogs).
function Dialogue() constructor{
    
    // lista che conterrà i dialoghi
    _dialogs = [];
    
    // Funzione add: aggiunge un nuovo dialogo alla lista _dialogs
    // Prende due parametri: uno sprite e un messaggio
    add = function(_sprite, _message) {
        // Aggiunge un oggetto con sprite e messaggio all'array _dialogs
        array_push(_dialogs, {
            sprite: _sprite,  // Lo sprite che rappresenta il personaggio o l'elemento del dialogo
            message: _message, // Il messaggio di dialogo che sarà mostrato
        });
    }
    
    // Funzione pop: rimuove e restituisce il primo elemento dalla lista _dialogs
    pop = function() {
        // Prende il primo elemento dell'array _dialogs (il dialogo corrente)
        var _t = array_first(_dialogs);
        
        // Rimuove il primo elemento dall'array _dialogs
        array_delete(_dialogs, 0, 1);
        
        // Restituisce l'elemento rimosso (il dialogo)
        return _t;
    }
    
    // Funzione count: restituisce la lunghezza dell'array _dialogs
    count = function() {
        // Restituisce il numero di dialoghi presenti nell'array _dialogs
        return array_length(_dialogs);
    }

}

function scr_show_dialogue(_object){
	var dialogueInstance = instance_create_depth(x, y, -10000, _object);
	
	if (instance_exists(dialogueInstance)) {
		global.playerControl = false;
		dialogueInstance.showing_dialog = true;
		dialogueInstance.current_dialog = dialogueInstance.dialog.pop(); 
	}       
}


