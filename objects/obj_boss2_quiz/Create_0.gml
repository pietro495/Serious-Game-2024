/// @description Setup

nextMailBtn = noone;
finishBtn = noone;
realBtn = noone;
phishingBtn = noone;
life = 3;

// Email content
padding = 16;
textWidth = 600;
lineHeight = 28;
currentMail = 0;
remainingTime = 10;
frameCounter = 0;

global.playerControl = false;

passwords = ["Pizza&Mela_26Giga", "aBc1due34", "s4pwword!", "r0lL_r1ck3dd!", "1sth1sS4f3nough"]
answers = [true, false, false, true, false]
currentAnswers = ["none", "none", "none", "none", "none"];