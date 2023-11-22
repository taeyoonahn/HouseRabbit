import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:house_rabbit/presentation/view_model/ad_mob_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final adMobViewModel = context.read<AdMobViewModel>();
    adMobViewModel.disposeBanner();
    adMobViewModel.loadBanner();

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          width: double.infinity,
          height: 70,
          alignment: Alignment.center,
          child: AdWidget(ad: adMobViewModel.showBanner()),
        ),
      ),
    );
  }
}

