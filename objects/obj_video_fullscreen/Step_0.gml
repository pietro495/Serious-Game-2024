/// @description Detect video end
frameCounter += 1;

if (frameCounter >= room_speed) {
    remainingTime -= 1;    
    frameCounter = 0;
}
show_debug_message(remainingTime);
if (remainingTime <= 0) {
	video_close();
	instance_destroy();
	global.playerControl = true;
	audio_play_sound(snd_omnitechoffice, 1, true);
	if (instance_exists(obj_video_close)) {
		instance_destroy(obj_video_close);
	}
}