import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:house_rabbit/di/provider_di.dart';
import 'package:house_rabbit/presentation/view/splash_view.dart';
import 'package:house_rabbit/utils/routes_utils.dart';
import 'package:provider/provider.dart';
import 'package:house_rabbit/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  final providers = await providerDi();

  runApp(
      MultiProvider(
        providers: providers,
        child: const MyApp(),
      ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HouseRabbit',
      theme: ThemeData(
        fontFamily: 'SCDream',
      ),
      home: const SplashView(),
      routes: routes,
    );
  }
}
