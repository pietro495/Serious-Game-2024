global.playerControl = false;
draw_set_alpha(0.75);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1); // Ripristina l'alpha a 1 per il test

// Reset draw settings
draw_set_halign(fa_left);  // Default is left-aligned
draw_set_valign(fa_top);   // Default is top-aligned
draw_set_font(fnt_common); // Ensure correct font is used
draw_set_color(c_black);   // Set text color to black

var viewport_coord = scr_get_viewport_coord();
var center_x = viewport_coord[0]; 
var center_y = viewport_coord[1]; 

// Draw textbox
draw_self();

// Draw text
draw_set_font(fnt_common);

if (global.game_data.gameStatus <= 8 ) {
	draw_text_ext_color(105, 102, hint1, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
} else if (global.game_data.gameStatus <= 18) {
	draw_text_ext_color(105, 102, hint2, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
} else {
	draw_text_ext_color(105, 102, hint3, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
}