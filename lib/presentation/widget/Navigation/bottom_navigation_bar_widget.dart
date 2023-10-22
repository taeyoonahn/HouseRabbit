import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../../view_model/bottom_navigation_bar_view_model.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarViewModel = Provider.of<BottomNavigationBarViewModel>(context);
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 10)],
        ),
      child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
          child: BottomNavigationBar(
            backgroundColor: HexColor('#1E319D'),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈',),
              //BottomNavigationBarItem(icon: Icon(Icons.my_library_books), label: '메모',),
              BottomNavigationBarItem(icon: Icon(Icons.person_sharp), label: '내 정보',),
            ],
            //showSelectedLabels: false,
            //showUnselectedLabels: false,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black87,
            currentIndex: bottomNavigationBarViewModel.currentIndex,
            onTap: (index) {bottomNavigationBarViewModel.updateCurrentPage(index);},
          ),
      ),
    );
  }
}