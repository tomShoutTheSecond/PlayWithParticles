/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 443DCA89
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7C30D093
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1C173D02
/// @DnDArgument : "font" "settings_font"
/// @DnDSaveInfo : "font" "ad443589-093b-4678-b0b6-52a1ba6ec7da"
draw_set_font(settings_font);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7C7A8149
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Colour Gradient: ""
/// @DnDArgument : "var" "colourConstant"
draw_text(x + 100, y + 0, string("Colour Gradient: ") + string(colourConstant));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35A6D738
/// @DnDArgument : "code" "if (proVersion == 0)$(13_10){$(13_10)draw_set_color(c_red);$(13_10)draw_line_width(x+10, y+54, x+550, y+10, 5);$(13_10)draw_sprite(lock_spr, 0, x-96, y);$(13_10)}"
if (proVersion == 0)
{
draw_set_color(c_red);
draw_line_width(x+10, y+54, x+550, y+10, 5);
draw_sprite(lock_spr, 0, x-96, y);
}