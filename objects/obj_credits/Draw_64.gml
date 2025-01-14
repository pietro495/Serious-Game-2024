/// @description Draw self, transparent background

draw_set_alpha(0.75);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

draw_self();

instance_create_depth(400, 600, -10060, obj_button_backmenu);