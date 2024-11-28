/// @description Insert description here
// You can write your code in this editor



draw_set_halign(fa_center);
draw_set_valign(fa_middle);

global.back_layer = layer_create(10000);

global.back_trees = layer_background_create(global.back_layer, background_commands);


draw_text(x,y,"comandi base sono w a s d per muoversi");

draw_set_halign(fa_left);
draw_set_valign(fa_top);