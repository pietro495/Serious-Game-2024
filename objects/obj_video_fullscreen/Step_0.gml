/// @description Detect video end
frameCounter += 1;

if (frameCounter >= room_speed) {
    remainingTime -= 1;    
    frameCounter = 0;
}

if (remainingTime <= 0) {
	video_close();
	instance_destroy();
	global.playerControl = true;
	audio_resume_sound(snd_omnitechoffice);
	if (instance_exists(obj_video_close)) {
		instance_destroy(obj_video_close);
	}
	if (audio_is_playing(snd_phishing_tutorial)) {
		audio_stop_sound(snd_phishing_tutorial);
	}
}