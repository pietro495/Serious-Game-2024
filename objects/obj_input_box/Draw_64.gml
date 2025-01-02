/// @description Draw the text

var viewport_coord = scr_get_viewport_coord();
var center_x = viewport_coord[0]; 
var center_y = viewport_coord[1]; 

draw_set_alpha(1); // Ripristina l'alpha a 1 per il test
draw_set_halign(fa_left);  // Default is left-aligned
draw_set_valign(fa_top);   // Default is top-aligned
draw_set_font(fnt_common); // Ensure correct font is used

// Disegna la casella
draw_rectangle_color(200, center_y + 50, 600, center_y + 75, c_black, c_black, c_black, c_black, true);
draw_rectangle_color(200, center_y + 50, 600, center_y + 75, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);

// Disegna il testo inserito
draw_set_color(c_black);
draw_text(200 + 5, center_y + 50 + 5, input_text);