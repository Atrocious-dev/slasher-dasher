///scr check for player

if (instance_exists(obj_player)) {
	var distance = point_distance(x, y, obj_player.x, obj_player.y);
	if (distance < sight) {
		state = scr_enemy_chase_state;
		targetx = obj_player.x;
		targety = obj_player.y;
	} else {
		scr_enemy_choose_next_state();
	}
} else {
	scr_enemy_choose_next_state();
}
	