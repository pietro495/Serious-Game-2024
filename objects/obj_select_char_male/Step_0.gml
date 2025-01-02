/// @description Handle pointer

var hovered_object_male = instance_position(mouse_x, mouse_y, obj_select_char_male);
var hovered_object_female = instance_position(mouse_x, mouse_y, obj_select_char_female);
var hovered_object_btn = instance_position(mouse_x, mouse_y, obj_button_confirm_char);

if (hovered_object_male != noone || hovered_object_female != noone || (hovered_object_btn != noone && (global.game_data.gender == 0 || global.game_data.gender == 1))) {
	window_set_cursor(cr_handpoint);
} else {
	window_set_cursor(cr_arrow);
}