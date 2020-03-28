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

  // "ca-app-pub-9210620758071586/5618289779"
  // BannerAd.testAdUnitId
  BannerAd myBanner = BannerAd(
    adUnitId: "ca-app-pub-9210620758071586/5618289779",
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
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-9210620758071586~1080278965");
    
    super.initState();

    myBanner..load();
  }
}
