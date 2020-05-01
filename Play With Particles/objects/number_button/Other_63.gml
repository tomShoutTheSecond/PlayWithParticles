/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57BA0843
/// @DnDArgument : "code" "var i_d = ds_map_find_value(async_load, "id");$(13_10)if (i_d == msg)$(13_10){$(13_10)if ds_map_find_value(async_load, "status")$(13_10)    {$(13_10)	particleNumber = ds_map_find_value(async_load, "value");$(13_10)	if (tempParticleNumber != particleNumber)$(13_10)		resetParticles = true;$(13_10)    }$(13_10)}"
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg)
{
if ds_map_find_value(async_load, "status")
    {
	particleNumber = ds_map_find_value(async_load, "value");
	if (tempParticleNumber != particleNumber)
		resetParticles = true;
    }
}