import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
  
}

class MyAppState extends State<MyApp>{

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    childDirected: false,// or MobileAdGender.female, MobileAdGender.unknown
    testDevices: <String>[], // Android emulators are considered test devices
  );

  BannerAd myBanner = BannerAd(
    adUnitId: BannerAd.testAdUnitId,
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
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-9210620758071586~9291895186");
    
    super.initState();

    myBanner..load();
  }
}
