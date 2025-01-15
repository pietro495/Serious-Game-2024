/// @description Draw the email

// Draw textbox
//draw_self();

// Draw text
//for (var i = 0; i < array_length(global.game_data.clues_collected); i++) {
//	draw_text_ext_color(150, 200 + i * 20, global.game_data.clues_collected[i], lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
//}
draw_set_alpha(0.75);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1); // Ripristina l'alpha a 1 per il test

draw_self();