/// @description Draw buttons

if(file_exists("save.txt")) {
	instance_create_depth(725, 128, -10000, obj_button_load);
	instance_create_depth(725, 292, -10000, obj_button_new);
	instance_create_depth(725, 456, -10000, obj_button_help);
	instance_create_depth(725, 620, -10000, obj_button_exit);
} else {
	instance_create_depth(725, 170, -10000, obj_button_new);
	instance_create_depth(725, 334, -10000, obj_button_help);
	instance_create_depth(725, 498, -10000, obj_button_exit);
}