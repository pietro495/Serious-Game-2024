/// @description Close menu

if (room != rm_menu && !instance_exists(obj_office_blackboard) && !instance_exists(obj_omnitechoffice_password)) {
	pause = !pause;
}