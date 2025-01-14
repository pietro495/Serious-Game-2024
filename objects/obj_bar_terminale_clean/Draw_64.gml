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
draw_text_ext_color(105, 102, "SMS segnato come: " + userSelection, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common_bold);
draw_text_ext_color(105, 168, "Gentili utenti, cercate di diffidare da numeri sconosciuti che chiedono denaro", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common);
draw_text_ext_color(105, 200, sms[currentSms].number, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
//draw_text_ext_color(102, 223, sms[currentSms].to, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
//draw_text_ext_color(102, 255, sms[currentSms].subject, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(105, 224, sms[currentSms].body, 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
if (currentSms > 0) {
	if (!instance_exists(obj_button_prevmail)) {
		prevMailBtn = instance_create_depth(163, 327, -10050, obj_button_prevmail);
	}
} else {
	instance_destroy(obj_button_prevmail);
}
if (currentSms + 1 < array_length(sms)) {
	if (!instance_exists(obj_button_nextmail)) {
		nextMailBtn = instance_create_depth(645, 327, -10050, obj_button_nextmail);
	}
} else {
	instance_destroy(obj_button_nextmail);
}
if (currentSms + 1 == array_length(sms)) {
	if (!instance_exists(obj_button_finishmail)) {
		finishBtn = instance_create_depth(645, 327, -10050, obj_button_finishmail);
	}
} else {
	instance_destroy(obj_button_finishmail);
}
if (!instance_exists(obj_button_mark_as_phishing)) {
	phishingBtn = instance_create_depth(246, 405, -10050, obj_button_mark_as_phishing);
}
if (!instance_exists(obj_button_mark_as_real)) {
	realBtn = instance_create_depth(561, 405, -10050, obj_button_mark_as_real);
}

if (currentSms == 0) {
	draw_set_font(fnt_common);
	draw_text_ext_color(105, 274, "__________________________", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	if (hovering_over_link1) {
		draw_set_font(fnt_common_10);
		draw_text_ext_color(105, 350, "http://banca-verifica-secure.com", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	}
}

if (currentSms == 3) {
	draw_set_font(fnt_common);
	draw_text_ext_color(259, 241, "________________________", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	if (hovering_over_link4) {
		draw_set_font(fnt_common_10);
		draw_text_ext_color(105, 350, "http://premio-vinci-subito.com", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	}
}

if (currentSms == 4) {
	draw_set_font(fnt_common);
	draw_text_ext_color(269, 241, "_______________", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	if (hovering_over_link5) {
		draw_set_font(fnt_common_10);
		draw_text_ext_color(105, 350, "http://amason.com", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
	}
}