/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6FA8718D
/// @DnDArgument : "code" "/// @description Create planets$(13_10)$(13_10)Admob_RemoveBanner();$(13_10)$(13_10)//destroy the admob controller$(13_10){$(13_10)	with (Obj_AdMob) $(13_10)	{$(13_10)		instance_destroy();$(13_10)	}$(13_10)}$(13_10)$(13_10)if (resetParticles)$(13_10){$(13_10)	instance_destroy(planet1);$(13_10)$(13_10)	for(i = 0; i < particleNumber; i++;)$(13_10)	instance_create_depth(irandom_range(0, 1920), irandom_range(0, 1080), 0, planet1);$(13_10)	resetParticles = 0;$(13_10)}$(13_10)$(13_10)//Rick's not just a pickle$(13_10)$(13_10)$(13_10)//Make the background the right colour$(13_10)if (bgColour == "White")$(13_10)layer_background_blend(layer_background_get_id("Background"), c_white);$(13_10)if (bgColour == "Black")$(13_10)layer_background_blend(layer_background_get_id("Background"), c_black);$(13_10)$(13_10)if(shownMessages == false)$(13_10){$(13_10)	show_message_async("Tap the top left corner for settings");$(13_10)	show_message_async("TOP TIP: Collect the particles together to create a shockwave");$(13_10)	shownMessages = true;$(13_10)}"
/// @description Create planets

Admob_RemoveBanner();

//destroy the admob controller
{
	with (Obj_AdMob) 
	{
		instance_destroy();
	}
}

if (resetParticles)
{
	instance_destroy(planet1);

	for(i = 0; i < particleNumber; i++;)
	instance_create_depth(irandom_range(0, 1920), irandom_range(0, 1080), 0, planet1);
	resetParticles = 0;
}

//Rick's not just a pickle


//Make the background the right colour
if (bgColour == "White")
layer_background_blend(layer_background_get_id("Background"), c_white);
if (bgColour == "Black")
layer_background_blend(layer_background_get_id("Background"), c_black);

if(shownMessages == false)
{
	show_message_async("Tap the top left corner for settings");
	show_message_async("TOP TIP: Collect the particles together to create a shockwave");
	shownMessages = true;
}