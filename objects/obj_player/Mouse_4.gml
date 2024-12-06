/// @description Show dialogue on left mouse click

// Show dialogue if NPC is nearby
if (distance_to_object(obj_player2) < 32) {
	scr_show_dialogue(obj_dialog_sample_a);
}

