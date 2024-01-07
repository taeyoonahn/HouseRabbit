import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:house_rabbit/di/provider_di.dart';
import 'package:house_rabbit/presentation/view/login_view/splash_view.dart';
import 'package:house_rabbit/utils/routes_utils.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao ;
import 'package:provider/provider.dart';
import 'package:house_rabbit/firebase_options.dart';


void main() async {
  debugPaintSizeEnabled = false;
  kakao.KakaoSdk.init(nativeAppKey: 'ba7e9fe9d3dbf5aa3832793ec2fe3c4a');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  MobileAds.instance.initialize();
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
