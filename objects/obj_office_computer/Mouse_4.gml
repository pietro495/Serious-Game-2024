/// @description Open computer

if (!instance_exists(obj_office_blackboard)) {
	instance_create_depth(512, 368, -10000, obj_office_blackboard);
	//instance_create_depth(camera_get_view_x(0) + 112, camera_get_view_height(0) / 2, -10000, obj_office_blackboard);
	//show_debug_message(camera_get_view_x(0));
	//show_debug_message(camera_get_view_height(0));
}