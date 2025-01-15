/// @description Show dialogue

var showFirst = false;
var showSecond = false;

with (obj_office_control) {
	showFirst = hasShownGroupThought;
	showSecond = hasShownAnnieThought;
}

if (global.game_data.gameStatus < 750 && !showFirst) {
	scr_showDialogue(obj_dialogue_office_crimeThought);
} else if (global.game_data.gameStatus >= 750 && !showSecond) {
	scr_showDialogue(obj_dialogue_office_annieThought);
}
