/// @description Player movement

// Check keys for movement
if (global.playerControl) {
	moveRight = keyboard_check(vk_right); // If key is pressed, then moveRight is 1, else 0
	moveLeft = keyboard_check(vk_left);
	moveUp = keyboard_check(vk_up);
	moveDown = keyboard_check(vk_down);
} else {
	moveRight = 0;
	moveLeft = 0;
	moveUp = 0;
	moveDown = 0;
}

// Calculate movement 
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// Adjust sprite scale if no collision with objects
if (!collision_point(x+vx, y, obj_par_environment, true, true) && !collision_point(x, y+vy, obj_par_environment, true, true)) {	
	normalized_y = y / room_height; // Normalize y to a 0-1 range
	scaleMultiplier = 0.3 + (1 - 0.3) * normalized_y; // Interpolate between 0.3 (minimum scale factor) and 1
	new_scale = clamp(scaleFactor * scaleMultiplier, scaleFactor * 0.3, scaleFactor * 1); // Scale adjustment
	image_xscale = new_scale;
    image_yscale = new_scale;
}

// Check for collisions with NPCs in a rectangle. Look for the parent NPC object (obj_player2)
 nearbyNPC = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_par_npc, false, true);
 if (nearbyNPC) {
	// Pop up prompt
	if (npcPrompt == noone || npcPrompt == undefined) {
		npcIndex = nearbyNPC.object_index;
		npcName = object_get_name(npcIndex);
		if (npcName == "obj_johnsmith") {
			if (global.game_data.gameStatus == 7 || global.game_data.gameStatus == 10) {
				npcPrompt = scr_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y - nearbyNPC.sprite_height - 30);
			}
		} else if (npcName == "obj_journalist") {
			if (global.game_data.gameStatus == 16) {
				npcPrompt = scr_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y - nearbyNPC.sprite_height - 30);
			}
		} else if (npcName == "obj_worker2" || npcName == "obj_worker3") {
			if (global.game_data.gameStatus == 18) {
				npcPrompt = scr_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y - nearbyNPC.sprite_height - 30);
			}
		} else if (npcName != "obj_johnsmith") {
			npcPrompt = scr_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y - nearbyNPC.sprite_height - 30);
		}
	}
 } else {
	// Get rid of prompt
	scr_dismissPrompt(npcPrompt, 0);
 }
show_debug_message(global.game_data.gameStatus)
// If idle
if (vx == 0 && vy == 0) {
	// Change idle Sprite based on last direction
	switch dir {
		case 0: 
			sprite_index = global.game_data.gender == 0 ? spr_player_male_idle_right : spr_player_female_idle_right;
			break;
		case 1: 
			sprite_index = global.game_data.gender == 0 ? spr_player_male_idle_up : spr_player_female_idle_up;
			break;
		case 2: 
			sprite_index = global.game_data.gender == 0 ? spr_player_male_idle_left : spr_player_female_idle_left;
			break;
		case 3: 
			sprite_index = global.game_data.gender == 0 ? spr_player_male_idle_down : spr_player_female_idle_down;
			break;
	}
}

// If moving
if ((vx != 0 || vy != 0) && !instance_exists(obj_dialogue_parent)) {
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
		sprite_index = global.game_data.gender == 0 ? spr_player_male_walk_right : spr_player_female_walk_right;
		dir = 0;
	}
	if (vx < 0) {
		sprite_index = global.game_data.gender == 0 ? spr_player_male_walk_left : spr_player_female_walk_left;
		dir = 2;
	}
	if (vy > 0) {
		sprite_index = global.game_data.gender == 0 ? spr_player_male_walk_down : spr_player_female_walk_down;
		dir = 3;
	}
	if (vy < 0) {
		sprite_index = global.game_data.gender == 0 ? spr_player_male_walk_up : spr_player_female_walk_up;
		dir = 1;
	}
	
	// Move audio listener with me
	// Every frame, move the listener with the player
	//audio_listener_set_position(0, x, y, 0);
}

//Set listener if sequence is playing
if (instance_exists(obj_control) and obj_control.sequenceState == seqState.playing) {
	var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
	var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
	
	audio_listener_set_position(0,800,800,0);
}
//Otherwise, move audio listener with me
else {
	audio_listener_set_position(0,x,y,0);
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

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Get the viewport's dimensions
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
/*
show_debug_message(cam_x);
show_debug_message(cam_y);
show_debug_message(mouse_x - cam_x);
show_debug_message(mouse_y - cam_y);
*/

//show_debug_message(sprite_index)

