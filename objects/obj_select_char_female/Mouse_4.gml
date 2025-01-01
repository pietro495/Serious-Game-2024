/// @description Select sprite

if (global.gender == -1 || global.gender == 0) {
	global.gender = 1;
	global.dialogueSprite = spr_dialogue_detective_female;
} else {
	global.gender = -1;
	global.dialogueSprite = noone;
}