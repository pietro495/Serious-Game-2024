/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite, "Dovrei controllare le mail al computer prima di andare a dormire.");

global.game_data.gameStatus = 955;