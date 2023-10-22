import 'package:flutter/material.dart';

class LoginIconButtonWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const LoginIconButtonWidget({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1.5),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: onTap,
        child: Image.asset(
          'assets/images/$imagePath.png',
          height: 35,
        ),
      ),
    );
  }
}