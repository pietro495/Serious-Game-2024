/// @description Open blackboard

var can_click_on_hover = (
	nearbyPlayer &&
	!instance_exists(obj_omnitechoffice_password) && 
	!instance_exists(obj_overlay) &&
	!instance_exists(obj_dialogue_parent) &&
	(!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
);

if (can_click_on_hover) {
	if (global.game_data.gameStatus == 65) {
		scr_showDialogue(obj_dialogue_omnitech_cantdo);
	} else {
		var viewport_coord = scr_get_viewport_coord();
		var center_x = viewport_coord[0];
		var center_y = viewport_coord[1]; 
	
		global.playerControl = false;
	
		instance_create_depth(75, center_y - 250, -10000, obj_omnitechoffice_password);
	}
}
