///scr_get_input

//Keyboard controls 
payload = ds_map_create();
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);


dash_key = keyboard_check(ord("X"));
roll_key = keyboard_check(ord("Z"));
attack_key = keyboard_check(ord("C"));
strong_attack_key = keyboard_check(ord("X"));
projectile_key = keyboard_check(ord("X"));

//Get the axis 

xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
	

// Check for Gamepad input
if (gamepad_is_connected(0)) {
	gamepadlh = gamepad_axis_value(0, gp_axislh);
	gamepadlv = gamepad_axis_value(0, gp_axislv);
	
	gamepad_set_axis_deadzone(0, 0.15);
	xaxis = gamepadlh;
	yaxis = gamepadlv;

// Gamepad Controls 

	dash_key = gamepad_button_check(0, gp_face1);
	roll_key = gamepad_button_check(0, gp_face2);
	attack_key = gamepad_button_check_pressed(0, gp_face4);
	strong_attack_key = gamepad_button_check_pressed(0, gp_face3);
	projectile_key = gamepad_button_check_pressed(0, gp_shoulderl and gp_shoulderlb);
}
// set payload for movemeent
payload[? "x"] = xaxis;
payload[? "y"] = yaxis;

// check for roll
if (roll_key == true) {
	payload[? "action"] = "Basic Roll";
	scr_update_player_state(payload);	
}

//check for basic attack
if (attack_key == true) {
	payload[? "action"] = "Basic Attack";
	scr_update_player_state(payload);	
}

//check for strong attack
if (strong_attack_key == true) {
	payload[? "action"] = "Strong Attack";
	scr_update_player_state(payload);	
}	
//check for projectile 
if (projectile_key == true) {
	payload[? "action"] = "Projectile";
	scr_update_player_state(payload);	
}

//check for move
if (xaxis != 0 || yaxis != 0) {
	payload[? "action"] = "Move";
	scr_update_player_state(payload);
}

// check for dash 

if (dash_key == true) {
	payload[? "action"] = "Dash";
	scr_update_player_state(payload);
}
