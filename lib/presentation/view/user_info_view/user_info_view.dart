import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:house_rabbit/presentation/view_model/login_view_model.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import '../../view_model/ad_mob_view_model.dart';
import '../../widget/UserInfo/payment_button_widget.dart';
import '../../widget/loading_indicator_widget.dart';
import '../login_view/login_view.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.read<LoginViewModel>();
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
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 70,
                      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: Colors.black12, width: 1.5),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: Colors.black12, width: 1.5),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const PaymentButtonWidget(),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.0, left: 10.0,),
                          child: Text(
                            '문의 및 정보 관리',
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      children: [
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: const Text('약관 및 정책',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black87),),),
                            const SizedBox(width: 40,),
                            TextButton(onPressed: (){}, child: const Text('고객센터',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black87),),),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: ()=>loginViewModel.singOut(context), child: const Text('로그아웃',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black87),),),
                            const SizedBox(width: 67,),
                            TextButton(onPressed: (){}, child: const Text('탈퇴',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black87),),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



