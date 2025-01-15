/// @description Destroy video

video_close();
instance_destroy();
global.playerControl = true;
audio_play_sound(snd_omnitechoffice, 1, true);