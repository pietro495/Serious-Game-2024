/// @description Select sprite

if (global.gender == -1 || global.gender == 1) {
	global.gender = 0;
	global.dialogueSprite = spr_dialogue_detective_male;
} else {
	global.gender = -1;
	global.dialogueSprite = noone;
}