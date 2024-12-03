
// Se un dialogo è visibile
if (showing_dialog == true) { 
    var text_x = 30; // Posizione X del testo
    var text_y = 18; // Posizione Y del testo
    var height = 32; // Altezza iniziale della finestra del dialogo
    var border = 5; // Spessore del bordo
    var padding = 16; // Spazio interno alla finestra
    
    // Calcola l'altezza del testo del messaggio corrente
    height = string_height(current_dialog.message); 

    // Confronta l'altezza del testo con quella dello sprite e usa la più grande
    if (sprite_get_height(current_dialog.sprite) > height) { 
        height = sprite_get_height(current_dialog.sprite); 
    }

    // Aggiungi spazio extra sopra e sotto il testo per il padding
    height += padding * 2; 
    
    // Calcola la posizione del testo basata sulla larghezza dello sprite e sul padding
    text_x = sprite_get_width(current_dialog.sprite) + (padding * 2); 
    
    // Applica l'effetto di trasparenza
    draw_set_alpha(alpha); 
    
    // Disegna lo sfondo nero della finestra del dialogo
    draw_set_color(c_black); 
    draw_rectangle(0, 0, display_get_gui_width(), height, false); 
    
    // Disegna un bordo bianco attorno alla finestra del dialogo
    draw_set_color(c_white); 
    draw_rectangle(border, border, display_get_gui_width() - border, height - border, false); 
    
    // Disegna lo sprite associato al dialogo se presente
    if (current_dialog.sprite != -1) { 
        draw_sprite(current_dialog.sprite, 0, border * 3, border * 3); 
    }
    
    // Disegna il testo del messaggio con margini definiti
    draw_set_color(c_black); 
    draw_text_ext(text_x, text_y, current_dialog.message, 16, display_get_gui_width() - 192); 
    
    // Aumenta gradualmente l'alfa per creare un effetto di dissolvenza (da trasparente a visibile)
    alpha = lerp(alpha, 1, 0.06); 
}