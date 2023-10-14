import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view_model/bottom_navigation_bar_view_model.dart';
import 'package:provider/provider.dart';
import '../view/home_view.dart';
import '../view/memo_view.dart';
import '../view/user_info_view.dart';

class NavigationBodyViewWidget extends StatelessWidget {
  const NavigationBodyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarViewModel = Provider.of<BottomNavigationBarViewModel>(context);
    switch (bottomNavigationBarViewModel.currentPage) {
      case 0:
        return const HomeView();
      case 1:
        return const MemoView();
      case 2:
        return const UserInfoView();
    }
    return Container();
  }
}