/// @description Exit the place

if (global.game_data.gameStatus < 200) {
	scr_showDialogue(obj_dialogue_omnitech_cantexit);
} else {
	room_goto(rm_vicolo_1);
}