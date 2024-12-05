/// @description Highlight on hover

var hovered_object = instance_position(mouse_x, mouse_y, obj_interactable);
if (hovered_object != noone) {
    window_set_cursor(cr_handpoint);
} else {
    window_set_cursor(cr_arrow);
}