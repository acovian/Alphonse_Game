/// @description Coding for Player

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W")); 

#region //Calculate Movement

	var move = key_right - key_left;

	h_speed = (move * walk_speed);

	v_speed = (v_speed + grv);


	if (jump_current > 0) and (key_jump)
	{
		v_speed = -7.5;	
		jump_current--;
	}

	if (place_meeting(x, y + v_speed, o_solid))
	{
		while(!place_meeting(x, y + sign(v_speed), o_solid))
	    {
	        y += sign(v_speed);
	    }
	
		if (v_speed > 0){
			jump_current = jump_number;
		}
	
		v_speed = 0;
	}

#endregion

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

#region Destroy Enemy
	
	if distance_to_object(oBacteriophage) < 25
   {
		if(keyboard_check(vk_enter))
		{
			oBacteriophage.h_speed = direction;
			//instance_destroy(oBacteriophage);
		}
   }
	
#endregion

#region Hurt state

#endregion