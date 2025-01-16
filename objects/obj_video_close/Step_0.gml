/// @description Close video
hovering_over_btn = (global.computed_mouse_x > 752 && global.computed_mouse_x < 784 && global.computed_mouse_y > 16 && global.computed_mouse_y < 48);
 
var click_processed = false;
 
if (hovering_over_btn && mouse_check_button_pressed(mb_left)) {
    video_close();

	global.playerControl = true;
	
	instance_destroy();
	
	if (audio_is_playing(snd_phishing_tutorial)) {
		audio_stop_sound(snd_phishing_tutorial);
	}
	audio_resume_sound(snd_omnitechoffice);
}