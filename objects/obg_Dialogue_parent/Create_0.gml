// Creazione di un oggetto Dialogue per gestire il sistema di dialoghi
dialog = new Dialogue(); 

// Assegna un tasto (qualunque) per passare al dialogo successivo
key_next = vk_space; 

// Indica se un dialogo è attualmente visibile
showing_dialog = false; 

// Variabile per memorizzare il dialogo corrente
current_dialog = {}; 

// Valore per gestire la trasparenza del dialogo (utile per effetti di dissolvenza)
alpha = 0; 
