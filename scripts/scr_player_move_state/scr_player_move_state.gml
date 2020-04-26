/// @function scr_player_move_state(payload)
/// @description Move player.
/// @param {real} payload The specific information triggered by player input

xaxis = argument0[? "x"];
yaxis = argument0[? "y"];
	// Get direction
	dir = point_direction(0, 0, xaxis, yaxis);
	
	var xaxis = (right_key - left_key);
	var yaxis = (down_key - up_key);

	//Get the length 
	if (xaxis == 0 and yaxis == 0) {
		len = 0;
	} else {
		len = spd; 
	}
  
	// get the hspd and vspd
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);

	// Move
	phy_position_x += hspd;
	phy_position_y += vspd;

	// Control the sprite 

	image_speed = 1;
	if (len == 0) image_index = 0;
	
	//Vertical Sprites
	if (vspd > 0) {
		sprite_index = spr_player_down;
	} else if (vspd < 0) {
		sprite_index = spr_player_up;
	}

	// Horizontal sprites
	if (hspd > 0) {
		sprite_index = spr_player_right;
	} else if (hspd < 0) {
		sprite_index = spr_player_left;
	}
		

//logtxt = "dir: " + string(dir) + " len: " + string(len) + " y: " + string(yaxis) + " x: " + string(xaxis);
//show_debug_message(logtxt);