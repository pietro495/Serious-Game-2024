/// @description Hover and camera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

//show_debug_message(computed_mouse_x);
//show_debug_message(computed_mouse_y);

hovering_over_phishing = (computed_mouse_x > 81 && computed_mouse_x < 351 && computed_mouse_y > 528 && computed_mouse_y < 562);
hovering_over_real = (computed_mouse_x > 466 && computed_mouse_x < 738 && computed_mouse_y > 528 && computed_mouse_y < 562);
hovering_over_next = (computed_mouse_x > 591 && computed_mouse_x < 694 && computed_mouse_y > 459 && computed_mouse_y < 480);
hovering_over_prev = (computed_mouse_x > 102 && computed_mouse_x < 202 && computed_mouse_y > 459 && computed_mouse_y < 480);
hovering_over_end = (computed_mouse_x > 591 && computed_mouse_x < 694 && computed_mouse_y > 459 && computed_mouse_y < 480);

if (hovering_over_phishing || hovering_over_real || hovering_over_next || hovering_over_prev) {
	window_set_cursor(cr_handpoint);
} else {
	window_set_cursor(cr_arrow);
}

var click_processed = false;

if (!click_processed && hovering_over_phishing && mouse_check_button_pressed(mb_left)) {
    emails[currentMail].userSelection = "phishing";
	click_processed = true;
}

if (!click_processed && hovering_over_real && mouse_check_button_pressed(mb_left)) {
	emails[currentMail].userSelection = "reale";
	click_processed = true;
}
if (!click_processed && hovering_over_next && mouse_check_button_pressed(mb_left) && currentMail + 1 < array_length(emails)) {
    currentMail += 1;
	click_processed = true;
}

if (!click_processed && hovering_over_prev && mouse_check_button_pressed(mb_left) && currentMail > 0) {
	currentMail -= 1;
	click_processed = true;
}

if (!click_processed && hovering_over_end && mouse_check_button_pressed(mb_left) && currentMail + 1 == array_length(emails)) {
	var hasCheckedAll = true;
	
	for (var i = 0; i < array_length(emails); i++) {
		if (emails[i].userSelection == noone) {
			hasCheckedAll = false;
		}
	}
	
	if (hasCheckedAll) {
		var numberOfErrors = 0;
		for (var i = 0; i < array_length(emails); i++) {
			if (emails[i].userSelection == "phishing" && !emails[i].isFake) {
				numberOfErrors += 1;
			}
			if (emails[i].userSelection == "reale" && emails[i].isFake) {
				numberOfErrors += 1;
			}
		}
		
		if (numberOfErrors > 0) {
			show_message("Attenzione! Hai commesso " + string(numberOfErrors) + " errori! Riprova dall'inizio!");
			currentMail = 0;
			for (var i = 0; i < array_length(emails); i++) {
				emails[i].userSelection = noone;
			}
		} else {
			if (!instance_exists(obj_omnitechoffice_computer_quiz)) {
				instance_create_depth(400, 272, -10000, obj_omnitechoffice_computer_quiz);
			}
		}
		
	} else {
		show_message("Attenzione! Non hai segnato tutte le mail come phishing o reale!");
	}
	
	click_processed = true;
}

if (instance_exists(obj_button_nextmail)) {
	if (hovering_over_next && currentMail + 1 < array_length(emails)) {
		nextMailBtn.sprite_index = spr_btn_nextmail;
	} else {
		nextMailBtn.sprite_index = spr_btn_nextmail_disabled;
	}
}
if (instance_exists(obj_button_prevmail)) {
	if (hovering_over_prev && currentMail > 0) {
		prevMailBtn.sprite_index = spr_btn_prevmail;
	} else {
		prevMailBtn.sprite_index = spr_btn_prevmail_disabled;
	}
}
if (instance_exists(obj_button_finishmail)) {
	if (hovering_over_end && currentMail + 1 == array_length(emails)) {
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