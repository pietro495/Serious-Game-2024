/// @description Open terminal

if (global.game_data.gameStatus >= 8) {
	if (!instance_exists(obj_bar_terminale_open) && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
		var viewport_coord = scr_get_viewport_coord();
		var center_x = viewport_coord[0];
		var center_y = viewport_coord[1]; 
		
		instance_create_depth(400, center_y, -10000, obj_bar_terminale_open);
	}
}