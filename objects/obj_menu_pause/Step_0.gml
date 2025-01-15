/// @description Handle mouse click
// Controlla se il mouse è sopra le opzioni del menu
hovering_over_continua = (global.computed_mouse_x > 330 && global.computed_mouse_x < 470 && global.computed_mouse_y > 295 && global.computed_mouse_y < 320);
hovering_over_salva = (global.computed_mouse_x > 360 && global.computed_mouse_x < 441 && global.computed_mouse_y > 369 && global.computed_mouse_y < 396);
hovering_over_esci = (global.computed_mouse_x > 368 && global.computed_mouse_x < 434 && global.computed_mouse_y > 444 && global.computed_mouse_y < 472);

// Gestione del click del mouse
if (mouse_check_button_pressed(mb_left) && pause) {
    if (hovering_over_continua) {
        pause = !pause;
    }

    if (hovering_over_salva) {
        save_game();
		pause = !pause;
    }

    if (hovering_over_esci) {
		pause = !pause;
        room_goto(rm_menu);
    }
}