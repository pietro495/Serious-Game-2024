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
var userLives = life == 1 ? "Ti rimane 1 vita" : "Ti rimangono " + string(life) + " vite";

// Draw text
draw_set_font(fnt_common_24_bold);
draw_text_ext_color(85, 30, "Email segnata come: " + userSelection, lineHeight, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_text_ext_color(85, 100, userLives, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common_16_bold);
draw_text_ext_color(85, 145, "Tempo rimanente per rispondere a questa domanda: " + string(remainingTime), lineHeight, textWidth, c_red, c_red, c_red, c_red, image_alpha);
draw_set_font(fnt_common);
draw_text_ext_color(85, 191, emails[currentMail].from, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(85, 223, emails[currentMail].to, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(85, 255, emails[currentMail].subject, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(85, 287, emails[currentMail].body, 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
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