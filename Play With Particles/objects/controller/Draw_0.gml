/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A33B2AE
/// @DnDArgument : "code" "/// @description Draws number of object: sun that exist $(13_10)//also draws display and surface resolutions$(13_10)$(13_10)$(13_10)var displayWidth = display_get_width();$(13_10)var displayHeight = display_get_height();$(13_10)var surfaceWidth = surface_get_width(application_surface); $(13_10)var surfaceHeight = surface_get_height(application_surface); $(13_10)$(13_10)/*$(13_10)draw_set_color(c_white);$(13_10)draw_text(0, 0, "displayWidth: " + string(displayWidth));$(13_10)draw_text(0, 40, "displayHeight: " + string(displayHeight));$(13_10)draw_text(0, 80, "surfaceWidth: " + string(surfaceWidth));$(13_10)draw_text(0, 120, "surfaceHeight: " + string(surfaceHeight));$(13_10)*/$(13_10)$(13_10)//This is for DEBUGGING the double finger tap reset $(13_10)//draw_text(0, 0, instance_number(sun));"
/// @description Draws number of object: sun that exist 
//also draws display and surface resolutions


var displayWidth = display_get_width();
var displayHeight = display_get_height();
var surfaceWidth = surface_get_width(application_surface); 
var surfaceHeight = surface_get_height(application_surface); 

/*
draw_set_color(c_white);
draw_text(0, 0, "displayWidth: " + string(displayWidth));
draw_text(0, 40, "displayHeight: " + string(displayHeight));
draw_text(0, 80, "surfaceWidth: " + string(surfaceWidth));
draw_text(0, 120, "surfaceHeight: " + string(surfaceHeight));
*/

//This is for DEBUGGING the double finger tap reset 
//draw_text(0, 0, instance_number(sun));/**/