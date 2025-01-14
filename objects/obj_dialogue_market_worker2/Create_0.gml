/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(spr_dialogue_worker2,"Buongiorno, signore. Mi scusi se le sembro agitato, ma c'è un problema con la cassa: non funziona più. Non possiamo accettare pagamenti elettronici, e il sistema dice che non si riesce ad accedere ai dati. Ha per caso visto qualcosa di strano mentre era qui?");
dialog.add(global.game_data.dialogueSprite,"Buongiorno. Hmm, interessante. Mi occupo di sicurezza informatica e, da come descrive il problema, potrebbe essere qualcosa di più grave di un semplice guasto tecnico. Posso dare un'occhiata?");
dialog.add(spr_dialogue_worker2,"Oh, sarebbe un grande aiuto! L'ho già segnalato al responsabile tecnico, ma non ci capisco nulla di queste cose. Quando provo a riavviare il sistema, compare una schermata nera con un messaggio in inglese. Dice qualcosa come \"I tuoi dati sono stati criptati\".");
dialog.add(global.game_data.dialogueSprite,"Ah, temo che il vostro sistema sia stato colpito da un ransomware. È un tipo di attacco informatico in cui i file del computer vengono bloccati con una chiave di criptazione, e di solito i criminali chiedono un riscatto in criptovaluta per sbloccarli.");
dialog.add(spr_dialogue_worker2,"Ransomware? Ma com'è possibile? È un supermercato, non un'azienda tecnologica!");
dialog.add(global.game_data.dialogueSprite,"Purtroppo, oggi nessuno è al sicuro. I cybercriminali puntano spesso a target come piccole imprese e supermercati, perché di solito non hanno sistemi di sicurezza sofisticati. Avete ricevuto qualche email strana negli ultimi giorni? Magari un link o un file da aprire?");
dialog.add(spr_dialogue_worker2,"Sì, ora che ci penso, il mio collega ha detto di aver aperto una mail che sembrava essere del nostro fornitore di software gestionale. Diceva di aggiornare subito il sistema scaricando un file. Non poteva essere quello, vero?");
dialog.add(global.game_data.dialogueSprite,"Sì, potrebbe essere esattamente così che l'hanno infettato. Quella mail era probabilmente un attacco di phishing, progettato per ingannare chi la legge e spingerlo a scaricare malware.");
dialog.add(spr_dialogue_worker2,"E ora cosa facciamo? Non possiamo perdere tutti i nostri dati!");
dialog.add(global.game_data.dialogueSprite,"Prima di tutto, non pagate il riscatto. Non ci sono garanzie che riavrete i vostri dati, e pagare incentiverebbe solo altri attacchi. Inoltre, vi serve un backup dei dati? Se ne avete uno, potreste essere in grado di ripristinare i sistemi senza pagare nulla");
dialog.add(global.game_data.dialogueSprite," Vi consiglio di contattare immediatamente un esperto di cybersecurity per cercare di recuperare il controllo del sistema.");
dialog.add(global.game_data.dialogueSprite,"Per fortuna, ne avete uno qui davanti a voi.");
dialog.add(global.game_data.dialogueSprite,"*... lavora al computer*");
dialog.add(global.game_data.dialogueSprite,"Ecco fatto. Sa, sto lavorando ad un'indagine per trovare il colpevole di una serie di cyberattacchi in città e ho trovato qualcosa di molto interessante sul vostro terminale...");
dialog.add(global.game_data.dialogueSprite,"In ogni caso, assicuratevi di avere un sistema di backup automatico attivo e, se dovesse ricapitare di essere vittima di un simile attacco, spegnete i computer non necessari e impedite l'accesso a internet per evitare che l'infezione si diffonda. ");
dialog.add(spr_dialogue_worker2,"Grazie mille per il suo aiuto. Non avrei mai pensato che un supermercato potesse essere vittima di un attacco del genere.");
dialog.add(global.game_data.dialogueSprite,"Purtroppo, i criminali informatici non fanno distinzioni. Spero che possiate risolvere presto. Buona giornata.\n (ndr: per leggere di più sul ransomware, apri il libro in alto a destra)");
dialog.add(spr_dialogue_worker3,"FINALMENTE!!!");

global.game_data.gameStatus = 19;