/// @description Close

event_inherited();

if (global.game_data.gameStatus == 650) {
	scr_showDialogue(obj_dialogue_office_market);
}
if (global.game_data.gameStatus == 1050) {
	scr_showDialogue(obj_dialogue_office_discover);
}