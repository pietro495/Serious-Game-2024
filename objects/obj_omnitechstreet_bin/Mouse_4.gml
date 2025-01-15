/// @description Open newspaper

var can_click_on_hover = (
	nearbyPlayer &&
	!instance_exists(obj_overlay) &&
	!instance_exists(obj_dialogue_parent) &&
	(!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
);

if (can_click_on_hover) {
	var viewport_coord = scr_get_viewport_coord();
	var center_x = viewport_coord[0];
	var center_y = viewport_coord[1]; 
	
	global.playerControl = false;
	
	if (!instance_exists(obj_omnitechstreet_newspaper)) {
		instance_create_depth(center_x - 100, center_y, -10000, obj_omnitechstreet_newspaper);
	}
}
