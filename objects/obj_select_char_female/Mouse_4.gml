/// @description Select sprite

if (global.game_data.gender == -1 || global.game_data.gender == 0) {
	global.game_data.gender = 1;
	global.game_data.dialogueSprite = spr_dialogue_detective_female;
} else {
	global.game_data.gender = -1;
	global.game_data.dialogueSprite = noone;
}