/// @description Close video

if (instance_exists(obj_video_close)) {
	instance_destroy(obj_video_close);
}

if (audio_is_playing(snd_phishing_tutorial)) {
	audio_stop_sound(snd_phishing_tutorial);
}

audio_resume_sound(snd_omnitechoffice);

video_close();

global.playerControl = true;