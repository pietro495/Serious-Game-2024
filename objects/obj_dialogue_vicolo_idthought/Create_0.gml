/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"John Smith dovrebbe essere il proprietario del locale...");
dialog.add(global.game_data.dialogueSprite,"Chissà se posso sbloccare la porta utilizzando i suoi dati personali che ho appena letto sulla carta d'identità...");

global.showIDThought = false;
