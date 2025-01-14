/// @description Handle alpha and hover effect

// Impostiamo l'alpha a piena visibilità
draw_set_alpha(1);
draw_self();  // Disegniamo lo sprite dell'oggetto

if (isHovering) {
    // Modifica del colore per l'effetto hover
    draw_set_color(c_yellow);
    
    // Parametri del bordo
    var border_thickness = 5;

    // Calcoliamo la posizione e dimensioni dello sprite per il bordo
    var sprite_x = x - sprite_width / 2;  // X del rettangolo (centrato sullo sprite)
    var sprite_y = y - sprite_height / 2; // Y del rettangolo (centrato sullo sprite)
    var sprite_w = sprite_get_width(sprite_index);  // Larghezza dello sprite
    var sprite_h = sprite_get_height(sprite_index); // Altezza dello sprite

    // Bordo superiore
	draw_rectangle(sprite_x - border_thickness, sprite_y - border_thickness, sprite_x + sprite_w + border_thickness, sprite_y, false);

	// Bordo inferiore
	draw_rectangle(sprite_x - border_thickness, sprite_y + sprite_h, sprite_x + sprite_w + border_thickness, sprite_y + sprite_h + border_thickness, false);

	// Bordo sinistro
	draw_rectangle(sprite_x - border_thickness, sprite_y - border_thickness, sprite_x, sprite_y + sprite_h + border_thickness, false);

	// Bordo destro
	draw_rectangle(sprite_x + sprite_w, sprite_y - border_thickness, sprite_x + sprite_w + border_thickness, sprite_y + sprite_h + border_thickness, false);

    // Ripristiniamo il colore a nero per il disegno successivo
    draw_set_color(c_black);
}
