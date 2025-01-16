/// @description Hover pointer effect, mouse left click

// Mouse left click
var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

var isHovering = global.computed_mouse_x > 640 && global.computed_mouse_x < 711 && global.computed_mouse_y > 16 && global.computed_mouse_y < 88;

if (isHovering) {
    if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_open_help) && !instance_exists(obj_dialogue_parent) && !instance_exists(obj_overlay)) {
		if (global.game_data.gameStatus == 65) {
			instance_create_depth(768, 32, -10050, obj_video_close);
			instance_create_depth(0, 0, -10050, obj_video_fullscreen);
			if (audio_is_playing(snd_omnitechoffice)) {
				audio_pause_sound(snd_omnitechoffice);
			}
			if (!audio_is_playing(snd_phishing_tutorial)) {
				audio_play_sound(snd_phishing_tutorial, 1, false);
			}
		} else {
			instance_create_depth(400, center_y, -10000, obj_open_help);
		}
    }
}