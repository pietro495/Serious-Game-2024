/// @description 

var description = ds_map_create();
ds_map_add(description, 0, "Apri il libro cliccando in alto a destra e informati sul phishing");
ds_map_add(description, 50, "Esci dalla stanza e vai nell'ufficio della OmniTech");
ds_map_add(description, 55, "Cerca un modo per entrare negli uffici della OmniTech");
ds_map_add(description, 60, "Entra negli uffici della OmniTech");
ds_map_add(description, 100, "Apri il computer della OmniTech. Potrebbe esser necessaria una password");
ds_map_add(description, 150, "Accedi al computer della OmniTech e analizza le email");
ds_map_add(description, 200, "Esci dalla stanza e vai all'internet cafè");
ds_map_add(description, 250, "Cerca un modo per entrare nell'internet cafè");
ds_map_add(description, 300, "Entra nell'internet cafè");
ds_map_add(description, 350, "Parla con John Smith");
ds_map_add(description, 400, "Accedi al terminale sulla destra nell'internet cafè");
ds_map_add(description, 450, "Accedi al terminale sulla destra e inserisci una password efficace");
ds_map_add(description, 500, "Parla con John Smith");
ds_map_add(description, 550, "Esci dalla stanza e torna in ufficio");
ds_map_add(description, 600, "Guarda la lavagna");
ds_map_add(description, 650, "Esci dall'ufficio");
ds_map_add(description, 700, "Parla con l'intervistatrice");
ds_map_add(description, 750, "Parla con l'intervistatrice");
ds_map_add(description, 800, "Parla con l'intervistatrice e supera il minigioco");
ds_map_add(description, 850, "Entra nel market e prosegui l'indagine");
ds_map_add(description, 900, "Parla con le persone all'interno del market");
ds_map_add(description, 950, "Esci dal market e torna in ufficio");
ds_map_add(description, 1000, "Guarda la lavagna per scoprire l'identità dell'hacker");
ds_map_add(description, 1050, "Esci dall'ufficio e raggiungi il tenente");
ds_map_add(description, 1100, "Trova l'ingresso ed entra nell'edificio");
ds_map_add(description, 1150, "Entra nell'edificio");
ds_map_add(description, 1200, "Sconfiggi l'hacker");
ds_map_add(description, 1250, "Supera l'indovinello della porta");
ds_map_add(description, 1300, "Vai al piano successivo");
ds_map_add(description, 1350, "Parla con il tenente");
ds_map_add(description, 1400, "Parla con il tenente");
ds_map_add(description, 1450, "Sconfiggi il tenente");
ds_map_add(description, 1500, "Torna a casa e riposa");
ds_map_add(description, 1550, "Hai vinto!");

draw_self();

draw_set_font(fnt_common_bold);
draw_set_halign(fa_left);  // Default is left-aligned
draw_set_valign(fa_top);   // Default is top-aligned
draw_set_color(c_black);   // Set text color to black
draw_text_ext_color(16, 48, ds_map_find_value(description, global.game_data.gameStatus), 16, 300, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fnt_common);