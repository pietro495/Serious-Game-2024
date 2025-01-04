/// @description Show dialogue on left mouse click

// Show dialogue if NPC is nearby
if (nearbyNPC) {
	if (global.game_data.gameStatus == 7 && npcName == "obj_johnsmith" && !instance_exists(obj_dialogue_parent)) {
		scr_showDialogue(obj_dialogue_cafe_johnsmith);
	}
}

