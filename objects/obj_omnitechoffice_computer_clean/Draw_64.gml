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
if (currentMail > 0) {
	if (!instance_exists(obj_button_prevmail)) {
		prevMailBtn = instance_create_depth(154, 470, -10050, obj_button_prevmail);
	}
} else {
	instance_destroy(obj_button_prevmail);
}
if (currentMail + 1 < array_length(emails)) {
	if (!instance_exists(obj_button_nextmail)) {
		nextMailBtn = instance_create_depth(645, 470, -10050, obj_button_nextmail);
	}
} else {
	instance_destroy(obj_button_nextmail);
}
if (currentMail + 1 == array_length(emails)) {
	if (!instance_exists(obj_button_finishmail)) {
		finishBtn = instance_create_depth(645, 470, -10050, obj_button_finishmail);
	}
} else {
	instance_destroy(obj_button_finishmail);
}
if (!instance_exists(obj_button_mark_as_phishing)) {
	phishingBtn = instance_create_depth(216, 548, -10050, obj_button_mark_as_phishing);
}
if (!instance_exists(obj_button_mark_as_real)) {
	realBtn = instance_create_depth(601, 548, -10050, obj_button_mark_as_real);
}

if (currentMail == 0) {
	draw_set_font(fnt_common);
	draw_text_ext_color(134, 351, "__________________________________________", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	if (hovering_over_link1) {
		draw_set_font(fnt_common_10);
		draw_text_ext_color(102, 480, "https://omnitech.com/politica-aziendale-lavoro-ibrido", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	}
}

if (currentMail == 3) {
	draw_set_font(fnt_common);
	draw_text_ext_color(169, 351, "_________", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	if (hovering_over_link4) {
		draw_set_font(fnt_common_10);
		draw_text_ext_color(102, 480, "https://omniltech.xyz/cambio-password", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	}
}

if (currentMail == 4) {
	draw_set_font(fnt_common);
	draw_text_ext_color(339, 351, "_________", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	if (hovering_over_link5) {
		draw_set_font(fnt_common_10);
		draw_text_ext_color(102, 480, "https://omniltech.xyz/guarda-fattura", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	}
}