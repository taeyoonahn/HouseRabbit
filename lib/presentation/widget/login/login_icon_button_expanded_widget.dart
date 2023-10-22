import 'package:flutter/material.dart';

class LoginIconButtonExpandedWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const LoginIconButtonExpandedWidget({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 77,
      height: 77,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1.5),
        borderRadius: BorderRadius.circular(16.0,),
        image: DecorationImage(
          image: AssetImage('assets/images/$imagePath.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: InkWell(onTap: onTap,)
    );
  }
}