import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:house_rabbit/presentation/view_model/ad_mob_view_model.dart';
import 'package:house_rabbit/presentation/widget/home/house_add_button_widget.dart';
import 'package:house_rabbit/presentation/widget/home/search_house_widget.dart';
import 'package:provider/provider.dart';
import '../../../domain/model/house.dart';
import '../../widget/home/house_item_widget.dart';

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
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 70,
                alignment: Alignment.center,
                child: AdWidget(ad: adMobViewModel.showBanner()),
              ),
              const SizedBox(height: 15,),
              const SearchHouseWidget(),
              const SizedBox(height: 15,),
              ListView(
                shrinkWrap: true,
                children: [
                  HouseItemWidget(
                    house: House(),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const HouseAddButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}