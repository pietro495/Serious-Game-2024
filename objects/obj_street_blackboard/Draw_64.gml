/// @description Draw the email

// Reset draw settings
draw_set_halign(fa_left);  // Default is left-aligned
draw_set_valign(fa_top);   // Default is top-aligned
draw_set_font(fnt_common); // Ensure correct font is used
draw_set_color(c_black);   // Set text color to black

var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

// Draw textbox
draw_self();

// Draw text
draw_set_font(fnt_common_16);
draw_text_ext_color(48, center_y - 240, emailText, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);

if (!instance_exists(obj_button_pw1)) {
	instance_create_depth(148, center_y - 100, -10001, obj_button_pw1);
}
if (!instance_exists(obj_button_pw2)) {
	instance_create_depth(380, center_y - 100, -10001, obj_button_pw2);
}
if (!instance_exists(obj_button_pw3)) {
	instance_create_depth(612, center_y - 100, -10001, obj_button_pw3);
}
if (!instance_exists(obj_button_pw4)) {
	instance_create_depth(148, center_y - 18, -10001, obj_button_pw4);
}
if (!instance_exists(obj_button_pw5)) {
	instance_create_depth(380, center_y - 18, -10001, obj_button_pw5);
}
if (!instance_exists(obj_button_pw6)) {
	instance_create_depth(612, center_y - 18, -10001, obj_button_pw6);
}
if (!instance_exists(obj_button_pw7)) {
	instance_create_depth(148, center_y + 64, -10001, obj_button_pw7);
}
if (!instance_exists(obj_button_pw8)) {
	instance_create_depth(380, center_y + 64, -10001, obj_button_pw8);
}
if (!instance_exists(obj_button_pw9)) {
	instance_create_depth(612, center_y + 64, -10001, obj_button_pw9);
}
if (!instance_exists(obj_button_pw10)) {
	instance_create_depth(148, center_y + 146, -10001, obj_button_pw10);
}
if (!instance_exists(obj_button_pw11)) {
	instance_create_depth(380, center_y + 146, -10001, obj_button_pw11);
}
if (!instance_exists(obj_button_pw12)) {
	instance_create_depth(612, center_y + 146, -10001, obj_button_pw12);
}
if (!instance_exists(obj_button_pw_next)) {
	instance_create_depth(612, center_y + 210, -10001, obj_button_pw_next);
}