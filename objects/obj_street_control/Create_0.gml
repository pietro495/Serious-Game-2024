/// @description Variables and other

player_choices = [false, false, false, false, false, false, false, false, false, false, false, false];
correct_choices = [true, false, false, false, false, false, false, false, true, false, false, true];

if (global.game_data.gameStatus == 15) {
	obj_player.dir = 0;
	scr_showDialogue(obj_dialogue_street_journalist_start);
}
if (global.game_data.gameStatus == 17 && instance_exists(obj_journalist)) {
	instance_destroy(obj_journalist);
}