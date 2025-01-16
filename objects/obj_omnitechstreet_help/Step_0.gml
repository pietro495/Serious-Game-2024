/// @description Handle click

if (mouse_check_button_pressed(mb_left) && point_in_rectangle(global.computed_mouse_x, global.computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	show_message("Dai un'occhiata dentro al cassonetto, potrebbe esserci qualcosa di interessante.");
	instance_destroy();
}