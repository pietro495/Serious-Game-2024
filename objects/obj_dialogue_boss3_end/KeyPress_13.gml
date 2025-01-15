/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
	alarm[0] = 10;
	
	if (instance_exists(obj_dialogue_parent)) {
		instance_destroy(obj_dialogue_parent);
	}
	if (instance_exists(obj_objective)) {
		instance_destroy(obj_objective);
	}
	if (instance_exists(obj_inventory_book)) {
		instance_destroy(obj_inventory_book);
	}
	if (instance_exists(obj_inventory_help)) {
		instance_destroy(obj_inventory_help);
	}
	if (instance_exists(obj_inventory_taccuino)) {
		instance_destroy(obj_inventory_taccuino);
	}
	global.game_data.gameStatus = 1550;
	global.playerControl = false;
	room_goto(rm_credits);
} else {
	currentDialog = dialog.pop(); 
}