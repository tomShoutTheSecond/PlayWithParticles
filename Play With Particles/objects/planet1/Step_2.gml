/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F85D94A
/// @DnDArgument : "code" "/// @description Gravity$(13_10)$(13_10)//[(in planet's step event) step begin? "sun" is the gravity source object]$(13_10)$(13_10)if (isFrozen == 0 && instance_number(sun) <= 2)$(13_10){$(13_10)	if (gravityMode == "Accurate")$(13_10)	{$(13_10)		gravity_part_one()$(13_10)		gravity_part_two()$(13_10)$(13_10)		//randomise direction when it gets near the middle$(13_10)		if (distance_to_object(instance_nearest(x, y, sun)) < 2)$(13_10)		{$(13_10)			direction = speed*100000;$(13_10)			speed *= ringBoost;$(13_10)		}$(13_10)$(13_10)		speed *= 1-drag;$(13_10)	}$(13_10)	$(13_10)	else if (gravityMode == "Fast")$(13_10)	{$(13_10)		gravity_original();$(13_10)	}$(13_10)}"
/// @description Gravity

//[(in planet's step event) step begin? "sun" is the gravity source object]

if (isFrozen == 0 && instance_number(sun) <= 2)
{
	if (gravityMode == "Accurate")
	{
		gravity_part_one()
		gravity_part_two()

		//randomise direction when it gets near the middle
		if (distance_to_object(instance_nearest(x, y, sun)) < 2)
		{
			direction = speed*100000;
			speed *= ringBoost;
		}

		speed *= 1-drag;
	}
	
	else if (gravityMode == "Fast")
	{
		gravity_original();
	}
}