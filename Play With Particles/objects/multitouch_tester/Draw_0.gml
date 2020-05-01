/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38223EE7
/// @DnDArgument : "code" "/// Draw event mult-touch teste$(13_10)for (var i = 0; i < 10;i++) { // 4 touch$(13_10)    if device_mouse_check_button(i,mb_left) {$(13_10)        var xx = device_mouse_x(i);$(13_10)        var yy = device_mouse_y(i);$(13_10)        draw_circle(xx,yy,180,1);$(13_10)    }$(13_10)}"
/// Draw event mult-touch teste
for (var i = 0; i < 10;i++) { // 4 touch
    if device_mouse_check_button(i,mb_left) {
        var xx = device_mouse_x(i);
        var yy = device_mouse_y(i);
        draw_circle(xx,yy,180,1);
    }
}