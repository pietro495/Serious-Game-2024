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
		subject: "Oggetto: Aiuto per un'inchiesta sul dark web",
		from: "Da: Mary Valley (mary.valley@cityjournal.com)",
		to: "A: te",
		body: "Caro Detective,\nmi Mary Valley, sono una giornalista investigativa del City Journal. Sto lavorando a un'inchiesta su un mercato nero online che sembra vendere dati rubati di cittadini della nostra città. Le tracce che ho seguito mi hanno portato a credere che dietro ci sia qualcuno molto vicino a noi, forse un pezzo grosso.\nSe è interessato, posso condividere le informazioni che ho raccolto finora. Credo che la sua esperienza sia fondamentale per portare alla luce la verità. Posso fidarmi di lei?\n\nAttendo una sua risposta.\nMaria",
		isFake: false,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Stai lontano dai nostri affari",
		from: "Da: Anonymous (no-reply@darkmail.com)",
		to: "A: te",
		body: "Detective,\nSappiamo cosa stai facendo. Stai scavando troppo a fondo, e non ti conviene. Abbiamo occhi ovunque, persino nel tuo ufficio.\nUn consiglio: lascia perdere. O la prossima volta che accendi il computer, potrebbe essere l'ultima.\n\nA",
		isFake: false,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Grazie per aver trovato mio figlio",
		from: "Da: Paolo Saltimbocca (paolo.saltimbocca@gmail.com)",
		to: "A: te",
		body: "Gentile Detective,\nvoglio solo ringraziarla personalmente per aver trovato mio figlio, Marco. Avevamo perso ogni speranza, ma lei non si è mai arreso.\nSe c'è qualcosa che io o la mia famiglia possiamo fare per lei, non esiti a chiedere. Persone come lei rendono la nostra città un posto migliore.\n\nCon gratitudine,\nPaolo Saltimbocca",
		isFake: false,
		clues: false,
		userSelection: noone,
	},
	{
		subject: "Oggetto: Ho trovato qualcosa di strano sul mio computer",
		from: "Da: Luke Bert (l.bert@gmail.com)",
		to: "A: procurement@omnitech.com",
		body: "Gentile Detective,\nmi chiamo Luke Bert, e non so se questa possa essere una questione per lei, ma ho trovato dei file molto strani sul mio computer. Non li ho mai scaricati e sembrano essere legati a transazioni online che non ho mai fatto.\nHo paura che qualcuno stia usando il mio computer per qualcosa di illegale. Non voglio finire nei guai per qualcosa che non ho fatto. Posso inviarle i file per controllarli?\nAttendo sue istruzioni.\n\nGrazie per il suo lavoro,\nLuke",
		isFake: false,
		clues: [],
		userSelection: noone,
	},
	{
		subject: "Oggetto: Notifica di accesso non autorizzato: è richiesta la sua collaborazione",
		from: "Da: Dipartimento di Giustizia (giustizia@cyphercity.com)",
		to: "A: te",
		body: "Detective,\nabbiamo rilevato un tentativo di accesso non autorizzato al nostro database di indagini riservate. Il suo profilo risulta tra quelli coinvolti. Per motivi di sicurezza, è necessario verificare la sua identità per confermare l'accesso legittimo al sistema.\nPer completare la verifica, acceda su questo link e inserisca le sue credenziali.\nAttenzione: se non completerà la verifica entro 12 ore, il suo account verrà temporaneamente sospeso, compromettendo l'accesso ai dati dell'indagine in corso.\n\nGrazie per la collaborazione,\nDipartimento di Giustizia",
		isFake: true,
		clues: [],
		userSelection: noone,
	}
	
];