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

var userLives = life == 1 ? "Ti rimane 1 vita" : "Ti rimangono " + string(life) + " vite";

// Draw text
draw_set_font(fnt_common_16_bold);
draw_text_ext_color(48, 78, "QUIZZONE!\nRispondi correttamente a tutte le domande.\nHai 3 tentativi totali e 35 secondi per domanda.\nVIA!!!", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
var current_letter = array_length(global.current_answers) >= global.current_question + 1 ? global.current_answers[global.current_question] : "";
draw_text_ext_color(43, 699, "La tua scelta: " + current_letter, 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common);
draw_text_ext_color(16, 488, "A)", 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_text_ext_color(395, 488, "B)", 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_text_ext_color(16, 591, "C)", 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);
draw_text_ext_color(395, 591, "D)", 16, textWidth, c_white, c_white, c_white, c_white, image_alpha);

draw_set_font(fnt_common_24_bold);
draw_text_ext_color(48, 200, userLives, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_font(fnt_common_16_bold);
draw_text_ext_color(48, 240, "Tempo rimanente per rispondere a questa domanda: " + string(remainingTime), lineHeight, textWidth, c_red, c_red, c_red, c_red, image_alpha);

if (!instance_exists(obj_button_quiz_next_street)) {
	nextQuestionBtn = instance_create_depth(635, 717, -10050, obj_button_quiz_next_final);
} else {
	if (array_length(global.current_answers) == global.current_question + 1) {
		nextQuestionBtn.sprite_index = spr_btn_quiz_goon;
	} else {
		nextQuestionBtn.sprite_index = spr_btn_quiz_goon_disabled;
	}
}