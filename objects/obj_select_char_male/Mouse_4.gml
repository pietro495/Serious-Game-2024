/// @description Select sprite

if (global.gender == -1 || global.gender == 1) {
	global.gender = 0;
	global.dialogueSprite = global.dialogueSprite;
} else {
	global.gender = -1;
	global.dialogueSprite = noone;
}