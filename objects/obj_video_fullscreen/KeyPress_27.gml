/// @description Close video

if (instance_exists(obj_video_close)) {
	instance_destroy(obj_video_close);
}

video_close();

global.playerControl = true;