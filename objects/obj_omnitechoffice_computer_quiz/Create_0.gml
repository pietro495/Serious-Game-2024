/// @description Setup

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;
currentMail = 0;

global.playerControl = false;

emails = [
	{
		subject: "Oggetto: Accesso Sospetto al Tuo Account OmniTech",
		from: "Da: support@omnitech-verifica.com",
		to: "A: procurement@omnitech.com",
		body: "Gentile utente,\nAbbiamo rilevato un accesso sospetto al tuo account OmniTech da un indirizzo IP non riconosciuto (35.198.123.45) situato in Hong Kong. Per garantire la sicurezza del tuo account, è necessario verificare le tue credenziali entro le prossime 6 ore.\nFai clic sul link esterno sottostante per verificare immediatamente il tuo account:\nSe non completi questa verifica, il tuo account potrebbe essere temporaneamente bloccato per ragioni di sicurezza.\nCordiali saluti,\nTeam Sicurezza OmniTech",
		isFake: true,
		clues: [
			{ clue: "L'indirizzo email è sospetto (support@omnitech-verifica.com)", type: "sender" },
			{ clue: "Viene richiesto di accedere ad un link esterno", type: "external_link" },
			{ clue: "L'email mette fretta di completare la verifica, pena il blocco dell'account", type: "rush" }
		],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Fattura Insoluta #56789 - Pagamento Richiesto",
		from: "Da: billing@omnitech-partners.com",
		to: "A: finance@omnitech.com",
		body: "Gentile Ufficio Finanziario,\nAbbiamo notato che la fattura #56789, con scadenza il 20 dicembre 2024, risulta ancora non saldata. Per evitare penali e il blocco dei servizi, ti invitiamo a effettuare il pagamento al più presto.\nPuoi scaricare la fattura dettagliata dal seguente link esterno:\n\nPer qualsiasi chiarimento, rispondi a questa email o contattaci al numero +39 800 555 789.\nGrazie per la collaborazione.\nCordiali saluti,\nOmnitech Partners",
		isFake: true,
		clues: [
			{ clue: "L'indirizzo email è sospetto (support@omnitech-partners.com)", type: "sender" },
			{ clue: "Viene richiesto di scaricare un file tramite link esterno", type: "external_download" },
			{ clue: "L'email mette fretta di completare il pagamento, pena il blocco dell'account e il pagamento di penali", type: "rush" }
		],
		userSelection: noone,
	}
];

if (instance_exists(obj_omnitechoffice_computer_clean)) {
	instance_destroy(obj_omnitechoffice_computer_clean);
}

show_quiz_question("omnitech")

//337
//82