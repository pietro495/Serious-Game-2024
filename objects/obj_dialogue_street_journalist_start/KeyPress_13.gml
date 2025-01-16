/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
	alarm[0] = 10;
	
	global.game_data.gameStatus = 800;
	global.playerControl = false;
	
	if (instance_exists(obj_dialogue_parent)) {
		instance_destroy(obj_dialogue_parent);
	}
	if (!instance_exists(obj_street_blackboard)) {
		var viewport_coord = scr_get_viewport_coord();
		var center_y = viewport_coord[1]; 

		instance_create_depth(16, center_y, -10000, obj_street_blackboard);
	}
} else {
	currentDialog = dialog.pop(); 
}