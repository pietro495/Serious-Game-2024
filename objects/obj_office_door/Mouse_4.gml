/// @description Go into another room

if (global.gameStatus = 1) {
	global.gameStatus = 2;
	room_goto(rm_omnitech_office);
}