// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playSequence(_seqToPlay) {
	// Create sequence if appropriate
	if (_seqToPlay != noone) {
		// Set sequence to center camera view
		var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
		var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
		
		audio_listener_set_position(0,800,800,0);
	
		// Make sure our sequence doesn't already exist
		if (instance_exists(obj_control) && !layer_sequence_exists(obj_control.curSeqLayer, _seqToPlay)) {
			if (layer_exists(obj_control.curSeqLayer)) {
				// Create/Play the sequence
				layer_sequence_create(obj_control.curSeqLayer,_camX, _camY, _seqToPlay);
				// Make sure Cutscenes layer is above the action
				layer_depth(obj_control.curSeqLayer, -10000);
			}
		}
	}
}

function scr_first_play() {
	global.playerControl = false;
	room_goto(rm_office_start);
}

function scr_first_play_end() {
	global.game_data.firstPlay = false;
	global.playerControl = true;
	global.game_data.gameStatus = 0;
	room_goto(rm_office_start);
}

function scr_journalist_start() {
	global.playerControl = false;
	global.game_data.gameStatus = 15;
	room_goto(rm_street);
}

function scr_journalist_end() {
	global.playerControl = true;
	room_goto(rm_street);
}

function scr_liutenant_run_end() {
	global.playerControl = false;
	global.game_data.gameStatus = 28;
}

function scr_liutenant_defeat_end() {
	global.playerControl = false;
	global.game_data.gameStatus = 30;
}