import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view/user_info_view.dart';
import 'package:house_rabbit/presentation/view_model/login_view_model.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import '../widget/loading_indicator_widget.dart';
import 'login_view.dart';

class UserInfoNavigationView extends StatelessWidget {
  const UserInfoNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.read<LoginViewModel>();
    User? user = loginViewModel.user;
    Future.delayed(const Duration(seconds: 0), () async {
      if (user != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const UserInfoView()));
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
      }
    });
    return const Center(
        child: LoadingIndicatorWidget()
    );
  }
}
