/// @description Detect sprite

if (global.game_data.gender == -1) {
	sprite_index = spr_btn_confirm_char_disabled;
} else if (global.game_data.gender == 0 || global.game_data.gender == 1) {
	sprite_index = spr_btn_confirm_char;
}