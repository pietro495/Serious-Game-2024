/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"Il tenente sta lavorando davvero duro ultimamente. Questo gruppo hacker lavora giorno e notte...");

with (obj_office_control) {
	hasShownGroupThought = true;
}