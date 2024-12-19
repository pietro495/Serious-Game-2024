/// @description Draw the email

var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

// Draw textbox
draw_self();

// Draw text
draw_set_font(fnt_common);
draw_text_ext_color(48, center_y - 150, emailText, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);

if (hovering_over_clue1) {
    draw_set_color(c_yellow);
	draw_text(48, 233, "From: hacker@hacker.hack");
}
if (hovering_over_clue2) {
    draw_set_color(c_yellow);
	draw_text(246, 346, "http://facebok.com");
}