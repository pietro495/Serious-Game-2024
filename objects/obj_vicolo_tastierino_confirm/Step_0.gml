/// @description Confirm code

// Otteniamo la posizione della telecamera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Calcoliamo la posizione del mouse rispetto alla vista
var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y

// Verifica se il mouse è sopra l'oggetto
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(computed_mouse_x, computed_mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
	with (obj_vicolo_tastierino) {
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
				audio_play_sound(snd_door_unlock, 1, false);
				currentCode = "";
				with (obj_vicolo_control) {
					hasUnlockedDoor = true;
				}
				
				scr_showDialogue(obj_dialogue_vicolo_doorOpen);
				
				global.playerControl = true;
			}
		} else {
			show_message("Codice sbagliato. Riprova.");
			currentCode = "";
		}
	}
}