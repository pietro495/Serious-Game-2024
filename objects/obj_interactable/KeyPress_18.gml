/// @description On ALT press

if (nearbyPlayer) {
	sprite_index = asset_get_index(sprite_name + "_highlight");
} else {
	sprite_index = asset_get_index(sprite_name + "_highlight_far");
}
highlight_enabled = true;	