/// @description Handle keyboard writing

if (active) {
    // Cattura il carattere premuto
    var key = keyboard_lastchar;

    // Controlla se il carattere è valido e non supera la lunghezza massima
    if (key != "" && string_length(input_text) < max_length) { // Controlla max_length
        var ascii = ord(key);

        // Controlla se è una lettera, un numero o un carattere speciale
        if ((ascii >= 48 && ascii <= 57) ||  // Numeri
            (ascii >= 65 && ascii <= 90) ||  // Lettere maiuscole
            (ascii >= 97 && ascii <= 122) || // Lettere minuscole
            (key == "!" || key == "?" || key == "-" || key == "_" || 
             key == "#" || key == "@")) {    // Caratteri speciali
            input_text += key;
        }
    }

    // Cancella con Backspace
    if (keyboard_check_pressed(vk_backspace) && string_length(input_text) > 0) {
        input_text = string_delete(input_text, string_length(input_text), 1);
    }

    // Esegui qualcosa con Enter
    if (keyboard_check_pressed(vk_enter)) {
        show_message("Hai scritto: " + input_text);
        input_text = ""; // Resetta il testo
    }
}