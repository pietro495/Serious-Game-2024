/// @description Handle mouse click

// Calcola le coordinate del mouse rispetto alla camera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var computed_mouse_x = mouse_x - cam_x;
var computed_mouse_y = mouse_y - cam_y;

// Controlla se il mouse è sopra le opzioni del menu
hovering_over_continua = (computed_mouse_x > 330 && computed_mouse_x < 470 && computed_mouse_y > 295 && computed_mouse_y < 320);
hovering_over_salva = (computed_mouse_x > 360 && computed_mouse_x < 441 && computed_mouse_y > 369 && computed_mouse_y < 396);
hovering_over_esci = (computed_mouse_x > 368 && computed_mouse_x < 434 && computed_mouse_y > 444 && computed_mouse_y < 472);

// Gestione del click del mouse
if (mouse_check_button_pressed(mb_left) && pause) {
    if (hovering_over_continua) {
        pause = !pause;
    }

    if (hovering_over_salva) {
        save_game();
    }

    if (hovering_over_esci) {
        room_goto(rm_menu);
    }
}