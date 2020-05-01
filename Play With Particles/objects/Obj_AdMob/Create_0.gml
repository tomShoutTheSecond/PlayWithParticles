globalvar BANNER_ID;

if(os_type==os_android)
{
var APP_ID="ca-app-pub-4561935826593173~8745917006";
/*var*/ BANNER_ID="ca-app-pub-6126657740467722/7746222495";
var INTERSTITIAL_ID="ca-app-pub-4561935826593173/5900261810";
var REWANTED_ID="ca-app-pub-4561935826593173/8760205358";
}
else
{
var APP_ID="ca-app-pub-4561935826593173~7461469506";
/*var*/ BANNER_ID="ca-app-pub-6126657740467722/77462224959";
var INTERSTITIAL_ID="ca-app-pub-4561935826593173/5783757455";
var REWANTED_ID="ca-app-pub-4561935826593173/4309881927";
}

Admob_initialize(APP_ID)
/*
Admob_Interstitial_Init(INTERSTITIAL_ID)
Admob_Interstitial_Load()


Admob_RewardedVideoAd_Init(REWANTED_ID)
Admob_RewardedVideoAd_Load()
*/
Admob_Banner_BottomY(0);

//load the ad
if(proVersion == 0)
{
	var bannerType = Admob_FULL_BANNER;
	Admob_Banner(BANNER_ID,bannerType,Admob_Banner_CenterX(bannerType),Admob_Banner_BottomY(bannerType));
}
/* */
/*  */
