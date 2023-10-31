import 'package:flutter/material.dart';
import 'dart:async';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushNamed(context,'/navigation',);
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2962FF),
              Color(0xff281537),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/title_splash.png',
              height: 300.0,
              width: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}




