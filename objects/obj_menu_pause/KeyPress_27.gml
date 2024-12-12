pause=!pause;
/*
if(mouse_x> center_x - text_width / 2 && mouse_x<center_x+text_width / 2
		&& mouse_y>center_y -text_height /2 && mouse_y<center_y+text_width)
		{
		draw_set_color(c_red);
		draw_text(center_x,center_y,button_text);
		
		if(mouse_check_button(mb_left))
			{
			show_message("hai cliccato");
			}	
		}else 
		{
			show_message("non hai cliccato");
		}