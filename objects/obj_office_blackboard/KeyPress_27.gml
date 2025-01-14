/// @description Close overlay

event_inherited();

if (global.game_data.gameStatus == 13) {
	scr_showDialogue(obj_dialogue_office_market);
}
if (global.game_data.gameStatus == 21) {
	scr_showDialogue(obj_dialogue_office_discover);
}