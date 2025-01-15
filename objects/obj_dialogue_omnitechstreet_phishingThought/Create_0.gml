/// @description Add dialogue lines

// Inherit the parent event Create()
event_inherited(); 

dialog.add(global.game_data.dialogueSprite,"Hacker bianchi, neri e grigi... Tre facce della stessa medaglia, tre ombre che si muovono tra le linee del codice. ");
dialog.add(global.game_data.dialogueSprite,"Gli hacker neri. Entrano nei sistemi come coltelli in una ferita, rubano tutto quello che trovano e lo trasformano in moneta.");
dialog.add(global.game_data.dialogueSprite,"E poi ci sono gli hacker bianchi. Gli eroi della rete. Ethical hacker, li chiamano. Sempre lì a sistemare quello che i neri distruggono, a chiudere falle prima che sia troppo tardi.");
dialog.add(global.game_data.dialogueSprite,"E i grigi? Ah, quelli sono i più pericolosi. Non sai mai da che parte stanno.\nSono come il vento: imprevedibili, ma capaci di radere al suolo tutto, se gli va.");
dialog.add(global.game_data.dialogueSprite,"Ora, cerchiamo di capire come aprire questa porta.");

with (obj_omnitechstreet_control) {
	hasShownThought = true;
}
