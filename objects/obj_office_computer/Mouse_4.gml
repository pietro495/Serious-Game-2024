/// @description Open computer

var can_click_on_hover = (
	nearbyPlayer && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)
);

if (can_click_on_hover) {
	if (!instance_exists(obj_office_computer_open)) {
		var viewport_coord = scr_get_viewport_coord();
		var center_y = viewport_coord[1];

		instance_create_depth(400, center_y, -10000, obj_office_computer_open);
	}
}