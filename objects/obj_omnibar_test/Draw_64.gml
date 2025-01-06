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

var userSelection = sms[currentSms].userSelection != noone ? sms[currentSms].userSelection : "";

// Draw text
draw_set_font(fnt_common_24_bold);
draw_text_ext_color(95, 70, "Sms segnato come: " + userSelection, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common_bold);
draw_text_ext_color(95, 159, "Gentili utenti,cercate di diffidare da numeri sconosciuti che chiedono denaro", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common);
draw_text_ext_color(95, 191, sms[currentSms].number, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
//draw_text_ext_color(102, 223, sms[currentSms].to, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
//draw_text_ext_color(102, 255, sms[currentSms].subject, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(95, 287, sms[currentSms].body, 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
if (currentSms > 0) {
	if (!instance_exists(obj_button_prevmail)) {
		prevMailBtn = instance_create_depth(154, 470, -10050, obj_button_prevmail);
	}
} else {
	instance_destroy(obj_button_prevmail);
}
if (currentSms + 1 < array_length(emails)) {
	if (!instance_exists(obj_button_nextmail)) {
		nextMailBtn = instance_create_depth(645, 470, -10050, obj_button_nextmail);
	}
} else {
	instance_destroy(obj_button_nextmail);
}
if (currentSms + 1 == array_length(emails)) {
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