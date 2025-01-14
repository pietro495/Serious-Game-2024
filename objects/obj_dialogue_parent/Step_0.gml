/// @description Animation and effects

// Fade effects
switch fadeMe {
	// Fade In
	case 0: {
		if (guiAlpha < 1) {
			guiAlpha += fadeSpeed;
			}
		if (guiAlpha >= 1) {
			fadeMe = 1;
		}
	}; break;
	
	// Fade out
	case 2: {
		if (guiAlpha > 0) {
			guiAlpha -= fadeSpeed;
		}
		if (guiAlpha <= 0) {
			fadeMe = 3;
			// Queue up destroy
			alarm [0] = 2;
		}
	}; break;
}