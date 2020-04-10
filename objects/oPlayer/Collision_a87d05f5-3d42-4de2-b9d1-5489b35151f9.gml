/// @description Colliding with an enemy

//Check if we're above them
var above_enemy = y < other.y + v_speed;
var falling = v_speed > 0;

if (above_enemy and falling) {
	//Keep player above the enemy
	if (!place_meeting(x, yprevious, o_solid)) {
		y = yprevious;
	}
	//Get as close to the enemy as possible
	while (!place_meeting(x, y + 1, other)) {
		y++;
	}
	
	with (other) {
		instance_destroy();
	}
	
	//Bounce off the enemy
	v_speed = -(16 / 3)
	//audio_play_sound(a_step, 6, false);
}
else {
	v_speed = -6;
	h_speed = (sign(x - other.x) * 8);
}