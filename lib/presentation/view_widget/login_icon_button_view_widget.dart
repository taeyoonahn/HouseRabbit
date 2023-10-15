import 'package:flutter/material.dart';

class LoginIconButtonViewWidget extends StatelessWidget {
  final String imagePath;
  const LoginIconButtonViewWidget({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1.5),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Image.asset(
        'assets/images/$imagePath.png',
        height: 35,
      ),
    );
  }
}