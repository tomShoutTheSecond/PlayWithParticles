//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//


#import "FirebaseGM.h"

const int EVENT_OTHER_SOCIAL = 70;
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern UIViewController *g_controller;
extern UIView *g_glView;
extern int g_DeviceWidth;
extern int g_DeviceHeight;

@implementation FirebaseGM

-(id)init {
    if ( self = [super init] ) {
        
        
    return self;
	}
}


/////////////////////////////////////////////////////AdMob
-(void) Admob_initialize:(char*) APP_ID
{
    
    [GADMobileAds configureWithApplicationID: [NSString stringWithCString:APP_ID encoding:NSUTF8StringEncoding]];
    
}


-(void) Admob_Banner:(char*) bannerID Size:(double) size X: (double)x_ Y: (double) y_
{
    
    self.bannerView = [[GADBannerView alloc]
                       initWithAdSize:kGADAdSizeBanner];
    
    self.bannerView.translatesAutoresizingMaskIntoConstraints = NO;
    [g_glView addSubview:self.bannerView];
    
    
    
    /////
    
    //int m_BannerXPos = 0;
    //int m_BannerYPos = 0;
    
    GADAdSize bannerSize;
    switch((int)size)
    {
        case 0: bannerSize = kGADAdSizeBanner; break;
        case 1: bannerSize = kGADAdSizeLargeBanner; break;
        case 2: bannerSize = kGADAdSizeMediumRectangle; break;
        case 3: bannerSize = kGADAdSizeFullBanner; break;
        case 4: bannerSize = kGADAdSizeLeaderboard; break;
        case 5: NSLog(@"Kaguva will add SmartBanners for iOS later . . Sorry"); break;
        default: NSLog(@"AddBanner illegal banner size type"); return;
    }
    
    //remove existing banner
    if( self.bannerView != nil )
    {
        //remove existing banner
        [self.bannerView removeFromSuperview];
        self.bannerView.delegate = nil;
        [self.bannerView release];
        self.bannerView = nil;
    }
    
    //bannerView = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    self.bannerView = [[GADBannerView alloc] initWithAdSize:bannerSize];
    self.bannerView.adUnitID = [NSString stringWithUTF8String:bannerID];
    self.bannerView.rootViewController = g_controller;
    self.bannerView.delegate = self;
    [g_glView addSubview:self.bannerView];
    
    int x = (int)(x_ * g_glView.bounds.size.width) / g_DeviceWidth;
    int y = (int)(y_ * g_glView.bounds.size.height) / g_DeviceHeight;
    
    CGRect frame = self.bannerView.frame;
    frame.origin.x = x;
    frame.origin.y = y;
    self.bannerView.frame =frame;
    
    GADRequest *request = [GADRequest request];
    //if( m_bUseTestAds )
    //{
    //    request.testDevices = [NSArray arrayWithObject:m_DeviceId];
    //}
    
    //request.testDevices = @[ @"a4dc6ddd7107dd26da54c7cc7033b399" ];
    [self.bannerView loadRequest:request];
    
    
}

/// Tells the delegate an ad request loaded an ad.
- (void)adViewDidReceiveAd:(GADBannerView *)adView {
    NSLog(@"adViewDidReceiveAd");
	
	int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "Banner_onAdLoaded");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

/// Tells the delegate an ad request failed.
- (void)adView:(GADBannerView *)adView
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"adView:didFailToReceiveAdWithError: %@", [error localizedDescription]);
	
	int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "Banner_onAdFailedToLoad");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

/// Tells the delegate that a full-screen view will be presented in response
/// to the user clicking on an ad.
- (void)adViewWillPresentScreen:(GADBannerView *)adView {
    NSLog(@"adViewWillPresentScreen");
}

/// Tells the delegate that the full-screen view will be dismissed.
- (void)adViewWillDismissScreen:(GADBannerView *)adView {
    NSLog(@"adViewWillDismissScreen");
}

/// Tells the delegate that the full-screen view has been dismissed.
- (void)adViewDidDismissScreen:(GADBannerView *)adView {
    NSLog(@"adViewDidDismissScreen");
}

/// Tells the delegate that a user click will open another app (such as
/// the App Store), backgrounding the current app.
- (void)adViewWillLeaveApplication:(GADBannerView *)adView {
    NSLog(@"adViewWillLeaveApplication");
}


-(void) Admob_RemoveBanner
{
    if( self.bannerView != nil )
    {
        [self.bannerView removeFromSuperview];
        self.bannerView.delegate = nil;
        [self.bannerView release];
        self.bannerView = nil;
    }
}

