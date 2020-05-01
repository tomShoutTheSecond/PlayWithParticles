if(Admob_RewardedVideoAd_isLoaded())
    Admob_RewardedVideoAd_Show()
else
    {
    Admob_RewardedVideoAd_Load()
        show_message("RewardedVideoAd Still loading, try again soon")
    }



