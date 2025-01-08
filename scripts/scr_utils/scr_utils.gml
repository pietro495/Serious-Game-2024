// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/** gameStatusIndex = description
	-1 - Game start
	0 - Il giocatore ha parlato con il tenente nella room firstPlay
	1 - Il giocatore ha letto il libro nella room firstPlay
	2 - L'utente è nell'ufficio del tizio della OmniTech
	3 - L'utente è nell'ufficio del tizio della OmniTech e ha sbloccato il computer
	4 - L'utente è nell'ufficio del tizio della OmniTech e ha superato il minigioco
	5 - L'utente è all'esterno dell'internet cafè
	6 - L'utente è all'esterno dell'internet cafè e ha sbloccato la porta
	7 - L'utente è entrato nell'internet cafè
	8 - L'utente è entrato nell'internet cafè, ha parlato con John Smith e deve accedere al terminale
	9 - L'utente è entrato nell'internet cafè, ha parlato con John Smith e ha superato il minigioco del phishing, in attesa di inserimento password efficace
	10 - L'utente è entrato nell'internet cafè, ha inserito una password efficace e deve parlare con John Smith
	11 - L'utente ha parlato con John Smith dopo aver inserito una password efficace
	12 - L'utente ha lasciato l'internet cafè e si trova nel suo ufficio
	13 - L'utente è nell'ufficio e ha cliccato sulla lavagna
	14 - L'utente è per strada e deve parlare con la giornalista
	15 - L'utente ha parlato con la giornalista
	16 - L'utente ha parlato con la giornalista e deve finire il minigioco
	17 - L'utente ha finito il minigioco ed è entrato nel market
	18 - L'utente è nel market e deve parlare con il commesso
	19 - L'utente è nel market e ha parlato con il commesso, ora deve andare in ufficio
	20 - L'utente è in ufficio e deve aprire la lavagna
	21 - L'utente ha scoperto l'identità dell'hacker e deve uscire dall'ufficio
*/
 
global.game_data = {
	playerControl: false,
	gender: -1,
	dialogueSprite: noone,
	gameStatus: -1,
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

function is_valid_password(password) {
    var length = string_length(password);

    if (length < 8 || length > 32) {
        return false;
    }

    var has_uppercase = false;
    var has_lowercase = false;
    var has_special = false;
	
    var special_chars = "!?#@;:.-_";

    for (var i = 1; i <= length; i++) {
        var char = string_char_at(password, i);

        // Controlla se è una maiuscola
        if (ord(char) >= 65 && ord(char) <= 90) { // A-Z
            has_uppercase = true;
        }
        // Controlla se è una minuscola
        else if (ord(char) >= 97 && ord(char) <= 122) { // a-z
            has_lowercase = true;
        }
        // Controlla se è un carattere speciale
        else if (string_pos(char, special_chars) > 0) {
            has_special = true;
        }

        // Se tutti i requisiti sono soddisfatti, interrompi il ciclo
        if (has_uppercase && has_lowercase && has_special) {
            break;
        }
    }

    // Ritorna true solo se tutti i flag sono true
    return has_uppercase && has_lowercase && has_special;
}
