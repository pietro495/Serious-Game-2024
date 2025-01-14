/// @description Change sprite

if (global.game_data.gender == -1) {
	sprite_index = spr_select_char_text_none;
} else if (global.game_data.gender == 0) {
	sprite_index = spr_select_char_text_male;
} else if (global.game_data.gender == 1) {
	sprite_index = spr_select_char_text_female;
}