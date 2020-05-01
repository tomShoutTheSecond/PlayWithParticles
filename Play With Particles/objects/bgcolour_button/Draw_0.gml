/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 76B6C879
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2658B7D8
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 04846ECC
/// @DnDArgument : "font" "settings_font"
/// @DnDSaveInfo : "font" "ad443589-093b-4678-b0b6-52a1ba6ec7da"
draw_set_font(settings_font);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 039AD329
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Background Colour: ""
/// @DnDArgument : "var" "bgColour"
draw_text(x + 100, y + 0, string("Background Colour: ") + string(bgColour));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 648836C0
/// @DnDArgument : "code" "if (proVersion == 0)$(13_10){$(13_10)draw_set_color(c_red);$(13_10)draw_line_width(x+10, y+54, x+650, y+10, 5);$(13_10)draw_sprite(lock_spr, 0, x-96, y);$(13_10)}"
if (proVersion == 0)
{
draw_set_color(c_red);
draw_line_width(x+10, y+54, x+650, y+10, 5);
draw_sprite(lock_spr, 0, x-96, y);
}