/// @description Setup

// Email content
padding = 16;
textWidth = 750;
lineHeight = 28;
welcome = "";

global.playerControl = false;

if (global.game_data.gameStatus == 0) {
	global.game_data.gameStatus = 1;
}