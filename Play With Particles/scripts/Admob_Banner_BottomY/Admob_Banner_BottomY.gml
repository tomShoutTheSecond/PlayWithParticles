//Admob Ads sizes are constants please check:
//https://developers.google.com/admob/unity/banner#banner_sizes

var h_dp=0;

switch(argument0)
{
case Admob_BANNER: h_dp=50 break
case Admob_LARGE_BANNER: h_dp=100 break
case Admob_MEDIUM_RECTANGLE: h_dp=250 break
case Admob_FULL_BANNER: h_dp=60 break
case Admob_LEADERBOARD: h_dp=90 break
case Admob_SMART_BANNER: h_dp=90 break
}

var h_px=h_dp*display_get_dpi_y()/160 //https://developer.android.com/guide/practices/screens_support.html
return(display_get_height()-h_px)


