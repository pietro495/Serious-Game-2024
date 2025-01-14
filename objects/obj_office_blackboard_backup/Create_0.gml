/// @description Email setup

// Hovering clues
hovering_over_clue1 = false;
hovering_over_clue2 = false;

// Email content
padding = 16;
textWidth = 450;
lineHeight = 28;
emailText = "From: hacker@hacker.hack\nTo: anziano@scam.com\nSubject: Update your account!\n\nClick here to log in: http://facebok.com";

global.playerControl = false;
global.game_data.gameStatus = 13;

clues = [
    { clue: "Sender email looks suspicious (hacker@hacker.hack)", type: "sender" },
    { clue: "URL is fake (http://facebok.com)", type: "url" }
];

clue_collected = [false, false]; // Tracks whether each clue is collected