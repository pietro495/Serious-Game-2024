/// @description Draw dialogue GUI

draw_set_alpha(guiAlpha);

var text_x = 30; // Posizione X del testo
var text_y = 18; // Posizione Y del testo
var height = 32; // Altezza iniziale della finestra del dialogo
var border = 5; // Spessore del bordo
var padding = 16; // Spazio interno alla finestra
    
// Calcola l'altezza del testo del messaggio corrente
	
height = string_height(currentDialog.msg); 

// Confronta l'altezza del testo con quella dello sprite e usa la più grande
if (sprite_get_height(currentDialog.sprite) > height) { 
	height = sprite_get_height(currentDialog.sprite); 
}

// Aggiungi spazio extra sopra e sotto il testo per il padding
height += padding * 2; 
    
// Calcola la posizione del testo basata sulla larghezza dello sprite e sul padding
text_x = sprite_get_width(currentDialog.sprite) + (padding * 2); 
    
// Disegna lo sfondo nero della finestra del dialogo
draw_set_color(c_black); 
draw_rectangle(0, 0, display_get_gui_width(), height, false); 
    
// Disegna un bordo bianco attorno alla finestra del dialogo
draw_set_color(c_white); 
draw_rectangle(border, border, display_get_gui_width() - border, height - border, false); 
    
// Disegna lo sprite associato al dialogo se presente
if (currentDialog.sprite != -1) { 
	draw_sprite(currentDialog.sprite, 0, border * 3, border * 3); 
}
    
// Disegna il testo del messaggio con margini definiti
draw_set_color(c_black); 
draw_text_ext(text_x, text_y, currentDialog.msg, 16, display_get_gui_width() - 192);

draw_set_alpha(1);