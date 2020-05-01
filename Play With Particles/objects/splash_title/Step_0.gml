/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7172842A
/// @DnDArgument : "code" "image_alpha += 0.03;$(13_10)$(13_10)if (image_alpha > 3)$(13_10)room_goto(1);"
image_alpha += 0.03;

if (image_alpha > 3)
room_goto(1);