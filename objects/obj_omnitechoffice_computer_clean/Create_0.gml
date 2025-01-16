/// @description Setup

nextMailBtn = noone;
prevMailBtn = noone;
finishBtn = noone;
realBtn = noone;
phishingBtn = noone;

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;
currentMail = 0;

global.playerControl = false;

emails = [
	{
		subject: "Oggetto: Aggiornamento della Politica Aziendale per Lavoro Ibrido",
		from: "Da: HR Department OmniTech (hr@omnitech.com)",
		to: "A: Tutti i dipendenti OmniTech",
		body: "Gentili colleghi,\nA partire dal prossimo mese, i dipendenti dovranno necessariamente tornare a lavorare in presenza.\nVi invitiamo a consultare il documento aggiornato nella nostra intranet aziendale al seguente link: https://omnitech.com/politica-aziendale-lavoro-ibrido.\nPer eventuali domande o chiarimenti, non esitate a contattarci.\n\nCordiali saluti,\nDipartimento Risorse Umane OmniTech",
		isFake: false,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Manutenzione Programmata - 15 Gennaio 2024",
		from: "Da: IT Support OmniTech (it-support@omnitech.com)",
		to: "A: Tutti i dipendenti OmniTech",
		body: "Gentili colleghi,\nVi informiamo che il giorno 15 gennaio 2024, dalle ore 22:00 alle 02:00, verrà effettuata una manutenzione programmata sui server aziendali. Durante questo intervallo di tempo, alcuni servizi (incluso l'accesso ai file condivisi e alla posta elettronica) potrebbero non essere disponibili.\nVi preghiamo di pianificare il vostro lavoro tenendo conto di questa interruzione.\nPer ulteriori dettagli, potete contattare il nostro help desk al numero interno 800-555-OMNI.\nGrazie per la comprensione.\nCordiali saluti,\nTeam IT OmniTech",
		isFake: false,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Conferma ordine #987654 - OmniTech",
		from: "Da: Ufficio Vendite TechSupply (orders@omnitech.com)",
		to: "A: procurement@omnitech.com",
		body: "Gentile Team Acquisti,\nConfermiamo di aver ricevuto l'ordine #987654 per il seguente materiale:\nL'ordine è in fase di preparazione e verrà spedito entro il 10 gennaio 2024. Il tracking sarà disponibile non appena il pacco sarà affidato al corriere.\nPer domande sull'ordine o eventuali modifiche, contattateci rispondendo a questa email o chiamandoci al numero +39 800 123 456.\nGrazie per aver scelto TechSupply!\nCordiali saluti,\nTechSupply",
		isFake: false,
		clues: false,
		userSelection: noone,
	},
	{
		subject: "Oggetto: Accesso Sospetto al Tuo Account OmniTech",
		from: "Da: support@omnitech-verifica.com",
		to: "A: procurement@omnitech.com",
		body: "Gentile utente,\nAbbiamo rilevato un accesso sospetto al tuo account OmniTech da un indirizzo IP non riconosciuto (35.198.123.45) situato in Hong Kong. Per garantire la sicurezza del tuo account, è necessario verificare le tue credenziali entro le prossime 6 ore.\nFai clic su questo link per verificare immediatamente il tuo account:\nSe non completi questa verifica, il tuo account potrebbe essere temporaneamente bloccato per ragioni di sicurezza.\nCordiali saluti,\nTeam Sicurezza OmniTech",
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
		body: "Gentile Ufficio Finanziario,\nAbbiamo notato che la fattura #56789, con scadenza il 20 dicembre 2024, risulta ancora non saldata. Per evitare penali e il blocco dei servizi, ti invitiamo a effettuare il pagamento al più presto.\nPuoi scaricare la fattura dettagliata da questo link\n\nPer qualsiasi chiarimento, rispondi a questa email o contattaci al numero +39 800 555 789.\nGrazie per la collaborazione.\nCordiali saluti,\nOmnitech Partners",
		isFake: true,
		clues: [
			{ clue: "L'indirizzo email è sospetto (support@omnitech-partners.com)", type: "sender" },
			{ clue: "Viene richiesto di scaricare un file tramite link esterno", type: "external_download" },
			{ clue: "L'email mette fretta di completare il pagamento, pena il blocco dell'account e il pagamento di penali", type: "rush" }
		],
		userSelection: noone,
	}
	
];

if (instance_exists(obj_omnitechoffice_computer_password)) {
	instance_destroy(obj_omnitechoffice_computer_password);
}