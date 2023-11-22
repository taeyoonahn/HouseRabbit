import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rabbit/data/data_source/sign_data_source.dart';
import 'package:house_rabbit/domain/domain_repository/login_domain_repository.dart';

class LoginDataRepository implements LoginDomainRepository{
  LoginDataSource loginDataSource;
  LoginDataRepository(this.loginDataSource);

  @override
  Future<UserCredential> kakaoLogin() async {
    return loginDataSource.kakaoLogin();
  }

  @override
  Future<void> kakaoLogout() async {
    return loginDataSource.kakaoLogout();
  }

  @override
  Future<UserCredential> googleLogin() async {
    return loginDataSource.googleLogin();
  }

  @override
  Future<void> googleLogout() async {
    return loginDataSource.googleLogout();
  }

  @override
  Future<UserCredential> appleLogin() async {
    return loginDataSource.appleLogin();
  }

  @override
  Future<void> appleLogout() async {
    return loginDataSource.appleLogout();
  }
}

