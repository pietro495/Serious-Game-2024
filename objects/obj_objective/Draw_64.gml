/// @description 

var description = ds_map_create();
ds_map_add(description, 0, "Apri il libro cliccando in alto a destra e informati sul phishing");
ds_map_add(description, 1, "Esci dalla stanza e vai nell'ufficio della OmniTech");
ds_map_add(description, 2, "Apri il computer della OmniTech. Potrebbe esser necessaria una password");
ds_map_add(description, 3, "Accedi al computer della OmniTech e analizza le email");
ds_map_add(description, 4, "Esci dalla stanza e vai all'internet cafè");
ds_map_add(description, 5, "Cerca un modo per entrare nell'internet cafè");
ds_map_add(description, 6, "Entra nell'internet cafè");
ds_map_add(description, 7, "Parla con John Smith");
ds_map_add(description, 8, "Accedi al terminale sulla destra nell'internet cafè");
ds_map_add(description, 9, "Accedi al terminale sulla destra e inserisci una password efficace");
ds_map_add(description, 10, "Parla con John Smith");
ds_map_add(description, 11, "Esci dalla stanza e torna in ufficio");
ds_map_add(description, 12, "Guarda la lavagna");
ds_map_add(description, 13, "Esci dall'ufficio");
ds_map_add(description, 14, "Parla con l'intervistatrice");
ds_map_add(description, 15, "Parla con l'intervistatrice");
ds_map_add(description, 16, "Parla con l'intervistatrice e supera il minigioco");
ds_map_add(description, 17, "Entra nel market e prosegui l'indagine");
ds_map_add(description, 18, "Parla con le persone all'interno del market");
ds_map_add(description, 19, "Esci dal market e torna in ufficio");
ds_map_add(description, 20, "Guarda la lavagna per scoprire l'identità dell'hacker");
ds_map_add(description, 21, "Esci dall'ufficio e raggiungi il tenente");
ds_map_add(description, 22, "Trova l'ingresso ed entra nell'edificio");
ds_map_add(description, 23, "Entra nell'edificio");
ds_map_add(description, 24, "Sconfiggi l'hacker");
ds_map_add(description, 25, "Supera l'indovinello della porta");
ds_map_add(description, 26, "Vai al piano successivo");
ds_map_add(description, 27, "Parla con il tenente");
ds_map_add(description, 28, "Parla con il tenente");
ds_map_add(description, 29, "Sconfiggi il tenente");

draw_self();

draw_set_font(fnt_common_bold);
draw_set_halign(fa_left);  // Default is left-aligned
draw_set_valign(fa_top);   // Default is top-aligned
draw_set_color(c_black);   // Set text color to black
draw_text_ext_color(16, 48, ds_map_find_value(description, global.game_data.gameStatus), 16, 300, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common);