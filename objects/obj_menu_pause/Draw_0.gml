/// @description Draw menu

// Camera variables
var centerX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
var centerY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);
 
// Draw menu
if (pause) {
	draw_self();
	
	global.playerControl = false;
	draw_set_alpha(0.75);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1); // Ripristina l'alpha a 1 per il test
	
	// Imposta l'allineamento del testo e disegna "ciao" al centro dello schermo
	draw_set_font(fnt_pause_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(centerX, centerY-75, "Continua");
	draw_text(centerX, centerY, "Salva");
	draw_text(centerX, centerY+75, "Esci");
		
	if(hovering_over_continua) {
		draw_set_color(c_yellow);
		draw_text(centerX, centerY-75, "Continua");
	} 
	if(hovering_over_salva) {
		draw_set_color(c_yellow);
		draw_text(centerX, centerY, "Salva");	
	}
	if(hovering_over_esci) {
		draw_set_color(c_yellow);
		draw_text(centerX, centerY+75, "Esci");
	}
 } else {
	 if (!global.firstPlay) {
		global.playerControl = true;
	 } else {
		global.playerControl = false;
	 }
 }