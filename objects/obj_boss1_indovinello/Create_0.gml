/// @description Setup

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;
welcome = "Per passare alla stanza successiva dovrai riordinare correttamente questi simboli. L'ordine è derivato da questa frase:\n\n\"Quando il ladro bussa, la chiave protegge. Se tenta di pescare, un pesce attento non abbocca.\"\n\nClicca sulle icone nell'ordine suggerito dalla frase.\nPer rimuovere un'icona dall'ordine, riclicca su di essa.\nQuando hai finito, premi INVIO.";

correctOrder = ["hacker", "password", "esca", "lente"];
currentOrder = [];

global.playerControl = false;