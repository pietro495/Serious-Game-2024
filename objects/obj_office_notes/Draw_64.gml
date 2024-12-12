/// @description Draw the email

// Draw textbox
draw_self();

// Draw text
for (var i = 0; i < array_length(global.clues_collected); i++) {
	draw_text_ext_color(150, 200 + i * 20, global.clues_collected[i], lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
}