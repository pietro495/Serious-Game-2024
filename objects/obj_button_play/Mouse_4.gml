/// @description Start the game

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
instance_destroy(obj_button_play);
instance_destroy(obj_button_exit);
instance_destroy(obj_button_help);
layer_background_sprite(back_id, -1)
scr_playSequence(seq_first_play);

/*if (global.firstPlay) {
	scr_playSequence(seq_first_play);
} else {
	load_game();
}*/
//room_goto(rm_game);//eredito il metodo definito nel genitore e una volta 
				   //mi porterà nella room game.