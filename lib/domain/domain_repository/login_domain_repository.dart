import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginDomainRepository {
  Future<UserCredential> kakaoLogin();
  Future<void> kakaoLogout();
  Future<UserCredential> googleLogin();
  Future<void> googleLogout();
  Future<UserCredential> appleLogin();
  Future<void> appleLogout();
}