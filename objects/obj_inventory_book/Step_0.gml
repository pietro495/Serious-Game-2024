/// @description Hover pointer effect, mouse left click

// Mouse left click
var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

if (global.computed_mouse_x > 712 && global.computed_mouse_x < 784 &&
    global.computed_mouse_y > 16 && global.computed_mouse_y < 88) {
    if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_open_book) && !instance_exists(obj_dialogue_parent) && !instance_exists(obj_overlay)) {
		instance_create_depth(400, center_y, -10000, obj_open_book);
    }
}