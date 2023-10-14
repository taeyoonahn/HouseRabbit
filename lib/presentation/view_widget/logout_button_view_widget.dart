import 'package:flutter/material.dart';

class LogoutButtonViewWidget extends StatelessWidget {
  final VoidCallback onTap;
  const LogoutButtonViewWidget({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: const Text("로그아웃"));
  }
}
