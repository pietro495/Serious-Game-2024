/// @description Destroy video

video_close();
instance_destroy();
global.playerControl = true;
if (audio_is_playing(snd_phishing_tutorial)) {
	audio_stop_sound(snd_phishing_tutorial);
}
audio_resume_sound(snd_omnitechoffice);