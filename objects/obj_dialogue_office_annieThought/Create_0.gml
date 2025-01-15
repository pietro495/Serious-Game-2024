/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"Ha già pubblicato l'articolo?!?!? Beh, almeno può essere utile ai lettori...");

with (obj_office_control) {
	hasShownAnnieThought = true;
}