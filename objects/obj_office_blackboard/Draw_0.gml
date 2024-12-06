/// @description Draw the email

// Draw textbox
draw_self();

// Draw text
draw_text_ext_color(150, 200, emailText, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);

if (hovering_over_clue1) {
    draw_set_color(c_yellow);
	draw_text(150, 200, "From: hacker@hacker.hack");
}
if (hovering_over_clue2) {
    draw_set_color(c_yellow);
	draw_text(348, 312, "http://facebok.com");
}