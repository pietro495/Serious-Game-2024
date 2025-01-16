/// @description Handle dialogue 

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
	alarm[0] = 10;
	
	instance_create_depth(400, 340, -10000, obj_boss2_quiz);
} else {
	currentDialog = dialog.pop(); 
}
    
