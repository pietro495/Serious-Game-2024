/// @description Draw the book

draw_set_alpha(0.75);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1); // Ripristina l'alpha a 1 per il test

// Reset draw settings
draw_set_halign(fa_left);  // Default is left-aligned
draw_set_valign(fa_top);   // Default is top-aligned
draw_set_font(fnt_common); // Ensure correct font is used
draw_set_color(c_black);   // Set text color to black

var viewport_coord = scr_get_viewport_coord();
var center_x = viewport_coord[0]; 
var center_y = viewport_coord[1]; 

var leftPage = "";
var rightPage = "";

switch (currentPage) {
	case 1: 
		leftPage = phishing;
		rightPage = phishing2;
		break;
	case 2: 
		leftPage = password;
		rightPage = password2;
		break;
	case 3: 
		leftPage = ransomware;
		rightPage = ransomware2;
		break;
	default:
		break;
}

// Draw textbox
draw_self();

// Draw text
draw_set_font(fnt_common);
draw_set_halign(fa_left);
draw_text_ext_color(60, 144, leftPage, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_text_ext_color(420, 144, rightPage, lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
draw_set_halign(fa_left);

if (global.game_data.gameStatus >= 450) {
	if (currentPage >= 1 && currentPage <= maxPage) {
		if (currentPage == 1) {
			draw_text_ext_color(580, 590, "Gestione password", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
		}
		if (currentPage == 2) {
			draw_text_ext_color(95, 590, "Phishing", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
			if (global.game_data.gameStatus >= 950) {
				draw_text_ext_color(620, 590, "Ransomware", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
			}
		}
		if (currentPage == 3) {
			draw_text_ext_color(95, 590, "Gestione password", lineHeight, textWidth, c_black, c_black, c_black, c_black, image_alpha);
		}
		if (currentPage > 1) {
			if (!instance_exists(obj_book_left_arrow)) {
				instance_create_depth(65, 600, -10060, obj_book_left_arrow);
			}
		} else {
			if (instance_exists(obj_book_left_arrow)) {
				instance_destroy(obj_book_left_arrow);
			}
		}
		if (currentPage == maxPage) {
			if (instance_exists(obj_book_right_arrow)) {
				instance_destroy(obj_book_right_arrow);
			}
		} else {
			if (currentPage == 1 || (currentPage == 2 && global.game_data.gameStatus >= 950)) {
				if (!instance_exists(obj_book_right_arrow)) {
					instance_create_depth(730, 600, -10060, obj_book_right_arrow);
				}
			} else if (currentPage == 2 && global.game_data.gameStatus < 950) {
				if (instance_exists(obj_book_right_arrow)) {
					instance_destroy(obj_book_right_arrow);
				}
			}
		}
	}
}