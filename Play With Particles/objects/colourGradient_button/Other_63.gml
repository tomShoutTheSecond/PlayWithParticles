/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B69B7F0
/// @DnDArgument : "code" "var i_d = ds_map_find_value(async_load, "id");$(13_10)if (i_d == msg)$(13_10){$(13_10)if ds_map_find_value(async_load, "status")$(13_10)    {$(13_10)	colourConstant = ds_map_find_value(async_load, "value");$(13_10)    }$(13_10)}"
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg)
{
if ds_map_find_value(async_load, "status")
    {
	colourConstant = ds_map_find_value(async_load, "value");
    }
}