/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3951C915
/// @DnDArgument : "code" "if (room == 1)$(13_10){$(13_10)isFrozen = 1;$(13_10)$(13_10)tempspeed = speed;$(13_10)tempdirection = direction;$(13_10)$(13_10)speed = 0;$(13_10)}$(13_10)$(13_10)if (room == 2)$(13_10){$(13_10)isFrozen = 0;$(13_10)speed = tempspeed;$(13_10)direction = tempdirection;$(13_10)}"
if (room == 1)
{
isFrozen = 1;

tempspeed = speed;
tempdirection = direction;

speed = 0;
}

if (room == 2)
{
isFrozen = 0;
speed = tempspeed;
direction = tempdirection;
}