/// @description Deal with sequences by state

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
if (global.game_data.gameStatus >= 0) {
	if (!instance_exists(obj_inventory_book)) {
		instance_create_depth(748, 52, -5000, obj_inventory_book);
	}
}
if (global.game_data.gameStatus >= 4) {
	if (!instance_exists(obj_inventory_taccuino)) {
		instance_create_depth(676, 52, -5000, obj_inventory_taccuino);
	}
}

// Draw objective
if (global.game_data.gameStatus >= 0) {
	if (!instance_exists(obj_objective)) {
		instance_create_depth(16, 16, -5000, obj_objective);
	}
}