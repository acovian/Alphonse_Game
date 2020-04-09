/// @description Initialize Bacteriophage_flying

//Movement variables
xspeed = 0;
yspeed = 0;
max_speed = 1.5;

enum bacteriophage_1 {
	idle,
	chase
}

state = bacteriophage_1.idle;
sight = 180;
