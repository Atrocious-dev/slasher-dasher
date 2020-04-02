/// Damage all lifeforms

//other is only available in collison event and is the other object
if (other.id != creator) {
other.hp -= damage; 

	//Apply the Knockback
	var dir = point_direction(creator.x, creator.y, other.x, other.y);
	var xforce = lengthdir_x(knockback, dir);
	var yforce = lengthdir_y(knockback, dir); 
	with (other) {
		physics_apply_impulse(x, y, xforce, yforce); 
	}
}