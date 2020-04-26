


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
	
	phy_fixed_rotation = true; 