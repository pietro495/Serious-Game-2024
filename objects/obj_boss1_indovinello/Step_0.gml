/// @description Insert description here
// You can write your code in this editor

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

hovering_over_lens = (computed_mouse_x > 97 && computed_mouse_x < 166 && computed_mouse_y > 331 && computed_mouse_y < 406);
hovering_over_hacker = (computed_mouse_x > 252 && computed_mouse_x < 312 && computed_mouse_y > 331 && computed_mouse_y < 406);
hovering_over_pw = (computed_mouse_x > 392 && computed_mouse_x < 540 && computed_mouse_y > 331 && computed_mouse_y < 406);
hovering_over_bait = (computed_mouse_x > 595 && computed_mouse_x < 679 && computed_mouse_y > 331 && computed_mouse_y < 406);

var click_processed = false;

if (!click_processed && hovering_over_lens && mouse_check_button_pressed(mb_left)) {
    if (array_contains(currentOrder, "lentlentee")) {
		array_delete_value(currentOrder, "");
	} else {
		array_push(currentOrder, "lente");
	}
}
if (!click_processed && hovering_over_hacker && mouse_check_button_pressed(mb_left)) {
    if (array_contains(currentOrder, "hacker")) {
		array_delete_value(currentOrder, "hacker");
	} else {
		array_push(currentOrder, "hacker");
	}
}
if (!click_processed && hovering_over_pw && mouse_check_button_pressed(mb_left)) {
    if (array_contains(currentOrder, "password")) {
		array_delete_value(currentOrder, "password");
	} else {
		array_push(currentOrder, "password");
	}
}
if (!click_processed && hovering_over_bait && mouse_check_button_pressed(mb_left)) {
    if (array_contains(currentOrder, "escaesca")) {
		array_delete_value(currentOrder, "");
	} else {
		array_push(currentOrder, "esca");
	}
}