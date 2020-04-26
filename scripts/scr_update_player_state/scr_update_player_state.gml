/// @function scr_update_player_state(action, payload)
/// @description Update player state or queue up next state by evaluating action and payload passed in.
/// @param {real} action The specific action triggered by player input
/// @param {real} payload The payload describing action properties

//Update Player State 

//If someone is trying to do something whats the outcome

//Three possible outcomes: Nothing we ignore it, Change state immediately, queue up next state 

//there are cases within cases 
// argument0 is action, argument1 is 
action = argument0[? "action"]

switch (action) {
	//player is moving in any direction		
	
	case "Idle":
	
	
	break;



	
	
	// there are no inputs being pressed or the inputs pressed are impossible (rolling)

	//player is moving in any direction		
	case "Move":
		scr_player_move_state(payload);
	
	break;



	//update sprites to be running sprites and make player able to run slightly faster 
	case "Dash":
		scr_player_dash_state(payload);
	
	break;
	
	
	
	//throw projectile object in current direction of player (8 directional)
	case "Projectile":
		scr_player_projectile_state(projectile);
	break;
	
	
	
	//Update sprites to be basic attack sprites and if attack button is pressed while or slightly after basic attack follow up with second baisc attack 
	case "Basic Attack":
		scr_player_attack_state()
	break; 
	
	
	
	//if player is dashing for 2 seconds do running attack instead of basic attack 
	//Player lunges forward slightly and does a basic attack with more end lag 
	case "Running Attack":
		scr_player_attack_state()
	break; 



	//player presses strong attack while moving or idle (not dashing) One strong over the head swing 
	case "Strong Attack":
	
	break;



	//player rolls in 8 fixed directions (same angles as projectile) is invulnerable during middle of animation and has hyperarmour 
	case "Basic Roll":
		show_debug_message("Rolling....");
	break;
	
	
	
	//Player presses an attack button while rolling and does a basic attack with more endlag 
	case "Rolling Attack":
	
	break; 
	
	
	
	//Player does 2 rolls in a row being completely invulnerable while doing it with lots of endlag 
	case "Long Roll":
	
	break; 
	
	
	
	//Player presses an attack button while long rolling and cues up a strong attack with minor start up and major endlag 
	case "Strong Rolling Attack":
	
	break; 
	
}
	
ds_map_destroy(argument0);
		

 

	