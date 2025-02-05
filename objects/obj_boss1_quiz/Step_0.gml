/// @description Hover and camera
hovering_over_phishing = (global.computed_mouse_x > 81 && global.computed_mouse_x < 351 && global.computed_mouse_y > 528 && global.computed_mouse_y < 562);
hovering_over_real = (global.computed_mouse_x > 466 && global.computed_mouse_x < 738 && global.computed_mouse_y > 528 && global.computed_mouse_y < 562);
hovering_over_next = (global.computed_mouse_x > 591 && global.computed_mouse_x < 694 && global.computed_mouse_y > 459 && global.computed_mouse_y < 480);
hovering_over_end = (global.computed_mouse_x > 591 && global.computed_mouse_x < 694 && global.computed_mouse_y > 459 && global.computed_mouse_y < 480);
hovering_over_link1 = (global.computed_mouse_x > 374 && global.computed_mouse_x < 443 && global.computed_mouse_y > 337 && global.computed_mouse_y < 352); 
hovering_over_link2 = (global.computed_mouse_x > 271 && global.computed_mouse_x < 339 && global.computed_mouse_y > 367 && global.computed_mouse_y < 383); 
hovering_over_link4 = (global.computed_mouse_x > 371 && global.computed_mouse_x < 436 && global.computed_mouse_y > 399 && global.computed_mouse_y < 412); 
hovering_over_link5 = (global.computed_mouse_x > 137 && global.computed_mouse_x < 315 && global.computed_mouse_y > 399 && global.computed_mouse_y < 412); 

var click_processed = false;

function process_end() {
	var numberOfErrors = 0;

	for (var i = 0; i < array_length(emails); i++) {
		if (emails[i].userSelection == "phishing" && !emails[i].isFake) {
			numberOfErrors += 1;
		}
		if (emails[i].userSelection == "reale" && emails[i].isFake) {
			numberOfErrors += 1;
		}
		if (emails[i].userSelection == "none") {
			numberOfErrors += 1;
		}
	}
		
	if (numberOfErrors > 0) {
		if (life > 0) {
			life -= 1;
			if (life <= 0) {
				if (!audio_is_playing(snd_gameover)) {
					audio_play_sound(snd_gameover, 1, false);
				}
				show_message("Game over! Riapri il gioco e ricomincia dall'ultimo salvataggio.");
				game_end(); 
			} else {
				if (!audio_is_playing(snd_fail)) {
					audio_play_sound(snd_fail, 1, false);
				}
				if (numberOfErrors == 1) {
					show_message("Attenzione! Hai commesso 1 errore! Riprova dall'inizio!");
				} else {
					show_message("Attenzione! Hai commesso " + string(numberOfErrors) + " errori! Riprova dall'inizio!");
				}
				currentMail = 0;
				for (var i = 0; i < array_length(emails); i++) {
					emails[i].userSelection = noone;
				}
			}
		} else {
			if (!audio_is_playing(snd_gameover)) {
				audio_play_sound(snd_gameover, 1, false);
			}
			show_message("Game over! Ricomincia dall'ultimo salvataggio.");
			load_game();
		}
		
	} else {
		if (instance_exists(obj_boss1_quiz)) {
			instance_destroy(obj_boss1_quiz);
		}
		if (instance_exists(obj_button_nextmail)) {
			instance_destroy(obj_button_nextmail);
		}
		if (instance_exists(obj_button_finishmail)) {
			instance_destroy(obj_button_finishmail);
		}
		if (instance_exists(obj_button_mark_as_phishing)) {
			instance_destroy(obj_button_mark_as_phishing);
		}
		if (instance_exists(obj_button_mark_as_real)) {
			instance_destroy(obj_button_mark_as_real);
		}
		if (!audio_is_playing(snd_success)) {
			audio_play_sound(snd_success, 1, false);
		}
		scr_showDialogue(obj_dialogue_boss1_defeat);
	}
}

if (!click_processed && hovering_over_phishing && mouse_check_button_pressed(mb_left)) {
    emails[currentMail].userSelection = "phishing";
	if (!audio_is_playing(snd_phishing_answer)) {
		audio_play_sound(snd_phishing_answer, 1, false, 3);
	}
	click_processed = true;
}

if (!click_processed && hovering_over_real && mouse_check_button_pressed(mb_left)) {
	emails[currentMail].userSelection = "reale";
	if (!audio_is_playing(snd_phishing_answer)) {
		audio_play_sound(snd_phishing_answer, 1, false, 3);
	}
	click_processed = true;
}
if (!click_processed && hovering_over_next && mouse_check_button_pressed(mb_left) && currentMail + 1 < array_length(emails)) {
    if (emails[currentMail].userSelection == noone) {
		emails[currentMail].userSelection = "none";
	}

	currentMail += 1;
	remainingTime = 35;
	click_processed = true;
}

if (!click_processed && hovering_over_end && mouse_check_button_pressed(mb_left) && currentMail + 1 == array_length(emails)) {
	process_end();
	
	click_processed = true;
}

if (instance_exists(obj_button_nextmail)) {
	if (hovering_over_next && currentMail + 1 < array_length(emails)) {
		nextMailBtn.sprite_index = spr_btn_nextmail;
	} else {
		nextMailBtn.sprite_index = spr_btn_nextmail_disabled;
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

frameCounter += 1;

if (frameCounter >= room_speed) {
    remainingTime -= 1;    
    frameCounter = 0;
}

if (remainingTime <= 0) {
	emails[currentMail].userSelection = "none";
    if (currentMail < 4) {
		currentMail += 1;
	} else {
		process_end();
	}
	remainingTime = 35;
}