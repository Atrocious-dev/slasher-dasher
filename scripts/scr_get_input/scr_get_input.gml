///scr_get_input

right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check(ord("C"));
roll_key = keyboard_check(ord("Z"));
attack_key = keyboard_check(ord("X"));
frozen_key = keyboard_check(ord("F"));
//Get the axis 

xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Check for Gamepad input
if (gamepad_is_connected(2)) {
	gamepad_set_axis_deadzone(0, 0.15);
	xaxis = (gamepad_axis_value(0, gp_axislh) >= .5);
	yaxis = (gamepad_axis_value(0, gp_axislv) >= .5);
dash_key = gamepad_button_check_pressed(0, gp_face1);
attack_key = gamepad_button_check_pressed(0, gp_face3);
}