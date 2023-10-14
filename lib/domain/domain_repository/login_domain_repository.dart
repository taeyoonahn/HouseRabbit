import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginDomainRepository {
  Future<void> naverLogin();
  Future<void> kakaoLogin();
  Future<UserCredential> googleLogin();
  Future<void> appleLogin();
  Future<void> naverLogout();
  Future<void> kakaoLogout();
  Future<void> googleLogout();
  Future<void> appleLogout();
}