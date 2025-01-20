/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"Il signor Smith dovrebbe essere il proprietario del locale...");
dialog.add(global.game_data.dialogueSprite,"Chissà se posso sbloccare la porta utilizzando i suoi dati personali che ho appena letto sulla carta d'identità...");
dialog.add(global.game_data.dialogueSprite,"Spesso le persone utilizzano i loro dati personali come password, il che è quanto di più pericoloso si possa fare.");

global.showIDThought = false;