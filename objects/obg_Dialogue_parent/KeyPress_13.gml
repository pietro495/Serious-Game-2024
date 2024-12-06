/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	showing_dialog = false;
	for(var i=alpha;i==0;i-=0.05){
			image_alpha=i;
	}
	alpha = 0;
    instance_destroy(); // Distrugge l'istanza dell'oggetto se non ci sono più dialoghi
	global.playerControl = true;
} else {
	current_dialog = dialog.pop(); 
	showing_dialog = true;
}
    
