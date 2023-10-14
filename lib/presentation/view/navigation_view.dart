import 'package:flutter/material.dart';
import '../view_widget/bottom_navigation_bar_view_widget.dart';
import '../view_widget/navigation_body_view_widget.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const SizedBox(), //Icon(Icons.arrow_back_ios_new_rounded),
          title: const Text('집토끼', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 2)),
          actions: const [
            IconButton(icon: Icon(Icons.credit_card, color: Colors.black), onPressed: null),
            IconButton(icon: Icon(Icons.search_rounded, color: Colors.black), onPressed: null)
          ],
        ),
        body: NavigationBodyViewWidget(),
        bottomNavigationBar: BottomNavigationBarViewWidget()
    );
  }
}
