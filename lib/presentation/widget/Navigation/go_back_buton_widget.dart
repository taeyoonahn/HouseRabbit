import 'package:flutter/material.dart';

class GoBackButtonWidget extends StatelessWidget {
  const GoBackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black87,), onPressed: () {Navigator.pop(context);},
    );
  }
}
