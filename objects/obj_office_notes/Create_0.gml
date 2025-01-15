/// @description Variables and such

textWidth = 450;
lineHeight = 28;

global.playerControl = false;

if (global.game_data.gameStatus < 200) {
	sprite_index = spr_office_notes;
} else if (global.game_data.gameStatus >= 200 &&  global.game_data.gameStatus <= 400) {
	sprite_index = spr_office_notes_step1;
} else if (global.game_data.gameStatus > 400 && global.game_data.gameStatus <= 900) {
	sprite_index = spr_office_notes_step2;
} else {
	sprite_index = spr_office_notes_step3;
}