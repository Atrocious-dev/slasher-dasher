///scr_player_attack_state

if state = scr_player_attack_state {
	
switch (sprite_index) {
	case spr_player_down: 
	sprite_index = spr_player_attack_down;
	break; 

	case spr_player_right: 
	sprite_index = spr_player_attack_right;
	break; 

	case spr_player_up: 
	sprite_index = spr_player_attack_up;
	break; 
	
	case spr_player_left: 
	sprite_index = spr_player_attack_left;
	break; 
}

if (image_index >= 6 && attacked == false) {
	var xx = 0;
	var yy = 0;
	switch (sprite_index) {
	case spr_player_down: 
		xx = x;
		yy = y+12; 
	break; 

	case spr_player_right: 
		xx = x+12;
		yy = y+2; 
	break; 

	case spr_player_up: 
		xx = x;
		yy = y-10; 
	break; 
	
	case spr_player_left: 
		xx = x-12;
		yy = y+2; 
	break; 
}


     var damage = instance_create_depth(obj_player.x, obj_player.y, obj_player.depth, obj_damage);
	 ///damage.sprite_index = obj_damage;
	  damage.creator = id;
	 attacked = true;
	 
}

}