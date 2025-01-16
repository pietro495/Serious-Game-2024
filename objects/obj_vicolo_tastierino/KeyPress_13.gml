/// @description Enter code

if (!array_contains(insertedCodes, currentCode)) {
			
}
array_push(insertedCodes, currentCode);
		
if (currentCode == correctCode) {
	if (!audio_is_playing(snd_door_unlock)) {
		if (instance_exists(obj_vicolo_tastierino)) {
			instance_destroy(obj_vicolo_tastierino);
		}
		if (instance_exists(obj_vicolo_tastierino_1)) {
			instance_destroy(obj_vicolo_tastierino_1);
		}
		if (instance_exists(obj_vicolo_tastierino_2)) {
			instance_destroy(obj_vicolo_tastierino_2);
		}
		if (instance_exists(obj_vicolo_tastierino_3)) {
			instance_destroy(obj_vicolo_tastierino_3);
		}
		if (instance_exists(obj_vicolo_tastierino_4)) {
			instance_destroy(obj_vicolo_tastierino_4);
		}
		if (instance_exists(obj_vicolo_tastierino_5)) {
			instance_destroy(obj_vicolo_tastierino_5);
		}
		if (instance_exists(obj_vicolo_tastierino_6)) {
			instance_destroy(obj_vicolo_tastierino_6);
		}
		if (instance_exists(obj_vicolo_tastierino_7)) {
			instance_destroy(obj_vicolo_tastierino_7);
		}
		if (instance_exists(obj_vicolo_tastierino_8)) {
			instance_destroy(obj_vicolo_tastierino_8);
		}
		if (instance_exists(obj_vicolo_tastierino_9)) {
			instance_destroy(obj_vicolo_tastierino_9);
		}
		if (instance_exists(obj_vicolo_tastierino_0)) {
			instance_destroy(obj_vicolo_tastierino_0);
		}
		if (instance_exists(obj_vicolo_tastierino_canc)) {
			instance_destroy(obj_vicolo_tastierino_canc);
		}
		if (instance_exists(obj_vicolo_tastierino_confirm)) {
			instance_destroy(obj_vicolo_tastierino_confirm);
		}
		if (instance_exists(obj_vicolo_help)) {
			instance_destroy(obj_vicolo_help);
		}
		audio_play_sound(snd_door_unlock, 1, false);
		currentCode = "";
		with (obj_vicolo_control) {
			hasUnlockedDoor = true;
		}
				
		scr_showDialogue(obj_dialogue_vicolo_doorOpen);
		
		global.playerControl = true;
		global.game_data.gameStatus = 300;
	}
} else {
	show_message("Codice sbagliato. Riprova.");
	currentCode = "";
}