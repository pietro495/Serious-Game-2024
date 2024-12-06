/// @description Effects and animation

// Fade Effects
switch fadeMe {
	// Fade In
	case "fadeIn": {
		if (image_alpha < 1) {
			image_alpha += fadeSpeed;
			}
		if (image_alpha >= 1) {
			fadeMe = "fadeVisible";
		}
	}; break;
	// Fade Out
	case "fadeOut": {
		if (image_alpha > 0) {
			image_alpha -= fadeSpeed;
			}
		if (image_alpha <= 0) {
			fadeMe = "fadeDone";
			alarm[0] = 2; // Queue Up Destroy
		}
	}; break;
}