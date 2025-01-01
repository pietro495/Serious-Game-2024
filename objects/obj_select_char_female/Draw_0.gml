/// @description Handle opacity

var alpha = 0.5;

if (global.gender == 1) {
    alpha = 1;
} else {
    alpha = 0.5;
}

draw_sprite_ext(sprite_index, image_index, x, y, 5, 5, 0, c_white, alpha);