{
    "id": "a0bd0a8b-3b44-4ee5-8102-fa7ced12784a",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "AdMob",
    "IncludedResources": [
        "Sprites\\AdMob\\Sprite_Admob_Rewanted",
        "Sprites\\AdMob\\Sprite_Admob_Banner",
        "Sprites\\AdMob\\Sprite_Admob_Interstitial",
        "Backgrounds\\Background_Kaguva",
        "Fonts\\Font_Big",
        "Fonts\\Font_Normal",
        "Fonts\\Font_Little",
        "Objects\\Firebase\\AdMob\\Obj_AdMob",
        "Objects\\Firebase\\AdMob\\Obj_Admob_Banner",
        "Objects\\Firebase\\AdMob\\Obj_Admob_Interstitial",
        "Objects\\Firebase\\AdMob\\Obj_Admob_Rewanted",
        "Objects\\AdMob\\Obj_AdMob",
        "Objects\\AdMob\\Obj_Admob_Banner",
        "Objects\\AdMob\\Obj_Admob_Interstitial",
        "Objects\\AdMob\\Obj_Admob_Rewanted",
        "Rooms\\Room_AdMob",
        "Included Files\\AdMob_Setup.pdf",
        "Included Files\\AdMob Setup.pdf",
        "Scripts\\Admob_Banner_CenterX",
        "Scripts\\Admob_Banner_TopY",
        "Scripts\\Admob_Banner_BottomY"
    ],
    "androidPermissions": [
        "android.permission.INTERNET"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "AdMobGM",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "FirebaseGM",
    "copyToTargets": 105554163798254,
    "date": "2018-07-06 11:04:36",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "b1dba72c-d8c0-4b05-adc5-e8034785bf25",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "b0f9b83b-c8ff-4b19-9b52-c2c33abceb7a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "Admob_BANNER",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "906ca626-dac4-42de-b838-3afcd9d86570",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "Admob_LARGE_BANNER",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "02bc202e-b7e6-465c-b01d-d234746243e3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "Admob_MEDIUM_RECTANGLE",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "4241d05c-ddfa-4f31-bfdb-65e308fe0b7d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "Admob_FULL_BANNER",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "f974464c-9a80-4469-bf85-2ecf1abd9898",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "Admob_LEADERBOARD",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "0fe8a977-47a6-4757-b740-03e555e306de",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "Admob_SMART_BANNER",
                    "hidden": false,
                    "value": "5"
                }
            ],
            "copyToTargets": 35651596,
            "filename": "AdMob.ext",
            "final": "",
            "functions": [
                {
                    "id": "8c8cfd4b-b2ac-4c5c-9e9e-411eb84efc3a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "Admob_initialize",
                    "help": "Admob_initialize(AppID)",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_initialize",
                    "returnType": 2
                },
                {
                    "id": "f7984684-e074-4ecd-b341-2338b6c26447",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "Admob_Interstitial_Init",
                    "help": "Admob_Interstitial_Init(interstitialID)",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_Interstitial_Init",
                    "returnType": 2
                },
                {
                    "id": "1fb7b5ab-e434-48c4-80d9-b17606b50c81",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_Interstitial_Load",
                    "help": "Admob_Interstitial_Load()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_Interstitial_Load",
                    "returnType": 2
                },
                {
                    "id": "952502ee-9282-4af8-b44f-5a30b2ddfb7b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "Admob_Banner",
                    "help": "Admob_Banner(BannerID,size,x,y)",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_Banner",
                    "returnType": 2
                },
                {
                    "id": "16dd16a5-4038-47d3-b9d8-aeb50bb48285",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_Interstitial_Show",
                    "help": "Admob_Interstitial_Show()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_Interstitial_Show",
                    "returnType": 2
                },
                {
                    "id": "9d170ea8-9ed2-49a2-989e-628eeb99c0cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_Interstitial_isLoaded",
                    "help": "Admob_Interstitial_isLoaded()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_Interstitial_isLoaded",
                    "returnType": 2
                },
                {
                    "id": "d7085153-44ac-4c25-8a7d-85a3f2fc8e9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_RewardedVideoAd_Load",
                    "help": "Admob_RewardedVideoAd_Load()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_RewardedVideoAd_Load",
                    "returnType": 2
                },
                {
                    "id": "d747e862-5a6a-43c5-b37a-fb438d81d6bd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_RewardedVideoAd_isLoaded",
                    "help": "Admob_RewardedVideoAd_isLoaded()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_RewardedVideoAd_isLoaded",
                    "returnType": 2
                },
                {
                    "id": "43735fde-49ba-4554-8b98-249c11ce033a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_RewardedVideoAd_Show",
                    "help": "Admob_RewardedVideoAd_Show()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_RewardedVideoAd_Show",
                    "returnType": 2
                },
                {
                    "id": "99f2497f-76f5-4e53-b0c5-a3dae3cca9f7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "Admob_RewardedVideoAd_Init",
                    "help": "Admob_RewardedVideoAd_Init(RewardedID)",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_RewardedVideoAd_Init",
                    "returnType": 2
                },
                {
                    "id": "18b73d97-7ba3-404e-95db-1db699b71eb9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Admob_RemoveBanner",
                    "help": "Admob_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Admob_RemoveBanner",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\FireBase.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "android {\\u000d\\u000a    lintOptions {\\u000d\\u000a        checkReleaseBuilds false\\u000d\\u000a        abortOnError false\\u000d\\u000a    }\\u000d\\u000a}\\u000d\\u000acompile 'com.google.android.gms:play-services-ads:11.8.0'",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "ee03c927-5976-4ca2-8e9e-3852d270801b",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "libicucore.tbd",
            "weakReference": false
        },
        {
            "id": "73682399-17e7-4211-a8cd-ff87d9ca3a40",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdSupport.framework",
            "weakReference": false
        },
        {
            "id": "2c8ace3e-427d-42a6-9620-d07c8235080c",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GLKit.framework",
            "weakReference": false
        },
        {
            "id": "40437901-6bdc-44c3-86b6-6a127af60680",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMotion.framework",
            "weakReference": false
        },
        {
            "id": "8390e222-dc48-46fd-8ee4-44fc92920946",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SafariServices.framework",
            "weakReference": false
        },
        {
            "id": "bf53e2e8-8c7b-483c-b29c-10bfd2298833",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreVideo.framework",
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        {
            "id": "b5aed53f-f41c-42f0-9c82-e22390b48fcf",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleMobileAds.framework",
            "weakReference": false
        }
    ],
    "iosdelegatename": null,
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "-ObjC",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "com.Kaguva.Admob",
    "productID": "E27C147D59F00738B8730FC7AC0C459F",
    "sourcedir": "",
    "supportedTargets": 105554163798254,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": null,
    "tvosdelegatename": null,
    "tvosmaccompilerflags": null,
    "tvosmaclinkerflags": null,
    "tvosplistinject": null,
    "version": "1.0.4"
}