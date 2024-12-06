/// @description Show dialogue on left mouse click

// Show dialogue if NPC is nearby
if (nearbyNPC) {
	if (!instance_exists(obj_dialog_sample_a)) {
		scr_showDialogue(obj_dialog_sample_a);
	}
}

