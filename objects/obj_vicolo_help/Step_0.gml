/// @description Handle click

if (mouse_check_button_pressed(mb_left) && point_in_rectangle(global.computed_mouse_x, global.computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	with (obj_vicolo_tastierino_0) {
		sprite_index = spr_vicolo_tastierino_0_help;
	}
	with (obj_vicolo_tastierino_6) {
		sprite_index = spr_vicolo_tastierino_6_help;
	}
	with (obj_vicolo_tastierino_2) {
		sprite_index = spr_vicolo_tastierino_2_help;
	}
	with (obj_vicolo_tastierino_5) {
		sprite_index = spr_vicolo_tastierino_5_help;
	}
	instance_destroy();
}