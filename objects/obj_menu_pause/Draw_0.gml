
// You can write your code in this editor
if(pause)
{
		if(!surface_exists(pause_surface))
		{ 
			instance_deactivate_all(true);
			pause_surface=surface_create(room_width,room_height);
			surface_set_target(pause_surface);//disegno sulla superficie desiderata
			draw_surface(application_surface,0,0);
			surface_reset_target();
		}else
		{
			draw_surface(pause_surface,0,0);
			draw_set_alpha(0.5);
			draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
			draw_set_alpha(1); // Ripristina l'alpha a 1 per il testo

	        // Calcola le coordinate centrali della vista corrente
	        var centerX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
	        var centerY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);
			
	
	        // Imposta l'allineamento del testo e disegna "ciao" al centro dello schermo
	        draw_set_halign(fa_center);
	        draw_set_valign(fa_middle);
	        draw_text(centerX, centerY, "Pausa");
			draw_text(centerX, centerY-50, "Continua");
			draw_text(centerX, centerY+50, "Exit");
		
		}
}else
{
	instance_activate_all()
	surface_free(pause_surface);
	pause_surface = -1;
}
