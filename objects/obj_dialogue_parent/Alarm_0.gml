/// @description Destroy me

// Destroy me
if (global.firstPlay) {
	scr_playSequence(seq_first_play_end);
} else {
	global.playerControl = true;
}

instance_destroy();