/// @description Open computer

var can_click_on_hover = (
	nearbyPlayer && !instance_exists(obj_bar_terminale_clean) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)
);

if (can_click_on_hover) {
	instance_create_depth(400, 264, -10000, obj_office_blackboard);
}