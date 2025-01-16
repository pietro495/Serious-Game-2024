/// @description Draw item

// Dark overlay behind
draw_set_alpha(0.75);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1); // Ripristina l'alpha a 1 per il test

draw_self();

draw_set_font(fnt_common_48_bold);
draw_text_ext_color(282, 160, currentCode, 16, 300, c_black, c_black, c_black, c_black, image_alpha);

draw_set_font(fnt_common_24_bold);
draw_text_ext_color(32, 160, "Codici provati:", 16, 300, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common_16_bold);
var xDistance = 32;
var yIndex = 0;
for (var i = 0; i < array_length(insertedCodes); i++) {
	var yDistance =  180 + (24 * (yIndex+1));
	if (yDistance < 550) {
		draw_text_ext_color(xDistance, yDistance, insertedCodes[i], 16, 300, c_white, c_white, c_white, c_white, image_alpha);
		yIndex++;
	} else {
		yIndex = 0;
		yDistance = 180 + (24 * (yIndex+1));
		xDistance += 64;
		if (xDistance == 224) {
			xDistance = 550;
		}
	}
}
draw_set_font(fnt_common);