/// @description Close menu

if (room != rm_menu && 
	!instance_exists(obj_office_blackboard) && 
	!instance_exists(obj_omnitechoffice_password) &&
	!instance_exists(obj_omnitechoffice_computer_password) &&
	!instance_exists(obj_omnitechoffice_computer_clean) &&
	!instance_exists(obj_open_book)
) {
	pause = !pause;
}