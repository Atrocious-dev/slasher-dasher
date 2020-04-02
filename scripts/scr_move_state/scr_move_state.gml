///scr_move_state
scr_get_input();

//Dash 
if (dash_key)  {
	state = scr_dash_state;
	alarm[0] = room_speed/8;
}

//Roll
if (roll_key) {
	state = scr_roll_state;
}
	
if (attack_key) {image_index = 0;
    state = scr_attack_state;
}
// Get the axis 
xaxis = (right_key - left_key); 
yaxis = (down_key - up_key); 

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

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

// Half Sprites

if (hspd > 0 and vspd > 0 ) {
	sprite_index = spr_crate;
} else if (vspd < 0 and hspd < 0) {
	sprite_index = spr_wall;
	
	}

