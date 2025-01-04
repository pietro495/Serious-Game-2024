/// @description Open computer

var can_click_on_hover = (
	(!instance_exists(obj_menu_pause) || (instance_exists(obj_menu_pause) && !obj_menu_pause.pause))
	&& !instance_exists(obj_dialogue_parent)
);

if (can_click_on_hover) {
	var viewport_coord = scr_get_viewport_coord();
	var center_x = viewport_coord[0];
	var center_y = viewport_coord[1]; 
	
	if (!instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
		if (global.game_data.gameStatus <= 2) {
			if (!instance_exists(obj_input_box) && !instance_exists(obj_omnitechoffice_computer_password)) {
				instance_create_depth(0, 0, -10001, obj_input_box);
				instance_create_depth(400, center_y, -10000, obj_omnitechoffice_computer_password);
			}		
		} else {
			if (!instance_exists(obj_omnitechoffice_computer_clean)) {
				instance_create_depth(400, center_y, -10000, obj_omnitechoffice_computer_clean);
			}
		}
	}
}