/// @description Go into another room

if (global.game_data.gameStatus = 1) {
	global.game_data.gameStatus = 2;
	room_goto(rm_omnitech_office);
}