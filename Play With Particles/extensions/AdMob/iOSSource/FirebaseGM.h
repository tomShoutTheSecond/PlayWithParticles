
#import <GoogleMobileAds/GoogleMobileAds.h>


@interface FirebaseGM:NSObject <GADBannerViewDelegate,GADInterstitialDelegate,GADRewardBasedVideoAdDelegate>
{
	//GADBannerView *bannerView;
	//GADInterstitial *interstitial;
    NSMutableDictionary *ListenerMap;
    
}

@property(nonatomic, strong) GADBannerView *bannerView;
@property(nonatomic, strong) GADInterstitial*interstitial;
@property(nonatomic, strong) NSString *rewardAdID;
@property(nonatomic, strong) NSString *interstitialAdID;

-(void) Admob_initialize:(char*) APP_ID;
-(void) Admob_Banner:(char*) bannerID Size:(double) size X: (double)x_ Y: (double) y_;
-(void) Admob_RemoveBanner;
-(void) Admob_Interstitial_Init:(char*)interstitialID;
-(void) Admob_Interstitial_Load;
-(void) Admob_Interstitial_Show;
-(double) Admob_Interstitial_isLoaded;
-(void) Admob_RewardedVideoAd_Init:(char*) AdId;
-(void) Admob_RewardedVideoAd_Load;
-(void) Admob_RewardedVideoAd_Show;
-(double) Admob_RewardedVideoAd_isLoaded;


@end


