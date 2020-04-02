///scr_move_state
len = spd*1.89;

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

//Create the dash effect ******* very important 
var dash = instance_create_depth(x, y, -10, obj_dash_effect); 
dash.sprite_index = sprite_index;