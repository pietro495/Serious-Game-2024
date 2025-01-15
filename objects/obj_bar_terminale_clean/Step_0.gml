/// @description Hover and camera
hovering_over_phishing = (global.computed_mouse_x > 112 && global.computed_mouse_x < 380 && global.computed_mouse_y > 388 && global.computed_mouse_y < 422);
hovering_over_real = (global.computed_mouse_x > 426 && global.computed_mouse_x < 694 && global.computed_mouse_y > 388 && global.computed_mouse_y < 422);
hovering_over_next = (global.computed_mouse_x > 595 && global.computed_mouse_x < 696 && global.computed_mouse_y > 317 && global.computed_mouse_y < 338);
hovering_over_prev = (global.computed_mouse_x > 111 && global.computed_mouse_x < 215 && global.computed_mouse_y > 317 && global.computed_mouse_y < 338);
hovering_over_end = (global.computed_mouse_x > 595 && global.computed_mouse_x < 696 && global.computed_mouse_y > 317 && global.computed_mouse_y < 338);
hovering_over_link1 = (global.computed_mouse_x > 105 && global.computed_mouse_x < 309 && global.computed_mouse_y > 274 && global.computed_mouse_y < 288); 
hovering_over_link4 = (global.computed_mouse_x > 259 && global.computed_mouse_x < 454 && global.computed_mouse_y > 241 && global.computed_mouse_y < 254); 
hovering_over_link5 = (global.computed_mouse_x > 269 && global.computed_mouse_x < 386 && global.computed_mouse_y > 241 && global.computed_mouse_y < 254); 
 
var click_processed = false;
 
if (!click_processed && hovering_over_phishing && mouse_check_button_pressed(mb_left)) {
    sms[currentSms].userSelection = "phishing";
	click_processed = true;
}
 
if (!click_processed && hovering_over_real && mouse_check_button_pressed(mb_left)) {
	sms[currentSms].userSelection = "reale";
	click_processed = true;
}
if (!click_processed && hovering_over_next && mouse_check_button_pressed(mb_left) && currentSms + 1 < array_length(sms)) {
    currentSms += 1;
	click_processed = true;
}
 
if (!click_processed && hovering_over_prev && mouse_check_button_pressed(mb_left) && currentSms > 0) {
	currentSms -= 1;
	click_processed = true;
}
 
if (!click_processed && hovering_over_end && mouse_check_button_pressed(mb_left) && currentSms + 1 == array_length(sms)) {
	var hasCheckedAll = true;
	for (var i = 0; i < array_length(sms); i++) {
		if (sms[i].userSelection == noone) {
			hasCheckedAll = false;
		}
	}
	if (hasCheckedAll) {
		var numberOfErrors = 0;
		for (var i = 0; i < array_length(sms); i++) {
			if (sms[i].userSelection == "phishing" && !sms[i].isFake) {
				numberOfErrors += 1;
			}
			if (sms[i].userSelection == "reale" && sms[i].isFake) {
				numberOfErrors += 1;
			}
		}
		if (numberOfErrors > 0) {
			if (numberOfErrors == 1) {
				show_message("Attenzione! Hai commesso 1 errore! Riprova dall'inizio!");
			} else {
				show_message("Attenzione! Hai commesso " + string(numberOfErrors) + " errori! Riprova dall'inizio!");
			}
			currentSms = 0;
			for (var i = 0; i < array_length(sms); i++) {
				sms[i].userSelection = noone;
			}
		} else {
			if (!instance_exists(obj_bar_terminale_quiz)) {		
				instance_create_depth(400, 214, -10000, obj_bar_terminale_quiz);
			}
		}
	} else {
		show_message("Attenzione! Non hai segnato tutti gli SMS come phishing o reale!");
	}
	click_processed = true;
}
 
if (instance_exists(obj_button_nextmail)) {
	if (hovering_over_next && currentSms + 1 < array_length(sms)) {
		nextMailBtn.sprite_index = spr_btn_nextmail;
	} else {
		nextMailBtn.sprite_index = spr_btn_nextmail_disabled;
	}
}
if (instance_exists(obj_button_prevmail)) {
	if (hovering_over_prev && currentSms > 0) {
		prevMailBtn.sprite_index = spr_btn_prevmail;
	} else {
		prevMailBtn.sprite_index = spr_btn_prevmail_disabled;
	}
}
if (instance_exists(obj_button_finishmail)) {
	if (hovering_over_end && currentSms + 1 == array_length(sms)) {
		finishBtn.sprite_index = spr_btn_finish;
	} else {
		finishBtn.sprite_index = spr_btn_finish_disabled;
	}
}
if (instance_exists(obj_button_mark_as_phishing)) {
	if (hovering_over_phishing) {
		phishingBtn.sprite_index = spr_btn_mark_as_phishing;
	} else {
		phishingBtn.sprite_index = spr_btn_mark_as_phishing_disabled;
	}
}
if (instance_exists(obj_button_mark_as_real)) {
	if (hovering_over_real) {
		realBtn.sprite_index = spr_btn_mark_as_real;
	} else {
		realBtn.sprite_index = spr_btn_mark_as_real_disabled;
	}
}