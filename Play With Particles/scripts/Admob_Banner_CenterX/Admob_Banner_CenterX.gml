var w_dp=0;

switch(argument0)
{

case Admob_BANNER: w_dp=320 break
case Admob_LARGE_BANNER: w_dp=320 break
case Admob_MEDIUM_RECTANGLE: w_dp=300 break
case Admob_FULL_BANNER: w_dp=468 break
case Admob_LEADERBOARD: w_dp=728 break
case Admob_SMART_BANNER: w_dp=display_get_width() break

}

var w_px=w_dp*display_get_dpi_x()/160 //https://developer.android.com/guide/practices/screens_support.html
return(display_get_width()/2-w_px/2)

