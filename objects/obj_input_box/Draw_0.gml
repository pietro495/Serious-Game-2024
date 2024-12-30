/// @description Draw the text

// Disegna la casella
draw_rectangle_color(x, y, x + 650, y + 200, c_white, c_white, c_white, c_white, false);

// Disegna il testo inserito
draw_set_color(c_black);
draw_text(x + 5, y + 5, input_text);