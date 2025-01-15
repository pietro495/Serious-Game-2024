/// @description Email setup

global.playerControl = false;
if (global.game_data.gameStatus == 600) {
	global.game_data.gameStatus = 650;
} else if (global.game_data.gameStatus == 1000) {
	global.game_data.gameStatus = 1050;
}

padding = 16;
textWidth = 600;
lineHeight = 28;
hint1 = "In base alle informazioni raccolte analizzando l'indirizzo IP di chi ha inviato le email, la base sembrebbe essere in questa stessa città, ma dove?";
hint2 = "In base alle informazioni raccolte analizzando l'indirizzo IP di chi ha inviato le email, la base sembrebbe essere in questa stessa città, ma dove?\n\nA giudicare dai diversi stili di scrittura e dai diversi attacchi, sembrano esserci tre hacker\n\nC'è qualcosa di strano nel modus operandi del gruppo, è come se stesse seguendo alcune nozioni di qualcuno che conosco... tenente?";
hint3 = "In base alle informazioni raccolte analizzando l'indirizzo IP di chi ha inviato le email, la base sembrebbe essere in questa stessa città, ma dove?\n\nA giudicare dai diversi stili di scrittura e dai diversi attacchi, sembrano esserci tre hacker\n\nC'è qualcosa di strano nel modus operandi del gruppo, è come se stesse seguendo alcune nozioni di qualcuno che conosco... tenente?\n\nDevo andare nei vecchi uffici scolastici e controllare";