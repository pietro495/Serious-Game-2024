/// @description Close the blackboard

if (global.showPasswordThought) {
	instance_destroy();
	scr_showDialogue(obj_dialogue_omnitech_passwordThought);
} else {
	global.playerControl = true;
	instance_destroy();
}