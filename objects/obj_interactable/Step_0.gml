/// @description Detect ALT key press

if (keyboard_check(vk_alt)) {
	sprite_index = asset_get_index(sprite_name + "_highlight");
    highlight_enabled = true;
} else {
	sprite_index = asset_get_index(sprite_name);
    highlight_enabled = false;
}