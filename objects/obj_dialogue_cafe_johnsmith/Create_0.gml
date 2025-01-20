/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"Ciao Smith.");
dialog.add(spr_dialogue_johnsmith,"Ciao. Come hai fatto a entrare? Ti ha aiutato il signor Anderson lì fuori?");
dialog.add(global.game_data.dialogueSprite,"Ho trovato la tua carta di identità nella tua auto... Dovresti stare più attento a dove lasci i tuoi averi.");
dialog.add(global.game_data.dialogueSprite,"Inoltre, non è assolutamente saggio impostare la tua password utilizzando informazioni personali. Mi è bastato usare la tua data di nascita per entrare nel cafè.");
dialog.add(spr_dialogue_johnsmith,"Ah... riguardo a questo... qualcuno mi ha prosciugato il conto in banca, ma giuro di non aver fatto nulla di male.");
dialog.add(global.game_data.dialogueSprite,"Si, certo... Non sei il primo che me lo dice oggi... Hai per caso cliccato su un link di una email sospetta?");
dialog.add(spr_dialogue_johnsmith,"Non credo... puoi controllare tu stesso sul terminale sulla destra.");
dialog.add(global.game_data.dialogueSprite,"Grazie. C'è qualche password che devo scoprire o sapere per accedervi?");
dialog.add(spr_dialogue_johnsmith,"No, puoi accedervi liberamente.");
dialog.add(global.game_data.dialogueSprite,"Ottima idea, non proteggere un terminale con i tuoi dati all'interno. Ricorda di proteggere sempre i tuoi dati, anche con più misure di sicurezza.");
dialog.add(global.game_data.dialogueSprite,"Ti consiglio di impostare una password di almeno 8 caratteri contenente almeno un numero, una lettera maiuscola, una lettera minuscola e un carattere speciale.");
dialog.add(global.game_data.dialogueSprite,"In generale, più una password è lunga, più tempo richiede per essere scoperta, a patto che non contenga dei termini o parole comunemente usati o che fanno riferimento ai tuoi dati personali.");

global.game_data.gameStatus = 400;