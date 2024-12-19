/// @description Highlight on hover

var hovered_object = instance_position(mouse_x, mouse_y, obj_interactable);
// Decide whether it's possible to click or not on the object based on overlay objects that already exist, such as a minigame
var can_click_on_hover = (
	!instance_exists(obj_office_blackboard) && 
	(!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
);

if (can_click_on_hover) {
	if (hovered_object != noone && can_click_on_hover) {
	    window_set_cursor(cr_handpoint);
	} else {
	    window_set_cursor(cr_arrow);
	}
} else {
	window_set_cursor(cr_arrow);
}