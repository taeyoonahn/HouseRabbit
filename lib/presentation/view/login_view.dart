import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:house_rabbit/presentation/view_model/login_view_model.dart';

import '../widget/login/login_icon_button_expanded_widget.dart';
import '../widget/login/login_icon_button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.read<LoginViewModel>();

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 30.0),
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
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
                        child: Text('간편 로그인으로 이용하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),),),
                      Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LoginIconButtonExpandedWidget(imagePath: 'naver_login_icon',onTap: ()=>loginViewModel.signIn(context, 'naver'),),
                    LoginIconButtonExpandedWidget(imagePath: 'kakao_login_icon',onTap: ()=>loginViewModel.signIn(context, 'kakao'),),
                    LoginIconButtonWidget(imagePath: 'google_login_icon',onTap: ()=>loginViewModel.signIn(context, 'google'),),
                    LoginIconButtonWidget(imagePath: 'apple_login_icon',onTap: ()=>loginViewModel.signIn(context, 'apple'),),
                  ],
                ),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

