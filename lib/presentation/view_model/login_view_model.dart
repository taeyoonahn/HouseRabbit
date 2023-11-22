import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:house_rabbit/domain/use_case/use_cases.dart';
import 'package:house_rabbit/presentation/view/user_info_view/user_info_view.dart';
import 'package:house_rabbit/utils/login_platform_utils.dart';


class LoginViewModel with ChangeNotifier {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  FlutterSecureStorage get storage => _storage;
  final UseCases useCases;
  LoginPlatform _loginPlatform = LoginPlatform.none;
  LoginPlatform get loginPlatform => _loginPlatform;
  User? _user;
  User? get user => _user;
  LoginViewModel(this.useCases);

  void signIn (BuildContext context, String loginPlatform) async {
    switch(loginPlatform) {
      case 'kakao' :
        _loginPlatform = LoginPlatform.kakao;
        await signInWithKakao();
        break;
      case 'google' :
        _loginPlatform = LoginPlatform.google;
        await signInWithGoogle();
        break;
      case 'apple' :
        _loginPlatform = LoginPlatform.apple;
        await signInWithApple();
        break;
    }
    if(_user != null) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const UserInfoView()));
      await _storage.write(key: "login", value: "on",);
    }
  }

  Future<void> signInWithKakao() async {
    UserCredential userCredential = await useCases.kakaoLogin();
    _user = userCredential.user;
    notifyListeners();
  }

  Future<void> signInWithGoogle() async {
    UserCredential userCredential = await useCases.googleLogin();
    _user = userCredential.user;
    notifyListeners();
  }

  Future<void> signInWithApple() async {
    UserCredential userCredential = await useCases.appleLogin();
    _user = userCredential.user;
    notifyListeners();
  }

  void navigate(BuildContext context, String path) {
    if(_user != null) {
      Navigator.pushNamed(context,'/$path');
    }
  }

  void singOut(BuildContext context) async {
    switch (_loginPlatform) {
      case LoginPlatform.kakao:
        try {
          useCases.kakaoLogout;
          notifyListeners();
          break;
        } catch (error) {
          break;
        }
      case LoginPlatform.google:
        try {
          useCases.googleLogout;
          notifyListeners();
          break;
        } catch (error) {
          break;
        }
      case LoginPlatform.apple:
        break;
      case LoginPlatform.none:
        break;
    }
    _user = null;
    _loginPlatform = LoginPlatform.none;
    _storage.delete(key: "login");
    notifyListeners();

    if(_user == null) {
      Navigator.pushNamed(context, '/login');
    }
  }
}