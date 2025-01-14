/// @description Global variables and others

global.playerControl = true;
//global.game_data.clues_collected = [];
global.game_data.firstPlay = true;

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