import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobViewModel extends ChangeNotifier {
  final BannerAd myBanner = BannerAd(
    adUnitId: Platform.isAndroid
        ? 'ca-app-pub-3940256099942544/6300978111' // Android ad unit ID
        : 'ca-app-pub-3940256099942544/2934735716', // iOS ad unit ID
    size: AdSize.banner,
    request: const AdRequest(),
    listener: BannerAdListener(
      onAdFailedToLoad: (ad, error) {
        ad.dispose();
      },
    ),
  );

  void loadBanner() {
    myBanner.load();
  }

  BannerAd showBanner() {
    return myBanner;
  }

  void disposeBanner() {
    myBanner.dispose();
  }
}