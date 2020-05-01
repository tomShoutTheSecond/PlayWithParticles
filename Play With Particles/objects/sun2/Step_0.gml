/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29E2436B
/// @DnDArgument : "code" "/// @description Follow Mouse$(13_10)$(13_10)if (room == 1 and device_mouse_check_button(1,mb_left)) $(13_10){$(13_10)	x = device_mouse_x(1);$(13_10)	y = device_mouse_y(1);$(13_10)}"
/// @description Follow Mouse

if (room == 1 and device_mouse_check_button(1,mb_left)) 
{
	x = device_mouse_x(1);
	y = device_mouse_y(1);
}