/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 080AC04B
/// @DnDArgument : "code" "/// @description Set gravity type$(13_10)$(13_10)tempGravityMode = gravityMode;$(13_10)$(13_10)if (gravityMode == "Accurate")$(13_10){$(13_10)	gravityMode = "Fast";$(13_10)}$(13_10)$(13_10)else if (gravityMode == "Fast")$(13_10){$(13_10)	gravityMode = "Accurate";$(13_10)}$(13_10)$(13_10)if (tempGravityMode != gravityMode)$(13_10)resetParticles = true;$(13_10)"
/// @description Set gravity type

tempGravityMode = gravityMode;

if (gravityMode == "Accurate")
{
	gravityMode = "Fast";
}

else if (gravityMode == "Fast")
{
	gravityMode = "Accurate";
}

if (tempGravityMode != gravityMode)
resetParticles = true;