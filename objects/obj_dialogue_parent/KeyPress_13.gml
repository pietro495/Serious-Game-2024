/// @description Handle dialogue sequence

if (dialog.count() <= 0) { 
	// If no lines left, then close dialogue window
	// Begin fade out
	if (fadeMe == 1) {
		fadeMe = 2;
	}
} else {
	currentDialog = dialog.pop(); 
}
    
