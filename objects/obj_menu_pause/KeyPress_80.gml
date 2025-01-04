/// @description Close menu

if (room != rm_menu && !instance_exists(obj_overlay) && !instance_exists(obj_dialogue_parent)) {
	global.playerControl = true;
	pause = !pause;
}