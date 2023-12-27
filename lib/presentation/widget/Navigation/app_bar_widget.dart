import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:house_rabbit/presentation/widget/Navigation/go_back_buton_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
        boxShadow: [BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 30)],
      ),
      child: ClipRRect(borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
        child: AppBar(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          backgroundColor: HexColor('#1E319D'),
          leading: const GoBackButtonWidget(),
          title: Image.asset(
            'assets/images/title_main.png',
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(60);
}