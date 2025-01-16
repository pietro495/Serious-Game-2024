/// @description Setup

nextQuestionBtn = noone;

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;

global.playerControl = false;

emails = [
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

if (instance_exists(obj_bedroom_computer_clean)) {
	instance_destroy(obj_bedroom_computer_clean);
}
if (instance_exists(obj_button_finishmail)) {
	instance_destroy(obj_button_finishmail);
}
if (instance_exists(obj_button_prevmail)) {
	instance_destroy(obj_button_prevmail);
}

if (instance_exists(obj_button_nextmail)) {
	instance_destroy(obj_button_nextmail);
}

if (instance_exists(obj_button_mark_as_phishing)) {
	instance_destroy(obj_button_mark_as_phishing);
}

if (instance_exists(obj_button_mark_as_real)) {
	instance_destroy(obj_button_mark_as_real);
}

show_quiz_question("bedroom")