/// @description 

#region //Collision and Movement

	//Horizontal Collision
	if (place_meeting(x+h_speed, y, o_solid))
	{
		while (!place_meeting(x + sign(h_speed), y, o_solid))
		{
			x = x + sign(h_speed);
		}
		h_speed = 0;
	}
	x = x + h_speed;

	//Vertical Collision
	if (place_meeting(x, y + v_speed, o_solid))
	{
		while (!place_meeting(x, y + sign(v_speed), o_solid))
		{
			y = y + sign(v_speed);
		}
		v_speed = 0;
	}
	y = y + v_speed;
	
#endregion