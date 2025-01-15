/// @description Open newspaper

var can_click_on_hover = (
	nearbyPlayer &&
	!instance_exists(obj_overlay) &&
	!instance_exists(obj_dialogue_parent) &&
	(!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
);

if (can_click_on_hover) {
	global.playerControl = false;
	
	if (!instance_exists(obj_omnitechstreet_newspaper)) {
		instance_create_depth(420, 380, -10000, obj_omnitechstreet_newspaper);
	}
}
