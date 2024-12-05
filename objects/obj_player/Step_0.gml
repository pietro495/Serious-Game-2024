/// @description Player movement

var scaleMin;
var scaleSpeed;

switch (room) {
	case rm_street_1: 
		scaleMin = 0.95;
		scaleSpeed = 0.05;
		break;
	case rm_vicolo_1:
		scaleMin = 0.8;
		scaleSpeed = 0.05;
		break;
}

// Check keys for movement
moveRight = keyboard_check(vk_right); // If key is pressed, then moveRight is 1, else 0
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

// Calculate movement 
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// Adjust sprite scale based on direction if no collision with objects
if (!collision_point(x+vx, y, obj_par_environment, true, true) && !collision_point(x, y+vy, obj_par_environment, true, true)) {
	if (vy > 0) { // Moving down
	    var new_scale = clamp(image_yscale + scaleSpeed, scaleFactor * scaleMin, scaleFactor * 1);
	    image_xscale = new_scale;
	    image_yscale = new_scale;
	} else if (vy < 0) { // Moving up
	    var new_scale = clamp(image_yscale - scaleSpeed, scaleFactor * scaleMin, scaleFactor * 1);
	    image_xscale = new_scale;
	    image_yscale = new_scale;
	}
}

// If idle
if (vx == 0 && vy == 0) {
	// Change idle Sprite based on last direction
	switch dir {
		case 0: 
			sprite_index = spr_player_idle_right;
			break;
		case 1: 
			sprite_index = spr_player_idle_up;
			break;
		case 2: 
			sprite_index = spr_player_idle_left;
			break;
		case 3: 
			sprite_index = spr_player_idle_down;
			break;
	}
}

// If moving
if (vx != 0 || vy != 0) {
	// the first true is for precise check, the second true is to ignore the object itself
	if (!collision_point(x+vx, y, obj_par_environment, true, true)) {
		// If there is no collision at current location, then go right
		x += vx;
	}
	if (!collision_point(x, y+vy, obj_par_environment, true, true)) {
		y += vy;
	}
	
	
	
	// Change walking Sprite based on direction
	if (vx > 0) {
		sprite_index = spr_player_walk_right;
		dir = 0;
	}
	if (vx < 0) {
		sprite_index = spr_player_walk_left;
		dir = 2;
	}
	if (vy > 0) {
		sprite_index = spr_player_walk_down;
		dir = 3;
	}
	if (vy < 0) {
		sprite_index = spr_player_walk_up;
		dir = 1;
	}
	
	// Move audio listener with me
	// Every frame, move the listener with the player
	//audio_listener_set_position(0, x, y, 0);
}

// Check for collisions with NPCs in a rectangle. Look for the parent NPC object (obj_par_npc)
/* nearbyNPC = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_par_npc, false, true);
 if (nearbyNPC) {
	 // Play greeting sound
	 if (!hasGreeted) {
		audio_play_sound(snd_greeting01, 1, false);
		hasGreeted = true;
	 }
		
	 show_debug_message("obj_player has found an NPC");
 } else {
	// Reset greeting
	if (hasGreeted) {
		hasGreeted = false;
	}
	 
	 show_debug_message("obj_player hasn't found anything");
 }*/

// Depth sorting
depth = -y;