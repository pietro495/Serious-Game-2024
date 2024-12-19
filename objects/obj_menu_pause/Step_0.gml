/// @description Insert description here
// You can write your code in this 
/*
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

hovering_over_salva = (computed_mouse_x > 366 && computed_mouse_x < 432 && computed_mouse_y > 325 && computed_mouse_y < 341);

hovering_over_esci = (computed_mouse_x > 371 && computed_mouse_x < 422 && computed_mouse_y > 425 && computed_mouse_y < 439);

hovering_over_continua = (computed_mouse_x > 368 && computed_mouse_x < 432 && computed_mouse_y > 377 && computed_mouse_y < 392);
*/
// Calcola le coordinate del mouse rispetto alla camera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

// Controlla se il mouse è sopra le opzioni del menu
hovering_over_continua = (computed_mouse_x > 366 && computed_mouse_x < 432 && computed_mouse_y > 325 && computed_mouse_y < 341);
hovering_over_esci = (computed_mouse_x > 371 && computed_mouse_x < 422 && computed_mouse_y > 425 && computed_mouse_y < 439);
hovering_over_salva = (computed_mouse_x > 368 && computed_mouse_x < 432 && computed_mouse_y > 377 && computed_mouse_y < 392);

// Gestione del click del mouse
if (mouse_check_button_pressed(mb_left) && pause) {
	
	
	
    if (hovering_over_continua) {
        pause = !pause;

    }

    if (hovering_over_salva) {
        save_game();

    }

    if (hovering_over_esci) {
		
        room_goto(MenuRoom);
    }
}

