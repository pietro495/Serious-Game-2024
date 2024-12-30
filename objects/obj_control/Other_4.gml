/// @description Deal with music and more

// Play music based on Room
switch room {
	case rm_street_1:
	case rm_vicolo_1:
	case rm_office: {
		//if (!audio_is_playing(snd_indie_dev_blues)) {
		//	audio_play_sound(snd_indie_dev_blues, 1, true);
		//}
	} break;
	case rm_office_start: {
		global.playerControl = false;
		obj_player.dir = 2;
		scr_showDialogue(obj_dialogue_firstPlay);
	}
}

// Mark sequences layer
if (layer_exists("Cutscenes")) {
	curSeqLayer = "Cutscenes";
} else {
	curSeqLayer = "Instances";
}