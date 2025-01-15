/// @description Deal with music and more

// Play music based on Room
switch room {
	case rm_office_start: {
		obj_player.dir = 2;
		if (global.game_data.firstPlay) {
			global.playerControl = false;
			if (!audio_is_playing(snd_ambient)) {
				audio_play_sound(snd_ambient, 1, true);
			}
			scr_showDialogue(obj_dialogue_firstPlay);
		}
	} break;
	case rm_johnsmith_bar: {
		audio_stop_all();
		if (!audio_is_playing(snd_johnsmiths_bar)) {
			audio_play_sound(snd_johnsmiths_bar, 1, true);
		}
	} break;
	case rm_boss_3: {
		audio_stop_all();
		if (!audio_is_playing(snd_boss03)) {
			audio_play_sound(snd_boss03, 1, true);
		}
	} break;
	case rm_omnitech_office: {
		audio_stop_all();
		if (!audio_is_playing(snd_omnitechoffice) && !audio_is_playing(snd_phishing_tutorial)) {
			audio_play_sound(snd_omnitechoffice, 1, true);
		}
	} break;
	default: {
		if (audio_is_playing(snd_omnitechoffice)) {
			audio_stop_sound(snd_omnitechoffice);		
		}
		if (audio_is_playing(snd_johnsmiths_bar)) {
			audio_stop_sound(snd_johnsmiths_bar);		
		}
		if (audio_is_playing(snd_boss03)) {
			audio_stop_sound(snd_boss03);		
		}
		if (!audio_is_playing(snd_ambient)) {
			audio_play_sound(snd_ambient, 1, true);
		}
	} break;
}

// Mark sequences layer
if (layer_exists("Cutscenes")) {
	curSeqLayer = "Cutscenes";
} else {
	curSeqLayer = "Instances";
}