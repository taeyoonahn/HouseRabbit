import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/sign_view_model.dart';
import '../view_widget/login_button_view_widget.dart';

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
          margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              Center(child: Image.asset('assets/images/title.png', height: 200.0, width: 300.0)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('지금 집토끼와 함께 꿈꾸던 집을 찾아보세요!', style: TextStyle(color: Colors.grey[700]),),),
                    Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                  ],
                ),
              ),
              const Center(child: SizedBox(height: 35)),
              Center(child: LoginButtonViewWidget(path: 'naver_login', onTap: () {loginViewModel.signIn(context, 'naver');},),),
              const Center(child: SizedBox(height: 20)),
              Center(child: LoginButtonViewWidget(path: 'kakao_login', onTap: () {loginViewModel.signIn(context, 'kakao');},),),
              const Center(child: SizedBox(height: 20)),
              Center(child: LoginButtonViewWidget(path: 'google_login', onTap: () {loginViewModel.signIn(context, 'google');},),),
              const Center(child: SizedBox(height: 20)),
              Center(child: LoginButtonViewWidget(path: 'apple_login', onTap: () {loginViewModel.signIn(context, 'apple');},),),
              const Center(child: SizedBox(height: 20)),
            ]
          )
        ),
      ),
    );
  }
}

