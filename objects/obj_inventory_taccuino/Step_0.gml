/// @description Hover pointer effect, mouse left click

// Mouse left click
var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

if (global.computed_mouse_x > 568 && global.computed_mouse_x < 639 && global.computed_mouse_y > 16 && global.computed_mouse_y < 88) {
    if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_open_taccuino) && !instance_exists(obj_dialogue_parent) && !instance_exists(obj_overlay) && global.game_data.gameStatus >= 200) {
		if (global.game_data.gameStatus <= 400 ) {
			if (!instance_exists(obj_open_taccuino_1)) {
				if (instance_exists(obj_open_taccuino_2)) {
					instance_destroy(obj_open_taccuino_2);
				}
				if (instance_exists(obj_open_taccuino_3)) {
					instance_destroy(obj_open_taccuino_3);
				}
				instance_create_depth(400, center_y, -10000, obj_open_taccuino_1);
			}
		} else if (global.game_data.gameStatus < 1050) {
			if (!instance_exists(obj_open_taccuino_2)) {
				if (instance_exists(obj_open_taccuino_1)) {
					instance_destroy(obj_open_taccuino_1);
				}
				if (instance_exists(obj_open_taccuino_3)) {
					instance_destroy(obj_open_taccuino_3);
				}
				instance_create_depth(400, center_y, -10000, obj_open_taccuino_2);
			}
		} else {
			if (!instance_exists(obj_open_taccuino_2)) {
				if (instance_exists(obj_open_taccuino_1)) {
					instance_destroy(obj_open_taccuino_1);
				}
				if (instance_exists(obj_open_taccuino_2)) {
					instance_destroy(obj_open_taccuino_2);
				}
				instance_create_depth(400, center_y, -10000, obj_open_taccuino_3);
			}
		}
    }
}