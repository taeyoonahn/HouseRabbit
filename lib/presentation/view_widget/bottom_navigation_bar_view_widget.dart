import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view_model/bottom_navigation_bar_view_model.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarViewWidget extends StatelessWidget {
  const BottomNavigationBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarViewModel = Provider.of<BottomNavigationBarViewModel>(context);
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)],
        ),
      child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈',),
              BottomNavigationBarItem(icon: Icon(Icons.my_library_books), label: '메모',),
              BottomNavigationBarItem(icon: Icon(Icons.person_sharp), label: '내 정보',),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: bottomNavigationBarViewModel.currentPage,
            onTap: (index) {bottomNavigationBarViewModel.updateCurrentPage(index);},
          ),
      ),
    );
  }
}