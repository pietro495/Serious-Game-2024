/// @description Setup

nextMailBtn = noone;
finishBtn = noone;
realBtn = noone;
phishingBtn = noone;
life = 3;

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;
currentMail = 0;
remainingTime = 35;
frameCounter = 0;

global.playerControl = false;

emails = [
	{
		subject: "Oggetto: Verifica urgente del tuo conto!",
		from: "Da: Banca Sicura (supporto@banca-sicura.xyz)",
		to: "A: te",
		body: "Gentile cliente,\n\nA causa di attività sospette, il tuo conto è stato temporaneamente bloccato. Per evitare la chiusura definitiva, clicca immediatamente su questo link e verifica i tuoi dati.\n\nGrazie per la collaborazione,\nIl Team di Sicurezza Bancaria.",
		isFake: true,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Lavora con noi da casa - 500€/giorno!",
		from: "Da: Recruitment Team (careers@guadagna-online-now.biz)",
		to: "A: te",
		body: "Ciao,\n\nAbbiamo trovato il tuo profilo online e pensiamo che tu sia perfetto per questa opportunità! Guadagna fino a 500€ al giorno lavorando comodamente da casa. Nessuna esperienza necessaria.\nClicca sul link per candidarti: Inizia Ora\nNon perdere questa occasione unica!\n\nCordiali saluti,\nRecruitment Team.",
		isFake: true,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Promemoria del tuo appuntamento del 21 gennaio",
		from: "Da: Clinica Salute (info@clinicasalute.it)",
		to: "A: te",
		body: "Gentile cittadino,\nTi ricordiamo il tuo appuntamento presso Clinica Salute in data 21 gennaio alle ore 10.30:\nTi preghiamo di arrivare almeno 10 minuti prima dell'orario indicato e di portare con te un documento di identità.\nSe desideri modificare o annullare l'appuntamento, contattaci al numero +39 338 123 4567 o visita il nostro sito www.clinicasalute.it.\n\nGrazie e a presto!\nIl Team di Clinica Salute",
		isFake: false,
		clues: false,
		userSelection: noone,
	},
	{
		subject: "Oggetto: Nuovi contenuti in arrivo su Netflix",
		from: "Da: Servizio di Streaming (info@netflix.com)",
		to: "A: te",
		body: "Ciao utente,\nGennaio sarà un mese entusiasmante su Netflix! Ecco alcune delle novità in arrivo:\n\nSerie Originale: \"Detective Digitale\" (dal 12 gennaio)\nFilm: \"Il mondo nascosto\" (disponibile ora)\nDocumentario: \"Cyber Sicurezza per Tutti\" (dal 20 gennaio)\n\nAccedi ora per scoprire il catalogo completo: Clicca qui\n\nGrazie per far parte della nostra community,\nIl Team di Netflix",
		isFake: false,
		clues: false,
		userSelection: noone,
	},
	{
		subject: "Oggetto: Urgente: Modifica delle condizioni del tuo contratto bancario",
		from: "Da: Istituto San Paolo (assistenza@issp.it)",
		to: "A: te",
		body: "Gentile Cliente,\n\nLa informiamo che, a partire dal 31 gennaio 2025, entreranno in vigore alcune modifiche importanti ai termini e alle condizioni del suo contratto bancario. È necessario che lei confermi di aver letto e accettato i nuovi termini per continuare a usufruire dei nostri servizi senza interruzioni.\nPer procedere, acceda alla sua area clienti e confermi il suo consenso cliccando sul link di seguito: Modifica il tuo contratto ora\nQualora non completasse l’operazione entro 48 ore, il suo conto potrebbe essere temporaneamente sospeso.\nRestiamo a disposizione per eventuali chiarimenti.\n\nCordiali saluti,\nAssistenza Clienti Banca ISP",
		isFake: true,
		clues: [
			
		],
		userSelection: noone,
	}
	
];