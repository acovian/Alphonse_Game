/// @description Controlling Player State

#region Set up controls for Player.
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);
#endregion

#region State Machine

#region Move State
switch(state){
	case player.moving:
		//Change direction of sprite
		if (xspeed != 0){
			image_xscale = sign(xspeed);
		}
		//Check if moving left or right
		if (right or left){
			xspeed += (right - left) * acceleration;
			xspeed = clamp(xspeed, -max_speed, max_speed);
		}
		else {
			apply_friction(acceleration);
		}
		
		move(o_solid);
		
	break;
}
#endregion

#region Ledge Grab State
switch(state){
	case player.ledge_grab:
	break;
}
#endregion

#region Door State
switch(state){
	case player.door:
	break;
}
#endregion

#region Player Hurt
switch(state){
	case player.hurt:
	break;
}
#endregion

#region Player Death
switch(state){
	case player.death:
	break;
}
#endregion

#endregion