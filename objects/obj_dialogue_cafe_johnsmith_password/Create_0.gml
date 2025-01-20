/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"Ehi Smith. Mi sono preso la briga di inserire una password efficace sul terminale. Eccola qui.");
dialog.add(spr_dialogue_johnsmith,"Wow! Grazie!");
dialog.add(global.game_data.dialogueSprite,"Prego. Per favore, ricorda di non condividerla con nessun per alcun motivo al mondo.");
dialog.add(global.game_data.dialogueSprite,"Se dovessero arrivarti email, SMS, messaggi in generale che ti chiedono di comunicare la password, non farlo. Sono tentativi di phishing.");
dialog.add(global.game_data.dialogueSprite,"E, per favore, non lasciare bigliettini con la tua password in giro.\n\n Arrivederci!");
dialog.add(spr_dialogue_johnsmith,"Assolutamente. Grazie detective.");
dialog.add(global.game_data.dialogueSprite,"Credo sia arrivato il momento di tornare in ufficio a mettere insieme i pezzi del puzzle.");

global.game_data.gameStatus = 550;