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

// Draw text
draw_set_font(fnt_common);
draw_text_ext_color(105, 102, welcome, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);

if (!instance_exists(obj_boss1_eye)) {
	instance_create_depth(100, 340, -10050, obj_boss1_eye);
}
if (!instance_exists(obj_boss1_hacker)) {
	instance_create_depth(250, 340, -10050, obj_boss1_hacker);
}
if (!instance_exists(obj_boss1_shield)) {
	instance_create_depth(400, 340, -10050, obj_boss1_shield);
}
if (!instance_exists(obj_boss1_phishing)) {
	instance_create_depth(600, 340, -10050, obj_boss1_phishing);
}
if (!instance_exists(obj_button_boss1_next)) {
	instance_create_depth(550, 500, -10050, obj_button_boss1_next);
}

var orderString = "";

for (var i = 0; i < array_length(currentOrder) - 1; i++) {
    orderString += currentOrder[i] + ", ";
}

if (array_length(currentOrder) > 0) {
    orderString += currentOrder[array_length(currentOrder) - 1];
}


draw_text_ext_color(105, 440, "Il tuo ordine: " + orderString, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);