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

if (!instance_exists(obj_button_boss0_next)) {
	instance_create_depth(550, 480, -10050, obj_button_boss0_next);
}