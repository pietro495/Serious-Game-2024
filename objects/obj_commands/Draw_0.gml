/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu);


function draw_controls(x, y) {
    var _commands = [
		"Comandi di Movimento:",
        "W / A / S / D: Movimento avanti, indietro, a sinistra, a destra.",
        "Freccia Su / Giù / Sinistra / Destra: Alternativa al movimento.",
        "Spacebar: Salto.",
        "Shift (sinistro): Corsa.",
        "Ctrl (sinistro): Accovacciarsi.",
        "Alt: Camminata lenta.",
        "Q / E: Rotazione laterale o interazione.",
        "F: Usa / Interagisci.",
    ];

    var line_height = 50; // Distanza verticale tra le righe
    for (var _i = 0; _i < array_length(_commands); _i++) {
        draw_text(x, y + (_i * line_height), _commands[_i]); 
    }
}

draw_controls(0,0);

