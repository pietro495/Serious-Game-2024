/// @description Deal with sequences by state

// Otteniamo la posizione della telecamera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Calcoliamo la posizione del mouse rispetto alla vista
global.computed_mouse_x = mouse_x - cam_x;
global.computed_mouse_y = mouse_y - cam_y;

//Control sequences
switch sequenceState {
	case seqState.playing: {
		/*// Fade out town music
		if (audio_is_playing(snd_townBGM)) {
			audio_sound_gain(snd_townBGM, 0, 60);
		}
		// Fade out town ambience
		if (audio_is_playing(snd_townAmbience)) {
			audio_sound_gain(snd_townAmbience, 0, 60);
		}*/
		global.playerControl = false;	
		}; break;
	case seqState.finished: {
		//Remove Sequence
		if (layer_sequence_exists(curSeqLayer,curSeq)) {
			layer_sequence_destroy(curSeq);
		}
		
		// Restore control to player, reset
		global.playerControl = true;
		sequenceState = seqState.notPlaying;
		curSeq = noone;
	}; break;
}

// Draw inventory
if (global.game_data.gameStatus >= 0 && room_get_name(room) != "rm_credits" && room_get_name(room) != "rm_menu" && room_get_name(room) != "rm_choose_sprite") {
	if (!instance_exists(obj_inventory_book)) {
		instance_create_depth(748, 52, -5000, obj_inventory_book);
	}
	if (!instance_exists(obj_inventory_help)) {
		instance_create_depth(676, 52, -5000, obj_inventory_help);
	}
}
if (global.game_data.gameStatus >= 200 && room_get_name(room) != "rm_credits" && room_get_name(room) != "rm_menu" && room_get_name(room) != "rm_choose_sprite") {
	if (!instance_exists(obj_inventory_taccuino)) {
		instance_create_depth(604, 52, -5000, obj_inventory_taccuino);
	}
}

// Draw objective
if (global.game_data.gameStatus >= 0 && room_get_name(room) != "rm_credits" && room_get_name(room) != "rm_menu" && room_get_name(room) != "rm_choose_sprite") {
	if (!instance_exists(obj_objective)) {
		instance_create_depth(16, 16, -5000, obj_objective);
	}
}

if (room_get_name(room) == "rm_menu") {
	if(file_exists("save.txt")) {
		instance_create_depth(725, 128, -10000, obj_button_load);
		instance_create_depth(725, 292, -10000, obj_button_new);
		instance_create_depth(725, 456, -10000, obj_button_help);
		instance_create_depth(725, 620, -10000, obj_button_exit);
	} else {
		instance_create_depth(725, 170, -10000, obj_button_new);
		instance_create_depth(725, 334, -10000, obj_button_help);
		instance_create_depth(725, 498, -10000, obj_button_exit);
	}
}