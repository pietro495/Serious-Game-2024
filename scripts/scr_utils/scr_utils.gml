// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/** gameStatusIndex = description
	0 - Game start
	1 - Il giocatore ha parlato con il tenente nella room firstPlay.
	2 - L'utente è nell'ufficio del tizio della OmniTech
	3 - L'utente è nell'ufficio del tizio della OmniTech e ha sbloccato il computer
	4 - L'utente è nell'ufficio del tizio della OmniTech e ha superato il minigioco
	5 - L'utente è all'esterno dell'internet cafè
*/
 
global.game_data = {
	playerControl: false,
	gender: -1,
	dialogueSprite: noone,
	gameStatus: 0,
	firstPlay: true,
	clues_collected: [],
	playerDir: 3,
	room_data: {}
};
 
function save_game() {
	save_room();	
	var _string = json_stringify(global.game_data);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "save.txt");
	buffer_delete(_buffer);
	show_debug_message("sto salvando");
}
 
function save_room() {
	var _array = [];
	with(obj_player) {
		global.game_data.playerDir = obj_player.dir;
		var _struct =  {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_xscale: image_xscale,
			image_yscale: image_yscale,
		};
		array_push(_array, _struct);
	}
	struct_set(global.game_data.room_data, room_get_name(room), _array);
	global.game_data.room_name = room_get_name(room);
}
 
function load_game() {
	if(file_exists("save.txt")) {
		var _buffer = buffer_load("save.txt");
		var _json = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		global.game_data = json_parse(_json);
		show_debug_message(global.game_data);
		room_goto(asset_get_index(global.game_data.room_name));
		load_room();
	}
}
 
function load_room() {
	var _array = struct_get(global.game_data.room_data, room_get_name(room));
	if( _array != undefined) {
		instance_destroy(obj_player);
		for(var i = 0; i < array_length(_array); i += 1)  {
			var _struct = _array[i];
			var _instance = instance_create_layer(_struct.x, _struct.y, "Instances", asset_get_index( _struct.object), _struct);
			if (_struct.object == "obj_player" && instance_exists(_instance)) {
				obj_player.dir = global.game_data.playerDir; 
			}
		}
	}
}
 
function scr_get_viewport_coord() {
	// Get the camera's position (top-left corner of the viewport)
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	// Get the viewport's dimensions
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);
	// Calculate the center of the viewport in room coordinates
	var center_x = cam_x + (view_w / 2);
	var center_y = cam_y + (view_h / 2);
	return [center_x, center_y];
}