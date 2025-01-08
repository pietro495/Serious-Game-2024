/// @description Show dialogue on left mouse click

// Show dialogue if NPC is nearby
if (nearbyNPC) {
	if (global.game_data.gameStatus == 7 && npcName == "obj_johnsmith" && !instance_exists(obj_dialogue_parent)) {
		scr_showDialogue(obj_dialogue_cafe_johnsmith);
	}
	if (global.game_data.gameStatus == 10 && npcName == "obj_johnsmith" && !instance_exists(obj_dialogue_parent)) {
		scr_showDialogue(obj_dialogue_cafe_johnsmith_password);
	}
	if (global.game_data.gameStatus == 16 && npcName == "obj_journalist") {
		var viewport_coord = scr_get_viewport_coord();
		var center_x = viewport_coord[0];
		var center_y = viewport_coord[1]; 
	
		instance_create_depth(16, center_y, -10000, obj_street_blackboard);
	}
	if (global.game_data.gameStatus == 18 && npcName == "obj_worker3" && !instance_exists(obj_dialogue_parent)) {
		scr_showDialogue(obj_dialogue_market_worker3);
	}
	if (global.game_data.gameStatus == 18 && npcName == "obj_worker2" && !instance_exists(obj_dialogue_parent)) {
		scr_showDialogue(obj_dialogue_market_worker2);
	}
}

