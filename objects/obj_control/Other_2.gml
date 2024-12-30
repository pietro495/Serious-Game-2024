/// @description Global variables and others

/** gameStatusIndex = description
	0 - Game start
	1 - Il giocatore ha parlato con il tenente nella room firstPlay.
	2 - L'utente è nell'ufficio del tizio della OmniTech
*/

global.playerControl = true;
//global.game_data.clues_collected = [];
global.firstPlay = true;
global.gameStatus = 0;

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