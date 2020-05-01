/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 641F041F
/// @DnDArgument : "code" "/// @description Set colour$(13_10)$(13_10)if (speed > (255/colourConstant))$(13_10)hue = 255;$(13_10)else$(13_10)hue = speed*colourConstant;$(13_10)$(13_10)if (room == 2)$(13_10)draw_set_color(c_red);$(13_10)else$(13_10){$(13_10)	if (colourMode == "Rainbow")$(13_10)	draw_set_color(make_color_hsv(colourShift+255-hue,255,255));$(13_10)$(13_10)	if (colourMode == "Gradient")$(13_10)	{$(13_10)		if (bgColour == "Black")$(13_10)		draw_set_color(make_color_hsv(0,0,clamp(colourShift+hue*colourConstant*0.1, 0, 255)));$(13_10)		if (bgColour == "White")$(13_10)		draw_set_color(make_color_hsv(0,0,clamp(255-(colourShift+hue*colourConstant*0.1), 0, 255)));		$(13_10)	}$(13_10)$(13_10)	if (colourMode == "Monochrome")$(13_10)	{$(13_10)		if (bgColour == "Black")$(13_10)		draw_set_color(make_color_hsv(0,0,255));$(13_10)		if (bgColour == "White")$(13_10)		draw_set_color(make_color_hsv(0,0,0));		$(13_10)	}$(13_10)}$(13_10)//draw_ellipse(x-particleSize,y-particleSize,x+particleSize,y+particleSize,particleSize > 2);$(13_10)//draw_rectangle(x-particleSize,y-particleSize,x+particleSize,y+particleSize,particleSize > 2);$(13_10)$(13_10)draw_line(x-particleSize,y-particleSize,x+particleSize,y+particleSize);$(13_10)draw_line(x-particleSize,y+particleSize,x+particleSize,y-particleSize);"
/// @description Set colour

if (speed > (255/colourConstant))
hue = 255;
else
hue = speed*colourConstant;

if (room == 2)
draw_set_color(c_red);
else
{
	if (colourMode == "Rainbow")
	draw_set_color(make_color_hsv(colourShift+255-hue,255,255));

	if (colourMode == "Gradient")
	{
		if (bgColour == "Black")
		draw_set_color(make_color_hsv(0,0,clamp(colourShift+hue*colourConstant*0.1, 0, 255)));
		if (bgColour == "White")
		draw_set_color(make_color_hsv(0,0,clamp(255-(colourShift+hue*colourConstant*0.1), 0, 255)));		
	}

	if (colourMode == "Monochrome")
	{
		if (bgColour == "Black")
		draw_set_color(make_color_hsv(0,0,255));
		if (bgColour == "White")
		draw_set_color(make_color_hsv(0,0,0));		
	}
}
//draw_ellipse(x-particleSize,y-particleSize,x+particleSize,y+particleSize,particleSize > 2);
//draw_rectangle(x-particleSize,y-particleSize,x+particleSize,y+particleSize,particleSize > 2);

draw_line(x-particleSize,y-particleSize,x+particleSize,y+particleSize);
draw_line(x-particleSize,y+particleSize,x+particleSize,y-particleSize);