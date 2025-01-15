/// @description Video

if (instance_exists(obj_video_fullscreen)) {
	instance_destroy(obj_video_fullscreen);
}

video_close();

video = video_open("phishing_tutorial.webm");

video_enable_loop(false);