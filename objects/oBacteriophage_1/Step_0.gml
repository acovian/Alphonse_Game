/// @description Execute the state

switch (state) {
	
	#region Idle
	case bacteriophage_1.idle:
		if (instance_exists(oPlayer)) {
			var dis = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (dis < sight) {
				state = bacteriophage_1.chase;
			}
		}
	break;
	#endregion
	
	#region Chase
	case bacteriophage_1.chase:
		if (instance_exists(oPlayer)) {
			var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
			xspeed = lengthdir_x(max_speed, dir);
			yspeed = lengthdir_y(max_speed, dir);
		}
		y += yspeed;
		x += xspeed;
	break;
	#endregion
}