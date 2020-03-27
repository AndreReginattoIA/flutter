import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyBanner());

class MyBanner extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyBannerState();
  }
  
}

class MyBannerState extends State<MyBanner>{

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    childDirected: false,// or MobileAdGender.female, MobileAdGender.unknown
    testDevices: <String>[], // Android emulators are considered test devices
  );

  BannerAd myBanner = BannerAd(
    // "ca-app-pub-9210620758071586/6280882175"
    // BannerAd.testAdUnitId
    adUnitId: "ca-app-pub-9210620758071586/6280882175",
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );

  @override
  Widget build(BuildContext context) {
    myBanner..show();  

    return Container();
  }
  
  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-9210620758071586~5382378254");
    
    super.initState();

    myBanner..load();
  }
}
