package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.content.Context;
import android.view.View;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import android.widget.AbsoluteLayout;
import android.view.ViewGroup;
import android.widget.Toast;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.RewardItem;


import android.support.annotation.NonNull;

import android.util.Log;

import java.util.List;

public class FirebaseGM extends RunnerSocial
{
	private static final int EVENT_OTHER_SOCIAL = 70;
	
	public static Activity activity;

	public FirebaseGM() 
	{
		activity = RunnerActivity.CurrentActivity;
	}
	
	
	@Override
	public void onStart() 
	{
		if(mRewardedVideoAd!=null)
		mRewardedVideoAd.destroy(activity);
	}

	@Override
	public void onStop() 
	{
	}
	
	@Override
	public void onPause() 
	{
		if(mRewardedVideoAd!=null)
		 mRewardedVideoAd.pause(activity);
	}
	
	@Override
	public void onResume()
	{
		if(mRewardedVideoAd!=null)
		mRewardedVideoAd.resume(activity);
	}
		
	
	//////////////////////////////////////////////////// Firebase Admob ////////////////////////////////////////////////////
	
	private RewardedVideoAd mRewardedVideoAd=null;
	public void Admob_initialize(final String APP_ID)
	{
		
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
			
		Log.i("yoyo","Kaguva -----> Admob_initialize");
	// Sample AdMob app ID: ca-app-pub-3940256099942544~3347511713
        MobileAds.initialize(activity, APP_ID);
		
		
		// Use an activity context to get the rewarded video instance.
        mRewardedVideoAd = MobileAds.getRewardedVideoAdInstance(activity);
		
		
        mRewardedVideoAd.setRewardedVideoAdListener(new RewardedVideoAdListener(){
		
				@Override
				public void onRewarded(RewardItem reward) {
					Log.i("yoyo", "onRewarded");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewarded" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				
				}

				@Override
				public void onRewardedVideoAdLeftApplication() {
					Log.i("yoyo", "onRewardedVideoAdLeftApplication");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewardedVideoAdLeftApplication" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}

				@Override
				public void onRewardedVideoAdClosed() {
					Log.i("yoyo", "onRewardedVideoAdClosed");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewardedVideoAdClosed" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}

				@Override
				public void onRewardedVideoAdFailedToLoad(int errorCode) {
					Log.i("yoyo", "onRewardedVideoAdFailedToLoad");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewardedVideoAdFailedToLoad" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}

				@Override
				public void onRewardedVideoAdLoaded() {
					Log.i("yoyo", "onRewardedVideoAdLoaded");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewardedVideoAdLoaded" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}

				@Override
				public void onRewardedVideoAdOpened() {
					Log.i("yoyo", "onRewardedVideoAdOpened");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewardedVideoAdOpened" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}

				@Override
				public void onRewardedVideoStarted() {
					Log.i("yoyo", "onRewardedVideoStarted");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "onRewardedVideoStarted" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
				}	
	
		});    		
		
		}});
	}

	private AdView adView=null;
	public void Admob_Banner(final String bannerID,final double size,final double x,final double y)
	{
		
		Log.i("yoyo","Kaguva -----> Admob_Banner");
		
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
		
		
		AbsoluteLayout layout = (AbsoluteLayout)RunnerActivity.CurrentActivity.findViewById(R.id.ad);
		ViewGroup vg = (ViewGroup)layout;
		
			
			//remove existing banner
			if( adView != null )
			{
				if(vg!=null)
				{
					vg.removeView( adView );
				}
				adView.destroy();
				adView = null;
			}

		//create new banner
			adView = new AdView(activity);
			//adView.setAdListener(GoogleMobileAdsExt.this);
			adView.setAdListener( new AdListener() {
				/** Called when an ad is loaded. */
			    @Override
			    public void onAdLoaded() 
			    {
			    	Log.i("yoyo", "Banner Ad onAdLoaded");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Banner_onAdLoaded" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
			    	
			    }
			    
			    @Override
			    public void onAdFailedToLoad(int errorCode)
			    {
			    	Log.i("yoyo", "Banner Ad onAdFailedToLoad");
					
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
				RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Banner_onAdFailedToLoad" );
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
			    	
			    }
			    
			});    
			
			//adView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
			
			
		
		switch((int)size)
		{
			case 0: adView.setAdSize(AdSize.BANNER); break;
			case 1: adView.setAdSize(AdSize.LARGE_BANNER); break;
			case 2: adView.setAdSize(AdSize.MEDIUM_RECTANGLE); break;
			case 3: adView.setAdSize(AdSize.FULL_BANNER); break;
			case 4: adView.setAdSize(AdSize.LEADERBOARD); break;
			case 5: adView.setAdSize(AdSize.SMART_BANNER); break;			
		}	
		
		adView.setAdUnitId(bannerID);
		
		AbsoluteLayout.LayoutParams params = new AbsoluteLayout.LayoutParams
		(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT,(int)x,(int)y );
		adView.setLayoutParams(params);
		adView.requestLayout();
		adView.setVisibility(View.VISIBLE);
		
		if(vg != null)
			{
				
				vg.addView((View)adView);
				
				AdRequest.Builder builder = new AdRequest.Builder();
				builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
				//if( bUseTestAds) builder.addTestDevice(TestDeviceId);
				AdRequest adRequest = builder.build();				
			
				adView.loadAd(adRequest);
			}
			
		
		}});	
	}
	
	public void Admob_RemoveBanner()
	{
		if( adView != null )
		{
			RunnerActivity.ViewHandler.post( new Runnable() {
			public void run() 
		    {
				AbsoluteLayout layout = (AbsoluteLayout)RunnerActivity.CurrentActivity.findViewById(R.id.ad);
				ViewGroup vg = (ViewGroup)layout;
				if(vg!=null)
				{
					vg.removeView( adView );
				}
				adView.destroy();
				adView = null;
				
		    }});
		}
	}
	
	private InterstitialAd mInterstitialAd;	
	public void Admob_Interstitial_Init(String interstitialID)
	{
		
	Log.i("yoyo","Kaguva -----> Admob_Interstitial_Init");
		
	mInterstitialAd = new InterstitialAd(activity);
    mInterstitialAd.setAdUnitId(interstitialID);
	
	mInterstitialAd.setAdListener(new AdListener() {
    @Override
    public void onAdLoaded() {
        // Code to be executed when an ad finishes loading.
		
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
		RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Interstitial_onAdLoaded" );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onAdFailedToLoad(int errorCode) {
        // Code to be executed when an ad request fails.
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
		RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Interstitial_onAdFailedToLoad" );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);

    }

    @Override
    public void onAdOpened() {
        // Code to be executed when the ad is displayed.
		
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
		RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Interstitial_onAdOpened" );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);

    }

    @Override
    public void onAdLeftApplication() {
        // Code to be executed when the user has left the app.
		
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
		RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Interstitial_onAdLeftApplication" );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);

    }

    @Override
    public void onAdClosed() {
        // Code to be executed when when the interstitial ad is closed.
		
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "Firebase" );	
		RunnerJNILib.DsMapAddString( dsMapIndex, "event", "Interstitial_onAdClosed" );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);

    }
});
		
	}
	
	public void Admob_Interstitial_Load()
	{
		
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
		Log.i("yoyo","Kaguva -----> Admob_Interstitial_Load");
		mInterstitialAd.loadAd(new AdRequest.Builder().build());
		}});
	}
	
	public void Admob_Interstitial_Show()
	{
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
			Log.i("yoyo","Kaguva -----> Admob_Interstitial_Show");
			if (mInterstitialAd.isLoaded()) {
				mInterstitialAd.show();
			} else {
				Log.d("yoyo", "The interstitial wasn't loaded yet.");
			}
		}});
	}

	private double Interstitial_isLoaded = 0;
	public double Admob_Interstitial_isLoaded()
	{
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
		Log.i("yoyo","Kaguva -----> Admob_Interstitial_isLoaded");
		if (mInterstitialAd.isLoaded()) {
           Interstitial_isLoaded=1;
        } else {
          Interstitial_isLoaded=0;
        }
		}});
		
		return Interstitial_isLoaded;
	}
	
	
	private String RewantedAD_ID = "";
	public void Admob_RewardedVideoAd_Init(String AdId)
	{
		
		RewantedAD_ID=AdId;
		
	}
	
	public void Admob_RewardedVideoAd_Load()
	{

		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{	
			Log.i("yoyo","Kaguva -----> Admob_RewardedVideoAd_Load");
			mRewardedVideoAd.loadAd(RewantedAD_ID,new AdRequest.Builder().build());//Test: ca-app-pub-3940256099942544/5224354917
			
		}});
	}
	
	public void Admob_RewardedVideoAd_Show()
	{
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
		{
		
			Log.i("yoyo","Kaguva -----> Admob_RewardedVideoAd_Show");
			if (mRewardedVideoAd.isLoaded()) 
				mRewardedVideoAd.show();
			
		}});
	}
	
	private double RewardedVideoAd_isLoaded = 0;
	public double Admob_RewardedVideoAd_isLoaded()
	{
		
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run()  
    	{
		
		Log.i("yoyo","Kaguva -----> Admob_RewardedVideoAd_isLoaded");
	if (mRewardedVideoAd.isLoaded()) 
		RewardedVideoAd_isLoaded = 1;
	else
		RewardedVideoAd_isLoaded = 0;
	}});
	
	return RewardedVideoAd_isLoaded;
	
	}
	
}	




