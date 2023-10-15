import 'package:flutter/material.dart';

class LoginButtonViewWidget extends StatelessWidget {
  //final Function()? onTap;

  const LoginButtonViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "로그인",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}