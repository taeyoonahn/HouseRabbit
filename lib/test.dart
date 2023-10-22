import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const TestApp());

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = const [Page1(), Page2(), Page3()];
  final _navigatorKeyList = List.generate(3, (index) => GlobalKey<NavigatorState>());
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !(await _navigatorKeyList[_currentIndex].currentState!.maybePop());
      },
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _pages.map((page) {
            int index = _pages.indexOf(page);
            return Navigator(
              key: _navigatorKeyList[index],
              onGenerateRoute: (_) {
                return MaterialPageRoute(builder: (context) => page);
              },
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '페이지 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: '페이지 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: '페이지 3',
            ),
          ],
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      endDrawer: Builder(builder: (context) {
        int randomValue = Random(DateTime.now().millisecondsSinceEpoch).nextInt(1232131);
        return Drawer(child: Text(randomValue.toString()));
      }),
      body: Center(
        child: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 2)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return TextButton(
                child: const Text('Next page'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page4()));
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: const Center(
        child: Text('Page 3'),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page4')),
      endDrawer: Builder(builder: (context) {
        int randomValue = Random(DateTime.now().millisecondsSinceEpoch).nextInt(1232131);
        return Drawer(child: Text(randomValue.toString()));
      }),
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const Center(child: Text('Page 4'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}