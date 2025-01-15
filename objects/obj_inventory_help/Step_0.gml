/// @description Hover pointer effect, mouse left click

// Mouse left click
var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

var isHovering = global.computed_mouse_x > 640 && global.computed_mouse_x < 711 && global.computed_mouse_y > 16 && global.computed_mouse_y < 88;

if (isHovering) {
    if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_open_help) && !instance_exists(obj_dialogue_parent) && !instance_exists(obj_overlay)) {
		instance_create_depth(400, center_y, -10000, obj_open_help);
    }
}


// Hand pointer
var hovered_object = instance_position(mouse_x, mouse_y, obj_inventory_help);

if (hovered_object != noone) {
	window_set_cursor(cr_handpoint);
} else {
	window_set_cursor(cr_arrow);
}