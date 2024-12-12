// Script assets have changed for v2.3.0 see

function save_game(){
	var file= file_text_open_write("savegame.sav");
	var savedRoom=room;
	file_text_write_real(file,savedRoom);
	file_text_close(file);
}