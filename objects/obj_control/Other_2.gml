/// @description Global variables and others

global.playerControl = false;
//global.game_data.clues_collected = [];
global.firstPlay = true;

// Sequence states
enum seqState {
	notPlaying,
	waiting,
	playing,
	finished,
}
// Sequence variables
sequenceState = seqState.notPlaying;
curSeqLayer = noone;
curSeq = noone;