/// @description Close the newspaper

with (obj_omnitechstreet_control) {
	if (!hasShownThought) {
		scr_showDialogue(obj_dialogue_omnitechstreet_phishingThought);
	} else {
		global.playerControl = true;
	}
}

instance_destroy();