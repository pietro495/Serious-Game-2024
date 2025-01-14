/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
	alarm[0] = 10;
	
	global.game_data.gameStatus = 31;
	global.playerControl = false;
	
	if (instance_exists(obj_dialogue_parent)) {
		instance_destroy(obj_dialogue_parent);
	}
} else {
	currentDialog = dialog.pop(); 
}