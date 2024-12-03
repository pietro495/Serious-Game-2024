/// @description Insert description here
// You can write your code in this editor
// Se nessun dialogo è attualmente visibile
if (showing_dialog == false) { 
    // Controlla se non ci sono più dialoghi nella coda
    if (dialog.count() <= 0) { 
        instance_destroy(); // Distrugge l'istanza dell'oggetto se non ci sono più dialoghi
        return; // Termina l'esecuzione del codice
    }
    
    // Ottieni il prossimo dialogo dalla coda
    current_dialog = dialog.pop(); 
    showing_dialog = true; // Imposta che un dialogo è ora visibile
} else {
    // Se il tasto assegnato è stato rilasciato
    if (keyboard_check_released(key_next)) { 
        showing_dialog = false; // Nascondi il dialogo
        alpha = 0; // Resetta la trasparenza
    }
}