import 'package:flutter/material.dart';

class LoginTextFieldViewWidget extends StatelessWidget {
  final dynamic controller;
  final String labelText;
  final bool obscureText;
  final Icon loginIcon;

  const LoginTextFieldViewWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.obscureText,
    required this.loginIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                icon: loginIcon,
                border: InputBorder.none,
                labelText: labelText,
              )
            ),
        )
      )
    );
  }
}