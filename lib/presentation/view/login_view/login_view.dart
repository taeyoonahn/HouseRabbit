import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:house_rabbit/presentation/view/user_info_view/privacy_policy_view.dart';
import 'package:house_rabbit/presentation/view/user_info_view/terms_of_use_view.dart';
import 'package:provider/provider.dart';
import 'package:house_rabbit/presentation/view_model/login_view_model.dart';

import '../../view_model/ad_mob_view_model.dart';
import '../../widget/login/login_icon_button_expanded_widget.dart';
import '../../widget/login/login_icon_button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.0, left: 10.0,),
                          child: Text(
                            '로그인 후 \n사용해주세요',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text('간편 로그인으로 이용하기', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey[700]),),),
                          Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //LoginIconButtonExpandedWidget(imagePath: 'naver_login_icon',onTap: ()=>loginViewModel.signIn(context, 'naver'),),
                        LoginIconButtonExpandedWidget(imagePath: 'kakao_login_icon',onTap: ()=>loginViewModel.signIn(context, 'kakao'),),
                        const SizedBox(width: 15,),
                        LoginIconButtonWidget(imagePath: 'google_login_icon',onTap: ()=>loginViewModel.signIn(context, 'google'),),
                        const SizedBox(width: 15,),
                        LoginIconButtonWidget(imagePath: 'apple_login_icon',onTap: ()=>loginViewModel.signIn(context, 'apple'),),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("회원가입을 진행할 경우, ",style: TextStyle(fontSize: 8.5, fontWeight: FontWeight.bold, color: Colors.grey),),
                          TextButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsOfUseView()));},
                            style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                            child: const DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey,),),
                              ),
                              child: Text('서비스 약관', style: TextStyle(fontSize: 8.5, fontWeight: FontWeight.bold, color: Colors.grey,),),
                            ),
                          ),
                          const Text(" 및 ",style: TextStyle(fontSize: 8.5, fontWeight: FontWeight.bold, color: Colors.grey,),),
                          TextButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicyView()));},
                            style: TextButton.styleFrom(minimumSize: Size.zero, padding: EdgeInsets.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                            child: const DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey,),),
                              ),
                              child: Text('개인정보 처리방침', style: TextStyle(fontSize: 8.5, fontWeight: FontWeight.bold, color: Colors.grey,),),
                            ),
                          ),
                          const Text("에 동의한 것으로 간주합니다.",style: TextStyle(fontSize: 8.5, fontWeight: FontWeight.bold, color: Colors.grey,),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
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

