/// @description Hover pointer effect, mouse left click

// Mouse left click
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var viewport_coord = scr_get_viewport_coord();
var center_y = viewport_coord[1]; 

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

if (computed_mouse_x > 568 && computed_mouse_x < 639 && computed_mouse_y > 16 && computed_mouse_y < 88) {
    if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_open_taccuino) && !instance_exists(obj_dialogue_parent) && !instance_exists(obj_overlay) && global.game_data.gameStatus >= 4) {
		if (global.game_data.gameStatus <= 8 ) {
			if (!instance_exists(obj_open_taccuino_1)) {
				if (instance_exists(obj_open_taccuino_2)) {
					instance_destroy(obj_open_taccuino_2);
				}
				if (instance_exists(obj_open_taccuino_3)) {
					instance_destroy(obj_open_taccuino_3);
				}
				instance_create_depth(400, center_y, -10000, obj_open_taccuino_1);
			}
		} else if (global.game_data.gameStatus <= 18) {
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


// Hand pointer
var hovered_object = instance_position(mouse_x, mouse_y, obj_inventory_book);

if (hovered_object != noone) {
	window_set_cursor(cr_handpoint);
} else {
	window_set_cursor(cr_arrow);
}