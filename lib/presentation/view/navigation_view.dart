import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/widget/Navigation/app_bar_widget.dart';

import '../widget/Navigation/bottom_navigation_bar_widget.dart';
import '../widget/Navigation/navigation_body_widget.dart';


class NavigationView extends StatelessWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const AppBarWidget(),
        body: NavigationBodyWidget(),
        bottomNavigationBar: const BottomNavigationBarWidget()
    );
  }
}
