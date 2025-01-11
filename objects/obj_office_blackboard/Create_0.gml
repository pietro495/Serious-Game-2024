/// @description Email setup

global.playerControl = false;
if (global.game_data.gameStatus == 12) {
	global.game_data.gameStatus = 13;
} else if (global.game_data.gameStatus == 20) {
	global.game_data.gameStatus = 21;
}
