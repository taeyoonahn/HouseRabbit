import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view_model/bottom_navigation_bar_view_model.dart';
import 'package:provider/provider.dart';
import '../../view/home_view.dart';
import '../../view/memo_view.dart';
import '../../view/user_info_navigation_view.dart';
import '../../view/user_info_view.dart';

class NavigationBodyWidget extends StatelessWidget {
  const NavigationBodyWidget({super.key});
  final _pages = const[HomeView(), UserInfoNavigationView(), UserInfoNavigationView()];

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarViewModel = Provider.of<
        BottomNavigationBarViewModel>(context);
    return IndexedStack(
      index: bottomNavigationBarViewModel.currentIndex,
      children: _pages.map((page) {
        return Navigator(
          onGenerateRoute: (_) {
            return MaterialPageRoute(builder: (context) => page);
          },
        );
      }).toList(),);
  }
}