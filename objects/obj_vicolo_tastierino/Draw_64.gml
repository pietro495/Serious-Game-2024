/// @description Draw item

// Dark overlay behind
draw_set_alpha(0.75);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1); // Ripristina l'alpha a 1 per il test

draw_self();

draw_set_font(fnt_common_48_bold);
draw_text_ext_color(282, 160, currentCode, 16, 300, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common);