/// @description Handle sprite

if (instance_exists(obj_street_control)) {
	if (!obj_street_control.player_choices[index]) {
		sprite_index = asset_get_index(sprite_name + "_disabled");
	} else {
	    sprite_index = asset_get_index(sprite_name);
	}
}