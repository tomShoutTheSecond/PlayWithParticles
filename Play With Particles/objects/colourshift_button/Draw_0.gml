/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7A453236
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6BEA7F3B
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 594ABAB4
/// @DnDArgument : "font" "settings_font"
/// @DnDSaveInfo : "font" "ad443589-093b-4678-b0b6-52a1ba6ec7da"
draw_set_font(settings_font);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6D1712DF
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Colour Shift: ""
/// @DnDArgument : "var" "colourShift"
draw_text(x + 100, y + 0, string("Colour Shift: ") + string(colourShift));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03FB44D6
/// @DnDArgument : "code" "if (proVersion == 0)$(13_10){$(13_10)draw_set_color(c_red);$(13_10)draw_line_width(x+10, y+54, x+450, y+10, 5);$(13_10)draw_sprite(lock_spr, 0, x-96, y);$(13_10)}"
if (proVersion == 0)
{
draw_set_color(c_red);
draw_line_width(x+10, y+54, x+450, y+10, 5);
draw_sprite(lock_spr, 0, x-96, y);
}