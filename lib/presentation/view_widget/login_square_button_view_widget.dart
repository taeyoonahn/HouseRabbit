import 'package:flutter/material.dart';

class LoginSquareButtonViewWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const LoginSquareButtonViewWidget({required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      clipBehavior: Clip.antiAlias,
      child: Ink.image(
        image: AssetImage('assets/images/$imagePath.png'),
        width: 310,
        height: 60,
        fit: BoxFit.fill,
        child: InkWell(onTap: onTap),
      ),
    );
  }
}


