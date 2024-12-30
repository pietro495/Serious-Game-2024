/// @description Setup

// Email content
padding = 16;
textWidth = 450;
lineHeight = 28;
welcome = "Benvenuto!\n Digita la password sulla tastiera e premi Invio per proseguire. A causa di un bug di sistema, l'inserimento di lettere maiuscole può non funzionare correttamente.";

global.playerControl = false;

emails = [
	{
		subject: "Aggiornamento della Politica Aziendale per Lavoro Ibrido",
		from: "HR Department OmniTech (hr@omnitech.com)",
		to: "Tutti i dipendenti OmniTech",
		body: "Gentili colleghi,\nSiamo lieti di annunciare un aggiornamento alla nostra politica aziendale riguardante il lavoro ibrido. A partire dal prossimo mese, i dipendenti dovranno necessariamente tornare a lavorare in presenza.\nVi invitiamo a consultare il documento aggiornato nella nostra intranet aziendale al seguente link.\nPer eventuali domande o chiarimenti, non esitate a contattarci.\nCordiali saluti,\nDipartimento Risorse Umane OmniTech",
		isFake: false,
		clues: [],
	},
	{
		subject: "Manutenzione Programmata - 15 Gennaio 2024",
		from: "IT Support OmniTech (it-support@omnitech.com)",
		to: "Tutti i dipendenti OmniTech",
		body: "Gentili colleghi,\nVi informiamo che il giorno 15 gennaio 2024, dalle ore 22:00 alle 02:00, verrà effettuata una manutenzione programmata sui server aziendali. Durante questo intervallo di tempo, alcuni servizi (incluso l’accesso ai file condivisi e alla posta elettronica) potrebbero non essere disponibili.\nVi preghiamo di pianificare il vostro lavoro tenendo conto di questa interruzione.\nPer ulteriori dettagli, potete contattare il nostro help desk al numero interno 800-555-OMNI.\nGrazie per la comprensione.\nCordiali saluti,\nTeam IT OmniTech",
		isFake: false,
		clues: [],
	},
	{
		subject: "Conferma ordine #987654 - OmniTech",
		from: "Ufficio Vendite TechSupply (orders@techsupply.com)",
		to: "procurement@omnitech.com",
		body: "Gentile Team Acquisti,\nConfermiamo di aver ricevuto l'ordine #987654 per il seguente materiale:\nL'ordine è in fase di preparazione e verrà spedito entro il 10 gennaio 2024. Il tracking sarà disponibile non appena il pacco sarà affidato al corriere.\nPer domande sull'ordine o eventuali modifiche, contattateci rispondendo a questa email o chiamandoci al numero +39 800 123 456.\nGrazie per aver scelto TechSupply!\nCordiali saluti,\nTechSupply",
		isFake: false,
		clues: false,
	},
	{
		subject: "Accesso Sospetto al Tuo Account OmniTech",
		from: "support@omnitech-verifica.com",
		to: "procurement@omnitech.com",
		body: "Gentile utente,\nAbbiamo rilevato un accesso sospetto al tuo account OmniTech da un indirizzo IP non riconosciuto (35.198.123.45) situato in Hong Kong. Per garantire la sicurezza del tuo account, è necessario verificare le tue credenziali entro le prossime 6 ore.\nFai clic sul link esterno sottostante per verificare immediatamente il tuo account:\nSe non completi questa verifica, il tuo account potrebbe essere temporaneamente bloccato per ragioni di sicurezza.\nCordiali saluti,\nTeam Sicurezza OmniTech",
		isFake: true,
		clues: [
			{ clue: "L'indirizzo email è sospetto (support@omnitech-verifica.com)" },
			{ clue: "Viene richiesto di accedere ad un link esterno" },
			{ clue: "L'email mette fretta di completare la verifica, pena il blocco dell'account" }
		],
	},
	{
		subject: "Fattura Insoluta #56789 - Pagamento Richiesto",
		from: "billing@omnitech-partners.com",
		to: "finance@omnitech.com",
		body: "Gentile Ufficio Finanziario,\nAbbiamo notato che la fattura #56789, con scadenza il 20 dicembre 2024, risulta ancora non saldata. Per evitare penali e il blocco dei servizi, ti invitiamo a effettuare il pagamento al più presto.\nPuoi scaricare la fattura dettagliata dal seguente link esterno:\n\nPer qualsiasi chiarimento, rispondi a questa email o contattaci al numero +39 800 555 789.\nGrazie per la collaborazione.\nCordiali saluti,\nOmnitech Partners",
		isFake: true,
		clues: [
			{ clue: "L'indirizzo email è sospetto (support@omnitech-partners.com)" },
			{ clue: "Viene richiesto di scaricare un file tramite link esterno" },
			{ clue: "L'email mette fretta di completare il pagamento, pena il blocco dell'account e il pagamento di penali" }
		],
	}
];

if (instance_exists(obj_omnitechoffice_computer_password)) {
	instance_destroy(obj_omnitechoffice_computer_password);
}