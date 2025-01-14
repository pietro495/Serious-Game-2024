/// @description Setup

// Email content
padding = 16;
textWidth = 320;
lineHeight = 24;
currentPage = 1;
maxPage = 3;
help = "COMANDI\n\nFrecce direzionali: movimento\n\nInvio: per mandare avanti i dialoghi\n\nSpace: quando appare un punto interrogativo sulla testa di un personaggio, fa partire il dialogo\n\nALT Sinistro: evidenzia gli oggetti cliccabili\n\n\P: apri menù\n\nESC: chiusura di un oggetto aperto\n\nF11: schermo intero";

global.playerControl = false;

if (global.game_data.gameStatus == 0) {
	global.game_data.gameStatus = 1;
}

instance_create_depth(0, 0, -10050, obj_video);