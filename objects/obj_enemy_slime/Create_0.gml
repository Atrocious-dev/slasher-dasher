/// Initialize the slime 
event_inherited();
image_speed = .15;
spd = 0.50;
hp = 3;
state = scr_enemy_idle_state;
alarm[0] = room_speed*irandom_range(2, 5);
sight = 64;
targetx = 0;
targety = 0;
