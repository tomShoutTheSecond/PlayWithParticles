/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44B36345
/// @DnDArgument : "code" "if (instance_number(sun1) > 0)$(13_10){$(13_10)	//<function to find the distance to gravity source (pythagoras)>$(13_10)	//these subtractions may need to be flipped around$(13_10)	xdistance = x - sun1.x;$(13_10)	ydistance = y - sun1.y;$(13_10)$(13_10)	distance = sqrt(sqr(xdistance)+sqr(ydistance));$(13_10)$(13_10)	//<function to find direction of gravity source (angle measured anti-clockwise from 6 o'clock)>$(13_10)	//This part is the most likely to be slightly wrong, should be ok tho$(13_10)	//note: angle is in radians$(13_10)	angle = arctan2(xdistance, ydistance);$(13_10)$(13_10)	//<distance to force, f=(GMm)/(r^2), G = 6.67*10^-11>$(13_10)	force = (G*mass*sun1.mass)/sqr(distance);$(13_10)	if (force > maxForce)$(13_10)	force = maxForce;$(13_10)$(13_10)	//<resolving components of force>$(13_10)	hforce = -force*sin(angle);$(13_10)	vforce = -force*cos(angle);$(13_10)$(13_10)	//<f=ma, a=f/m>$(13_10)	haccel = hforce / mass;$(13_10)	vaccel = vforce / mass;$(13_10)$(13_10)	hspeed += timeConstant*haccel;$(13_10)	vspeed += timeConstant*vaccel;$(13_10)}"
if (instance_number(sun1) > 0)
{
	//<function to find the distance to gravity source (pythagoras)>
	//these subtractions may need to be flipped around
	xdistance = x - sun1.x;
	ydistance = y - sun1.y;

	distance = sqrt(sqr(xdistance)+sqr(ydistance));

	//<function to find direction of gravity source (angle measured anti-clockwise from 6 o'clock)>
	//This part is the most likely to be slightly wrong, should be ok tho
	//note: angle is in radians
	angle = arctan2(xdistance, ydistance);

	//<distance to force, f=(GMm)/(r^2), G = 6.67*10^-11>
	force = (G*mass*sun1.mass)/sqr(distance);
	if (force > maxForce)
	force = maxForce;

	//<resolving components of force>
	hforce = -force*sin(angle);
	vforce = -force*cos(angle);

	//<f=ma, a=f/m>
	haccel = hforce / mass;
	vaccel = vforce / mass;

	hspeed += timeConstant*haccel;
	vspeed += timeConstant*vaccel;
}