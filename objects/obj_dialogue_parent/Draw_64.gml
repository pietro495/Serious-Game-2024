/// @description Draw dialogue GUI

draw_set_alpha(guiAlpha);
draw_set_font(fnt_common_18);

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
    var sprite_x, sprite_y;
    var text_start_x, max_text_width;

    if (dialog.currentPosition == "left") {
        // Sprite a sinistra
        sprite_x = border * 3;
        text_start_x = sprite_get_width(currentDialog.sprite) + (padding * 2);
        max_text_width = display_get_gui_width() - text_start_x - padding; // Larghezza massima testo
    } else {
        // Sprite a destra
        sprite_x = display_get_gui_width() - sprite_get_width(currentDialog.sprite) - (border * 3);
        text_start_x = padding * 2; // Testo parte a sinistra
        max_text_width = sprite_x - text_start_x - padding; // Larghezza massima testo
    }

    // Disegna lo sprite
    draw_sprite(currentDialog.sprite, 0, sprite_x, border * 3);

    // Disegna il testo con wrapping
    draw_set_color(c_black);
    draw_text_ext(text_start_x, text_y, currentDialog.msg, 24, max_text_width);
}

draw_set_alpha(1);