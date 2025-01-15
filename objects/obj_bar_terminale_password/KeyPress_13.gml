/// @description Confirm password

if (is_valid_password(obj_input_box_johnsmith.input_text)) {
	global.game_data.gameStatus = 500;
	scr_showDialogue(obj_dialogue_bar_successPassword);
	if (instance_exists(obj_bar_terminale_password)) {
		instance_destroy(obj_bar_terminale_password);
	}
    show_message("La password è conforme agli standard!");
} else {
    show_message("La password non è conforme agli standard, prego riprovare.");
	obj_input_box_johnsmith.input_text = "";
}