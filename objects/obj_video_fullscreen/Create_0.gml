/// @description Video

video = video_open("phishing_tutorial_big.webm");

video_enable_loop(false);

if (global.game_data.gameStatus == 65) {
	global.game_data.gameStatus = 100;
}

global.playerControl = false;