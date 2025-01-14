/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
	alarm[0] = 10;
	
	global.game_data.gameStatus = 29;
	global.playerControl = false;
	
	if (instance_exists(obj_dialogue_parent)) {
		instance_destroy(obj_dialogue_parent);
	}
	if (!instance_exists(obj_boss3_quiz)) {		
		instance_create_depth(16, 200, -10000, obj_boss3_quiz);
}
} else {
	currentDialog = dialog.pop(); 
}