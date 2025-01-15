/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(spr_dialogue_journalist,"Detective!!! Sono Annie Strevel del Cypher City Post. Ho saputo che sta lavorando per scovare il mittente di una serie di attachi hacker ai cittadini di Cypher City. Cosa può dirmi a riguardo?");
dialog.add(global.game_data.dialogueSprite, "Oh, salve... non posso comunicare nulla, ovviamente. Le indagini sono ancora in corso.");
dialog.add(spr_dialogue_journalist,"Nulla nulla?");
dialog.add(global.game_data.dialogueSprite,"Beh, qualcosa si. State attenti alle mail e agli SMS che ricevete, proteggete i vostri dispositivi con delle password adeguate.");
dialog.add(spr_dialogue_journalist,"E quali sarebbero queste password adeguate? Può mostrarmene qualcuna?");
dialog.add(global.game_data.dialogueSprite,"Volentieri.");

global.game_data.gameStatus = 800;