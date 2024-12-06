/// @description Insert description here
// You can write your code in this editor
 if(dialog.count() <= 0) { 
		showing_dialog=false;
		for(var i=alpha;i==0;i-=0.05){
			image_alpha=i;
		}
		alpha=0;
        instance_destroy(); // Distrugge l'istanza dell'oggetto se non ci sono più dialoghi
    
    }else {
		  current_dialog = dialog.pop(); 
		  showing_dialog = true;
	}
    
