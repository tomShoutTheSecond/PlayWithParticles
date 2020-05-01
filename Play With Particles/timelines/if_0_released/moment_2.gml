/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23A49155
/// @DnDArgument : "code" "if device_mouse_check_button(1, mb_left)$(13_10){$(13_10)instance_destroy(sun1);$(13_10)}$(13_10)"
if device_mouse_check_button(1, mb_left)
{
instance_destroy(sun1);
}