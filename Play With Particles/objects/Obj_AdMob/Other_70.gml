if(async_load[?"type"]=="Firebase")
switch(async_load[?"event"])
{
	case "Banner_onAdLoaded": 
		//show_message_async("Banner Loaded");
		/*
		var bannerType = Admob_FULL_BANNER;
		Admob_Banner(BANNER_ID,bannerType,Admob_Banner_CenterX(bannerType),Admob_Banner_BottomY(bannerType));/*show_message_async("Banner Loaded")*/ 
		break;
	case "Banner_onAdFailedToLoad":
		show_message_async("Banner Failed Load");
		break;

	case "Interstitial_onAdLoaded": break
	case "Interstitial_onAdFailedToLoad": show_message_async("Interstitial  AdFailedToLoad") break

	case "onRewarded": show_message_async("onRewarded") break
	case "onRewardedVideoAdLeftApplication": break
	case "onRewardedVideoAdClosed": break
	case "onRewardedVideoAdFailedToLoad":break
	case "onRewardedVideoAdLoaded": show_message_async("Rewarded AD Loaded") break
	case "onRewardedVideoAdOpened":break
	case "onRewardedVideoStarted":break
}


/* */
/*  */
