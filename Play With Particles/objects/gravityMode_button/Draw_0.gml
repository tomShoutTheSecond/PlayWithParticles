/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 33438F7F
/// @DnDArgument : "font" "settings_font"
/// @DnDSaveInfo : "font" "ad443589-093b-4678-b0b6-52a1ba6ec7da"
draw_set_font(settings_font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 74CEC30E
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6D5CB810
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Gravity Mode: ""
/// @DnDArgument : "var" "gravityMode"
draw_text(x + 100, y + 0, string("Gravity Mode: ") + string(gravityMode));

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 61F45FE2
draw_self();