/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 02E13CA4
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DEBC3D5
/// @DnDArgument : "var" "proVersion"
if(proVersion == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 049B8E7D
	/// @DnDParent : 6DEBC3D5
	/// @DnDArgument : "code" "draw_set_color(make_color_rgb(146, 208, 80));$(13_10)draw_set_alpha(image_alpha);"
	draw_set_color(make_color_rgb(146, 208, 80));
	draw_set_alpha(image_alpha);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 107EA5A8
	/// @DnDParent : 6DEBC3D5
	/// @DnDArgument : "font" "settings_font"
	/// @DnDSaveInfo : "font" "ad443589-093b-4678-b0b6-52a1ba6ec7da"
	draw_set_font(settings_font);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 66A10BE8
	/// @DnDParent : 6DEBC3D5
	/// @DnDArgument : "x" "1600"
	/// @DnDArgument : "y" "350"
	/// @DnDArgument : "caption" ""lite""
	draw_text(1600, 350, string("lite") + "");
}