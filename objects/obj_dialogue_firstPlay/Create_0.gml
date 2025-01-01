/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

show_message("Premi Invio per mandare avanti i dialoghi");

dialog.add(spr_dialogue_boss,"Detective. La città sta andando a pezzi. Ho bisogno del miglior investigatore sulla piazza per questo caso.");
dialog.add(global.dialogueSprite,"Tenente, che piacere. Di cosa si tratta?");
dialog.add(spr_dialogue_boss,"Phishing.");
dialog.add(global.dialogueSprite,"Phishing? Cos'è?");
dialog.add(spr_dialogue_boss,"Il phishing è una truffa online in cui qualcuno cerca di ingannarti facendoti credere di essere una persona o un'organizzazione affidabile.");
dialog.add(spr_dialogue_boss,"Il suo obiettivo è rubare dati sensibili: password, carte di credito, codici di accesso.");
dialog.add(spr_dialogue_boss,"Solitamente, il phishing avviene per email che sembrano reali e ti chiedono di cliccare su un link esterno o scaricare un file, SMS, siti web che imitano quelli veri.");
dialog.add(spr_dialogue_boss,"Nonostante sembri banale, è tutt'ora uno degli attacchi più efficaci esistenti e fa spesso leva sul fattore umano per spingere l'utente a sbagliare.");
dialog.add(spr_dialogue_boss,"Per proteggersi è sufficiente non cliccare mai su link sospetti, analizzare ogni parte dell'email per assicurarsi che sia reale, non condividere mai informazioni sensibili. Insomma, essere coscienzioso con i tuoi dati.");
dialog.add(spr_dialogue_boss,"Passando al sodo, le tue indagini inizieranno da un caso di spear-phishing, ovvero phishing indirizzato ad aziende.");
dialog.add(spr_dialogue_boss,"Un impiegato della OmniTech. Ha ricevuto un'email, sembrava una comunicazione interna. Ha cliccato. Dopo tre giorni, puff, sparito. L'ultimo luogo in cui è stato avvistato è il suo ufficio personale. Voglio che inizi da lì.");
dialog.add(global.dialogueSprite,"Hai detto che è sparito nel nulla? Qui c'è qualcosa di molto grave sotto...");
dialog.add(spr_dialogue_boss,"Esatto, e voglio che tu risolva il caso. Vai nell'ufficio e cerca degli indizi. Dovrai entrare dal soffitto. La porta è bloccata.");
dialog.add(global.dialogueSprite,"E poi dicono che il mio lavoro non è stressante.");
dialog.add(spr_dialogue_boss,"Tsk. Non sai nemmeno come muoverti o interagire con l'ambiente.\nUsa le frecce direzionali ←↑→↓ per muoverti.\nPremi Spazio per avviare un dialogo quando appare un punto interrogativo sulla testa di un giocatore.");
dialog.add(spr_dialogue_boss,"Premi ALT per evidenziare gli oggetti cliccabili e cliccali con il tasto sinistro del mouse per interagirvi.\nPremi F11 per andare a schermo intero. \nPremi ESC per aprire il menù. E ricorda di salvare la partita spesso.");
dialog.add(spr_dialogue_boss,"Ora prendi questo libro, contiene informazioni essenziali per conoscere meglio il phishing e altro che ti sarà utile nella tua avventura.\nPuoi aprirlo cliccando sul libro in alto a destra.");
dialog.add(global.dialogueSprite,"D'accordo. Grazie tenente.");