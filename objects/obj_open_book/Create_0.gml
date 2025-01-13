/// @description Setup

// Email content
padding = 16;
textWidth = 320;
lineHeight = 24;
welcome = "Il phishing è una truffa informatica in cui un attore malevolo (phisher) cerca di ingannarti per ottenere informazioni personali o sensibili (password, dati della carta di credito...). L'idea è mascherare una comunicazione (solitamente email o SMS) malevola come legittima, ad esempio mimando alla perfezione una email reale, ma inserendo link o file che, se aperti/scaricati, consentono al phisher di rubare i tuoi dati. Se la vittima è un'azienda, allora si parla di spear-phishing.\nCi sono alcuni segnali che caratterizzano il phishing: fai attenzione all'indirizzo email del mittente (a volte può addirittura apparire come lecito, ma ad un'attenta analisi si scopre in realtà essere malevolo, ad esempio cliccando col mouse); nessuna banca né servizi ti chiederanno mai password o altre informazioni sensibili via mail (per cui non farlo mai. Se ti venisse il dubbio, ";
welcome2 = "contatta la tua banca o l'help desk del tuo servizio attraverso i loro canali ufficiali e chiedi a loro); fai attenzione alle email che mettono fretta nell'eseguire un'azione come il cambio password; leggi sempre attentamente gli eventuali link esterni prima di aprirli e assicurati che siano corretti (alcuni dispositivi rendono difficile distinguere la l dalla I). \nPer finire, è sempre bene attivare una two-factor authentication in modo da avere un ulteriore (necessario) strato di sicurezza suoi tuoi account.";

global.playerControl = false;

if (global.game_data.gameStatus == 0) {
	global.game_data.gameStatus = 1;
}