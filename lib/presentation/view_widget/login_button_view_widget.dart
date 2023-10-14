import 'package:flutter/material.dart';

class LoginButtonViewWidget extends StatelessWidget {
  final String path;
  final VoidCallback onTap;
  const LoginButtonViewWidget({required this.path, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      clipBehavior: Clip.antiAlias,
      child: Ink.image(
        image: AssetImage('assets/images/$path.png'),
        width: 310,
        height: 60,
        fit: BoxFit.fill,
        child: InkWell(onTap: onTap),
      ),
    );
  }
}


