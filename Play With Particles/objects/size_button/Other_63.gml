/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 144DC7CA
/// @DnDArgument : "code" "var i_d = ds_map_find_value(async_load, "id");$(13_10)if (i_d == msg)$(13_10){$(13_10)if ds_map_find_value(async_load, "status")$(13_10)    {$(13_10)	particleSizeTemp = ds_map_find_value(async_load, "value");$(13_10)	if (particleSizeTemp > 0)$(13_10)		particleSize = particleSizeTemp;$(13_10)	else$(13_10)		show_message_async("Particle sizes cannot be negative or zero");		$(13_10)    }$(13_10)}"
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg)
{
if ds_map_find_value(async_load, "status")
    {
	particleSizeTemp = ds_map_find_value(async_load, "value");
	if (particleSizeTemp > 0)
		particleSize = particleSizeTemp;
	else
		show_message_async("Particle sizes cannot be negative or zero");		
    }
}