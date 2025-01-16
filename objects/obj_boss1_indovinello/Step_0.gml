/// @description Insert description here
// You can write your code in this editor
hovering_over_lens = (global.computed_mouse_x > 97 && global.computed_mouse_x < 166 && global.computed_mouse_y > 331 && global.computed_mouse_y < 406);
hovering_over_hacker = (global.computed_mouse_x > 252 && global.computed_mouse_x < 312 && global.computed_mouse_y > 331 && global.computed_mouse_y < 406);
hovering_over_pw = (global.computed_mouse_x > 392 && global.computed_mouse_x < 540 && global.computed_mouse_y > 331 && global.computed_mouse_y < 406);
hovering_over_bait = (global.computed_mouse_x > 595 && global.computed_mouse_x < 679 && global.computed_mouse_y > 331 && global.computed_mouse_y < 406);

var click_processed = false;

if (!click_processed && hovering_over_lens && mouse_check_button_pressed(mb_left)) {
	audio_play_sound(snd_phishing_answer, 1, false, 3);	
    if (array_contains(currentOrder, "lente")) {
		array_delete_value(currentOrder, "lente");
	} else {
		array_push(currentOrder, "lente");
	}
}
if (!click_processed && hovering_over_hacker && mouse_check_button_pressed(mb_left)) {
	audio_play_sound(snd_phishing_answer, 1, false, 3);	
    if (array_contains(currentOrder, "hacker")) {
		array_delete_value(currentOrder, "hacker");
	} else {
		array_push(currentOrder, "hacker");
	}
}
if (!click_processed && hovering_over_pw && mouse_check_button_pressed(mb_left)) {
	audio_play_sound(snd_phishing_answer, 1, false, 3);	
    if (array_contains(currentOrder, "password")) {
		array_delete_value(currentOrder, "password");
	} else {
		array_push(currentOrder, "password");
	}
}
if (!click_processed && hovering_over_bait && mouse_check_button_pressed(mb_left)) {
	audio_play_sound(snd_phishing_answer, 1, false, 3);	
    if (array_contains(currentOrder, "esca")) {
		array_delete_value(currentOrder, "esca");
	} else {
		array_push(currentOrder, "esca");
	}
}