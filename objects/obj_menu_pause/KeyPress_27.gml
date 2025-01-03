/// @description Close menu

if (room != rm_menu && !instance_exists(obj_overlay)
) {
	global.playerControl = true;
	pause = !pause;
}