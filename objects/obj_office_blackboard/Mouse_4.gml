/// @description Interaction with email

// Example coordinates for clue interactions (adjust to match your layout)
if (hovering_over_clue1) { // From clue
    if (!clue_collected[0]) {
        clue_collected[0] = true;
        global.game_data.clues_collected[0] = clues[0].clue;
        show_message("Clue collected: " + clues[0].clue);
    }
}

if (hovering_over_clue2) { // URL clue
    if (!clue_collected[1]) {
        clue_collected[1] = true;
        global.game_data.clues_collected[1] = clues[1].clue;
        show_message("Clue collected: " + clues[1].clue);
    }
}