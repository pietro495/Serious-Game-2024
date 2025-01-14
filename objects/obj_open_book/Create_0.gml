/// @description Setup

// Email content
padding = 16;
textWidth = 320;
lineHeight = 24;
currentPage = 1;
maxPage = 3;
phishing = "PHISHING\nIl phishing è una truffa informatica in cui un attore malevolo (phisher) cerca di ingannarti per ottenere informazioni personali o sensibili (password, dati della carta di credito...). L'idea è mascherare una comunicazione (solitamente email o SMS) malevola come legittima, ad esempio mimando alla perfezione una email reale, ma inserendo link o file che, se aperti/scaricati, consentono al phisher di rubare i tuoi dati. Se la vittima è un'azienda, allora si parla di spear-phishing.\nCi sono alcuni segnali che caratterizzano il phishing: fai attenzione all'indirizzo email del mittente (a volte può addirittura apparire come lecito, ma ad un'attenta analisi si scopre in realtà essere malevolo, ad esempio cliccando col mouse); nessuna banca né servizi ti chiederanno mai password o altre informazioni sensibili via mail ";
phishing2 = "(per cui non farlo mai. Se ti venisse il dubbio, contatta la tua banca o l'help desk del tuo servizio attraverso i loro canali ufficiali e chiedi a loro); fai attenzione alle email che mettono fretta nell'eseguire un'azione come il cambio password; leggi sempre attentamente gli eventuali link esterni prima di aprirli e assicurati che siano corretti (alcuni dispositivi rendono difficile distinguere la l dalla I). \nPer finire, è sempre bene attivare una two-factor authentication in modo da avere un ulteriore (necessario) strato di sicurezza suoi tuoi account.";
password = "GESTIONE PASSWORD\nSaper gestire le proprie password è importante. Al giorno d'oggi, subire un furto di password può avere conseguenze molto gravi.\nCi sono alcune regole generali da seguire per generare una buona password: lunghezza minima di 8 caratteri; presenza di almeno una maiuscola, una minuscola, un numero e un carattere speciale; totale assenza di informazioni personali; non riutilizzare la stessa password su più account.\nCiò detto, esistono delle soluzioni che generano e gestiscono le password al posto tuo: i password manager. Queste sono applicazioni che tengono traccia di tutte le password generate (ovviamente non in chiaro) e, all'occorrenza, consentono di recuperarle e accedere al tuo account di un determinato servizio.";
password2 = "Ricorda: non fornire la tua password a nessuno e non lasciare bigliettini in giro come John Smith :)";
ransomware = "RANSOMWARE\nLa parola è l'unione (in inglese) di ransom (riscatto) e software. Un software di questo tipo \"prende in ostaggio\" i tuoi file o l'intero dispositivo, crittografandoli e impedendone l'accesso in assenza della chiave di decrittazione. Per sbloccare il dispositivo, quindi, i criminali ti richiedono di pagare un riscatto (ransom, appunto) con la promessa di sbloccare il dispositivo.\nVien da se che il riscatto NON va assolutamente pagato.\nVista la difficoltà di rimozione di un ransomware, è importantissimo prevenirli: non aprire mai link sospetti; non scaricare mai file sospetti; mantieni aggiornati i tuoi programmi per evitare che contengano falle di sicurezza; utilizza un buon antivirus; scansiona file Word, PDF e simili prima di aprirli.";
ransomware2 = "E' inoltre molto utile fare dei backup regolari dei tuoi file: in questo modo, qualora dovessi cadere vittima di ransomware, potrai semplicemente formattare e ripulire a fondo il dispositivo e utilizzare i tuoi backup.";

global.playerControl = false;

if (global.game_data.gameStatus == 0) {
	global.game_data.gameStatus = 1;
}