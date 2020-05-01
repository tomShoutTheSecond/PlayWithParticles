/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 139A301B
/// @DnDArgument : "code" "if (instance_number(sun1) > 1)$(13_10)instance_destroy(instance_find(sun1, 1));$(13_10)$(13_10)if (instance_number(sun2) > 1)$(13_10)instance_destroy(instance_find(sun2, 1));$(13_10)$(13_10)instance_find(sun, 2);"
if (instance_number(sun1) > 1)
instance_destroy(instance_find(sun1, 1));

if (instance_number(sun2) > 1)
instance_destroy(instance_find(sun2, 1));

instance_find(sun, 2);