/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43062CFB
/// @DnDArgument : "code" "//if there's no sun1, make one$(13_10)if (device_mouse_check_button(0, mb_left))$(13_10){$(13_10)	if (device_mouse_check_button(1, mb_left) == false)$(13_10)		instance_destroy(sun2)$(13_10)$(13_10)	if (instance_number(sun1) == 0)$(13_10)	{$(13_10)		instance_create_depth(device_mouse_x(0), device_mouse_y(0), 0, sun1);$(13_10)	}$(13_10)}$(13_10)$(13_10)//if there's no sun2, make one$(13_10)if (device_mouse_check_button(1, mb_left) and instance_number(sun2) == 0)$(13_10){$(13_10)instance_create_depth(device_mouse_x(1), device_mouse_y(1), 0, sun2);$(13_10)}$(13_10)$(13_10)if (device_mouse_check_button_released(0, mb_left))$(13_10){$(13_10)timeline_index = if_0_released;$(13_10)timeline_position = 0;$(13_10)timeline_running = true;$(13_10)}$(13_10)$(13_10)if (device_mouse_check_button_released(1, mb_left))$(13_10){$(13_10)timeline_index = if_1_released;$(13_10)timeline_position = 0;$(13_10)timeline_running = true;$(13_10)}$(13_10)$(13_10)//check for quick double finger click bug and reset the particles immediately$(13_10)if (instance_number(planet1) < 1)$(13_10){$(13_10)	instance_destroy(planet1);$(13_10)$(13_10)	for(i = 0; i < particleNumber; i++;)$(13_10)	instance_create_depth(irandom_range(0, 1920), irandom_range(0, 1080), 0, planet1);$(13_10)	resetParticles = 0;$(13_10)}$(13_10)$(13_10)"
//if there's no sun1, make one
if (device_mouse_check_button(0, mb_left))
{
	if (device_mouse_check_button(1, mb_left) == false)
		instance_destroy(sun2)

	if (instance_number(sun1) == 0)
	{
		instance_create_depth(device_mouse_x(0), device_mouse_y(0), 0, sun1);
	}
}

//if there's no sun2, make one
if (device_mouse_check_button(1, mb_left) and instance_number(sun2) == 0)
{
instance_create_depth(device_mouse_x(1), device_mouse_y(1), 0, sun2);
}

if (device_mouse_check_button_released(0, mb_left))
{
timeline_index = if_0_released;
timeline_position = 0;
timeline_running = true;
}

if (device_mouse_check_button_released(1, mb_left))
{
timeline_index = if_1_released;
timeline_position = 0;
timeline_running = true;
}

//check for quick double finger click bug and reset the particles immediately
if (instance_number(planet1) < 1)
{
	instance_destroy(planet1);

	for(i = 0; i < particleNumber; i++;)
	instance_create_depth(irandom_range(0, 1920), irandom_range(0, 1080), 0, planet1);
	resetParticles = 0;
}