/// @description Apply Friction
/// @param amount 

var amount = argument0;

if (xspeed != 0) {
	if (abs(xspeed - amount > 0)){
		xspeed -= amount * image_xscale;
	}
	else {
		xspeed = 0;
	}
}