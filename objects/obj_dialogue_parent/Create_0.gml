/// @description Variables

// Creazione di un oggetto Dialogue per gestire il sistema di dialoghi
dialog = new Dialogue(); 

// Variabile per memorizzare il dialogo corrente
currentDialog = {}; 

// Valori per gestire la trasparenza del dialogo (utile per effetti di dissolvenza)
fadeMe = 0;
fadeSpeed = 0.1;
guiAlpha = 0;

// Remove player control on creation
global.playerControl = false;

// Close question mark prompt
scr_dismissPrompt(obj_question_mark, 0);