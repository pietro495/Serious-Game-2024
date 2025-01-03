/// @description Close the card

if (global.showIDThought) {
	instance_destroy();
	scr_showDialogue(obj_dialogue_vicolo_idthought);
} else {
	global.playerControl = true;
	instance_destroy();
}