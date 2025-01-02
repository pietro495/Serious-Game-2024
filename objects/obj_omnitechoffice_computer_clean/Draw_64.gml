/// @description Draw the email

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

var userSelection = emails[currentMail].userSelection != noone ? emails[currentMail].userSelection : "";

// Draw text
draw_set_font(fnt_common_24_bold);
draw_text_ext_color(74, 44, "Email segnata come: " + userSelection, lineHeight, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common_bold);
draw_text_ext_color(102, 159, "Gentili dipendenti, ricordate che l'unico dominio aziendale valido è @omnitech.com", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common);
draw_text_ext_color(102, 191, emails[currentMail].from, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(102, 223, emails[currentMail].to, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(102, 255, emails[currentMail].subject, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(102, 287, emails[currentMail].body, 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common_10);
if (currentMail > 0) {
	draw_text_ext_color(102, 466, "Mail precedente", 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
}
if (currentMail + 1 < array_length(emails)) {
	draw_text_ext_color(610, 466, "Mail successiva", 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
}
if (currentMail + 1 == array_length(emails)) {
	draw_text_ext_color(660, 466, "Finisci", 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
}
draw_set_font(fnt_common_16);
draw_text_ext_color(100, 548, "Segna come mail di phishing", 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_text_ext_color(485, 548, "Segna come mail reale", 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common);

if (hovering_over_prev && currentMail > 0) {
	draw_set_font(fnt_common_10);
	draw_text_ext_color(102, 466, "Mail precedente", 16, textWidth, c_blue, c_blue, c_blue, c_blue, image_alpha);
	draw_set_font(fnt_common);
}
if (hovering_over_next && currentMail + 1 < array_length(emails)) {
	draw_set_font(fnt_common_10);
	draw_text_ext_color(610, 466, "Mail successiva", 16, textWidth, c_blue, c_blue, c_blue, c_blue, image_alpha);
	draw_set_font(fnt_common);
}
if (hovering_over_end && currentMail + 1 == array_length(emails)) {
	draw_set_font(fnt_common_10);
	draw_text_ext_color(660, 466, "Finisci", 16, textWidth, c_blue, c_blue, c_blue, c_blue, image_alpha);
	draw_set_font(fnt_common);
}
if (hovering_over_phishing) {
	draw_set_font(fnt_common_16);
	draw_text_ext_color(100, 548, "Segna come mail di phishing", 16, textWidth, c_yellow, c_yellow, c_yellow, c_yellow, image_alpha);
	draw_set_font(fnt_common);
}
if (hovering_over_real) {
	draw_set_font(fnt_common_16);
	draw_text_ext_color(485, 548, "Segna come mail reale", 16, textWidth, c_yellow, c_yellow, c_yellow, c_yellow, image_alpha);
	draw_set_font(fnt_common);
}
