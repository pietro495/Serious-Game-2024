/// @description Video

video = video_open("phishing_tutorial_big.webm");

remainingTime = video_get_duration() / 1000;
frameCounter = 0;

video_enable_loop(false);

if (global.game_data.gameStatus == 65) {
	global.game_data.gameStatus = 100;
}

global.playerControl = false;