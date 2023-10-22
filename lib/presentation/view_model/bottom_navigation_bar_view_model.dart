import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view/user_info_view.dart';
import '../view/home_view.dart';

class BottomNavigationBarViewModel extends ChangeNotifier {
  int _index = 0;
  int get currentIndex => _index;

  updateCurrentPage(int index) {
    _index = index;
    notifyListeners();
  }
}
