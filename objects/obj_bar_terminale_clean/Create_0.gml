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
currentSms = 0;
 
global.playerControl = false;
 
 
sms = [
	{
		number: "Numero: +39 351 987 6543 (Servizio Clienti Banca NazionaIe)",
		body: "Salve, siamo il Servizio Clienti della Banca Nazionale.\nAbbiamo rilevato un'attività sospetta sul tuo conto.\nPer evitare il blocco, verifica immediatamente i tuoi dati cliccando su questo link: http://banca-verifica-secure.com.",
		isFake: true,
		clues: [
			{ clue: "Il messaggio contiene un link sospetto che non appartiene al dominio ufficiale della banca."},
			{ clue: "Il testo usa la pressione temporale ('verifica immediatamente') per spingere l'utente ad agire in fretta."},
			{ clue: "Non c'è nessuna personalizzazione, come il nome del cliente o dettagli specifici del conto, che una banca reale includerebbe."}
		],
		userSelection: noone,
	},
	{
		number: "Numero: +39 345 123 4567 (Michael Smith)",
		body: "Ciao John, sono tuo figlio. Questo è il mio nuovo numero, ho perso il vecchio telefono. Sto molto male e ho bisogno di aiuto urgente. Puoi mandarmi 1.000$ sul conto IBAN IT12X1234567890123456789? Grazie, ti voglio bene.",
		isFake: true,
		clues: [
			{ clue: "Il mittente richiede denaro in modo urgente, sfruttando una situazione emotiva per manipolare l'utente.",},
			{ clue: "Viene fornito un IBAN, una pratica inusuale per un messaggio informale da un familiare."},
			{ clue: "Non ci sono verifiche o dettagli che confermino l'identità del mittente (es. domande personali che solo un familiare potrebbe sapere"}
		],
		userSelection: noone,
	},
	{
		number: "Numero: +39 333 456 7890 (Marco Saltimbocca)",
		body: "Ciao, sono Marco. Domani ci vediamo per il pranzo? Ho cambiato numero, scrivimi su WhatsApp per confermare. Porta tu il dolce!",
		isFake: false,
		clues: false,
		userSelection: noone,
	},
	{
	    number: "Numero: +39 392 654 3210 (Premi x tutti)",
	    body: "Congratulazioni! Sei stato selezionato per ricevere un buono regalo di 500$.\nPer ottenerlo, clicca qui: http://premio-vinci-subito.com.\nOfferta valida solo per oggi!",
	    isFake: true,
	    clues: [
	        "Il messaggio promette un premio molto allettante senza alcun motivo logico, una tipica tecnica di phishing.",
	        "Il link fornito non appartiene a un dominio noto o affidabile.",
	        "C'è una pressione temporale ('offerta valida solo per oggi') che spinge l'utente ad agire impulsivamente."
	    ],
	    userSelection: noone
	},
	{
	    number: "Numero: +39 347 234 5678 (Amazon)",
	    body: "Gentile cliente, il tuo account Amazon è stato sospeso per attività sospette.\nPer riattivarlo, accedi qui: http://amason.com e aggiorna le tue credenziali.",
	    isFake: true,
	    clues: [
	        "Il dominio del link non appartiene ad Amazon e sembra costruito per ingannare ('amazon-account-verifica.com').",
	        "Il messaggio non utilizza nessuna personalizzazione (nome del cliente o dettagli specifici sull'account).",
	        "Viene richiesta un'azione urgente ('aggiorna le tue credenziali'), una tecnica comune nei tentativi di phishing."
	    ],
	    userSelection: noone
	}
];
 
/*
if (instance_exists(obj_omnitechoffice_computer_password)) {
	instance_destroy(obj_omnitechoffice_computer_password);
}