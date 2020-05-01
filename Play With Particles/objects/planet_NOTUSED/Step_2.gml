/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A90BD1B
/// @DnDArgument : "code" "/// @description Gravity$(13_10)$(13_10)//[(in planet's step event) step begin? "sun" is the gravity source object]$(13_10)$(13_10)if (isFrozen = 0)$(13_10){$(13_10)$(13_10)//<function to find the distance to gravity source (pythagoras)>$(13_10)//these subtractions may need to be flipped around$(13_10)xdistance = x - instance_nearest(x, y, sun).x;$(13_10)ydistance = y - instance_nearest(x, y, sun).y;$(13_10)$(13_10)distance = sqrt(sqr(xdistance)+sqr(ydistance));$(13_10)$(13_10)//<function to find direction of gravity source (angle measured anti-clockwise from 6 o'clock)>$(13_10)//This part is the most likely to be slightly wrong, should be ok tho$(13_10)//note: angle is in radians$(13_10)angle = arctan2(xdistance, ydistance);$(13_10)$(13_10)//<distance to force, f=(GMm)/(r^2), G = 6.67*10^-11>$(13_10)force = (G*mass*instance_nearest(x, y, sun).mass)/sqr(distance);$(13_10)if (force > maxForce)$(13_10)force = maxForce;$(13_10)$(13_10)//<resolving components of force>$(13_10)hforce = -force*sin(angle);$(13_10)vforce = -force*cos(angle);$(13_10)$(13_10)//<f=ma, a=f/m>$(13_10)haccel = hforce / mass;$(13_10)vaccel = vforce / mass;$(13_10)$(13_10)hspeed += haccel;$(13_10)vspeed += vaccel;$(13_10)$(13_10)//randomise direction when it get's near the middle$(13_10)if (distance_to_object(instance_nearest(x,y,sun)) < 1)$(13_10){$(13_10)	direction = random(360);$(13_10)	speed *= ringBoost;$(13_10)}$(13_10)$(13_10)speed *= 1-drag;$(13_10)$(13_10)}"
/// @description Gravity

//[(in planet's step event) step begin? "sun" is the gravity source object]

if (isFrozen = 0)
{

//<function to find the distance to gravity source (pythagoras)>
//these subtractions may need to be flipped around
xdistance = x - instance_nearest(x, y, sun).x;
ydistance = y - instance_nearest(x, y, sun).y;

distance = sqrt(sqr(xdistance)+sqr(ydistance));

//<function to find direction of gravity source (angle measured anti-clockwise from 6 o'clock)>
//This part is the most likely to be slightly wrong, should be ok tho
//note: angle is in radians
angle = arctan2(xdistance, ydistance);

//<distance to force, f=(GMm)/(r^2), G = 6.67*10^-11>
force = (G*mass*instance_nearest(x, y, sun).mass)/sqr(distance);
if (force > maxForce)
force = maxForce;

//<resolving components of force>
hforce = -force*sin(angle);
vforce = -force*cos(angle);

//<f=ma, a=f/m>
haccel = hforce / mass;
vaccel = vforce / mass;

hspeed += haccel;
vspeed += vaccel;

//randomise direction when it get's near the middle
if (distance_to_object(instance_nearest(x,y,sun)) < 1)
{
	direction = random(360);
	speed *= ringBoost;
}

speed *= 1-drag;

}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 085C7CF0
/// @DnDArgument : "code" "/// @description Check escape velocity$(13_10)$(13_10)if (speed >= sqrt(abs((2*G*sun.mass)/distance)))$(13_10)willEscape = true;"
/// @description Check escape velocity

if (speed >= sqrt(abs((2*G*sun.mass)/distance)))
willEscape = true;