-(void) Admob_Interstitial_Init:(char*)interstitialID
{
    self.interstitialAdID=[NSString stringWithCString:interstitialID encoding:NSUTF8StringEncoding];
}

-(void) Admob_Interstitial_Load
{
    
    [self.interstitial release];
    self.interstitial = [[GADInterstitial alloc]initWithAdUnitID:self.interstitialAdID];
    self.interstitial.delegate = self;
    
    GADRequest *request = [GADRequest request];
    [self.interstitial loadRequest:request];
}

-(void) Admob_Interstitial_Show
{
    if (self.interstitial.isReady) {
        [self.interstitial presentFromRootViewController:g_controller];
    }
}

-(double) Admob_Interstitial_isLoaded
{
    if (self.interstitial.isReady) {
        return 1;
    }
    else
        return 0;
}

/// Tells the delegate an ad request succeeded.
- (void)interstitialDidReceiveAd:(GADInterstitial *)ad {
    NSLog(@"interstitialDidReceiveAd");
	
	int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "Interstitial_onAdLoaded");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

/// Tells the delegate an ad request failed.
- (void)interstitial:(GADInterstitial *)ad
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"interstitial:didFailToReceiveAdWithError: %@", [error localizedDescription]);
	
	int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "Interstitial_onAdFailedToLoad");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

/// Tells the delegate that an interstitial will be presented.
- (void)interstitialWillPresentScreen:(GADInterstitial *)ad {
    NSLog(@"interstitialWillPresentScreen");
}

/// Tells the delegate the interstitial is to be animated off the screen.
- (void)interstitialWillDismissScreen:(GADInterstitial *)ad {
    NSLog(@"interstitialWillDismissScreen");
}

/// Tells the delegate the interstitial had been animated off the screen.
- (void)interstitialDidDismissScreen:(GADInterstitial *)ad {
    NSLog(@"interstitialDidDismissScreen");
}

/// Tells the delegate that a user click will open another app
/// (such as the App Store), backgrounding the current app.
- (void)interstitialWillLeaveApplication:(GADInterstitial *)ad {
    NSLog(@"interstitialWillLeaveApplication");
}


-(void) Admob_RewardedVideoAd_Init:(char*) AdId
{
    NSLog(@"Admob_RewardedVideoAd_Init");
    
    self.rewardAdID=[NSString stringWithCString:AdId encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", self.rewardAdID);

}

-(void) Admob_RewardedVideoAd_Load
{
     NSLog(@"Admob_RewardedVideoAd_Load");
    //NSLog(@"%@", self.rewardAdID);
    
    [GADRewardBasedVideoAd release];
    
    [GADRewardBasedVideoAd sharedInstance].delegate = self;
    [[GADRewardBasedVideoAd sharedInstance] loadRequest:[GADRequest request]
                                           withAdUnitID:self.rewardAdID];
}

-(void) Admob_RewardedVideoAd_Show
{
    if ([[GADRewardBasedVideoAd sharedInstance] isReady]) {
        [[GADRewardBasedVideoAd sharedInstance] presentFromRootViewController:g_controller];
    }
}

-(double) Admob_RewardedVideoAd_isLoaded
{
    if ([[GADRewardBasedVideoAd sharedInstance] isReady]) {
        return 1;
    }
    else
        return 0;
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
   didRewardUserWithReward:(GADAdReward *)reward {
    NSString *rewardMessage =
    [NSString stringWithFormat:@"Reward received with currency %@ , amount %lf",
     reward.type,
     [reward.amount doubleValue]];
    NSLog(@"%@", rewardMessage);
	
	int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewarded");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidReceiveAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad is received.");
	
		int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewardedVideoAdLoaded");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidOpen:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Opened reward based video ad.");
	
		int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewardedVideoAdOpened");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidStartPlaying:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad started playing.");
	
		int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewardedVideoStarted");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidClose:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad is closed.");
	
		int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewardedVideoAdClosed");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdWillLeaveApplication:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad will leave application.");
	
		int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewardedVideoAdLeftApplication");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
    didFailToLoadWithError:(NSError *)error {
    NSLog(@"Reward based video ad failed to load.");
	
		int dsMapIndex = CreateDsMap(2,
                                     "type", 0.0, "Firebase",
                                     "event", 0.0, "onRewardedVideoAdFailedToLoad");
        CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}


@end

