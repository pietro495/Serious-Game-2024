/// @description Draw the email

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
draw_set_font(fnt_common_bold);
draw_text_ext_color(102, 48, "Gentile utente, è pregato di rispondere al seguente quiz per assicurarci che lei sia umano!", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common);
draw_text_ext_color(102, 80, emails[currentMail].from, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(102, 112, emails[currentMail].to, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(102, 144, emails[currentMail].subject, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(102, 176, emails[currentMail].body, 16, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common);