/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(spr_dialogue_boss1, "Dannazione! Ho perso! Ora sei libero di andare avanti, ma prima dovrai superare l'indovinello della porta.");

if (global.game_data.gameStatus < 1250) {
	global.game_data.gameStatus = 1250;
}