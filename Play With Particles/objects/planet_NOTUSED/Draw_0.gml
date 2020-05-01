/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EFF37BA
/// @DnDArgument : "code" "/// @description Set colour$(13_10)$(13_10)accel = sqrt(sqr(haccel)+sqr(vaccel));$(13_10)$(13_10)if (speed > (255/colourConstant))$(13_10)hue = 255;$(13_10)else$(13_10)hue = speed*colourConstant;$(13_10)$(13_10)if (room == 2)$(13_10)draw_set_color(c_red);$(13_10)else$(13_10){$(13_10)	if (colourMode == "Rainbow")$(13_10)	draw_set_color(make_color_hsv(colourShift+255-hue,255,255));$(13_10)$(13_10)	if (colourMode == "Gradient")$(13_10)	{$(13_10)		if (bgColour == "Black")$(13_10)		draw_set_color(make_color_hsv(0,0,clamp(colourShift+hue*colourConstant*0.1, 0, 255)));$(13_10)		if (bgColour == "White")$(13_10)		draw_set_color(make_color_hsv(0,0,clamp(255-(colourShift+hue*colourConstant*0.1), 0, 255)));		$(13_10)	}$(13_10)$(13_10)	if (colourMode == "Monochrome")$(13_10)	{$(13_10)		if (bgColour == "Black")$(13_10)		draw_set_color(make_color_hsv(0,0,255));$(13_10)		if (bgColour == "White")$(13_10)		draw_set_color(make_color_hsv(0,0,0));		$(13_10)	}$(13_10)}$(13_10)$(13_10)draw_ellipse(x-particleSize,y-particleSize,x+particleSize,y+particleSize,particleSize > 2);"
/// @description Set colour

accel = sqrt(sqr(haccel)+sqr(vaccel));

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

draw_ellipse(x-particleSize,y-particleSize,x+particleSize,y+particleSize,particleSize > 2);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36B7F42D
/// @DnDArgument : "code" "/// @description Draw debug$(13_10)$(13_10)/*$(13_10)draw_line(x, y, sun.x, sun.y);$(13_10)draw_line(x, y, x, sun.y);$(13_10)draw_line(x, y, sun.x, y);$(13_10)$(13_10)draw_text(0, 0, "distance: " + string(distance));$(13_10)draw_text(0, 20, "xdistance: " + string(xdistance));$(13_10)draw_text(0, 40, "ydistance: " + string(ydistance));$(13_10)draw_text(0, 60, "angle: " + string(radtodeg(angle)));$(13_10)$(13_10)$(13_10)draw_text(0, 80, "hforce: " + string(hforce));$(13_10)draw_text(0, 100, "vforce: " + string(vforce));$(13_10)$(13_10)draw_text(0, 120, "sqr(distance): " + string(sqr(distance)));$(13_10)draw_text(0, 140, "force: " + string(force));"
/// @description Draw debug

/*
draw_line(x, y, sun.x, sun.y);
draw_line(x, y, x, sun.y);
draw_line(x, y, sun.x, y);

draw_text(0, 0, "distance: " + string(distance));
draw_text(0, 20, "xdistance: " + string(xdistance));
draw_text(0, 40, "ydistance: " + string(ydistance));
draw_text(0, 60, "angle: " + string(radtodeg(angle)));


draw_text(0, 80, "hforce: " + string(hforce));
draw_text(0, 100, "vforce: " + string(vforce));

draw_text(0, 120, "sqr(distance): " + string(sqr(distance)));
draw_text(0, 140, "force: " + string(force));/**/