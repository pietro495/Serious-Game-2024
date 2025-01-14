/// @description Enter the bar

if (nearbyPlayer) {
	with (obj_vicolo_control) {
		if (hasUnlockedDoor) {
			global.game_data.gameStatus = 7;
			room_goto(rm_johnsmith_bar);
		} else {
			if (!instance_exists(obj_dialogue_parent) && !instance_exists(obj_overlay)) {
				var viewport_coord = scr_get_viewport_coord();
				var center_x = viewport_coord[0];
				var center_y = viewport_coord[1]; 
			
				if (!instance_exists(obj_vicolo_tastierino)) {
					instance_create_depth(400, center_y, -10000, obj_vicolo_tastierino);
				}
				if (!instance_exists(obj_vicolo_tastierino_1)) {
					instance_create_depth(310, 297, -10001, obj_vicolo_tastierino_1);
				}
				if (!instance_exists(obj_vicolo_tastierino_2)) {
					instance_create_depth(400, 297, -10001, obj_vicolo_tastierino_2);
				}
				if (!instance_exists(obj_vicolo_tastierino_3)) {
					instance_create_depth(490, 297, -10001, obj_vicolo_tastierino_3);
				}
				if (!instance_exists(obj_vicolo_tastierino_4)) {
					instance_create_depth(310, 387, -10001, obj_vicolo_tastierino_4);
				}
				if (!instance_exists(obj_vicolo_tastierino_5)) {
					instance_create_depth(400, 387, -10001, obj_vicolo_tastierino_5);
				}
				if (!instance_exists(obj_vicolo_tastierino_6)) {
					instance_create_depth(490, 387, -10001, obj_vicolo_tastierino_6);
				}
				if (!instance_exists(obj_vicolo_tastierino_7)) {
					instance_create_depth(310, 477, -10001, obj_vicolo_tastierino_7);
				}
				if (!instance_exists(obj_vicolo_tastierino_8)) {
					instance_create_depth(400, 477, -10001, obj_vicolo_tastierino_8);
				}
				if (!instance_exists(obj_vicolo_tastierino_9)) {
					instance_create_depth(490, 477, -10001, obj_vicolo_tastierino_9);
				}
				if (!instance_exists(obj_vicolo_tastierino_canc)) {
					instance_create_depth(310, 567, -10001, obj_vicolo_tastierino_canc);
				}
				if (!instance_exists(obj_vicolo_tastierino_0)) {
					instance_create_depth(400, 567, -10001, obj_vicolo_tastierino_0);
				}
				if (!instance_exists(obj_vicolo_tastierino_confirm)) {
					instance_create_depth(490, 567, -10001, obj_vicolo_tastierino_confirm);
				}
			}
		}
	}
}