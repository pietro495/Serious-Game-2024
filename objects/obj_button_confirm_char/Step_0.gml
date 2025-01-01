/// @description Detect sprite

if (global.gender == -1) {
	sprite_index = spr_btn_confirm_char_disabled;
} else if (global.gender == 0 || global.gender == 1) {
	sprite_index = spr_btn_confirm_char;
}