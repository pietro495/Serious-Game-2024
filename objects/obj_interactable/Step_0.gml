/// @description Highlight on hover

nearbyPlayer = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_player, false, true);

// Decide whether it's possible to click or not on the object based on overlay objects that already exist, such as a minigame
var can_click_on_hover = (
	nearbyPlayer && 
	!instance_exists(obj_office_blackboard) && 
	(!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
);