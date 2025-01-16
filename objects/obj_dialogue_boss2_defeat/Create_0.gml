/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(spr_dialogue_boss2, "Complimenti. Ora solo una porta ti separa dal boss. Va pure.");

if (global.game_data.gameStatus < 1320) {
	global.game_data.gameStatus = 1320;
}