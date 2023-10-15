import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view_widget/login_button_view_widget.dart';
import 'package:provider/provider.dart';
import 'package:house_rabbit/presentation/view_model/sign_view_model.dart';
import 'package:house_rabbit/presentation/view_widget/login_text_field_view_widget.dart';
import 'package:house_rabbit/presentation/view_widget/login_icon_button_view_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.read<LoginViewModel>();
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              Center(child: Image.asset('assets/images/title.png', height: 150.0, width: 300.0)),
              Center(child: Text('당신의 집토끼와 함께 안전한 집을 찾아보세요!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),),),
              const Center(child: SizedBox(height: 35)),
              LoginTextFieldViewWidget(controller: usernameController, labelText: '메일 주소를 입력해주세요', obscureText: false, loginIcon: Icon(Icons.email_outlined),),
              const SizedBox(height: 13),
              LoginTextFieldViewWidget(controller: passwordController, labelText: '비밀번호를 입력해주세요', obscureText: true, loginIcon: Icon(Icons.lock_outline)),
              const Center(child: SizedBox(height: 23)),
              LoginButtonViewWidget(),
              const SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('또는 간편 로그인으로 이용하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),),),
                    Expanded(child: Divider(thickness: 0.5, color: Colors.grey[400],),),
                  ],
                ),
              ),
              const Center(child: SizedBox(height: 30)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginIconButtonViewWidget(imagePath: 'google_login_icon'),
                  SizedBox(width: 40),
                  LoginIconButtonViewWidget(imagePath: 'apple_login_icon')
                ],
              ),
            ]
          )
        ),
      ),
    );
  }
}

