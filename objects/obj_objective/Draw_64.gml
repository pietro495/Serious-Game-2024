/// @description 

var description = ds_map_create();
ds_map_add(description, 0, "Apri il libro cliccando in alto a destra e informati sul phishing");
ds_map_add(description, 1, "Esci dalla stanza e vai nell'ufficio della OmniTech");
ds_map_add(description, 2, "Apri il computer della OmniTech. Potrebbe esser necessaria una password");
ds_map_add(description, 3, "Accedi al computer della OmniTech e analizza le email");
ds_map_add(description, 4, "Esci dalla stanza e vai all'internet cafè");
ds_map_add(description, 5, "Cerca un modo per entrare nell'internet cafè");
ds_map_add(description, 6, "Entra nell'internet cafè");

draw_self();

draw_set_font(fnt_common_bold);
draw_text_ext_color(16, 48, ds_map_find_value(description, global.game_data.gameStatus), 16, 300, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common);