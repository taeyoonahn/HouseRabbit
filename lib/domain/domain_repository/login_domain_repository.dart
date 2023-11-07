import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginDomainRepository {
  Future<void> kakaoLogin();
  Future<UserCredential> googleLogin();
  Future<UserCredential> appleLogin();
  Future<void> kakaoLogout();
  Future<void> googleLogout();
  Future<void> appleLogout();
}