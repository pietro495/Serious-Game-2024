/// @description Insert description here
var hovering_over_btn = (global.computed_mouse_x > 202 && global.computed_mouse_x < 602 && global.computed_mouse_y > 549 && global.computed_mouse_y < 654);

if (hovering_over_btn && mouse_check_button_pressed(mb_left)) {
	room_goto(rm_menu);
}