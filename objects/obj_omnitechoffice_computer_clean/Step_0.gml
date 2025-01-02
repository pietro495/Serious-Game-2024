/// @description Hover and camera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

hovering_over_phishing = (computed_mouse_x > 98 && computed_mouse_x < 346 && computed_mouse_y > 552 && computed_mouse_y < 572);
hovering_over_real = (computed_mouse_x > 480 && computed_mouse_x < 680 && computed_mouse_y > 552 && computed_mouse_y < 572);
hovering_over_next = (computed_mouse_x > 609 && computed_mouse_x < 697 && computed_mouse_y > 468 && computed_mouse_y < 480);
hovering_over_prev = (computed_mouse_x > 102 && computed_mouse_x < 190 && computed_mouse_y > 468 && computed_mouse_y < 480);
hovering_over_end = (computed_mouse_x > 658 && computed_mouse_x < 698 && computed_mouse_y > 468 && computed_mouse_y < 480);

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
	show_debug_message(currentMail + 1 == array_length(emails));
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
		}
		
	} else {
		show_message("Attenzione! Non hai segnato tutte le mail come phishing o reale!");
	}
	
	click_processed = true;
}