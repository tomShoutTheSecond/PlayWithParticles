/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F0E444F
/// @DnDArgument : "code" "/// @description Set background colour$(13_10)if (proVersion == 1)$(13_10){$(13_10)	if (colourMode == "Rainbow")$(13_10)	{$(13_10)		colourMode = "Gradient";$(13_10)	}$(13_10)$(13_10)	else if (colourMode == "Gradient")$(13_10)	{$(13_10)		colourMode = "Monochrome";$(13_10)	}$(13_10)$(13_10)	else if (colourMode == "Monochrome")$(13_10)	{$(13_10)		colourMode = "Rainbow";$(13_10)	}$(13_10)}"
/// @description Set background colour
if (proVersion == 1)
{
	if (colourMode == "Rainbow")
	{
		colourMode = "Gradient";
	}

	else if (colourMode == "Gradient")
	{
		colourMode = "Monochrome";
	}

	else if (colourMode == "Monochrome")
	{
		colourMode = "Rainbow";
	}
}